idf_component_register(SRCS "tas_main.c" "tas_pins.c"
                       PRIV_REQUIRES esp_driver_gpio esp_driver_i2c spi_flash
                       INCLUDE_DIRS "")
