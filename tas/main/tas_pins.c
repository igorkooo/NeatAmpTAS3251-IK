#include "tas_pins.h"

esp_err_t tas_pins_init(void)
{
    const gpio_config_t input_config = {
        .pin_bit_mask = (1ULL << TAS_PIN_AMP_FAULT) |
                        (1ULL << TAS_PIN_AMP_CLIP_OTW) |
                        (1ULL << TAS_PIN_AMP_ADDRESS) |
                        (1ULL << TAS_PIN_GOOD_13V2),
        .mode = GPIO_MODE_INPUT,
        .pull_up_en = GPIO_PULLUP_DISABLE,
        .pull_down_en = GPIO_PULLDOWN_DISABLE,
        .intr_type = GPIO_INTR_DISABLE,
    };
    esp_err_t err = gpio_config(&input_config);
    if (err != ESP_OK) {
        return err;
    }

    const gpio_config_t output_config = {
        .pin_bit_mask = (1ULL << TAS_PIN_AMP_RESET) |
                        (1ULL << TAS_PIN_DAC_MUTE) |
                        (1ULL << TAS_PIN_ENABLE_12V) |
                        (1ULL << TAS_PIN_ENABLE_3V3_ANALOG),
        .mode = GPIO_MODE_OUTPUT,
        .pull_up_en = GPIO_PULLUP_DISABLE,
        .pull_down_en = GPIO_PULLDOWN_DISABLE,
        .intr_type = GPIO_INTR_DISABLE,
    };
    err = gpio_config(&output_config);
    if (err != ESP_OK) {
        return err;
    }

    err = gpio_set_level(TAS_PIN_AMP_RESET, 1);
    if (err != ESP_OK) {
        return err;
    }
    err = gpio_set_level(TAS_PIN_DAC_MUTE, 0);
    if (err != ESP_OK) {
        return err;
    }
    err = gpio_set_level(TAS_PIN_ENABLE_12V, 0);
    if (err != ESP_OK) {
        return err;
    }
    err = gpio_set_level(TAS_PIN_ENABLE_3V3_ANALOG, 1);
    if (err != ESP_OK) {
        return err;
    }

    const i2c_master_bus_config_t i2c_config = {
        .i2c_port = TAS_I2C_PORT,
        .sda_io_num = TAS_PIN_I2C_SDA,
        .scl_io_num = TAS_PIN_I2C_SCL,
        .clk_source = I2C_CLK_SRC_DEFAULT,
        .glitch_ignore_cnt = 7,
        .flags.enable_internal_pullup = false,
    };
    i2c_master_bus_handle_t i2c_bus;
    return i2c_new_master_bus(&i2c_config, &i2c_bus);
}