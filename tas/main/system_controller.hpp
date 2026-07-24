/**
 * @file system_controller.hpp
 * @brief Orchestrates the amplifier startup sequence and the steady-state
 *        monitoring loop described in the tas/README.md "Firmware
 *        Architecture" section.
 */
#ifndef TAS_SYSTEM_CONTROLLER_HPP
#define TAS_SYSTEM_CONTROLLER_HPP

#include "dsp_adau1466.hpp"
#include "esp_err.h"
#include "i2c_bus.hpp"
#include "power_supplies.hpp"
#include "tas3251.hpp"

namespace tas {

/**
 * @brief Top-level state machine: bring the amplifier up in a safe,
 *        logged sequence, then hand off to a steady-state monitoring loop.
 *
 * Every state transition is logged at ESP_LOGI; every failure aborts the
 * sequence (leaving the amplifier held in reset and muted) and is logged
 * at ESP_LOGE.
 */
class SystemController {
public:
    SystemController() = default;

    /**
     * @brief Run the startup sequence: init peripherals, reset the
     *        amplifier, sequence the power rails, release reset, configure
     *        the TAS3251 over I2C, and unmute.
     * @return ESP_OK if the amplifier reached the "ready" state.
     */
    esp_err_t startup();

    /**
     * @brief Steady-state monitoring loop: polls /FAULT, /CLIP_OTW and the
     *        13.2V-good line. Does not return under normal operation.
     */
    void runForever();

private:
    I2cBus i2cBus_;
    PowerSupplies power_;
    Tas3251 amp_;
    Dsp dsp_;
};

} // namespace tas

#endif
