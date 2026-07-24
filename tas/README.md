| Target | ESP-IDF |
| ------ | ------- |
| ESP32-S3 (ESP32-S3-WROOM-1U-N8R8) | 6.0.2 |

# Tas — ESP32-S3 Controller Firmware

ESP32-S3 firmware for the [NeatAmpTAS3251](../README.md) Class-D amplifier
board: a C++ class-based driver stack (see
[Firmware Architecture](#firmware-architecture) below) that sequences the
power rails, brings the TAS3251 out of reset, configures it over I2C, and
monitors /FAULT, /CLIP_OTW and the 13.2V rail — see
[ESP32-S3 Hardware IO](#esp32-s3-hardware-io) for the underlying pin map.

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

`sdkconfig.defaults` sets the flash size (8 MB) and PSRAM (8 MB Quad) to
match the ESP32-S3-WROOM-1U-N8R8 module actually used on this board. If a
fresh `sdkconfig` ever comes up as 2 MB flash / no PSRAM again (check the
boot log — see
[Chip and firmware info logging](#chip-and-firmware-info-logging) — or
`grep CONFIG_SPIRAM sdkconfig`), run `idf.py reconfigure`; if it's still
missing, confirm `esp_psram` is still in `main`'s `PRIV_REQUIRES` in
`main/CMakeLists.txt` — this project builds with `MINIMAL_BUILD ON`
(root `CMakeLists.txt`), which silently drops `CONFIG_SPIRAM` from the
Kconfig tree entirely if nothing depends on `esp_psram`.

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

## Debugging (OpenOCD)

The `gdbtarget` debug configuration in `.vscode/launch.json` has
`runOpenOCD` default to `true` (see the extension's `package.json`), so
**every** "Start Debugging" tries to spawn a fresh OpenOCD server. If a
previous session was force-stopped, crashed, or otherwise didn't shut its
OpenOCD process down cleanly, that old server keeps holding ports 3333
(GDB), 4444 (telnet) and 6666 (Tcl) — the new one then fails to bind them,
which is what "server already started" / can't-start-debug means.

`.vscode/launch.json`'s debug configuration now runs a `preLaunchTask`
("Reset OpenOCD", defined in `.vscode/tasks.json`) before every debug
session, which kills any leftover OpenOCD process first
(`pkill -f 'bin/openocd'` on macOS/Linux, `taskkill /IM openocd.exe` on
Windows) so the new one always gets a clean set of ports. If you ever need
to do this by hand instead: **Terminal → Run Task… → Reset OpenOCD**, or
directly:

```sh
pkill -f 'bin/openocd'    # macOS / Linux
```

### Debug launches an old binary / doesn't flash first

The `gdbtarget` `attach` config's `buildFlashMonitor` option (build, flash
and monitor before attaching) defaults to `false`. With it unset, clicking
Debug just attaches GDB via OpenOCD to **whatever is already on the
chip** — it does not build or flash your current source first. If the
serial log shown by a debug/monitor session doesn't match your code (e.g.
still shows the stock `hello_world` example, an old project name, or an old
compile timestamp in the `app_init:` banner lines — see
[Chip and firmware info logging](#chip-and-firmware-info-logging) below for
where to check that), this is almost always why: the board was never
actually reflashed with the current build, only attached to.

`.vscode/launch.json`'s debug configuration now sets `"buildFlashMonitor":
true`, so every Debug launch builds, flashes and monitors before attaching.
If you ever want to attach without reflashing (e.g. to inspect a crash
without touching the board's current state), temporarily set it back to
`false` for that session, or flash explicitly first instead:

```sh
idf.py -p PORT flash
```

## ESP32-S3 Hardware IO

The firmware pin definitions are kept in [tas_pins.h](main/tas_pins.h). GPIO
configuration and default power-up states are owned by
[PowerSupplies](main/power_supplies.cpp) and [Tas3251](main/tas3251.cpp) (see
[Firmware Architecture](#firmware-architecture)); the shared I2C master bus
(`I2C_NUM_0`, 400 kHz) is created by [I2cBus](main/i2c_bus.cpp).

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

At GPIO configuration time (`Tas3251::init()`), RESET_AMP and DAC_MUTE are
driven to their safe defaults — reset asserted, muted — and both the 12 V and
3.3 V analog rails start disabled; `SystemController::startup()` then runs
the sequence in [Firmware Architecture](#firmware-architecture) to bring
everything up in order. The I2C lines rely on the board-level 4.7 kOhm
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

## Firmware Architecture

The firmware is C++ (`gnu++26`, exceptions and RTTI disabled per
`sdkconfig`, matching the rest of ESP-IDF). Each hardware concern is owned by
one class; `tas_pins.h` remains the single source of truth for GPIO numbers.

| Class | Files | Owns |
|-------|-------|------|
| `tas::I2cBus` | [i2c_bus.hpp](main/i2c_bus.hpp) / [.cpp](main/i2c_bus.cpp) | The shared I2C master bus (SDA/SCL), device attach/probe |
| `tas::Tas3251` | [tas3251.hpp](main/tas3251.hpp) / [.cpp](main/tas3251.cpp) | RESET_AMP, DAC_MUTE, /FAULT + /CLIP_OTW IRQs, AMP ADDRESS strap, book/page I2C register access |
| `tas::Dsp` | [dsp_adau1466.hpp](main/dsp_adau1466.hpp) / [.cpp](main/dsp_adau1466.cpp) | DSP_RESET, DSP_SELFBOOT, I2C presence probe for the optional ADAU1466 |
| `tas::PowerSupplies` | [power_supplies.hpp](main/power_supplies.hpp) / [.cpp](main/power_supplies.cpp) | GOOD_13.2V sense, ENABLE_12V, ENABLE_3.3V analog |
| `tas::I2sBus` | [i2s_bus.hpp](main/i2s_bus.hpp) / [.cpp](main/i2s_bus.cpp) | ESP-IDF I2S std-mode TX channel for the shared TAS3251/DSP audio bus |
| `tas::StatusLed` | [status_led.hpp](main/status_led.hpp) / [.cpp](main/status_led.cpp) | Bit-banged SK9822 (APA102-compatible) driver for the U8/U9 status LED chain |
| `tas::SystemController` | [system_controller.hpp](main/system_controller.hpp) / [.cpp](main/system_controller.cpp) | Startup sequencing, fault/clip handling, and the steady-state monitor loop, composing the classes above |

`main/tas_main.cpp` (`app_main`) only constructs a `SystemController` and
calls `startup()` then `runForever()`.

⚠️ **`I2sPins` in `i2s_bus.hpp` has no wired GPIOs on the current board.**
Per `Netlist_Class_D_amp_2026-07-23.enet` (repository root), connector U11
(MCLK/LRCK/SCLK/SDIN) only reaches the TAS3251 — the ESP32-S3 has no *PCB*
net in common with the I2S bus on this revision, despite the top-level
README's "ESP32-S3 directly (for testing/streaming)" bullet. `I2sBus` is a
working scaffold for a future revision (or rework) that does wire it up; it
isn't used by `SystemController` yet. See
[I2S Test Tone (H2-to-U11 Patch)](#i2s-test-tone-h2-to-u11-patch) below for a
way to exercise it today with a manual patch instead of a board respin.

### Startup sequence

`SystemController::startup()` runs the following states, logging each
transition at `ESP_LOGI` and any failure at `ESP_LOGE` (aborting the sequence
on failure, leaving the amplifier held in reset and muted):

```
INIT                    → status LED (blue), I2C bus, GPIOs, /FAULT + /CLIP_OTW IRQs, DSP probe
AMP_RESET               → RESET_AMP asserted, DAC_MUTE asserted
WAIT_POWER_STABLE       → 100 ms delay (see ⚠️ below)
CHECK_13V2              → poll GOOD_13.2V; abort if not good
ENABLE_12V              → enable the 12V GVDD analog rail
ENABLE_3V3_ANALOG       → enable the 3.3V analog (DAC_AVDD) rail
WAIT_PRE_RESET_RELEASE  → 50 ms delay (see ⚠️ below)
RELEASE_RESET           → RESET_AMP released
CONFIGURE               → power on (B0-P0-R2), set a conservative low startup volume
UNMUTE                  → DAC_MUTE released
READY                   → status LED (green), hand off to runForever()
```

Any failure along the way aborts the sequence, sets `SystemController::status()`
to `StartupFailed`, and turns the status LED amber (see
[Status LED (U8/U9)](#status-led-u8u9) below) — the amplifier stays held in
reset and muted.

`SystemController::runForever()` then polls `/FAULT`, `/CLIP_OTW` and
GOOD_13.2V every 50 ms, logging state changes and reacting to `/FAULT` and
`/CLIP_OTW` as described in [Status LED (U8/U9)](#status-led-u8u9).

⚠️ **Open questions carried over from architecture review, marked `TODO` in
the code (`system_controller.cpp`, `tas3251.hpp`) — verify against the actual
TAS3251 datasheet before trusting them in the field:**

- The 100 ms `WAIT_POWER_STABLE` and 50 ms `WAIT_PRE_RESET_RELEASE` delays
  are placeholders, not datasheet-derived timings. If `GOOD_13.2V` already
  guarantees the rails have settled, the first delay may be unnecessary; the
  second should be checked against the TAS3251's minimum reset/supply
  sequencing spec.
- Whether the 3.3V analog (AVDD) rail must be enabled a fixed time
  before/after the 12V (GVDD) rail, rather than immediately after it as
  implemented, is unconfirmed.
- `Tas3251::powerOn()`'s DEVICE_CTRL_2 (B0-P0-R2) bit encoding and
  `Tas3251::setVolumeDb()`'s dB-to-register-code formula both follow common
  TI PurePath conventions but are **unverified for TAS3251 specifically**.
  The startup sequence deliberately uses a conservative low volume
  regardless, so a wrong-but-quiet result is the worst case today — confirm
  both against the datasheet before writing arbitrary volumes in the field.
- `Dsp`'s placeholder I2C address (`0x38`) is unconfirmed; harmless today
  since no board has the ADAU1466 populated.

### Status LED (U8/U9)

U8 and U9 are SK9822 (APA102-compatible) addressable RGB LEDs, chained in
series and driven from the ESP32-S3 over a bit-banged two-wire link:
IO36 → 27 Ω → `L_SDI` (data, into U8) and IO37 → 27 Ω → `L_CKI` (clock); U8's
CKO/SDO feed U9's CKI/SDI. This is **not** a WS2812B (single-wire) — see the
correction in the top-level [README.md](../README.md#visual-indicators).
`tas::StatusLed` treats the chain as two independently-addressable LEDs and
gives them different jobs:

- **LED 0 (U8) — persistent `SystemController::Status`:**

  | Status | Color | Meaning |
  |--------|-------|---------|
  | `Booting` | Blue | `startup()` is running |
  | `Ready` | Green | Startup succeeded; amp unmuted, nominal volume |
  | `Fault` | Red | `/FAULT` latched; amp muted at low volume (see below) |
  | `StartupFailed` | Amber | `startup()` aborted before reaching `Ready` |

- **LED 1 (U9) — transient `/CLIP_OTW` indicator:** off normally; flashes
  amber for ~120 ms each time `/CLIP_OTW` fires, then returns to off. Purely
  a visual cue — it does not reflect or change `Status`.

**Fault vs. clip handling** (`SystemController::handleFault()` /
`handleClipOtw()`, called from `runForever()`):

- **`/FAULT`**: logs the latched fault bytes (B0-P0-R94/R95), re-asserts
  `DAC_MUTE` and sets both channels to the same conservative low volume used
  at startup, sets `Status` to `Fault` (LED 0 red), and **stays there** —
  there's no automatic recovery yet (see the `TODO` in
  `SystemController::handleFault()` and the existing "Fault Handling"
  section in the top-level README for the intended recovery policy: wait for
  thermal recovery, then toggle `RESET_AMP`).
- **`/CLIP_OTW`**: logs only (`ESP_LOGW`) and flashes LED 1 — no mute, no
  volume change, no `Status` change. This is a deliberate design choice:
  clipping is common/non-latching and shouldn't itself silence the amp,
  unlike a real `/FAULT`.

### Chip and firmware info logging

Before the `INIT` state, `startup()` logs everything readily available about
the running chip and firmware image at `ESP_LOGI`: target/core
count/silicon revision/radio features, flash size and type, WiFi-STA MAC
address, current and minimum-ever free heap, the firmware's project
name/version/build timestamp/ESP-IDF version (from `esp_app_get_description()`,
i.e. this project's actual name/version, not a stale one), and the reason
for the last reset (power-on, software, watchdog, brownout, etc.). This is
the first thing to check in a serial capture — the project name and compile
timestamp there is the ground truth for what's actually running on the
board, e.g. if it still says `hello_world` instead of `tas`, the board was
never flashed with this project's build; see
[Debug launches an old binary / doesn't flash first](#debug-launches-an-old-binary--doesnt-flash-first)
above.

### Generating documentation

All classes are commented for Doxygen (`@file`/`@brief`/`@param`/`@return`/
`@note`/`@warning`). Generate HTML docs from the `tas/` directory:

```sh
doxygen Doxyfile
open docs/html/index.html
```

## I2S Test Tone (H2-to-U11 Patch)

**Status: proposed / not yet implemented in firmware.** This is a bring-up
idea for exercising the audio path without a board respin, recorded here
before writing the code.

Connector H2 (2x12, the main board-to-board header) breaks out several
ESP32-S3 GPIOs that this firmware does not otherwise use. Checked against
`Netlist_Class_D_amp_2026-07-23.enet`, the following H2 pins are genuinely
spare (not assigned to any signal in [ESP32-S3 Hardware IO](#esp32-s3-hardware-io)
or [Potential DSP (ADAU1466) Connectivity](#potential-dsp-adau1466-connectivity)):

| H2 pin | ESP32-S3 IO | Notes |
|--------|-------------|-------|
| 16 | IO13 | free |
| 18 | IO14 | free |
| 20 | IO21 | free |
| 4 | IO3 | free, but an ESP32-S3 strapping pin (JTAG source select) — avoid |
| 6 | IO46 | free, but an ESP32-S3 strapping pin (ROM print control) — avoid |
| 7 | IO8 | free |
| 8 | IO9 | free |
| 10 | IO10 | free |
| 12 | IO11 | free |

Since connector U11 (the I2S input header, see
[Firmware Architecture](#firmware-architecture) above) only reaches the
TAS3251 and nothing else drives it, a user-installed patch from three of the
free H2 pins to U11 lets the ESP32-S3 act as a temporary I2S source for the
amplifier — no board respin needed:

| U11 pin | Signal | Patch to H2 pin | ESP32-S3 IO |
|---------|--------|------------------|-------------|
| 4 | LRCK (WS) | 18 | IO14 |
| 5 | SCLK (BCLK) | 16 | IO13 |
| 6 | SDIN (DOUT, ESP32 → TAS3251) | 20 | IO21 |
| 3 | MCLK | *TBD* | — |
| 1 | GND | any H2 GND pin (15/17/19/21-24) | — |

MCLK is left open for now: it's unconfirmed whether the TAS3251's I2S input
requires an external MCLK or can derive its clock from BCLK/LRCK alone
(`I2sBus`/`i2s_std` do support MCLK-less operation). If bring-up shows MCLK
is required, H2 pin 7 (IO8), 8 (IO9), 10 (IO10) or 12 (IO11) are the next
free candidates — avoid IO3/IO46 (H2 pins 4/6) since they're ESP32-S3
strapping pins.

⚠️ **Do not patch H2 to U11 while a DIR9001 module (or anything else) is also
connected to U11** — the ESP32-S3 would then be driving LRCK/SCLK/SDIN into
whatever else is driving those same lines.

### Planned firmware behavior

Once implemented: 5 seconds after `SystemController::startup()` reaches the
`READY` state (i.e. after the amplifier is configured and unmuted), the
firmware logs a new state (e.g. `TEST_TONE_START`) and starts writing a
continuous 1 kHz sine wave to both channels via `I2sBus::writeSamples()` —
same 16-bit/48 kHz stereo interleaved format `I2sBus` already assumes. This
would likely live in a small new class (e.g. `TestToneGenerator`) that owns
the sample buffer and reuses `I2sBus` rather than being folded into
`SystemController` directly, so it can be compiled out entirely once no
longer needed for bring-up.

## Project folder contents

```
├── CMakeLists.txt
├── Doxyfile                     Doxygen config (see Generating documentation above)
├── sdkconfig                    Board-specific build configuration (see Configuration above)
├── pytest_tas.py                 Automated test entry point
├── main
│   ├── CMakeLists.txt
│   ├── tas_main.cpp               App entry point (app_main)
│   ├── tas_pins.h                 GPIO/I2C pin definitions, single source of truth
│   ├── i2c_bus.hpp / .cpp          tas::I2cBus
│   ├── tas3251.hpp / .cpp          tas::Tas3251
│   ├── dsp_adau1466.hpp / .cpp     tas::Dsp
│   ├── power_supplies.hpp / .cpp   tas::PowerSupplies
│   ├── i2s_bus.hpp / .cpp          tas::I2sBus
│   └── system_controller.hpp / .cpp  tas::SystemController
└── README.md
```

## Troubleshooting

* Program upload failure

    * Hardware connection is not correct: run `idf.py -p PORT monitor`, and reboot your board to see if there are any output logs.
    * The baud rate for downloading is too high: lower your baud rate via [Configuration (menuconfig)](#configuration-menuconfig), and try again.




