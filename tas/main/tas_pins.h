/**
 * @file tas_pins.h
 * @brief Raw ESP32-S3 GPIO/I2C pin assignments for the NeatAmpTAS3251 board.
 *
 * These constants are the single source of truth for the pin mapping
 * documented in the "ESP32-S3 Hardware IO" and "Potential DSP (ADAU1466)
 * Connectivity" tables in the top-level README.md of this firmware project.
 * They are consumed by tas::PowerSupplies, tas::Tas3251 and tas::Dsp; no
 * other file should hardcode a GPIO number.
 */
#ifndef TAS_PINS_H
#define TAS_PINS_H

#include "driver/gpio.h"
#include "driver/i2c_master.h"

/** @name Shared I2C control bus (TAS3251 + optional ADAU1466 registers) */
///@{
#define TAS_I2C_PORT I2C_NUM_0
#define TAS_I2C_FREQUENCY_HZ 400000

#define TAS_PIN_I2C_SDA GPIO_NUM_0
#define TAS_PIN_I2C_SCL GPIO_NUM_45
///@}

/** @name TAS3251 amplifier control/status lines */
///@{
#define TAS_PIN_AMP_RESET GPIO_NUM_42
#define TAS_PIN_DAC_MUTE GPIO_NUM_1
#define TAS_PIN_AMP_FAULT GPIO_NUM_41
#define TAS_PIN_AMP_CLIP_OTW GPIO_NUM_2
#define TAS_PIN_AMP_ADDRESS GPIO_NUM_12
///@}

/** @name Power sequencing lines (see PowerSupplies) */
///@{
#define TAS_PIN_GOOD_13V2 GPIO_NUM_39
#define TAS_PIN_ENABLE_12V GPIO_NUM_38
#define TAS_PIN_ENABLE_3V3_ANALOG GPIO_NUM_40
///@}

/** @name Optional ADAU1466 DSP control lines (connector U10) */
///@{
#define TAS_PIN_DSP_RESET GPIO_NUM_47
#define TAS_PIN_DSP_SELFBOOT GPIO_NUM_48
///@}

/**
 * @name Status LED chain (U8, U9 — SK9822, APA102-compatible clocked RGB)
 * U8 is first in the chain (data/clock in from the ESP32-S3), its CKO/SDO
 * feed U9's CKI/SDI. Both lines are ESP32-S3 outputs through 27 Ohm series
 * resistors (R17 on CKI, R18 on SDI, per Netlist_Class_D_amp_2026-07-23.enet).
 */
///@{
#define TAS_PIN_STATUS_LED_SDI GPIO_NUM_36
#define TAS_PIN_STATUS_LED_CKI GPIO_NUM_37
///@}

/**
 * @note I2S audio bus (MCLK/BCLK/LRCK/SDIN) is NOT currently wired to any
 * ESP32-S3 GPIO. Per Netlist_Class_D_amp_2026-07-23.enet (repository root),
 * connector U11 (the external DIR9001/DSP I2S header) only connects to the
 * TAS3251 (U12 pins 47-50) through 22 Ohm series resistors — the ESP32-S3
 * (U6) has no net in common with MCLK/LRCK/SCLK/SDIN on the current board
 * revision. tas::I2sBus therefore takes its pin assignment as a runtime
 * parameter rather than a macro defined here; do not add ESP32 I2S pin
 * macros to this file until a board revision actually routes them.
 */

#endif
