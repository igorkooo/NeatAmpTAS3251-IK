/**
 * @file power_supplies.hpp
 * @brief Controls the power-sequencing signals the ESP32-S3 senses/drives
 *        for three of the board's rails: the 13.2V intermediate rail
 *        (sensed only), the 12V GVDD analog rail, and the 3.3V analog
 *        (DAC_AVDD) rail. See the hardware README "Power Supply
 *        Architecture" section for the full multi-rail design — the other
 *        rails (PVDD, 5V, 3.3V digital) are not firmware-controlled.
 */
#ifndef TAS_POWER_SUPPLIES_HPP
#define TAS_POWER_SUPPLIES_HPP

#include "esp_err.h"

namespace tas {

/**
 * @brief GPIO-level control for the three ESP32-visible power rails.
 *
 * - **13.2V** (LMQ66410 buck output): sense-only, GOOD_13.2V input.
 * - **12V GVDD analog** (TPS7A4701 LDO): ESP32-enabled, ENABLE_12V output.
 * - **3.3V analog** (TPS7A2033 LDO, DAC_AVDD only): ESP32-enabled,
 *   ENABLE_3.3V output. Hardware default is enabled (100 kOhm pull-up to
 *   3.3V digital); this class still drives it explicitly so firmware state
 *   matches hardware state.
 */
class PowerSupplies {
public:
    PowerSupplies() = default;

    /**
     * @brief Configure GOOD_13.2V as input and ENABLE_12V/ENABLE_3.3V as
     *        outputs, both driven low (disabled) initially.
     */
    esp_err_t init();

    /** @brief Read the 13.2V-good sense line. */
    bool isRail13V2Good() const;

    /** @brief Enable/disable the 12V GVDD analog rail. */
    esp_err_t enable12VAnalog(bool enable);

    /** @brief Last commanded state of the 12V GVDD analog rail. */
    bool isEnabled12VAnalog() const { return enabled12VAnalog_; }

    /** @brief Enable/disable the 3.3V analog (DAC_AVDD) rail. */
    esp_err_t enable3V3Analog(bool enable);

    /** @brief Last commanded state of the 3.3V analog rail. */
    bool isEnabled3V3Analog() const { return enabled3V3Analog_; }

private:
    bool enabled12VAnalog_ = false;
    bool enabled3V3Analog_ = false;
};

} // namespace tas

#endif
