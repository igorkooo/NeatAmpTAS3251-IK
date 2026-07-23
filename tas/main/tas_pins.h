#ifndef TAS_PINS_H
#define TAS_PINS_H

#include "driver/gpio.h"
#include "driver/i2c_master.h"

#define TAS_I2C_PORT I2C_NUM_0
#define TAS_I2C_FREQUENCY_HZ 400000

#define TAS_PIN_I2C_SDA GPIO_NUM_0
#define TAS_PIN_I2C_SCL GPIO_NUM_45

#define TAS_PIN_AMP_RESET GPIO_NUM_42
#define TAS_PIN_DAC_MUTE GPIO_NUM_1
#define TAS_PIN_AMP_FAULT GPIO_NUM_41
#define TAS_PIN_AMP_CLIP_OTW GPIO_NUM_2
#define TAS_PIN_AMP_ADDRESS GPIO_NUM_12

#define TAS_PIN_GOOD_13V2 GPIO_NUM_39
#define TAS_PIN_ENABLE_12V GPIO_NUM_38
#define TAS_PIN_ENABLE_3V3_ANALOG GPIO_NUM_40

esp_err_t tas_pins_init(void);

#endif