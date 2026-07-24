/**
 * @file system_controller.cpp
 * @brief SystemController implementation. See system_controller.hpp for the
 *        public API and tas/README.md for the state diagram this mirrors.
 */
#include "system_controller.hpp"

#include <cinttypes>

#include "esp_log.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

namespace tas {
namespace {
constexpr char kTag[] = "SystemController";

/**
 * @note Placeholder value suggested during architecture review, to let the
 *       13.2V->12V LDO chain and 3.3V analog rail settle before RESET_AMP
 *       is released. TODO: verify against the TAS3251 datasheet power-up
 *       timing spec — if isRail13V2Good() already guarantees the rail has
 *       settled, this fixed delay may be redundant and could be removed or
 *       shortened.
 */
constexpr uint32_t kPowerStabilizeDelayMs = 100;

/**
 * @note Placeholder value suggested during architecture review, inserted
 *       between enabling the 12V/3.3V analog rails and releasing RESET_AMP.
 *       TODO: verify against the TAS3251 datasheet minimum reset-to-supply
 *       or supply-to-reset-release timing before relying on it.
 */
constexpr uint32_t kPreResetReleaseDelayMs = 50;

/**
 * @note Conservative startup volume ("Volume - low" in the architecture
 *       review). Deliberately chosen independently of whether
 *       Tas3251::setVolumeDb()'s dB-to-register-code formula is correct
 *       (see its @warning) — a wrong-but-quiet startup level is safe, a
 *       wrong-and-loud one is not.
 */
constexpr float kStartupVolumeDb = -60.0f;

constexpr uint32_t kMonitorLoopPeriodMs = 50;
} // namespace

esp_err_t SystemController::startup()
{
    ESP_LOGI(kTag, "State: INIT — configuring I2C bus, GPIOs and interrupts");
    esp_err_t err = i2cBus_.init();
    if (err != ESP_OK) {
        ESP_LOGE(kTag, "I2C bus init failed: %s", esp_err_to_name(err));
        return err;
    }

    err = power_.init();
    if (err != ESP_OK) {
        ESP_LOGE(kTag, "PowerSupplies init failed: %s", esp_err_to_name(err));
        return err;
    }

    /* Tas3251::init() also drives RESET_AMP and DAC_MUTE to their safe
     * (asserted) defaults as part of GPIO configuration. */
    err = amp_.init(i2cBus_);
    if (err != ESP_OK) {
        ESP_LOGE(kTag, "Tas3251 init failed: %s", esp_err_to_name(err));
        return err;
    }

    err = dsp_.init(i2cBus_);
    if (err != ESP_OK) {
        ESP_LOGE(kTag, "Dsp init failed: %s", esp_err_to_name(err));
        return err;
    }
    if (!dsp_.isPresent()) {
        ESP_LOGI(kTag, "ADAU1466 DSP not detected on the I2C bus — continuing without it "
                       "(expected on boards where it is not populated)");
    }

    ESP_LOGI(kTag, "State: AMP_RESET — RESET_AMP asserted, DAC_MUTE asserted");
    err = amp_.reset(true);
    if (err != ESP_OK) {
        ESP_LOGE(kTag, "Failed to assert RESET_AMP: %s", esp_err_to_name(err));
        return err;
    }
    err = amp_.mute(true);
    if (err != ESP_OK) {
        ESP_LOGE(kTag, "Failed to assert DAC_MUTE: %s", esp_err_to_name(err));
        return err;
    }

    ESP_LOGI(kTag, "State: WAIT_POWER_STABLE — waiting %" PRIu32 " ms for supplies to settle",
             kPowerStabilizeDelayMs);
    vTaskDelay(pdMS_TO_TICKS(kPowerStabilizeDelayMs));

    ESP_LOGI(kTag, "State: CHECK_13V2 — polling GOOD_13.2V");
    if (!power_.isRail13V2Good()) {
        ESP_LOGE(kTag, "13.2V rail not good — aborting startup, amplifier stays in reset and muted");
        return ESP_ERR_INVALID_STATE;
    }
    ESP_LOGI(kTag, "13.2V rail confirmed good");

    ESP_LOGI(kTag, "State: ENABLE_12V — enabling 12V GVDD analog rail");
    err = power_.enable12VAnalog(true);
    if (err != ESP_OK) {
        ESP_LOGE(kTag, "Failed to enable 12V GVDD rail: %s", esp_err_to_name(err));
        return err;
    }

    /* @note Enabled immediately after the 12V rail rather than with an
     * explicit relative delay. TODO: confirm against the TAS3251 datasheet
     * whether AVDD (3.3V analog) must be sequenced a fixed time before/after
     * GVDD (12V) — if so, add a delay here rather than assuming
     * simultaneous enable is safe. */
    ESP_LOGI(kTag, "State: ENABLE_3V3_ANALOG — enabling 3.3V analog (DAC_AVDD) rail");
    err = power_.enable3V3Analog(true);
    if (err != ESP_OK) {
        ESP_LOGE(kTag, "Failed to enable 3.3V analog rail: %s", esp_err_to_name(err));
        return err;
    }

    ESP_LOGI(kTag, "State: WAIT_PRE_RESET_RELEASE — waiting %" PRIu32 " ms before releasing RESET_AMP",
             kPreResetReleaseDelayMs);
    vTaskDelay(pdMS_TO_TICKS(kPreResetReleaseDelayMs));

    ESP_LOGI(kTag, "State: RELEASE_RESET — releasing RESET_AMP");
    err = amp_.reset(false);
    if (err != ESP_OK) {
        ESP_LOGE(kTag, "Failed to release RESET_AMP: %s", esp_err_to_name(err));
        return err;
    }

    ESP_LOGI(kTag, "State: CONFIGURE — writing TAS3251 configuration via I2C");
    err = amp_.powerOn(true);
    if (err != ESP_OK) {
        ESP_LOGE(kTag, "Failed to power on TAS3251 (B0-P0-R2): %s", esp_err_to_name(err));
        return err;
    }
    err = amp_.setVolumeDb(Channel::Left, kStartupVolumeDb);
    if (err == ESP_OK) {
        err = amp_.setVolumeDb(Channel::Right, kStartupVolumeDb);
    }
    if (err != ESP_OK) {
        ESP_LOGE(kTag, "Failed to set startup volume: %s", esp_err_to_name(err));
        return err;
    }
    /* TODO: EQ / crossover biquad configuration (Book 0x8C pages, safeload
     * via B0x8C-P5-R7C) goes here once coefficients are finalized — see
     * Tas3251::selectBookPage()/writeRegister(). */

    ESP_LOGI(kTag, "State: UNMUTE — releasing DAC_MUTE, audio path active");
    err = amp_.mute(false);
    if (err != ESP_OK) {
        ESP_LOGE(kTag, "Failed to release DAC_MUTE: %s", esp_err_to_name(err));
        return err;
    }

    ESP_LOGI(kTag, "State: READY — startup sequence complete");
    return ESP_OK;
}

void SystemController::runForever()
{
    ESP_LOGI(kTag, "Entering monitor loop (/FAULT, /CLIP_OTW, 13.2V-good)");
    bool lastRail13V2Good = true;

    for (;;) {
        if (amp_.isFaultLatched()) {
            FaultStatus status{};
            esp_err_t err = amp_.readFaultStatus(status);
            if (err == ESP_OK) {
                ESP_LOGE(kTag, "AMP FAULT latched: B0-P0-R94=0x%02X R95=0x%02X", status.reg94, status.reg95);
            } else {
                ESP_LOGE(kTag, "AMP FAULT latched, and fault status read failed: %s", esp_err_to_name(err));
            }
            amp_.clearFaultLatch();
            /* TODO: recovery policy — e.g. wait for thermal recovery then
             * toggle RESET_AMP to clear a latched OTE fault, per the
             * hardware README "Fault Handling" section. */
        }

        if (amp_.isClipOtwLatched()) {
            ESP_LOGW(kTag, "AMP CLIP/OTW asserted");
            amp_.clearClipOtwLatch();
        }

        const bool rail13V2Good = power_.isRail13V2Good();
        if (rail13V2Good != lastRail13V2Good) {
            if (rail13V2Good) {
                ESP_LOGI(kTag, "13.2V rail recovered");
            } else {
                ESP_LOGE(kTag, "13.2V rail lost while running");
            }
            lastRail13V2Good = rail13V2Good;
        }

        vTaskDelay(pdMS_TO_TICKS(kMonitorLoopPeriodMs));
    }
}

} // namespace tas
