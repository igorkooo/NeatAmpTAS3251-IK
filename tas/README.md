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
| AMP RESET | IO42 | GPIO output | Releases or holds the TAS3251 in reset; active low | Yes — U14 pins 5-6 (IO42 to TAS_RESET) |
| DAC MUTE | IO1 | GPIO output | Hardware mute control for the TAS3251; active low | Yes — U14 pins 1-2 (IO1 to TAS_MUTE) |
| AMP FAULT | IO41 | GPIO input / interrupt | Receives latched TAS3251 fault indications | Yes — U14 pins 7-8 (IO41 to TAS_FAULT) |
| AMP CLIP/OTW | IO2 | GPIO input / interrupt | Receives clipping or over-temperature warning indications | Yes — U14 pins 3-4 (IO2 to TAS_CLIP) |
| AMP ADDRESS | IO12 | GPIO input | Reads the TAS3251 ADR strap state for I2C address selection | Yes — H2 pins 13-14 (TAS_ADR to ESP_TAS_ADR) |
| GOOD 13.2V | IO39 | GPIO input | Confirms that the 13.2 V intermediate rail is ready through jumper U15 | Yes — U15 pins 5-6 (IO39 to GOOD_13.2V) |
| ENABLE 12V | IO38 | GPIO output | Enables the 12 V GVDD analog supply after 13.2 V is good through jumper U15 | Yes — U15 pins 7-8 (IO38 to ENABLE_12V) |
| ENABLE 3.3V analog | IO40 | GPIO output | Enables the isolated 3.3 V analog rail for TAS3251 DAC_AVDD | Yes — U15 pins 3-4 (IO40 to ENABLE_3.3V) |

Header U14 (2x4, 2.54 mm) carries the amplifier control/status lines between
the ESP32-S3 and the TAS3251, and header U15 (2x4, 2.54 mm) carries the power
sequencing lines between the ESP32-S3 and the rail-good/enable signals; on
both, each ESP32-S3 GPIO net and its counterpart signal are broken out to
adjacent pins in the same column so that a 2-pin shunt bridges them. Header
H2 (2x12) is the main board-to-board connector, and only its pins 13-14 need
a jumper to route the TAS3251 ADR strap to the ESP32-S3. None of these
headers ship with shunts populated by default, so populate the pin pairs
above per the current firmware pin mapping in [tas_pins.h](main/tas_pins.h)
before relying on these signals; per the netlist
(`Netlist_Class_D_amp_2026-07-23.enet` at the repository root), leaving a
pair open floats that signal instead of connecting it.

At startup, the amplifier reset is released, DAC mute remains asserted, the
12 V rail remains disabled until the power sequencing code enables it, and the
3.3 V analog rail is enabled. The I2C lines rely on the board-level 4.7 kOhm
pull-ups.

## Potential DSP (ADAU1466) Connectivity

The board breaks out a DSP interface on connector U10 (1x6, 2.54 mm) for a
future ADAU1466 DSP module. RESET and SELFBOOT are direct GPIO connections;
the I2C lines join the shared TAS3251 bus through 22 Ohm series resistors
rather than a separate bus.

| Signal | ESP32-S3 IO | U10 pin | Direction / interface | Purpose | Jumper needed |
|--------|-------------|---------|-----------------------|---------|---------------|
| DSP_RESET | IO47 | 3 | GPIO output | Resets the ADAU1466 DSP | No |
| DSP_SELFBOOT | IO48 | 6 | GPIO output | Sets the ADAU1466 self-boot mode strap | No |
| DSP SDA | IO0 | 4 | I2C data | Joins the shared I2C data line via 22 Ohm series resistor R19 | No |
| DSP SCL | IO45 | 5 | I2C clock | Joins the shared I2C clock line via 22 Ohm series resistor R20 | No |

U10 pins 1 and 2 carry GND and 3.3V respectively for powering the DSP module.

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
