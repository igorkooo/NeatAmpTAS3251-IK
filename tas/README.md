| Supported Targets | ESP32 | ESP32-C2 | ESP32-C3 | ESP32-C5 | ESP32-C6 | ESP32-C61 | ESP32-H2 | ESP32-H21 | ESP32-H4 | ESP32-P4 | ESP32-S2 | ESP32-S3 | Linux |
| ----------------- | ----- | -------- | -------- | -------- | -------- | --------- | -------- | --------- | -------- | -------- | -------- | -------- | ----- |

# Tas Example

Starts a FreeRTOS task to print "Tas".

This project targets the ESP32-S3 and is configured for ESP-IDF 6.0.2.

## Local setup

The repository uses a local Python virtual environment for project-side Python
commands. Create it once from the project directory:

```sh
python3 -m venv .venv
source .venv/bin/activate
```

Initialize the ESP-IDF toolchain in each new shell. This sets `IDF_PATH`, adds
`idf.py` to `PATH`, and selects the ESP-IDF tools and its compatible managed
Python environment required by the build:

```sh
export IDF_PATH=/Users/iko/.espressif/v6.0.2/esp-idf
source "$IDF_PATH/export.sh"
```

Run the ESP-IDF commands after `export.sh`; ESP-IDF may replace the active
`.venv` interpreter with its managed environment so all ESP-IDF dependencies
match the installed ESP-IDF release.

Select the target and build:

```sh
idf.py set-target esp32s3
idf.py build
```

The generated `build/compile_commands.json` is used by clangd and C/C++
IntelliSense. Keeping the project build configured ensures ESP-IDF headers
such as `esp_system.h` and `esp_flash.h` resolve without missing-include
warnings.

The test dependencies are listed by `pytest_tas.py`. Install them into the
active virtual environment when PyPI access is available:

```sh
python -m pip install pytest pytest-embedded-idf pytest-embedded-qemu
python -m pytest -q pytest_tas.py
```

## ESP32-S3 Hardware IO

The firmware pin definitions are kept in [tas_pins.h](main/tas_pins.h), and
the startup initialization is implemented in [tas_pins.c](main/tas_pins.c).
The initialization configures the GPIO directions and default power-up states,
then creates the ESP-IDF I2C master bus on `I2C_NUM_0` at 400 kHz.

| Signal | ESP32-S3 IO | Direction / interface | Purpose | Jumper needed |
|--------|-------------|-----------------------|---------|---------------|
| I2C SDA | IO0 | I2C data | Shared I2C data line for TAS3251 and optional ADAU1466 | No |
| I2C SCL | IO45 | I2C clock | Shared I2C clock line for TAS3251 and optional ADAU1466 | No |
| AMP RESET | IO42 | GPIO output | Releases or holds the TAS3251 in reset; active low | Yes |
| DAC MUTE | IO1 | GPIO output | Hardware mute control for the TAS3251; active low | Yes |
| AMP FAULT | IO41 | GPIO input / interrupt | Receives latched TAS3251 fault indications | Yes |
| AMP CLIP/OTW | IO2 | GPIO input / interrupt | Receives clipping or over-temperature warning indications | Yes |
| AMP ADDRESS | IO12 | GPIO input | Reads the TAS3251 ADR strap state for I2C address selection | Yes |
| GOOD 13.2V | IO39 | GPIO input | Confirms that the 13.2 V intermediate rail is ready through jumper U15 | Yes |
| ENABLE 12V | IO38 | GPIO output | Enables the 12 V GVDD analog supply after 13.2 V is good through jumper U15 | Yes |
| ENABLE 3.3V analog | IO40 | GPIO output | Enables the isolated 3.3 V analog rail for TAS3251 DAC_AVDD | Yes |

At startup, the amplifier reset is released, DAC mute remains asserted, the
12 V rail remains disabled until the power sequencing code enables it, and the
3.3 V analog rail is enabled. The I2C lines rely on the board-level 4.7 kOhm
pull-ups.

(See the README.md file in the upper level 'examples' directory for more information about examples.)

## How to use example

Follow detailed instructions provided specifically for this example.

Select the instructions depending on Espressif chip installed on your development board:

- [ESP32 Getting Started Guide](https://docs.espressif.com/projects/esp-idf/en/stable/get-started/index.html)
- [ESP32-S2 Getting Started Guide](https://docs.espressif.com/projects/esp-idf/en/latest/esp32s2/get-started/index.html)


## Example folder contents

The project **tas** contains one source file in C language [tas_main.c](main/tas_main.c). The file is located in folder [main](main).

ESP-IDF projects are built using CMake. The project build configuration is contained in `CMakeLists.txt` files that provide set of directives and instructions describing the project's source files and targets (executable, library, or both).

Below is short explanation of remaining files in the project folder.

```
├── CMakeLists.txt
├── pytest_tas.py               Python script used for automated testing
├── main
│   ├── CMakeLists.txt
│   └── tas_main.c
└── README.md                  This is the file you are currently reading
```

For more information on structure and contents of ESP-IDF projects, please refer to Section [Build System](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/api-guides/build-system.html) of the ESP-IDF Programming Guide.

## Troubleshooting

* Program upload failure

    * Hardware connection is not correct: run `idf.py -p PORT monitor`, and reboot your board to see if there are any output logs.
    * The baud rate for downloading is too high: lower your baud rate in the `menuconfig` menu, and try again.

## Technical support and feedback

Please use the following feedback channels:

* For technical queries, go to the [esp32.com](https://esp32.com/) forum
* For a feature request or bug report, create a [GitHub issue](https://github.com/espressif/esp-idf/issues)

We will get back to you as soon as possible.
