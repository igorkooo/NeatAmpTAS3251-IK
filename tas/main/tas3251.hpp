/**
 * @file tas3251.hpp
 * @brief Driver for the TI TAS3251 Class-D amplifier: the four GPIO
 *        control/status lines (RESET_AMP, DAC_MUTE, /FAULT, /CLIP_OTW), the
 *        ADR address strap, and the I2C book/page register interface.
 */
#ifndef TAS_TAS3251_HPP
#define TAS_TAS3251_HPP

#include <cstdint>
#include "driver/i2c_master.h"
#include "esp_attr.h"
#include "esp_err.h"
#include "i2c_bus.hpp"

namespace tas {

/** @brief Audio channel selector for per-channel registers (B0-P0-R61/R62). */
enum class Channel : uint8_t {
    Left = 0,
    Right = 1,
};

/**
 * @brief Raw latched fault bytes read back from B0-P0-R94/R95.
 * @warning Bit-level meaning (OC/UV/OTE/clock-error position) is documented
 *          in the TAS3251 datasheet register map and is NOT decoded here —
 *          only the raw bytes are captured. Decode against the datasheet
 *          before acting on individual bits.
 */
struct FaultStatus {
    uint8_t reg94 = 0;
    uint8_t reg95 = 0;
};

/**
 * @brief Controls one TAS3251 amplifier: GPIO lines plus I2C registers.
 *
 * Register addressing follows TI's book/page convention referenced in the
 * hardware README (e.g. "B0-P0-R2" = Book 0, Page 0, Register 2):
 * selectBookPage() must be called (directly, or implicitly by the
 * convenience setters below) before writeRegister()/readRegister() target a
 * register outside the currently selected book/page.
 */
class Tas3251 {
public:
    Tas3251() = default;

    /**
     * @brief Configure the GPIO lines (including the /FAULT and /CLIP_OTW
     *        falling-edge interrupts), resolve the I2C address from the ADR
     *        strap (AMP ADDRESS pin), and attach the device on @p bus.
     * @note Does not touch RESET_AMP or DAC_MUTE beyond configuring them as
     *       outputs; call reset()/mute() explicitly to drive a known state,
     *       as done by SystemController::startup().
     * @param bus Already-initialized shared I2C bus (see I2cBus::init()).
     * @return ESP_OK on success.
     */
    esp_err_t init(const I2cBus &bus);

    /**
     * @brief Drive RESET_AMP (active low).
     * @param assertReset true = hold the amplifier in reset (drive low),
     *        false = release it (drive high).
     */
    esp_err_t reset(bool assertReset);

    /**
     * @brief Drive DAC_MUTE (active low, hardware mute independent of the
     *        I2C soft-mute register).
     * @param muteOn true = mute (drive low), false = unmute (drive high).
     */
    esp_err_t mute(bool muteOn);

    /**
     * @brief Set the I2C soft-mute bit (B0-P0-R3), independent of the
     *        DAC_MUTE GPIO line.
     */
    esp_err_t setSoftMuteRegister(bool muteOn);

    /**
     * @brief Write the device power mode (B0-P0-R2 / DEVICE_CTRL_2).
     * @warning The PLAY/HI-Z/SLEEP/DEEP_SLEEP bit encoding used here follows
     *          the common TI PurePath DEVICE_CTRL_2 convention and has NOT
     *          been verified against the TAS3251 datasheet specifically —
     *          confirm before relying on it.
     * @param on true = request Play mode, false = request Deep Sleep.
     */
    esp_err_t powerOn(bool on);

    /**
     * @brief Set per-channel digital volume (B0-P0-R61/R62), 0.5 dB/step,
     *        -103 dB to +24 dB per the hardware README register map.
     * @warning The dB-to-register-code formula here is UNVERIFIED against
     *          the TAS3251 datasheet (sign/zero-point of the encoding).
     *          SystemController deliberately starts at a conservative low
     *          volume regardless of this formula's correctness, but confirm
     *          the encoding before trusting absolute dB values in the field.
     */
    esp_err_t setVolumeDb(Channel channel, float db);

    /** @brief Set the volume ramp speed code (B0-P0-R64), raw register value. */
    esp_err_t setVolumeRampSpeed(uint8_t code);

    /** @brief Read the latched fault status (B0-P0-R94/R95). */
    esp_err_t readFaultStatus(FaultStatus &status);

    /** @brief True if the /FAULT ISR has fired since the last clearFaultLatch(). */
    bool isFaultLatched() const { return faultLatched_; }

    /** @brief True if the /CLIP_OTW ISR has fired since the last clearClipOtwLatch(). */
    bool isClipOtwLatched() const { return clipOtwLatched_; }

    /** @brief Acknowledge and clear the /FAULT latch tracked by this driver. */
    void clearFaultLatch() { faultLatched_ = false; }

    /** @brief Acknowledge and clear the /CLIP_OTW latch tracked by this driver. */
    void clearClipOtwLatch() { clipOtwLatched_ = false; }

    /**
     * @brief Select a book and page, per TI's book/page register addressing:
     *        selecting a new book always goes through page 0 first
     *        (register 0x7F selects the book while on page 0 of the current
     *        book, register 0x00 selects the page within a book).
     */
    esp_err_t selectBookPage(uint8_t book, uint8_t page);

    /** @brief Write one raw register byte in the currently selected book/page. */
    esp_err_t writeRegister(uint8_t reg, uint8_t value);

    /** @brief Read one raw register byte from the currently selected book/page. */
    esp_err_t readRegister(uint8_t reg, uint8_t &value);

private:
    static void IRAM_ATTR faultIsrThunk(void *arg);
    static void IRAM_ATTR clipOtwIsrThunk(void *arg);
    uint8_t resolveI2cAddress() const;

    i2c_master_dev_handle_t dev_ = nullptr;
    uint8_t currentBook_ = 0;
    /** 0xFF forces the first selectBookPage()/writeRegister(0,...) call to
     *  actually write the page register instead of assuming it is already
     *  correct. */
    uint8_t currentPage_ = 0xFF;
    volatile bool faultLatched_ = false;
    volatile bool clipOtwLatched_ = false;
};

} // namespace tas

#endif
