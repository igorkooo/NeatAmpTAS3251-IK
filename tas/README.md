| Target | ESP-IDF |
| ------ | ------- |
| ESP32-S3 (ESP32-S3-WROOM-1U-N8R8) | 6.0.2 |

# Tas — ESP32-S3 Controller Firmware

ESP32-S3 firmware for the [NeatAmpTAS3251](../README.md) Class-D amplifier
board: initializes the TAS3251/DSP control pins on boot (see
[ESP32-S3 Hardware IO](#esp32-s3-hardware-io) below) and reports chip info
over the console.

This firmware targets the ESP32-S3 only — the board and this project are not
built for any other Espressif chip.

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
export IDF_PATH=~/.espressif/v6.0.2/esp-idf
source "$IDF_PATH/export.sh"
```

`~/.espressif/v6.0.2/esp-idf` is where the ESP-IDF Installation Manager
(`eim`) installs ESP-IDF 6.0.2 by default on any machine/user; adjust the
path only if you installed it somewhere else.

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

## Configuration (menuconfig)

The portable way to open the config menu, on any machine, once the toolchain
is exported as above:

```sh
idf.py menuconfig
```

### VSCode SDK Configuration Editor

If the ESP-IDF extension's "SDK Configuration Editor" (GUI menuconfig) does
not open, it is almost always because `.vscode/settings.json`'s
`idf.currentSetup` does not match an installation known to the ESP-IDF
Installation Manager (`eim`) on this machine. That setting must hold an
**install ID** (e.g. `esp-idf-<hash>`), not a filesystem path — a path there
looks plausible but silently fails to resolve.

To fix it on any machine after installing ESP-IDF via `eim`:

```sh
cat ~/.espressif/tools/eim_idf.json
```

Copy the `idfSelectedId` value (or the `id` of the entry matching the ESP-IDF
version you want) into `.vscode/settings.json`:

```json
"idf.currentSetup": "esp-idf-<hash-from-eim_idf.json>"
```

This ID is generated per machine by `eim`, so it will differ on every
computer — re-run this step after cloning the repo onto a new machine or
after reinstalling ESP-IDF. Reload the VSCode window afterwards.

`idf.port` in the same file is also machine-specific (the serial device path
of the connected board): `/dev/tty.usbmodem*` on macOS, `/dev/ttyUSB*` or
`/dev/ttyACM*` on Linux, `COM*` on Windows. Update it to match your board
before flashing or monitoring from VSCode.

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

## Project folder contents

```
├── CMakeLists.txt
├── sdkconfig                   Board-specific build configuration (see Configuration above)
├── pytest_tas.py                Automated test entry point
├── main
│   ├── CMakeLists.txt
│   ├── tas_main.c               App entry point (app_main)
│   ├── tas_pins.h                Pin definitions for the hardware IO tables above
│   └── tas_pins.c                GPIO/I2C init using those pin definitions
└── README.md
```

## Troubleshooting

* Program upload failure

    * Hardware connection is not correct: run `idf.py -p PORT monitor`, and reboot your board to see if there are any output logs.
    * The baud rate for downloading is too high: lower your baud rate via [Configuration (menuconfig)](#configuration-menuconfig), and try again.
