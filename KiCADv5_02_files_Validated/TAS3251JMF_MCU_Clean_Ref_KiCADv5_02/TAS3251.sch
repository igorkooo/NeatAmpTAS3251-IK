EESchema Schematic File Version 4
LIBS:TAS3251JMF_MCU-cache
EELAYER 26 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 2 3
Title "JMF Neat Amp"
Date "2019-11-10"
Rev ""
Comp ""
Comment1 "Licence: CC BY-SA 4.0"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 550  7250 0    120  ~ 0
I2S
Wire Wire Line
	5950 6450 6050 6450
Text Label 5350 8750 0    60   ~ 0
ADR
Text Notes 600  7900 0    120  ~ 0
I2C
Text Label 5950 7850 0    60   ~ 0
SCL
Text Label 5950 7950 0    60   ~ 0
SDA
Wire Wire Line
	6550 7350 3450 7350
Wire Wire Line
	6550 7450 3550 7450
Wire Wire Line
	6550 7550 3650 7550
Wire Wire Line
	6550 7650 3750 7650
Text Label 9050 4950 0    48   ~ 0
DAC_OUTB+
Text Label 9050 5050 0    60   ~ 0
DAC_OUTB-
Text Label 9050 5350 0    60   ~ 0
DAC_OUTA-
Text Label 9050 5250 0    60   ~ 0
DAC_OUTA+
Text GLabel 5750 6850 0    60   Input ~ 0
SPK_INA+
Wire Notes Line
	5850 7250 5850 6750
Text Notes 5000 6900 0    79   ~ 0
DAC
Text Notes 4650 6900 0    79   ~ 0
FROM
Wire Wire Line
	6550 6850 5750 6850
Wire Wire Line
	5750 6950 6550 6950
Wire Wire Line
	6550 7050 5750 7050
Wire Wire Line
	5750 7150 6550 7150
Wire Wire Line
	8950 5850 9150 5850
Wire Wire Line
	8950 5950 9750 5950
Wire Wire Line
	8950 6450 9150 6450
Wire Wire Line
	8950 6550 9750 6550
Text Label 9050 6250 0    60   ~ 0
SPK_OUTB-
Text Label 9050 6150 0    60   ~ 0
SPK_OUTB+
Text Label 9050 5650 0    60   ~ 0
SPK_OUTA-
Text Label 9050 5550 0    60   ~ 0
SPK_OUTA+
Wire Wire Line
	9750 5550 8950 5550
Wire Wire Line
	10750 5550 9750 5550
Wire Wire Line
	16150 5550 10750 5550
Wire Wire Line
	16150 4050 16150 5550
Wire Wire Line
	16350 4050 16150 4050
Wire Wire Line
	10350 5650 8950 5650
Wire Wire Line
	10650 5650 10350 5650
Wire Wire Line
	16350 5650 10650 5650
Wire Wire Line
	9750 6150 8950 6150
Wire Wire Line
	10650 6150 9750 6150
Wire Wire Line
	16250 6150 10650 6150
Wire Wire Line
	16250 7250 16250 6150
Wire Wire Line
	16350 7250 16250 7250
Wire Wire Line
	10350 6250 8950 6250
Wire Wire Line
	10750 6250 10350 6250
Wire Wire Line
	16150 6250 10750 6250
Wire Wire Line
	16150 8850 16150 6250
Wire Wire Line
	16350 8850 16150 8850
Wire Wire Line
	9750 5850 9450 5850
Wire Wire Line
	9750 5550 9750 5850
Wire Wire Line
	10350 5950 10050 5950
Wire Wire Line
	10350 5650 10350 5950
Wire Wire Line
	9750 6450 9450 6450
Wire Wire Line
	9750 6150 9750 6450
Wire Wire Line
	10350 6550 10050 6550
Wire Wire Line
	10350 6250 10350 6550
Text Label 5950 7350 0    60   ~ 0
MCLK
Text Label 5950 7450 0    60   ~ 0
SCLK
Text Label 5950 7650 0    60   ~ 0
SDIN
$Comp
L power:GND #GND_08
U 1 1 5B69DE46
P 5350 2250
F 0 "#GND_08" H 5350 2390 20  0000 C CNN
F 1 "+GND" H 5350 2360 30  0000 C CNN
F 2 "" H 5350 2250 70  0000 C CNN
F 3 "" H 5350 2250 70  0000 C CNN
	1    5350 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2150 5350 2250
Wire Wire Line
	4550 1650 4550 1750
Wire Wire Line
	5350 1750 5350 1850
Text Label 5450 1750 0    60   ~ 0
GVDD_A
Wire Wire Line
	6050 1750 5350 1750
Wire Wire Line
	6050 3950 6050 1750
Wire Wire Line
	6050 5250 6050 3950
Wire Wire Line
	6550 5250 6050 5250
$Comp
L power:GND #GND_09
U 1 1 5B69DE45
P 5350 3450
F 0 "#GND_09" H 5350 3590 20  0000 C CNN
F 1 "+GND" H 5350 3560 30  0000 C CNN
F 2 "" H 5350 3450 70  0000 C CNN
F 3 "" H 5350 3450 70  0000 C CNN
	1    5350 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3350 5350 3450
Wire Wire Line
	4550 2850 4550 2950
Wire Wire Line
	5350 2950 5350 3050
Text Label 5450 2950 0    60   ~ 0
GVDD_B
Wire Wire Line
	5950 2950 5350 2950
Wire Wire Line
	5950 4150 5950 2950
Wire Wire Line
	5950 5350 5950 4150
Wire Wire Line
	6550 5350 5950 5350
$Comp
L power:GND #GND_07
U 1 1 5B69DE44
P 5000 5950
F 0 "#GND_07" H 5000 6090 20  0000 C CNN
F 1 "+GND" H 5000 6060 30  0000 C CNN
F 2 "" H 5000 5950 70  0000 C CNN
F 3 "" H 5000 5950 70  0000 C CNN
	1    5000 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 5850 5450 5850
Wire Wire Line
	6550 5850 6350 5850
Wire Wire Line
	6350 5550 5450 5550
Wire Wire Line
	6550 5550 6350 5550
Wire Wire Line
	6350 5450 6150 5450
Wire Wire Line
	6350 5550 6350 5450
Wire Wire Line
	6350 5750 6150 5750
Wire Wire Line
	6350 5850 6350 5750
Wire Wire Line
	4650 4550 4650 4450
Wire Wire Line
	4150 4550 4650 4550
Wire Wire Line
	3950 4550 4150 4550
Wire Wire Line
	3950 5650 3950 4550
Wire Wire Line
	4750 5650 3950 5650
Wire Wire Line
	6550 5650 4750 5650
Wire Wire Line
	4750 5550 4550 5550
Wire Wire Line
	4750 5650 4750 5550
$Comp
L power:GND #GND_02
U 1 1 5B69DE42
P 2850 6050
F 0 "#GND_02" H 2850 6190 20  0000 C CNN
F 1 "+GND" H 2850 6160 30  0000 C CNN
F 2 "" H 2850 6050 70  0000 C CNN
F 3 "" H 2850 6050 70  0000 C CNN
	1    2850 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #GND_04
U 1 1 5B69DE41
P 3250 6050
F 0 "#GND_04" H 3250 6190 20  0000 C CNN
F 1 "+GND" H 3250 6160 30  0000 C CNN
F 2 "" H 3250 6050 70  0000 C CNN
F 3 "" H 3250 6050 70  0000 C CNN
	1    3250 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5550 3250 5650
Wire Wire Line
	2850 5550 2850 5650
Wire Wire Line
	2850 5550 2850 5450
Wire Wire Line
	3250 5550 2850 5550
Wire Wire Line
	3750 5550 3250 5550
Wire Wire Line
	3750 6350 3750 5550
Wire Wire Line
	5450 6350 3750 6350
Wire Wire Line
	5450 5950 5450 6350
Wire Wire Line
	6550 5950 5450 5950
$Comp
L power:GND #GND_01
U 1 1 5B69DE3F
P 6200 10100
F 0 "#GND_01" H 6200 10240 20  0000 C CNN
F 1 "+GND" H 6200 10210 30  0000 C CNN
F 2 "" H 6200 10100 70  0000 C CNN
F 3 "" H 6200 10100 70  0000 C CNN
	1    6200 10100
	0    -1   -1   0   
$EndComp
Text Notes 6300 10800 2    72   ~ 0
OSCILLATOR
Text Notes 6050 11050 2    72   ~ 0
SYNC
Text Notes 6250 10950 2    72   ~ 0
INTERFACE
Wire Wire Line
	6000 10100 6200 10100
Wire Wire Line
	5900 10100 6000 10100
Wire Wire Line
	5900 10200 5900 10100
Wire Wire Line
	6000 10100 6000 10200
Text Label 6100 9650 1    60   ~ 0
OSC-IOM
Text Label 5800 9650 1    60   ~ 0
OSC-IOP
Wire Wire Line
	10050 7450 10050 7950
Wire Wire Line
	8950 7450 10050 7450
Text Label 9050 7450 0    60   ~ 0
C_START
Wire Wire Line
	17150 4050 17150 4150
$Comp
L power:GND #GND_026
U 1 1 5B69DE3E
P 17150 4550
F 0 "#GND_026" H 17150 4690 20  0000 C CNN
F 1 "+GND" H 17150 4660 30  0000 C CNN
F 2 "" H 17150 4550 70  0000 C CNN
F 3 "" H 17150 4550 70  0000 C CNN
	1    17150 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	17150 4450 17150 4550
Text Label 17350 4050 0    60   ~ 0
OUTA+
Wire Wire Line
	17150 5650 17150 5750
$Comp
L power:GND #GND_027
U 1 1 5B69DE3D
P 17150 6150
F 0 "#GND_027" H 17150 6290 20  0000 C CNN
F 1 "+GND" H 17150 6260 30  0000 C CNN
F 2 "" H 17150 6150 70  0000 C CNN
F 3 "" H 17150 6150 70  0000 C CNN
	1    17150 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	17150 6050 17150 6150
Text Label 17350 5650 0    60   ~ 0
OUTA-
Wire Wire Line
	17150 7250 17150 7350
$Comp
L power:GND #GND_028
U 1 1 5B69DE3C
P 17150 7750
F 0 "#GND_028" H 17150 7890 20  0000 C CNN
F 1 "+GND" H 17150 7860 30  0000 C CNN
F 2 "" H 17150 7750 70  0000 C CNN
F 3 "" H 17150 7750 70  0000 C CNN
	1    17150 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	17150 7650 17150 7750
Text Label 17350 7250 0    60   ~ 0
OUTB+
Wire Wire Line
	17150 8850 17150 8950
$Comp
L power:GND #GND_029
U 1 1 5B69DE3B
P 17150 9350
F 0 "#GND_029" H 17150 9490 20  0000 C CNN
F 1 "+GND" H 17150 9460 30  0000 C CNN
F 2 "" H 17150 9350 70  0000 C CNN
F 3 "" H 17150 9350 70  0000 C CNN
	1    17150 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	17150 9250 17150 9350
Text Label 17350 8850 0    60   ~ 0
OUTB-
Wire Wire Line
	17150 4050 16950 4050
Wire Wire Line
	17750 4050 17150 4050
Wire Wire Line
	20550 4750 20550 4050
Wire Wire Line
	20750 4750 20550 4750
Wire Wire Line
	17150 5650 16950 5650
Wire Wire Line
	17750 5650 17150 5650
Wire Wire Line
	20550 4850 20550 5650
Wire Wire Line
	20750 4850 20550 4850
Wire Wire Line
	17150 7250 16950 7250
Wire Wire Line
	17750 7250 17150 7250
Wire Wire Line
	20550 7950 20550 7250
Wire Wire Line
	20750 7950 20550 7950
Wire Wire Line
	17150 8850 16950 8850
Wire Wire Line
	17750 8850 17150 8850
Wire Wire Line
	20550 8050 20550 8850
Wire Wire Line
	20750 8050 20550 8050
Wire Notes Line
	11950 10550 11950 8950
Wire Notes Line
	11950 10550 13950 10550
Wire Notes Line
	11950 8950 13950 8950
Wire Notes Line
	13950 10550 13950 8950
Text Notes 12850 10350 0    120  ~ 0
MONITORS
Text Label 11360 9950 0    60   ~ 0
\FAULT
Text Label 11350 9350 0    60   ~ 0
\CLIP_OTW
Text Label 9050 7050 0    48   ~ 0
\FAULT
Wire Wire Line
	15850 11250 15750 11250
Text Notes 14850 11250 2    54   ~ 0
SLAVE MODE
Text Notes 14850 11350 2    54   ~ 0
MASTER MODE (600kHz)
Text Notes 14850 11450 2    54   ~ 0
MASTER MODE AM1 (500kHz)
Text Notes 14850 11550 2    54   ~ 0
MASTER MODE AM2 (450kHz)
Wire Wire Line
	13450 11350 14950 11350
Wire Wire Line
	13450 11450 14950 11450
$Comp
L power:GND #GND_014
U 1 1 5B69DE39
P 16850 11850
F 0 "#GND_014" H 16850 11990 20  0000 C CNN
F 1 "+GND" H 16850 11960 30  0000 C CNN
F 2 "" H 16850 11850 70  0000 C CNN
F 3 "" H 16850 11850 70  0000 C CNN
	1    16850 11850
	-1   0    0    -1  
$EndComp
Text Notes 15600 12150 2    120  ~ 0
FREQUENCY ADJUST
Wire Notes Line
	17050 12350 17050 10950
Wire Notes Line
	17050 12350 13550 12350
Wire Notes Line
	17050 10950 13550 10950
Wire Notes Line
	13550 12350 13550 10950
Wire Wire Line
	16850 11350 16650 11350
Wire Wire Line
	16850 11550 16850 11350
Wire Wire Line
	16850 11750 16850 11550
Wire Wire Line
	16850 11850 16850 11750
Wire Wire Line
	16850 11550 16650 11550
Wire Wire Line
	16850 11750 16650 11750
Wire Wire Line
	15750 11350 16250 11350
Wire Wire Line
	15850 11450 15750 11450
Wire Wire Line
	15850 11550 15850 11450
Wire Wire Line
	16250 11550 15850 11550
Wire Wire Line
	15750 11750 15750 11550
Wire Wire Line
	16250 11750 15750 11750
Wire Wire Line
	13450 11250 14950 11250
Wire Wire Line
	8950 7250 10550 7250
Text Label 9050 7250 0    60   ~ 0
FREQ_ADJ
Text Notes 3350 9500 0    79   ~ 0
I2C ADDRESS
Text Label 1800 9200 0    60   ~ 0
ADR-Conn
$Comp
L power:GND #GND_017
U 1 1 5B69DE36
P 7750 2250
F 0 "#GND_017" H 7750 2390 20  0000 C CNN
F 1 "+GND" H 7750 2360 30  0000 C CNN
F 2 "" H 7750 2250 70  0000 C CNN
F 3 "" H 7750 2250 70  0000 C CNN
	1    7750 2250
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PVDD_01
U 1 1 5B69DE35
P 7750 1650
F 0 "#PVDD_01" H 7750 1650 20  0000 C CNN
F 1 "VDD" H 7750 1580 30  0000 C CNN
F 2 "" H 7750 1650 70  0000 C CNN
F 3 "" H 7750 1650 70  0000 C CNN
	1    7750 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2250 7750 2150
$Comp
L power:GND #GND_015
U 1 1 5B69DE34
P 7250 2250
F 0 "#GND_015" H 7250 2390 20  0000 C CNN
F 1 "+GND" H 7250 2360 30  0000 C CNN
F 2 "" H 7250 2250 70  0000 C CNN
F 3 "" H 7250 2250 70  0000 C CNN
	1    7250 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2150 7250 2250
$Comp
L power:GND #GND_012
U 1 1 5B69DE33
P 6750 2250
F 0 "#GND_012" H 6750 2390 20  0000 C CNN
F 1 "+GND" H 6750 2360 30  0000 C CNN
F 2 "" H 6750 2250 70  0000 C CNN
F 3 "" H 6750 2250 70  0000 C CNN
	1    6750 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2150 6750 2250
Wire Wire Line
	7250 1750 7250 1850
Wire Wire Line
	6750 1750 6750 1850
Wire Wire Line
	7750 1750 7750 1850
Wire Wire Line
	6450 1650 6550 1650
Wire Wire Line
	6450 1750 6450 1650
Wire Wire Line
	7750 1750 7750 1650
Wire Wire Line
	7250 1750 7750 1750
Wire Wire Line
	6750 1750 7250 1750
Wire Wire Line
	6450 1750 6750 1750
Wire Wire Line
	6350 1750 6450 1750
Wire Wire Line
	6350 5050 6350 1750
Wire Wire Line
	6550 5050 6350 5050
$Comp
L power:GND #GND_018
U 1 1 5B69DE32
P 7750 3450
F 0 "#GND_018" H 7750 3590 20  0000 C CNN
F 1 "+GND" H 7750 3560 30  0000 C CNN
F 2 "" H 7750 3450 70  0000 C CNN
F 3 "" H 7750 3450 70  0000 C CNN
	1    7750 3450
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PVDD_02
U 1 1 5B69DE31
P 7750 2850
F 0 "#PVDD_02" H 7750 2850 20  0000 C CNN
F 1 "VDD" H 7750 2780 30  0000 C CNN
F 2 "" H 7750 2850 70  0000 C CNN
F 3 "" H 7750 2850 70  0000 C CNN
	1    7750 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3450 7750 3350
$Comp
L power:GND #GND_016
U 1 1 5B69DE30
P 7250 3450
F 0 "#GND_016" H 7250 3590 20  0000 C CNN
F 1 "+GND" H 7250 3560 30  0000 C CNN
F 2 "" H 7250 3450 70  0000 C CNN
F 3 "" H 7250 3450 70  0000 C CNN
	1    7250 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3350 7250 3450
$Comp
L power:GND #GND_013
U 1 1 5B69DE2F
P 6750 3450
F 0 "#GND_013" H 6750 3590 20  0000 C CNN
F 1 "+GND" H 6750 3560 30  0000 C CNN
F 2 "" H 6750 3450 70  0000 C CNN
F 3 "" H 6750 3450 70  0000 C CNN
	1    6750 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3350 6750 3450
Wire Wire Line
	7250 2950 7250 3050
Wire Wire Line
	6750 2950 6750 3050
Wire Wire Line
	7750 2950 7750 3050
Wire Wire Line
	6550 2700 6650 2700
Wire Wire Line
	7750 2950 7750 2850
Wire Wire Line
	7250 2950 7750 2950
Wire Wire Line
	6750 2950 7250 2950
Wire Wire Line
	6450 2950 6750 2950
Wire Wire Line
	6450 4950 6450 2950
Wire Wire Line
	6550 4950 6450 4950
Wire Wire Line
	6050 3950 5550 3950
Wire Wire Line
	5950 4150 5550 4150
$Comp
L power:GND #GND_011
U 1 1 5B69DE2E
P 6550 9650
F 0 "#GND_011" H 6550 9790 20  0000 C CNN
F 1 "+GND" H 6550 9760 30  0000 C CNN
F 2 "" H 6550 9650 70  0000 C CNN
F 3 "" H 6550 9650 70  0000 C CNN
	1    6550 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4550 4650 4650
Wire Wire Line
	4150 4550 4150 4650
Wire Wire Line
	10450 3450 10450 3750
Wire Wire Line
	10450 4550 10450 4050
Wire Wire Line
	10450 4550 10750 4550
Wire Wire Line
	10350 4550 10450 4550
Wire Wire Line
	10450 3450 10750 3450
Wire Wire Line
	10350 3450 10450 3450
Wire Wire Line
	10750 5050 10750 5150
Wire Wire Line
	10750 3950 10750 4050
Wire Wire Line
	10750 4550 10750 4650
Wire Wire Line
	10750 3450 10750 3550
Wire Wire Line
	10450 1250 10450 1550
Wire Wire Line
	10450 2350 10450 1850
Wire Wire Line
	10450 2350 10750 2350
Wire Wire Line
	10350 2350 10450 2350
Wire Wire Line
	10450 1250 10750 1250
Wire Wire Line
	10350 1250 10450 1250
Wire Wire Line
	10750 2850 10750 2950
Wire Wire Line
	10750 1750 10750 1850
Wire Wire Line
	10750 2350 10750 2450
Wire Wire Line
	10750 1250 10750 1350
Wire Notes Line
	13750 1450 13750 1050
Wire Notes Line
	13750 1450 15550 1450
Wire Notes Line
	13750 1050 15550 1050
Wire Notes Line
	15550 1450 15550 1050
Text Label 12050 2350 0    60   ~ 0
INB+
Text Label 12050 1250 0    60   ~ 0
INB-
Text Label 12050 4550 0    60   ~ 0
INA+
Text Label 12050 3450 0    60   ~ 0
INA-
Wire Wire Line
	9850 5350 8950 5350
Wire Wire Line
	9850 4550 9850 5350
Wire Wire Line
	9950 4550 9850 4550
Wire Wire Line
	9750 5250 8950 5250
Wire Wire Line
	9750 3450 9750 5250
Wire Wire Line
	9950 3450 9750 3450
Wire Wire Line
	9650 5050 8950 5050
Wire Wire Line
	9650 1250 9650 5050
Wire Wire Line
	9950 1250 9650 1250
Wire Wire Line
	9550 4950 8950 4950
Wire Wire Line
	9550 2350 9550 4950
Wire Wire Line
	9950 2350 9550 2350
Text GLabel 12750 7050 2    60   Output ~ 0
\FAULT
Wire Wire Line
	10950 6850 11850 6850
Wire Wire Line
	10750 7050 11850 7050
Wire Wire Line
	5550 6050 6550 6050
Wire Wire Line
	5550 6550 5550 6050
Wire Wire Line
	2350 6550 5550 6550
Text Label 5650 5550 0    48   ~ 0
AVDD
Text Label 5650 5850 0    48   ~ 0
DVDD
Wire Wire Line
	13450 11550 14950 11550
Wire Wire Line
	9150 8950 9150 9050
Wire Wire Line
	9150 8550 9150 8650
Wire Wire Line
	9150 8450 9150 8550
Wire Wire Line
	9150 8350 9150 8450
Wire Wire Line
	8950 8050 9150 8050
Wire Wire Line
	8950 8450 9150 8450
Wire Wire Line
	9150 8550 8950 8550
Wire Wire Line
	8950 8650 9150 8650
Wire Wire Line
	9150 8950 8950 8950
Wire Wire Line
	9550 7850 9550 7950
$Comp
L power:GND #GND_019
U 1 1 5B69DE18
P 8550 10050
F 0 "#GND_019" H 8550 10190 20  0000 C CNN
F 1 "+GND" H 8550 10160 30  0000 C CNN
F 2 "" H 8550 10050 70  0000 C CNN
F 3 "" H 8550 10050 70  0000 C CNN
	1    8550 10050
	1    0    0    -1  
$EndComp
Text Label 5300 8550 0    48   ~ 0
\RESET-AMP
Text Label 5300 8650 0    48   ~ 0
\DAC_MUTE
Wire Wire Line
	9150 8350 8950 8350
Wire Wire Line
	9350 10050 8550 10050
Wire Wire Line
	8950 8850 9350 8850
Text Notes 4750 7200 0    79   ~ 0
OUTPUT
Wire Wire Line
	13650 1250 13850 1250
Wire Notes Line
	13750 2550 13750 2150
Wire Notes Line
	13750 2550 15550 2550
Wire Notes Line
	13750 2150 15550 2150
Wire Notes Line
	15550 2550 15550 2150
Wire Wire Line
	13650 2350 13850 2350
Text Notes 14550 3530 0    84   ~ 0
DAC OUTPUT
Wire Notes Line
	13750 3650 13750 3250
Wire Notes Line
	13750 3650 15550 3650
Wire Notes Line
	13750 3250 15550 3250
Wire Notes Line
	15550 3650 15550 3250
Wire Wire Line
	13650 3450 13850 3450
Wire Notes Line
	13750 4750 13750 4350
Wire Notes Line
	13750 4750 15550 4750
Wire Notes Line
	13750 4350 15550 4350
Wire Notes Line
	15550 4750 15550 4350
Wire Wire Line
	13650 4550 13850 4550
Wire Wire Line
	3750 7250 3950 7250
Wire Wire Line
	3750 7650 3750 7250
Wire Wire Line
	3650 7150 3950 7150
Wire Wire Line
	3650 7550 3650 7150
Wire Wire Line
	3550 7050 3950 7050
Wire Wire Line
	3450 6950 3950 6950
Wire Wire Line
	3450 7350 3450 6950
$Comp
L power:GND #GND_030
U 1 1 5B69DE0E
P 17750 4550
F 0 "#GND_030" H 17750 4690 20  0000 C CNN
F 1 "+GND" H 17750 4660 30  0000 C CNN
F 2 "" H 17750 4550 70  0000 C CNN
F 3 "" H 17750 4550 70  0000 C CNN
	1    17750 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	17750 4450 17750 4550
Wire Wire Line
	17750 4050 17750 4150
$Comp
L power:GND #GND_031
U 1 1 5B69DE0D
P 17750 6150
F 0 "#GND_031" H 17750 6290 20  0000 C CNN
F 1 "+GND" H 17750 6260 30  0000 C CNN
F 2 "" H 17750 6150 70  0000 C CNN
F 3 "" H 17750 6150 70  0000 C CNN
	1    17750 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	17750 6050 17750 6150
Wire Wire Line
	17750 5650 17750 5750
$Comp
L power:GND #GND_032
U 1 1 5B69DE0C
P 17750 7750
F 0 "#GND_032" H 17750 7890 20  0000 C CNN
F 1 "+GND" H 17750 7860 30  0000 C CNN
F 2 "" H 17750 7750 70  0000 C CNN
F 3 "" H 17750 7750 70  0000 C CNN
	1    17750 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	17750 7650 17750 7750
Wire Wire Line
	17750 7250 17750 7350
$Comp
L power:GND #GND_033
U 1 1 5B69DE0B
P 17750 9350
F 0 "#GND_033" H 17750 9490 20  0000 C CNN
F 1 "+GND" H 17750 9460 30  0000 C CNN
F 2 "" H 17750 9350 70  0000 C CNN
F 3 "" H 17750 9350 70  0000 C CNN
	1    17750 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	17750 9250 17750 9350
Wire Wire Line
	17750 8850 17750 8950
Wire Wire Line
	10950 6850 8950 6850
Wire Wire Line
	10950 9350 10950 6850
Wire Wire Line
	12150 9350 10950 9350
Wire Wire Line
	10750 7050 8950 7050
Wire Wire Line
	10750 9950 10750 7050
Wire Wire Line
	12150 9950 10750 9950
Wire Wire Line
	13750 9350 13550 9350
Wire Wire Line
	13750 9250 13750 9350
Wire Wire Line
	13750 9950 13550 9950
Wire Wire Line
	13750 9850 13750 9950
Wire Wire Line
	11850 7250 11550 7250
Wire Wire Line
	11850 7050 11850 7250
Wire Wire Line
	11850 6650 11550 6650
Wire Wire Line
	11850 6850 11850 6650
Wire Wire Line
	10750 6050 10950 6050
Wire Wire Line
	10750 6250 10750 6050
Wire Wire Line
	10650 5950 10950 5950
Wire Wire Line
	10650 6150 10650 5950
Wire Wire Line
	10650 5850 10950 5850
Wire Wire Line
	10650 5650 10650 5850
Wire Wire Line
	10750 5750 10950 5750
Wire Wire Line
	10750 5550 10750 5750
Text GLabel 5750 6950 0    60   Input ~ 0
SPK_INA-
Text GLabel 5750 7050 0    60   Input ~ 0
SPK_INB+
Text GLabel 5750 7150 0    60   Input ~ 0
SPK_INB-
Text GLabel 13850 4550 2    60   Output ~ 0
SPK_INA+
Text GLabel 13850 3450 2    60   Output ~ 0
SPK_INA-
Text GLabel 13850 2350 2    60   Output ~ 0
SPK_INB+
Text GLabel 13850 1250 2    60   Output ~ 0
SPK_INB-
Text Notes 14550 4630 0    84   ~ 0
DAC OUTPUT
Text Notes 14550 2430 0    84   ~ 0
DAC OUTPUT
Text Notes 14550 1330 0    84   ~ 0
DAC OUTPUT
Text Label 15550 5650 0    60   ~ 0
SPK_OUTA-
Text Label 15550 5550 0    60   ~ 0
SPK_OUTA+
Text Label 15550 6250 0    60   ~ 0
SPK_OUTB-
Text Label 15550 6150 0    60   ~ 0
SPK_OUTB+
Text Label 6750 9250 0    70   ~ 0
TAS3251DKQR
Connection ~ 6000 10100
Connection ~ 2850 5550
Connection ~ 3250 5550
Connection ~ 4150 4550
Connection ~ 4650 4550
Connection ~ 4750 5650
Connection ~ 5350 2950
Connection ~ 5350 1750
Connection ~ 5950 4150
Connection ~ 6050 3950
Connection ~ 6350 5850
Connection ~ 6350 5550
Connection ~ 6450 1750
Connection ~ 6750 2950
Connection ~ 6750 1750
Connection ~ 16850 11750
Connection ~ 16850 11550
Connection ~ 7250 2950
Connection ~ 7250 1750
Connection ~ 7750 2950
Connection ~ 7750 1750
Connection ~ 9150 8950
Connection ~ 9150 8650
Connection ~ 9150 8550
Connection ~ 9150 8450
Connection ~ 9150 8350
Connection ~ 9750 6150
Connection ~ 9750 5550
Connection ~ 10350 6250
Connection ~ 10350 5650
Connection ~ 10450 4550
Connection ~ 10450 3450
Connection ~ 10450 2350
Connection ~ 10450 1250
Connection ~ 10650 6150
Connection ~ 10650 5650
Connection ~ 10750 7050
Connection ~ 10750 6250
Connection ~ 10750 5550
Connection ~ 10750 4550
Connection ~ 10750 3450
Connection ~ 10750 2350
Connection ~ 10750 1250
Connection ~ 10950 6850
Connection ~ 11850 7050
Connection ~ 11850 6850
Connection ~ 17150 8850
Connection ~ 17150 7250
Connection ~ 17150 5650
Connection ~ 17150 4050
Connection ~ 17750 8850
Connection ~ 17750 7250
Connection ~ 17750 5650
Connection ~ 17750 4050
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:C1005X5R1A225K050BC C9
U 1 1 5B69DE06
P 6150 6450
F 0 "C9" H 6250 6450 60  0000 L TNN
F 1 "2.2µF" H 6350 6500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6150 6450 50  0001 C CNN
F 3 "xxCAP, CERM, 2.2 μF, 16 V, ±10%, X5R, 0603" H 6150 6450 50  0001 C CNN
F 4 "2.2µF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "x10V" H 0   0   50  0001 C CNN "Value2"
F 6 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "CC0805KKX7R8BB225" H 0   0   50  0001 C CNN "PartNumber"
F 8 "CL10A225KO8NNNC" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 9 "C23630" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    6150 6450
	1    0    0    1   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:GRM188R71C105KA12D C8
U 1 1 5B69DE05
P 5350 5850
F 0 "C8" H 5650 5850 60  0000 R TNN
F 1 "1µF" H 5550 5900 50  0000 C BNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5350 5850 50  0001 C CNN
F 3 "xxCAP, CERM, 1 μF, 50 V, ±10%, X7R, 0805" H 5350 5850 50  0001 C CNN
F 4 "1µF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "x16V" H 0   0   50  0001 C CNN "Value2"
F 6 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "CC0805KKX7R8BB105" H 0   0   50  0001 C CNN "PartNumber"
F 8 "CL21B105KBFNNNE" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 9 "C28323" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    5350 5850
	-1   0    0    1   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:MA5173-AE L3
U 1 1 5B69DE04
P 16650 7250
F 0 "L3" H 16440 7410 60  0000 L BNN
F 1 "10 µH" H 16550 7100 60  0000 L BNN
F 2 "SamacSys_Parts:WE-HCF_201322" H 16475 7050 60  0001 C CNN
F 3 "xxWürth 7443631000" H 16475 7050 60  0000 C CNN
F 4 "16A" V 1750 5150 60  0001 C CNN "Value2"
F 5 "Wurth Elektronik" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "7443631000" H 0   0   50  0001 C CNN "PartNumber"
F 7 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    16650 7250
	1    0    0    -1  
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:MA5173-AE L4
U 1 1 5B69DE03
P 16650 8850
F 0 "L4" H 16440 9010 60  0000 L BNN
F 1 "10 µH" H 16550 8700 60  0000 L BNN
F 2 "SamacSys_Parts:WE-HCF_201322" H 16475 8650 60  0001 C CNN
F 3 "xxWürth 7443631000" H 16475 8650 60  0000 C CNN
F 4 "16A" V 1750 5150 60  0001 C CNN "Value2"
F 5 "Wurth Elektronik" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "7443631000" H 0   0   50  0001 C CNN "PartNumber"
F 7 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    16650 8850
	-1   0    0    1   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:B32652A3684J C29
U 1 1 5B69DE02
P 17150 4350
F 0 "C29" V 17250 4250 60  0000 R TNN
F 1 "0.68µF" V 17150 4100 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L18.0mm_W9.0mm_P15.00mm_FKS3_FKP3" H 17150 4350 50  0001 C CNN
F 3 "xxCAP, Film, 0.68 μF, 250 V, ±5%, TH" H 17150 4350 50  0001 C CNN
F 4 "0.68µF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "x250V" V 1750 5150 60  0001 C CNN "Value2"
F 6 "EPCOS" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "B32652A3684J" H 0   0   50  0001 C CNN "PartNumber"
F 8 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
F 9 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Name"
	1    17150 4350
	0    -1   -1   0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:B32652A3684J C30
U 1 1 5B69DE01
P 17150 5950
F 0 "C30" V 17250 5850 60  0000 R TNN
F 1 "0.68µF" V 17150 5700 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L18.0mm_W9.0mm_P15.00mm_FKS3_FKP3" H 17150 5950 50  0001 C CNN
F 3 "xxCAP, Film, 0.68 μF, 250 V, ±5%, TH" H 17150 5950 50  0001 C CNN
F 4 "0.68µF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "x250V" V 1750 5150 60  0001 C CNN "Value2"
F 6 "EPCOS" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "B32652A3684J" H 0   0   50  0001 C CNN "PartNumber"
F 8 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
F 9 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Name"
	1    17150 5950
	0    -1   -1   0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:B32652A3684J C31
U 1 1 5B69DE00
P 17150 7550
F 0 "C31" V 17250 7450 60  0000 R TNN
F 1 "0.68µF" V 17150 7300 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L18.0mm_W9.0mm_P15.00mm_FKS3_FKP3" H 17150 7550 50  0001 C CNN
F 3 "xxCAP, Film, 0.68 μF, 250 V, ±5%, TH" H 17150 7550 50  0001 C CNN
F 4 "0.68µF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "x250V" V 1750 5150 60  0001 C CNN "Value2"
F 6 "EPCOS" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "B32652A3684J" H 0   0   50  0001 C CNN "PartNumber"
F 8 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
F 9 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Name"
	1    17150 7550
	0    -1   -1   0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:B32652A3684J C32
U 1 1 5B69DDFF
P 17150 9150
F 0 "C32" V 17250 9050 60  0000 R TNN
F 1 "0.68µF" V 17150 8900 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L18.0mm_W9.0mm_P15.00mm_FKS3_FKP3" H 17150 9150 50  0001 C CNN
F 3 "xxCAP, Film, 0.68 μF, 250 V, ±5%, TH" H 17150 9150 50  0001 C CNN
F 4 "EPCOS" H 17150 9150 50  0001 C CNN "Manufacturer"
F 5 "B32652A3684J" H 17150 9150 50  0001 C CNN "PartNumber"
F 6 "0.68µF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 7 "x250V" V 1750 5150 60  0001 C CNN "Value2"
F 8 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
F 9 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Name"
	1    17150 9150
	0    -1   -1   0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:GRM188R71C105KA12D C7
U 1 1 5B69DDFA
P 5350 5550
F 0 "C7" H 5650 5550 60  0000 R TNN
F 1 "1µF" H 5550 5600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5350 5550 50  0001 C CNN
F 3 "xxCAP, CERM, 1 μF, 50 V, ±10%, X7R, 0805" H 5350 5550 50  0001 C CNN
F 4 "1µF" H 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "x16V" H 0   0   50  0001 C CNN "Value2"
F 6 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "CC0805KKX7R8BB105" H 0   0   50  0001 C CNN "PartNumber"
F 8 "CL21B105KBFNNNE" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 9 "C28323" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    5350 5550
	-1   0    0    1   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:5003 TP2
U 1 1 5B69DDF9
P 4050 6950
F 0 "TP2" V 4050 7150 60  0000 L TNN
F 1 "MCLK" V 4050 6850 60  0000 R TNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 4050 6850 60  0001 C CNN
F 3 "xx" H 4050 6850 60  0000 C CNN
F 4 "NOPOP" H 800 0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 800 0   50  0001 C CNN "Manufacturer_Part_Number"
	1    4050 6950
	0    -1   1    0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:5003 TP3
U 1 1 5B69DDF8
P 4050 7050
F 0 "TP3" V 4050 7250 60  0000 L TNN
F 1 "BCLK" V 4050 6950 60  0000 R TNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 4050 6950 60  0001 C CNN
F 3 "xx" H 4050 6950 60  0000 C CNN
F 4 "NOPOP" H 800 0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 800 0   50  0001 C CNN "Manufacturer_Part_Number"
	1    4050 7050
	0    -1   1    0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:5003 TP4
U 1 1 5B69DDF7
P 4050 7150
F 0 "TP4" V 4050 7350 60  0000 L TNN
F 1 "LRCK" V 4050 7050 60  0000 R TNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 4050 7050 60  0001 C CNN
F 3 "xx" H 4050 7050 60  0000 C CNN
F 4 "NOPOP" H 800 0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 800 0   50  0001 C CNN "Manufacturer_Part_Number"
	1    4050 7150
	0    -1   1    0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:5003 TP5
U 1 1 5B69DDF6
P 4050 7250
F 0 "TP5" V 4050 7450 60  0000 L TNN
F 1 "SDIN" V 4050 7150 60  0000 R TNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 4050 7150 60  0001 C CNN
F 3 "xx" H 4050 7150 60  0000 C CNN
F 4 "NOPOP" H 800 0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 800 0   50  0001 C CNN "Manufacturer_Part_Number"
	1    4050 7250
	0    -1   1    0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:GRM3195C1H102JA01D C33
U 1 1 5B69DDF5
P 17750 4250
F 0 "C33" V 17750 4350 60  0000 L BNN
F 1 "1000pF" V 17850 4500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 17750 4250 50  0001 C CNN
F 3 "xxCAP, CERM, 1000 pF, 50 V, ±5%, C0G/NP0, 0603" H 17750 4250 50  0001 C CNN
F 4 "1000pF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "x50V" H 0   0   50  0001 C CNN "Value2"
F 6 "GRM2165C1H102JA01D" H 0   0   50  0001 C CNN "PartNumber"
F 7 "Murata" H 0   0   50  0001 C CNN "Manufacturer"
F 8 " Not installed EVM" H 0   0   50  0001 C CNN "Description"
F 9 "CL10C102JB8NNNC" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 10 "C163508" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    17750 4250
	0    1    1    0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:GRM3195C1H102JA01D C34
U 1 1 5B69DDF4
P 17750 5850
F 0 "C34" V 17750 5950 60  0000 L BNN
F 1 "1000pF" V 17850 6100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 17750 5850 50  0001 C CNN
F 3 "xxCAP, CERM, 1000 pF, 50 V, ±5%, C0G/NP0, 0603" H 17750 5850 50  0001 C CNN
F 4 "1000pF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "x50V" H 0   0   50  0001 C CNN "Value2"
F 6 "GRM2165C1H102JA01D" H 0   0   50  0001 C CNN "PartNumber"
F 7 "Murata" H 0   0   50  0001 C CNN "Manufacturer"
F 8 " Not installed EVM" H 0   0   50  0001 C CNN "Description"
F 9 "CL10C102JB8NNNC" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 10 "C163508" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    17750 5850
	0    1    1    0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:GRM3195C1H102JA01D C35
U 1 1 5B69DDF3
P 17750 7450
F 0 "C35" V 17750 7550 60  0000 L BNN
F 1 "1000pF" V 17850 7700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 17750 7450 50  0001 C CNN
F 3 "xxCAP, CERM, 1000 pF, 50 V, ±5%, C0G/NP0, 0603" H 17750 7450 50  0001 C CNN
F 4 "1000pF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "x50V" H 0   0   50  0001 C CNN "Value2"
F 6 "GRM2165C1H102JA01D" H 0   0   50  0001 C CNN "PartNumber"
F 7 "Murata" H 0   0   50  0001 C CNN "Manufacturer"
F 8 " Not installed EVM" H 0   0   50  0001 C CNN "Description"
F 9 "CL10C102JB8NNNC" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 10 "C163508" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    17750 7450
	0    1    1    0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:GRM3195C1H102JA01D C36
U 1 1 5B69DDF2
P 17750 9050
F 0 "C36" V 17750 9150 60  0000 L BNN
F 1 "1000pF" V 17850 9300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 17750 9050 50  0001 C CNN
F 3 "xxCAP, CERM, 1000 pF, 50 V, ±5%, C0G/NP0, 0603" H 17750 9050 50  0001 C CNN
F 4 "1000pF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "x50V" H 0   0   50  0001 C CNN "Value2"
F 6 "GRM2165C1H102JA01D" H 0   0   50  0001 C CNN "PartNumber"
F 7 "Murata" H 0   0   50  0001 C CNN "Manufacturer"
F 8 " Not installed EVM" H 0   0   50  0001 C CNN "Description"
F 9 "CL10C102JB8NNNC" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 10 "C163508" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    17750 9050
	0    1    1    0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:TP_H0.45P0.75 TP13
U 1 1 5B69DDEF
P 6050 5750
F 0 "TP13" V 5950 5725 60  0000 R TNN
F 1 "DVDD" V 6050 5725 60  0000 R TNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 6050 5725 60  0001 C CNN
F 3 "xx" H 6050 5725 60  0000 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    6050 5750
	0    -1   -1   0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:RC0603JR-07560RL R17
U 1 1 5B69DDEE
P 13350 9950
F 0 "R17" H 13240 9980 60  0000 L BNN
F 1 "560" H 13350 9850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 13350 9950 50  0001 C CNN
F 3 "xxRES, 560,1%, 0.125 W, 0805" H 13350 9950 50  0001 C CNN
F 4 "560" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "RC0805FR-07560RL" H 0   0   50  0001 C CNN "PartNumber"
F 7 "C28636" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    13350 9950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5B69DDED
P 12300 9950
F 0 "D2" H 12550 10000 60  0000 R BNN
F 1 "Red" H 12200 10000 60  0000 R BNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 12200 9950 60  0001 C CNN
F 3 "xxLED, Red, SMD" H 12350 9800 60  0000 C CNN
F 4 "Lite-On" H -150 0   50  0001 C CNN "Manufacturer"
F 5 "LTST-C170KRKT" H -150 0   50  0001 C CNN "PartNumber"
F 6 "FC-2012HRK-620D" H -150 0   50  0001 C CNN "Manufacturer_Name"
F 7 "C84256" H -150 0   50  0001 C CNN "Manufacturer_Part_Number"
	1    12300 9950
	1    0    0    1   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:RC0603JR-07560RL R16
U 1 1 5B69DDEC
P 13350 9350
F 0 "R16" H 13240 9380 60  0000 L BNN
F 1 "560" H 13350 9250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 13350 9350 50  0001 C CNN
F 3 "xxRES, 560,1%, 0.125 W, 0805" H 13350 9350 50  0001 C CNN
F 4 "560" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "RC0805FR-07560RL" H 0   0   50  0001 C CNN "PartNumber"
F 7 "C28636" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    13350 9350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5B69DDEB
P 12300 9350
F 0 "D1" H 12550 9400 60  0000 R BNN
F 1 "Orange" H 12550 9200 60  0000 R BNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 12200 9350 60  0001 C CNN
F 3 "xxLED, Yellow, SMD" H 12250 9550 60  0000 C CNN
F 4 "Lite-On" H -150 0   50  0001 C CNN "Manufacturer"
F 5 "LTST-C170KFKT" H -150 0   50  0001 C CNN "PartNumber"
F 6 "17-21SUYC/TR8" H -150 0   50  0001 C CNN "Manufacturer_Name"
F 7 "C2296" H -150 0   50  0001 C CNN "Manufacturer_Part_Number"
	1    12300 9350
	1    0    0    1   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:5128 TP20
U 1 1 5B69DDEA
P 11450 6650
F 0 "TP20" V 11490 6570 60  0000 R BNN
F 1 "CLIP_OTW" V 11310 6570 60  0000 R BNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 11310 6570 60  0001 C CNN
F 3 "xx" H 11310 6570 60  0000 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    11450 6650
	0    1    -1   0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:5128 TP21
U 1 1 5B69DDE9
P 11450 7250
F 0 "TP21" V 11490 7170 60  0000 R BNN
F 1 "FAULT" V 11310 7170 60  0000 R BNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 11310 7170 60  0001 C CNN
F 3 "xx" H 11310 7170 60  0000 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    11450 7250
	0    1    -1   0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:CMP-0075104-1 J3
U 1 1 5B69DDE8
P 21050 4750
F 0 "J3" H 20940 4650 60  0000 L TNN
F 1 "OUTA" H 20940 5050 60  0000 L TNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-2-5.08_1x02_P5.08mm_Horizontal" H 20940 5050 60  0001 C CNN
F 3 "xxTerminalBlock_Phoenix_MKDS-3-2-5.08_1x02_P5.08mm_Horizontal" H 20940 5050 60  0001 C CNN
F 4 "Phoenix Contact" H 21050 4750 50  0001 C CNN "Manufacturer"
F 5 "1711725" H 0   0   50  0001 C CNN "PartNumber"
F 6 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    21050 4750
	1    0    0    1   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:CMP-0075104-1 J4
U 1 1 5B69DDE7
P 21050 7950
F 0 "J4" H 20940 7850 60  0000 L TNN
F 1 "OUTB" H 20940 8250 60  0000 L TNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-2-5.08_1x02_P5.08mm_Horizontal" H 20940 8250 60  0001 C CNN
F 3 "xxTerminalBlock_Phoenix_MKDS-3-2-5.08_1x02_P5.08mm_Horizontal" H 20940 8250 60  0001 C CNN
F 4 "Phoenix contact" H 21050 7950 50  0001 C CNN "Manufacturer"
F 5 "1711725" H 0   0   50  0001 C CNN "PartNumber"
F 6 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    21050 7950
	1    0    0    1   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:5003 TP16
U 1 1 5B69DDE6
P 11050 5750
F 0 "TP16" V 11050 5775 60  0000 L TNN
F 1 "OUTA+" V 11050 5650 60  0000 R TNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 11050 5650 60  0001 C CNN
F 3 "xx" H 11050 5650 60  0000 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    11050 5750
	0    -1   1    0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:5003 TP17
U 1 1 5B69DDE5
P 11050 5850
F 0 "TP17" V 11050 5875 60  0000 L TNN
F 1 "OUTA-" V 11050 5750 60  0000 R TNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 11050 5750 60  0001 C CNN
F 3 "xx" H 11050 5750 60  0000 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    11050 5850
	0    -1   1    0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:TP_H0.45P0.75 TP12
U 1 1 5B69DDE4
P 6050 5450
F 0 "TP12" V 5950 5425 60  0000 R TNN
F 1 "AVDD" V 6050 5425 60  0000 R TNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 6050 5425 60  0001 C CNN
F 3 "xx" H 6050 5425 60  0000 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    6050 5450
	0    -1   -1   0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:5003 TP19
U 1 1 5B69DDE3
P 11050 6050
F 0 "TP19" V 11050 6075 60  0000 L TNN
F 1 "OUTB-" V 11050 5950 60  0000 R TNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 11050 5950 60  0001 C CNN
F 3 "xx" H 11050 5950 60  0000 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    11050 6050
	0    -1   1    0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:5003 TP18
U 1 1 5B69DDE2
P 11050 5950
F 0 "TP18" V 11050 5975 60  0000 L TNN
F 1 "OUTB+" V 11050 5850 60  0000 R TNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 11050 5850 60  0001 C CNN
F 3 "xx" H 11050 5850 60  0000 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    11050 5950
	0    -1   1    0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:CMP-0075392-3 U1
U 1 1 5B69DDDD
P 7750 6950
F 0 "U1" H 6750 9150 60  0000 L BNN
F 1 "TAS3251" H 7750 6950 50  0001 C CNN
F 2 "TAS3251:DKQ0056A" H 7750 6950 50  0001 C CNN
F 3 "xx" H 7750 6950 50  0001 C CNN
F 4 "TAS3251DKQR" V 1750 5150 60  0001 C CNN "PartNumber"
F 5 "Texas Instrument" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    7750 6950
	1    0    0    -1  
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:TP_H0.45P0.75 TP7
U 1 1 5B69DDDC
P 4450 5550
F 0 "TP7" V 4350 5525 60  0000 R TNN
F 1 "DAC-AVDD" V 4450 5525 60  0000 R TNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 4450 5525 60  0001 C CNN
F 3 "xx" H 4450 5525 60  0000 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    4450 5550
	0    -1   -1   0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:TP_H0.45P0.75 TP10
U 1 1 5B69DDDB
P 5450 3950
F 0 "TP10" V 5350 3925 60  0000 R TNN
F 1 "GVDD_A" V 5450 3925 60  0000 R TNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 5450 3925 60  0001 C CNN
F 3 "xx" H 5450 3925 60  0000 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    5450 3950
	0    -1   -1   0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:TP_H0.45P0.75 TP11
U 1 1 5B69DDDA
P 5450 4150
F 0 "TP11" V 5350 4125 60  0000 R TNN
F 1 "GVDD_B" V 5450 4125 60  0000 R TNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 5450 4125 60  0001 C CNN
F 3 "xx" H 5450 4125 60  0000 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    5450 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2
U 1 1 5B69DDD9
P 3250 5800
F 0 "C2" H 3500 5900 60  0000 R TNN
F 1 "0.1µF" H 3450 5750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3250 5800 50  0001 C CNN
F 3 "xxCAP, CERM, 0.1 μF, 50V, ±10%, X7R, 0805" H 3250 5800 50  0001 C CNN
F 4 "0.1µF" V 1750 5100 60  0001 C CNN "ValueDisplayed"
F 5 "x6.3V" H 0   0   50  0001 C CNN "Value2"
F 6 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "CC0805KRX7R9BB104" H 0   0   50  0001 C CNN "PartNumber"
F 8 "C49678" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    3250 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5B69DDD8
P 2850 5800
F 0 "C1" H 3100 5900 60  0000 R TNN
F 1 "10µF" H 3050 5750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2850 5800 50  0001 C CNN
F 3 "xxCAP, CERM, 10 μF, 10 V, ±20%, X5R, 0805" H 2850 5800 50  0001 C CNN
F 4 "YAGEO" H 2850 5800 50  0001 C CNN "Manufacturer"
F 5 "CC0805KKX5R8BB106" H 2850 5800 50  0001 C CNN "PartNumber"
F 6 "10µF" V 1750 5100 60  0001 C CNN "ValueDisplayed"
F 7 "x6.3V" H 0   0   50  0001 C CNN "Value2"
F 8 "CL21A106KAYNNNE" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 9 "C15850" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    2850 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5B69DDD7
P 6200 6250
F 0 "C10" V 6100 6300 60  0000 L BNN
F 1 "0.1µF" V 6200 6300 50  0000 L BNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6200 6250 50  0001 C CNN
F 3 "xxCAP, CERM, 0.1 μF, 50V, ±10%, X7R, 0805" H 6200 6250 50  0001 C CNN
F 4 "0.1µF" V 1800 5150 60  0001 C CNN "ValueDisplayed"
F 5 "x6.3V" H 0   0   50  0001 C CNN "Value2"
F 6 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "CC0805KRX7R9BB104" H 0   0   50  0001 C CNN "PartNumber"
F 8 "C49678" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    6200 6250
	0    1    1    0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:GRM188R71E333KA01D C17
U 1 1 5B69DDD6
P 9250 5850
F 0 "C17" H 9350 5850 60  0000 L BNN
F 1 "0.033µF" H 9500 5800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9250 5850 50  0001 C CNN
F 3 "xxCAP, CERM, 0.033 μF, 25 V, ±10%," H 9250 5850 50  0001 C CNN
F 4 "0.033µF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "25V" H 0   0   50  0001 C CNN "Value2"
F 6 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "CC0805KRX7R9BB333" H 0   0   50  0001 C CNN "PartNumber"
F 8 "0805B333K500NT" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 9 "C1739" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    9250 5850
	1    0    0    -1  
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:0022112042 J1
U 1 1 5B69DDD5
P 6000 10400
F 0 "J1" H 6200 10100 60  0000 R TNN
F 1 "Oscill sync" H 6000 10400 50  0001 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 6000 10400 50  0001 C CNN
F 3 "xx" H 6000 10400 50  0001 C CNN
F 4 "Molex" H 4050 1750 50  0001 C CNN "Manufacturer"
F 5 "22272041" H 4050 1750 50  0001 C CNN "PartNumber"
F 6 "NOPOP" H 4050 1750 50  0001 C CNN "Manufacturer_Part_Number"
	1    6000 10400
	0    1    1    0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:RC0603FR-0720KL R5
U 1 1 5B69DDD4
P 16450 11550
F 0 "R5" H 16150 11550 60  0000 L BNN
F 1 "20.0k" H 16450 11500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 16450 11550 50  0001 C CNN
F 3 "xxRES, 20.0k,1%, 0.125 W, 0805" H 16450 11550 50  0001 C CNN
F 4 "20.0k" V 10650 4350 60  0001 C CNN "ValueDisplayed"
F 5 "YAGEO" H 8900 -800 50  0001 C CNN "Manufacturer"
F 6 "RC0805FR-0720KL" H 8900 -800 50  0001 C CNN "PartNumber"
F 7 "C4328" H 8900 -800 50  0001 C CNN "Manufacturer_Part_Number"
	1    16450 11550
	-1   0    0    -1  
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:PEC04DAAN J2
U 1 1 5B69DDD3
P 15350 11350
F 0 "J2" H 15450 11550 60  0000 R BNN
F 1 "Freq Adjust" H 15350 11350 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 15350 11350 50  0001 C CNN
F 3 "xx" H 15350 11350 50  0001 C CNN
F 4 "NOPOP" H 6700 -800 50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 6700 -800 50  0001 C CNN "Manufacturer_Part_Number"
	1    15350 11350
	1    0    0    -1  
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:5128 TP14
U 1 1 5B69DDD0
P 6650 1650
F 0 "TP14" V 6600 1400 60  0000 L TNN
F 1 "PVDD_B" V 6500 1250 60  0000 L TNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 6650 1550 60  0001 C CNN
F 3 "xx" H 6650 1550 60  0000 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    6650 1650
	0    -1   1    0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:GRM31CR72A105KA01L C11
U 1 1 5B69DDCF
P 6750 1950
F 0 "C11" V 6750 2050 60  0000 L TNN
F 1 "2.2µF" V 6900 2200 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6750 1950 50  0001 C CNN
F 3 "xxCAP, CERM, 2.2 μF, 50 V, ±10%, X7R, 1206" H 6750 1950 50  0001 C CNN
F 4 "1µF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "x50V" V 1750 5150 60  0001 C CNN "Value2"
F 6 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "" H 0   0   50  0001 C CNN "PartNumber"
F 8 "CL31B225KBHNNNE" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 9 "C50254" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    6750 1950
	0    1    1    0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:GRM31CR72A105KA01L C13
U 1 1 5B69DDCE
P 7250 1950
F 0 "C13" V 7350 2100 60  0000 L BNN
F 1 "2.2µF" V 7450 2150 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7250 1950 50  0001 C CNN
F 3 "xxCAP, CERM, 2.2 μF, 50 V, ±10%, X7R, 1206" H 7250 1950 50  0001 C CNN
F 4 "1µF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "x50V" V 1750 5150 60  0001 C CNN "Value2"
F 6 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "" H 0   0   50  0001 C CNN "PartNumber"
F 8 "CL31B225KBHNNNE" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 9 "C50254" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    7250 1950
	0    1    1    0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:5128 TP15
U 1 1 5B69DDCD
P 6650 2700
F 0 "TP15" V 6650 2400 60  0000 L TNN
F 1 "PVDD_A" V 6500 2250 60  0000 L TNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 6650 2600 60  0001 C CNN
F 3 "xx" H 6650 2600 60  0000 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    6650 2700
	0    -1   1    0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:GRM31CR72A105KA01L C12
U 1 1 5B69DDCC
P 6750 3150
F 0 "C12" V 6750 3250 60  0000 L BNN
F 1 "2.2µF" V 6850 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6750 3150 50  0001 C CNN
F 3 "xxCAP, CERM, 2.2 μF, 50 V, ±10%, X7R, 1206" H 6750 3150 50  0001 C CNN
F 4 "1µF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "x50V" V 1750 5150 60  0001 C CNN "Value2"
F 6 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "" H 0   0   50  0001 C CNN "PartNumber"
F 8 "CL31B225KBHNNNE" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 9 "C50254" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    6750 3150
	0    1    1    0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:GRM188R71E333KA01D C20
U 1 1 5B69DDCB
P 9850 5950
F 0 "C20" H 9950 5950 60  0000 L BNN
F 1 "0.033µF" H 10100 5900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9850 5950 50  0001 C CNN
F 3 "xxCAP, CERM, 0.033 μF, 25 V, ±10%," H 9850 5950 50  0001 C CNN
F 4 "0.033µF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "25V" H 0   0   50  0001 C CNN "Value2"
F 6 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "CC0805KRX7R9BB333" H 0   0   50  0001 C CNN "PartNumber"
F 8 "0805B333K500NT" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 9 "C1739" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    9850 5950
	1    0    0    -1  
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:GRM31CR72A105KA01L C14
U 1 1 5B69DDCA
P 7250 3150
F 0 "C14" V 7250 3250 60  0000 L BNN
F 1 "2.2µF" V 7350 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7250 3150 50  0001 C CNN
F 3 "xxCAP, CERM, 2.2 μF, 50 V, ±10%, X7R, 1206" H 7250 3150 50  0001 C CNN
F 4 "1µF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "x50V" V 1750 5150 60  0001 C CNN "Value2"
F 6 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "" H 0   0   50  0001 C CNN "PartNumber"
F 8 "CL31B225KBHNNNE" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 9 "C50254" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    7250 3150
	0    1    1    0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:RC0603FR-0722KL R3
U 1 1 5B69DDC9
P 6550 9450
F 0 "R3" V 6560 9420 60  0000 R TNN
F 1 "22.0k" V 6500 9300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6550 9450 50  0001 C CNN
F 3 "xxRES, 22.0k,1%, 0.125 W, 0805" H 6550 9450 50  0001 C CNN
F 4 "22.0k" V 2550 5350 60  0001 C CNN "ValueDisplayed"
F 5 "YAGEO" H 800 200 50  0001 C CNN "Manufacturer"
F 6 "RC0805FR-0722KL" H 800 200 50  0001 C CNN "PartNumber"
F 7 "0805W8F2202T5E" H 800 200 50  0001 C CNN "Manufacturer_Name"
F 8 "C17560" H 800 200 50  0001 C CNN "Manufacturer_Part_Number"
	1    6550 9450
	0    -1   -1   0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:TP_H0.45P0.75 TP9
U 1 1 5B69DDC8
P 6450 8950
F 0 "TP9" V 6300 9050 60  0000 R TNN
F 1 "OC-ADJ" V 6200 9250 60  0000 R TNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 6450 8925 60  0001 C CNN
F 3 "xx" H 6450 8925 60  0000 C CNN
F 4 "NOPOP" H 1200 0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 1200 0   50  0001 C CNN "Manufacturer_Part_Number"
	1    6450 8950
	0    -1   -1   0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:RC0603FR-0730KL R6
U 1 1 5B69DDC3
P 16450 11750
F 0 "R6" H 16150 11750 60  0000 L BNN
F 1 "30.0k" H 16450 11700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 16450 11750 50  0001 C CNN
F 3 "xxRES, 30.0k,1%, 0.125 W, 0603" H 16450 11750 50  0001 C CNN
F 4 "30.0k" V 10650 4350 60  0001 C CNN "ValueDisplayed"
F 5 "YAGEO" H 8900 -800 50  0001 C CNN "Manufacturer"
F 6 "RC0805FR-0730KL" H 8900 -800 50  0001 C CNN "PartNumber"
F 7 "C22984" H 8900 -800 50  0001 C CNN "Manufacturer_Part_Number"
	1    16450 11750
	-1   0    0    -1  
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:RC0201FR-0710KL R4
U 1 1 5B69DDC2
P 16450 11350
F 0 "R4" H 16150 11350 60  0000 L BNN
F 1 "10.0k" H 16350 11250 50  0000 L BNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 16450 11350 50  0001 C CNN
F 3 "xxRES, 10.0k,1%, 0.125 W, 0805" H 16450 11350 50  0001 C CNN
F 4 "10.0k" V 10650 4350 60  0001 C CNN "ValueDisplayed"
F 5 "YAGEO" H 8900 -800 50  0001 C CNN "Manufacturer"
F 6 "RC0805FR-0710KL" H 8900 -800 50  0001 C CNN "PartNumber"
F 7 "0805W8F1002T5E" H 8900 -800 50  0001 C CNN "Manufacturer_Name"
F 8 "C17414" H 8900 -800 50  0001 C CNN "Manufacturer_Part_Number"
	1    16450 11350
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5B69DDC1
P 4150 4800
F 0 "C3" H 4050 4850 60  0000 R TNN
F 1 "0.1µF" H 3900 4700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4150 4800 50  0001 C CNN
F 3 "xxCAP, CERM, 0.1 μF, 50V, ±10%, X7R, 0805" H 4150 4800 50  0001 C CNN
F 4 "0.1µF" V 1750 5100 60  0001 C CNN "ValueDisplayed"
F 5 "x6.3V" H 0   0   50  0001 C CNN "Value2"
F 6 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "CC0805KRX7R9BB104" H 0   0   50  0001 C CNN "PartNumber"
F 8 "C49678" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    4150 4800
	-1   0    0    -1  
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:GRM188R71E333KA01D C18
U 1 1 5B69DDC0
P 9250 6450
F 0 "C18" H 9350 6450 60  0000 L BNN
F 1 "0.033µF" H 9500 6400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9250 6450 50  0001 C CNN
F 3 "xxCAP, CERM, 0.033 μF, 25 V, ±10%," H 9250 6450 50  0001 C CNN
F 4 "0.033µF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "25V" H 0   0   50  0001 C CNN "Value2"
F 6 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "CC0805KRX7R9BB333" H 0   0   50  0001 C CNN "PartNumber"
F 8 "0805B333K500NT" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 9 "C1739" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    9250 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5B69DDBF
P 4650 4800
F 0 "C4" H 4550 4850 60  0000 R TNN
F 1 "10µF" H 4450 4700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4650 4800 50  0001 C CNN
F 3 "xxCAP, CERM, 10 μF, 10 V, ±20%, X5R, 0805" H 4650 4800 50  0001 C CNN
F 4 "10µF" V 1750 5100 60  0001 C CNN "ValueDisplayed"
F 5 "x6.3V" H 0   0   50  0001 C CNN "Value2"
F 6 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "CC0805KKX5R8BB106" H 0   0   50  0001 C CNN "PartNumber"
F 8 "CL21A106KAYNNNE" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 9 "C15850" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    4650 4800
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5B69DDBD
P 4250 9050
F 0 "R2" H 4450 9150 60  0000 R TNN
F 1 "10.0k" H 4400 9000 50  0000 C BNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4250 9050 50  0001 C CNN
F 3 "xxRES, 10.0k,1%, 0.125 W, 0805" H 4250 9050 50  0001 C CNN
F 4 "YAGEO" H -400 -700 50  0001 C CNN "Manufacturer"
F 5 "RC0805FR-0710KL" H -400 -700 50  0001 C CNN "PartNumber"
F 6 "10.0k" V 1350 4450 60  0001 C CNN "ValueDisplayed"
F 7 "0805W8F1002T5E" H -400 -700 50  0001 C CNN "Manufacturer_Name"
F 8 "C17414" H -400 -700 50  0001 C CNN "Manufacturer_Part_Number"
	1    4250 9050
	1    0    0    -1  
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:RC0603FR-07100KL R15
U 1 1 5B69DDBC
P 10750 4850
F 0 "R15" V 10760 4820 60  0000 R TNN
F 1 "100k" V 10700 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10750 4850 50  0001 C CNN
F 3 "xxRES, 100.0k,1%, 0.125 W, 0805" H 10750 4850 50  0001 C CNN
F 4 "100k" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "RC0805FR-07100KL" H 0   0   50  0001 C CNN "PartNumber"
F 7 "C17407" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    10750 4850
	0    -1   -1   0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:RC0603FR-07499RL R10
U 1 1 5B69DDBB
P 10150 3450
F 0 "R10" H 10040 3480 60  0000 L BNN
F 1 "499" H 10150 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10150 3450 50  0001 C CNN
F 3 "xxRES, 499,1%, 0.125 W, 0805" H 10150 3450 50  0001 C CNN
F 4 "499" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "RC0805FR-07499RL" H 0   0   50  0001 C CNN "PartNumber"
F 7 "C83386" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    10150 3450
	1    0    0    -1  
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:RC0603FR-07499RL R11
U 1 1 5B69DDBA
P 10150 4550
F 0 "R11" H 10040 4580 60  0000 L BNN
F 1 "499" H 10150 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10150 4550 50  0001 C CNN
F 3 "xxRES, 499,1%, 0.125 W, 0805" H 10150 4550 50  0001 C CNN
F 4 "499" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "RC0805FR-07499RL" H 0   0   50  0001 C CNN "PartNumber"
F 7 "C83386" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    10150 4550
	1    0    0    -1  
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:GRM1555C1H102JA01D C24
U 1 1 5B69DDB9
P 10450 3950
F 0 "C24" V 10550 4350 60  0000 R TNN
F 1 "1000pF" V 10500 4200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10450 3950 50  0001 C CNN
F 3 "xxCAP, CERM, 1000 pF, 50 V, ±5%, C0G/NP0, 0603" H 10450 3950 50  0001 C CNN
F 4 "1000pF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "GRM2165C1H102JA01D" H 0   0   50  0001 C CNN "PartNumber"
F 6 "x50V" H 0   0   50  0001 C CNN "Value2"
F 7 "Murata" H 0   0   50  0001 C CNN "Manufacturer"
F 8 "CL10C102JB8NNNC" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 9 "C163508" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    10450 3950
	0    -1   -1   0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:RC0603FR-07100KL R14
U 1 1 5B69DDB8
P 10750 3750
F 0 "R14" V 10760 3720 60  0000 R TNN
F 1 "100k" V 10700 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10750 3750 50  0001 C CNN
F 3 "xxRES, 100.0k,1%, 0.125 W, 0805" H 10750 3750 50  0001 C CNN
F 4 "100k" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "RC0805FR-07100KL" H 0   0   50  0001 C CNN "PartNumber"
F 7 "C17407" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    10750 3750
	0    -1   -1   0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:RC0603FR-07100KL R13
U 1 1 5B69DDB7
P 10750 2650
F 0 "R13" V 10760 2620 60  0000 R TNN
F 1 "100k" V 10700 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10750 2650 50  0001 C CNN
F 3 "xxRES, 100.0k,1%, 0.125 W, 0805" H 10750 2650 50  0001 C CNN
F 4 "100k" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "RC0805FR-07100KL" H 0   0   50  0001 C CNN "PartNumber"
F 7 "C17407" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    10750 2650
	0    -1   -1   0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:RC0603FR-07499RL R8
U 1 1 5B69DDB6
P 10150 1250
F 0 "R8" H 10040 1280 60  0000 L BNN
F 1 "499" H 10150 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10150 1250 50  0001 C CNN
F 3 "xxRES, 499,1%, 0.125 W, 0805" H 10150 1250 50  0001 C CNN
F 4 "499" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "RC0805FR-07499RL" H 0   0   50  0001 C CNN "PartNumber"
F 7 "C83386" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    10150 1250
	1    0    0    -1  
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:GRM188R71E333KA01D C21
U 1 1 5B69DDB5
P 9850 6550
F 0 "C21" H 9950 6550 60  0000 L BNN
F 1 "0.033µF" H 10100 6500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9850 6550 50  0001 C CNN
F 3 "xxCAP, CERM, 0.033 μF, 25 V, ±10%," H 9850 6550 50  0001 C CNN
F 4 "0.033µF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "25V" H 0   0   50  0001 C CNN "Value2"
F 6 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "CC0805KRX7R9BB333" H 0   0   50  0001 C CNN "PartNumber"
F 8 "0805B333K500NT" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 9 "C1739" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    9850 6550
	1    0    0    -1  
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:RC0603FR-07499RL R9
U 1 1 5B69DDB4
P 10150 2350
F 0 "R9" H 10040 2380 60  0000 L BNN
F 1 "499" H 10150 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10150 2350 50  0001 C CNN
F 3 "xxRES, 499,1%, 0.125 W, 0805" H 10150 2350 50  0001 C CNN
F 4 "499" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "RC0805FR-07499RL" H 0   0   50  0001 C CNN "PartNumber"
F 7 "C83386" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    10150 2350
	1    0    0    -1  
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:GRM1555C1H102JA01D C23
U 1 1 5B69DDB3
P 10450 1750
F 0 "C23" V 10500 2100 60  0000 R TNN
F 1 "1000pF" V 10400 1950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10450 1750 50  0001 C CNN
F 3 "xxCAP, CERM, 1000 pF, 50 V, ±5%, C0G/NP0, 0603" H 10450 1750 50  0001 C CNN
F 4 "1000pF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "GRM2165C1H102JA01D" H 0   0   50  0001 C CNN "PartNumber"
F 6 "x50V" H 0   0   50  0001 C CNN "Value2"
F 7 "Murata" H 0   0   50  0001 C CNN "Manufacturer"
F 8 "CL10C102JB8NNNC" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 9 "C163508" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    10450 1750
	0    -1   -1   0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:RC0603FR-07100KL R12
U 1 1 5B69DDB2
P 10750 1550
F 0 "R12" V 10760 1520 60  0000 R TNN
F 1 "100k" V 10700 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10750 1550 50  0001 C CNN
F 3 "xxRES, 100.0k,1%, 0.125 W, 0805" H 10750 1550 50  0001 C CNN
F 4 "100k" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "RC0805FR-07100KL" H 0   0   50  0001 C CNN "PartNumber"
F 7 "C17407" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    10750 1550
	0    -1   -1   0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:EEU-FC1H222 C15
U 1 1 5B69DDB1
P 7750 2050
F 0 "C15" V 7830 1960 60  0000 R TNN
F 1 "2400µF" V 7700 1750 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D18.0mm_P7.50mm" H 7750 2050 50  0001 C CNN
F 3 "xxCAP, AL, 2400 μF, 50 V, ±20%, 0.028 ohm, TH" H 7750 2050 50  0001 C CNN
F 4 "United Chemi-Con" V 7750 2050 50  0001 C CNN "Manufacturer"
F 5 "EGPD500ELL242MM30H" V 7750 2050 50  0001 C CNN "PartNumber"
F 6 "2200µF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 7 "50V" H 0   0   50  0001 C CNN "Value2"
F 8 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
F 9 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Name"
	1    7750 2050
	0    -1   -1   0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:EEU-FC1H222 C16
U 1 1 5B69DDB0
P 7750 3250
F 0 "C16" V 7830 3160 60  0000 R TNN
F 1 "2400µF" V 7750 3000 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D18.0mm_P7.50mm" H 7750 3250 50  0001 C CNN
F 3 "xxCAP, AL, 2400 μF, 50 V, ±20%, 0.028 ohm, TH" H 7750 3250 50  0001 C CNN
F 4 "United Chemi-Con" H 7750 3250 50  0001 C CNN "Manufacturer"
F 5 "EGPD500ELL242MM30H" H 7750 3250 50  0001 C CNN "PartNumber"
F 6 "2200µF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 7 "50V" H 0   0   50  0001 C CNN "Value2"
F 8 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
F 9 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Name"
	1    7750 3250
	0    -1   -1   0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:C0603C104K5RACTU C5
U 1 1 5B69DDAA
P 5350 2050
F 0 "C5" V 5350 1950 60  0000 R TNN
F 1 "0.1µF" V 5250 1950 60  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5250 1950 60  0001 C CNN
F 3 "xxCAP, CERM, 0.1 μF, 50V, ±10%, X7R, 0805" H 5250 1950 60  0001 C CNN
F 4 "x16V" H 0   0   50  0001 C CNN "Value2"
F 5 "0.1µF" H 0   0   50  0001 C CNN "ValueDisplayed"
F 6 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "CC0805KRX7R9BB104" H 0   0   50  0001 C CNN "PartNumber"
F 8 "C49678" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    5350 2050
	0    -1   -1   0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:GRM188R71C105KA12D C19
U 1 1 5B69DDA8
P 9550 8050
F 0 "C19" V 9640 8140 60  0000 L BNN
F 1 "1µF" V 9700 8250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9550 8050 50  0001 C CNN
F 3 "xxCAP, CERM, 1 μF, 50 V, ±10%, X7R, 0805" H 9550 8050 50  0001 C CNN
F 4 "1µF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "x16V" H 0   0   50  0001 C CNN "Value2"
F 6 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "CC0805KKX7R8BB105" H 0   0   50  0001 C CNN "PartNumber"
F 8 "CL21B105KBFNNNE" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 9 "C28323" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    9550 8050
	0    1    1    0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:GRM188R71H473KA61D C22
U 1 1 5B69DDA3
P 10050 8150
F 0 "C22" V 10060 8060 60  0000 R TNN
F 1 "0.047µF" V 10000 7900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10050 8150 50  0001 C CNN
F 3 "xxCAP, CERM, 0.047 μF, 50 V, ±10%, X7R, 0805" H 10050 8150 50  0001 C CNN
F 4 "0.047µF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "x50v" H 0   0   50  0001 C CNN "Value2"
F 6 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "CC0805KRX7R9BB473" H 0   0   50  0001 C CNN "PartNumber"
F 8 "CL21B473KBCNNNC" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 9 "C53134" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    10050 8150
	0    -1   -1   0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:GRM31CR71C106KAC7L C25
U 1 1 5B69DD9C
P 13550 1250
F 0 "C25" H 13660 1160 60  0000 R TNN
F 1 "10µF" H 13450 1300 50  0000 C BNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 13550 1250 50  0001 C CNN
F 3 "xxCAP, AL, 10 μF, 16V, ±10%, ELNA SILMIC II, TH" H 13550 1250 50  0001 C CNN
F 4 "10µF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "x16V" H 0   0   50  0001 C CNN "Value2"
F 6 "ELNA" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "RFS-16V100ME3#5" H 0   0   50  0001 C CNN "PartNumber"
F 8 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
F 9 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Name"
	1    13550 1250
	-1   0    0    1   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:C0603C104K5RACTU C6
U 1 1 5B69DD94
P 5350 3250
F 0 "C6" V 5350 3150 60  0000 R TNN
F 1 "0.1µF" V 5250 3150 60  0000 R TNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5250 3150 60  0001 C CNN
F 3 "xxCAP, CERM, 0.1 μF, 50V, ±10%, X7R, 0805" H 5250 3150 60  0001 C CNN
F 4 "x16V" H 0   0   50  0001 C CNN "Value2"
F 5 "0.1µF" H 0   0   50  0001 C CNN "ValueDisplayed"
F 6 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "CC0805KRX7R9BB104" H 0   0   50  0001 C CNN "PartNumber"
F 8 "C49678" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    5350 3250
	0    -1   -1   0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:GRM31CR71C106KAC7L C26
U 1 1 5B69DD8E
P 13550 2350
F 0 "C26" H 13660 2260 60  0000 R TNN
F 1 "10µF" H 13450 2400 50  0000 C BNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 13550 2350 50  0001 C CNN
F 3 "xxCAP, AL, 10 μF, 16V, ±10%, ELNA SILMIC II, TH" H 13550 2350 50  0001 C CNN
F 4 "10µF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "x16V" H 0   0   50  0001 C CNN "Value2"
F 6 "ELNA" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "RFS-16V100ME3#5" H 0   0   50  0001 C CNN "PartNumber"
F 8 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
F 9 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Name"
	1    13550 2350
	-1   0    0    1   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:GRM31CR71C106KAC7L C27
U 1 1 5B69DD88
P 13550 3450
F 0 "C27" H 13660 3360 60  0000 R TNN
F 1 "10µF" H 13450 3500 50  0000 C BNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 13550 3450 50  0001 C CNN
F 3 "xxCAP, AL, 10 μF, 16V, ±10%, ELNA SILMIC II, TH" H 13550 3450 50  0001 C CNN
F 4 "10µF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "x16V" H 0   0   50  0001 C CNN "Value2"
F 6 "ELNA" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "RFS-16V100ME3#5" H 0   0   50  0001 C CNN "PartNumber"
F 8 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
F 9 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Name"
	1    13550 3450
	-1   0    0    1   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:GRM31CR71C106KAC7L C28
U 1 1 5B69DD83
P 13550 4550
F 0 "C28" H 13660 4460 60  0000 R TNN
F 1 "10µF" H 13450 4600 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 13550 4550 50  0001 C CNN
F 3 "xxCAP, AL, 10 μF, 16V, ±10%, ELNA SILMIC II, TH" H 13550 4550 50  0001 C CNN
F 4 "10µF" V 1750 5150 60  0001 C CNN "ValueDisplayed"
F 5 "x16V" H 0   0   50  0001 C CNN "Value2"
F 6 "ELNA" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "RFS-16V100ME3#5" H 0   0   50  0001 C CNN "PartNumber"
F 8 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
F 9 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Name"
	1    13550 4550
	-1   0    0    1   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:MA5173-AE L1
U 1 1 5B69DD80
P 16650 4050
F 0 "L1" H 16440 4210 60  0000 L BNN
F 1 "10 µH" H 16550 3900 60  0000 L BNN
F 2 "SamacSys_Parts:WE-HCF_201322" H 16800 4400 60  0001 C CNN
F 3 "xxWürth 7443631000" H 16475 3850 60  0000 C CNN
F 4 "16A" V 1750 5150 60  0001 C CNN "Value2"
F 5 "Wurth Elektronik" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "7443631000" H 0   0   50  0001 C CNN "PartNumber"
F 7 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    16650 4050
	1    0    0    -1  
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:MA5173-AE L2
U 1 1 5B69DD7F
P 16650 5650
F 0 "L2" H 16440 5810 60  0000 L BNN
F 1 "10 µH" H 16550 5500 60  0000 L BNN
F 2 "SamacSys_Parts:WE-HCF_201322" H 16475 5450 60  0001 C CNN
F 3 "xxWürth 7443631000" H 16475 5450 60  0000 C CNN
F 4 "16A" V 1750 5150 60  0001 C CNN "Value2"
F 5 "Wurth Elektronik" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "7443631000" H 0   0   50  0001 C CNN "PartNumber"
F 7 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    16650 5650
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 4950 4150 5050
Wire Wire Line
	4650 4950 4650 5050
Wire Wire Line
	2850 5950 2850 6050
Wire Wire Line
	3250 5950 3250 6050
Wire Wire Line
	5750 6250 6050 6250
Wire Wire Line
	6450 2950 6450 2700
Wire Wire Line
	6450 2700 6550 2700
Connection ~ 6450 2950
Connection ~ 6550 2700
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:5001 TP1
U 1 1 5B69DDDF
P 2350 1250
F 0 "TP1" H 2250 1250 60  0000 R BNN
F 1 "GND" H 2250 1325 60  0000 L BNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 2250 1325 60  0001 C CNN
F 3 "xx" H 2250 1325 60  0000 C CNN
F 4 "NOPOP" H -600 -7800 50  0001 C CNN "PartNumber"
F 5 "NOPOP" H -600 -7800 50  0001 C CNN "Manufacturer_Part_Number"
	1    2350 1250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2350 1350 2350 1450
$Comp
L Jumper:Jumper_2_Bridged JP2
U 1 1 5C38EF1A
P 4250 9400
F 0 "JP2" H 4250 9595 50  0000 C CNN
F 1 "Jumper_2_Bridged" H 4400 9500 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4250 9400 50  0001 C CNN
F 3 "xx" H 4250 9400 50  0001 C CNN
F 4 "NOPOP" H 2700 -2850 50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 2700 -2850 50  0001 C CNN "Manufacturer_Part_Number"
	1    4250 9400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5C38F30A
P 4250 9600
F 0 "#PWR02" H 4250 9350 50  0001 C CNN
F 1 "GND" H 4255 9427 50  0000 C CNN
F 2 "" H 4250 9600 50  0001 C CNN
F 3 "" H 4250 9600 50  0001 C CNN
	1    4250 9600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 5C496EC6
P 2350 5950
F 0 "#PWR03" H 2350 5800 50  0001 C CNN
F 1 "+3.3V" H 2365 6123 50  0000 C CNN
F 2 "" H 2350 5950 50  0001 C CNN
F 3 "" H 2350 5950 50  0001 C CNN
	1    2350 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 5C498136
P 4650 4450
F 0 "#PWR07" H 4650 4300 50  0001 C CNN
F 1 "+3.3V" H 4665 4623 50  0000 C CNN
F 2 "" H 4650 4450 50  0001 C CNN
F 3 "" H 4650 4450 50  0001 C CNN
	1    4650 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 8850 9350 10050
$Comp
L power:GND #PWR010
U 1 1 5C4AF3DC
P 9150 9050
F 0 "#PWR010" H 9150 8800 50  0001 C CNN
F 1 "GND" H 9155 8877 50  0000 C CNN
F 2 "" H 9150 9050 50  0001 C CNN
F 3 "" H 9150 9050 50  0001 C CNN
	1    9150 9050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 6450 5950 6650
Wire Wire Line
	5950 6650 6550 6650
Wire Wire Line
	6350 6450 6550 6450
$Comp
L power:GND #PWR09
U 1 1 5C4FD04D
P 5750 6250
F 0 "#PWR09" H 5750 6000 50  0001 C CNN
F 1 "GND" H 5755 6077 50  0000 C CNN
F 2 "" H 5750 6250 50  0001 C CNN
F 3 "" H 5750 6250 50  0001 C CNN
	1    5750 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR08
U 1 1 5C4FE220
P 4250 8900
F 0 "#PWR08" H 4250 8750 50  0001 C CNN
F 1 "+3.3V" H 4265 9073 50  0000 C CNN
F 2 "" H 4250 8900 50  0001 C CNN
F 3 "" H 4250 8900 50  0001 C CNN
	1    4250 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1750 5350 1750
Wire Wire Line
	4550 2950 5350 2950
$Comp
L power:GND #PWR0101
U 1 1 5C258D0B
P 9550 8250
F 0 "#PWR0101" H 9550 8000 50  0001 C CNN
F 1 "GND" H 9555 8077 50  0000 C CNN
F 2 "" H 9550 8250 50  0001 C CNN
F 3 "" H 9550 8250 50  0001 C CNN
	1    9550 8250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5C258EA1
P 10050 8250
F 0 "#PWR0102" H 10050 8000 50  0001 C CNN
F 1 "GND" H 10055 8077 50  0000 C CNN
F 2 "" H 10050 8250 50  0001 C CNN
F 3 "" H 10050 8250 50  0001 C CNN
	1    10050 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 7850 8950 7850
$Comp
L power:GND #PWR0103
U 1 1 5C41D478
P 3600 1550
F 0 "#PWR0103" H 3600 1300 50  0001 C CNN
F 1 "GND" H 3605 1377 50  0000 C CNN
F 2 "" H 3600 1550 50  0001 C CNN
F 3 "" H 3600 1550 50  0001 C CNN
	1    3600 1550
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5C41D60E
P 3600 1550
F 0 "#FLG0101" H 3600 1625 50  0001 C CNN
F 1 "PWR_FLAG" H 3600 1724 50  0000 C CNN
F 2 "" H 3600 1550 50  0001 C CNN
F 3 "~" H 3600 1550 50  0001 C CNN
	1    3600 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 5950 2350 6550
Text GLabel 1750 9000 2    50   Input ~ 0
\FAULT
$Comp
L power:+3.3V #PWR0104
U 1 1 5C3E3087
P 13750 9250
F 0 "#PWR0104" H 13750 9100 50  0001 C CNN
F 1 "+3.3V" H 13765 9423 50  0000 C CNN
F 2 "" H 13750 9250 50  0001 C CNN
F 3 "" H 13750 9250 50  0001 C CNN
	1    13750 9250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0114
U 1 1 5C3E3217
P 13750 9850
F 0 "#PWR0114" H 13750 9700 50  0001 C CNN
F 1 "+3.3V" H 13765 10023 50  0000 C CNN
F 2 "" H 13750 9850 50  0001 C CNN
F 3 "" H 13750 9850 50  0001 C CNN
	1    13750 9850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0115
U 1 1 5C3E7A1E
P 15850 11250
F 0 "#PWR0115" H 15850 11100 50  0001 C CNN
F 1 "+3.3V" H 15865 11423 50  0000 C CNN
F 2 "" H 15850 11250 50  0001 C CNN
F 3 "" H 15850 11250 50  0001 C CNN
	1    15850 11250
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0117
U 1 1 5C93F2A7
P 4550 1650
F 0 "#PWR0117" H 4550 1500 50  0001 C CNN
F 1 "+12V" H 4565 1823 50  0000 C CNN
F 2 "" H 4550 1650 50  0001 C CNN
F 3 "" H 4550 1650 50  0001 C CNN
	1    4550 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0118
U 1 1 5C9406EF
P 4550 2850
F 0 "#PWR0118" H 4550 2700 50  0001 C CNN
F 1 "+12V" H 4565 3023 50  0000 C CNN
F 2 "" H 4550 2850 50  0001 C CNN
F 3 "" H 4550 2850 50  0001 C CNN
	1    4550 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR05
U 1 1 5CD16406
P 2900 6800
F 0 "#PWR05" H 2900 6650 50  0001 C CNN
F 1 "+3V3" H 2915 6973 50  0000 C CNN
F 2 "" H 2900 6800 50  0001 C CNN
F 3 "" H 2900 6800 50  0001 C CNN
	1    2900 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5CD16AE9
P 2900 7100
F 0 "R20" V 2693 7100 50  0000 C CNN
F 1 "6.8k" V 2784 7100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2830 7100 50  0001 C CNN
F 3 "xxRES, 6.8k,1%, 0.125 W, 0805" H 2900 7100 50  0001 C CNN
F 4 "YAGEO" H 800 -50 50  0001 C CNN "Manufacturer"
F 5 "RC0805FR-0710KL" H 800 -50 50  0001 C CNN "PartNumber"
F 6 "10.0k" H 800 -50 50  0001 C CNN "ValueDisplayed"
F 7 "0805W8F6801T5E" H 800 -50 50  0001 C CNN "Manufacturer_Name"
F 8 "C17772" H 800 -50 50  0001 C CNN "Manufacturer_Part_Number"
	1    2900 7100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R21
U 1 1 5CD16CC0
P 3200 7100
F 0 "R21" V 2993 7100 50  0000 C CNN
F 1 "6.8k" V 3084 7100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3130 7100 50  0001 C CNN
F 3 "xxRES, 6.8k,1%, 0.125 W, 0805" H 3200 7100 50  0001 C CNN
F 4 "YAGEO" H 750 -150 50  0001 C CNN "Manufacturer"
F 5 "RC0805FR-0710KL" H 750 -150 50  0001 C CNN "PartNumber"
F 6 "6.8k" H 750 -150 50  0001 C CNN "ValueDisplayed"
F 7 "0805W8F6801T5E" H 750 -150 50  0001 C CNN "Manufacturer_Name"
F 8 "C17772" H 750 -150 50  0001 C CNN "Manufacturer_Part_Number"
	1    3200 7100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2900 6800 2900 6900
Wire Wire Line
	10750 1250 13350 1250
Wire Wire Line
	10750 2350 13350 2350
Wire Wire Line
	10750 3450 13350 3450
Wire Wire Line
	10750 4550 13350 4550
$Comp
L Device:R R22
U 1 1 5D24E576
P 2400 7350
F 0 "R22" V 2350 7550 50  0000 C CNN
F 1 "22" V 2350 7700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2330 7350 50  0001 C CNN
F 3 "xxRES, 22,1%, 0.125 W, 0805" H 2400 7350 50  0001 C CNN
F 4 "RC0805FR-0722RL" H 800 0   50  0001 C CNN "PartNumber"
F 5 "C17561" H 800 0   50  0001 C CNN "Manufacturer_Part_Number"
	1    2400 7350
	0    1    1    0   
$EndComp
$Comp
L Device:R R23
U 1 1 5D24E91D
P 2400 7450
F 0 "R23" V 2350 7650 50  0000 C CNN
F 1 "22" V 2350 7800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2330 7450 50  0001 C CNN
F 3 "xxRES, 22,1%, 0.125 W, 0805" H 2400 7450 50  0001 C CNN
F 4 "RC0805FR-0722RL" H 800 0   50  0001 C CNN "PartNumber"
F 5 "C17561" H 800 0   50  0001 C CNN "Manufacturer_Part_Number"
	1    2400 7450
	0    1    1    0   
$EndComp
$Comp
L Device:R R26
U 1 1 5D24ECD9
P 2400 7550
F 0 "R26" V 2350 7750 50  0000 C CNN
F 1 "22" V 2350 7900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2330 7550 50  0001 C CNN
F 3 "xxRES, 22,1%, 0.125 W, 0805" H 2400 7550 50  0001 C CNN
F 4 "RC0805FR-0722RL" H 800 0   50  0001 C CNN "PartNumber"
F 5 "C17561" H 800 0   50  0001 C CNN "Manufacturer_Part_Number"
	1    2400 7550
	0    1    1    0   
$EndComp
$Comp
L Device:R R27
U 1 1 5D24F1A1
P 2400 7650
F 0 "R27" V 2350 7850 50  0000 C CNN
F 1 "22" V 2350 8000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2330 7650 50  0001 C CNN
F 3 "xxRES, 22,1%, 0.125 W, 0805" H 2400 7650 50  0001 C CNN
F 4 "RC0805FR-0722RL" H 800 0   50  0001 C CNN "PartNumber"
F 5 "C17561" H 800 0   50  0001 C CNN "Manufacturer_Part_Number"
	1    2400 7650
	0    1    1    0   
$EndComp
$Comp
L Device:R R30
U 1 1 5D252D4C
P 5800 9850
F 0 "R30" V 5593 9850 50  0000 C CNN
F 1 "22" V 5684 9850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5730 9850 50  0001 C CNN
F 3 "xxRES, 22,1%, 0.125 W, 0805" H 5800 9850 50  0001 C CNN
F 4 "RC0805FR-0722RL" H 2700 1400 50  0001 C CNN "PartNumber"
F 5 "C17561" H 2700 1400 50  0001 C CNN "Manufacturer_Part_Number"
	1    5800 9850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R31
U 1 1 5D252FB5
P 6100 9850
F 0 "R31" V 5893 9850 50  0000 C CNN
F 1 "22" V 5984 9850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6030 9850 50  0001 C CNN
F 3 "xxRES, 22,1%, 0.125 W, 0805" H 6100 9850 50  0001 C CNN
F 4 "RC0805FR-0722RL" H 3000 1100 50  0001 C CNN "PartNumber"
F 5 "C17561" H 3000 1100 50  0001 C CNN "Manufacturer_Part_Number"
	1    6100 9850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R33
U 1 1 5D2F95F1
P 12200 6650
F 0 "R33" H 12300 6850 50  0000 L CNN
F 1 "10.0k" H 12300 6750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 12130 6650 50  0001 C CNN
F 3 "xxRES, 10.0k,1%, 0.125 W, 0805" H 12200 6650 50  0001 C CNN
F 4 "RC0805FR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 5 "0805W8F1002T5E" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 6 "C17414" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    12200 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R32
U 1 1 5D2F97AF
P 12000 6650
F 0 "R32" H 11700 6850 50  0000 L CNN
F 1 "10.0k" H 11700 6750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 11930 6650 50  0001 C CNN
F 3 "xxRES, 10.0k,1%, 0.125 W, 0805" H 12000 6650 50  0001 C CNN
F 4 "RC0805FR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 5 "0805W8F1002T5E" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 6 "C17414" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    12000 6650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR06
U 1 1 5D3A0E68
P 12000 6500
F 0 "#PWR06" H 12000 6350 50  0001 C CNN
F 1 "+3V3" H 12015 6673 50  0000 C CNN
F 2 "" H 12000 6500 50  0001 C CNN
F 3 "" H 12000 6500 50  0001 C CNN
	1    12000 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	11850 7050 12000 7050
Wire Wire Line
	11850 6850 12200 6850
Wire Wire Line
	12000 6800 12000 7050
Connection ~ 12000 7050
Wire Wire Line
	12000 7050 12750 7050
Wire Wire Line
	12200 6800 12200 6850
Connection ~ 12200 6850
Wire Wire Line
	12200 6850 12750 6850
$Comp
L power:+3V3 #PWR016
U 1 1 5D41FC48
P 12200 6500
F 0 "#PWR016" H 12200 6350 50  0001 C CNN
F 1 "+3V3" H 12215 6673 50  0000 C CNN
F 2 "" H 12200 6500 50  0001 C CNN
F 3 "" H 12200 6500 50  0001 C CNN
	1    12200 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0110
U 1 1 5D3F0CAF
P 10750 1850
F 0 "#PWR0110" H 10750 1600 50  0001 C CNN
F 1 "GNDA" H 10755 1677 50  0000 C CNN
F 2 "" H 10750 1850 50  0001 C CNN
F 3 "" H 10750 1850 50  0001 C CNN
	1    10750 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0120
U 1 1 5D3F1501
P 10750 2950
F 0 "#PWR0120" H 10750 2700 50  0001 C CNN
F 1 "GNDA" H 10755 2777 50  0000 C CNN
F 2 "" H 10750 2950 50  0001 C CNN
F 3 "" H 10750 2950 50  0001 C CNN
	1    10750 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0121
U 1 1 5D3F1B47
P 10750 4050
F 0 "#PWR0121" H 10750 3800 50  0001 C CNN
F 1 "GNDA" H 10755 3877 50  0000 C CNN
F 2 "" H 10750 4050 50  0001 C CNN
F 3 "" H 10750 4050 50  0001 C CNN
	1    10750 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0122
U 1 1 5D3F210A
P 10750 5150
F 0 "#PWR0122" H 10750 4900 50  0001 C CNN
F 1 "GNDA" H 10755 4977 50  0000 C CNN
F 2 "" H 10750 5150 50  0001 C CNN
F 3 "" H 10750 5150 50  0001 C CNN
	1    10750 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0123
U 1 1 5D3F3557
P 9300 8200
F 0 "#PWR0123" H 9300 7950 50  0001 C CNN
F 1 "GNDA" H 9305 8027 50  0000 C CNN
F 2 "" H 9300 8200 50  0001 C CNN
F 3 "" H 9300 8200 50  0001 C CNN
	1    9300 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 8650 9150 8750
Wire Wire Line
	5150 5850 5000 5850
Wire Wire Line
	5000 5850 5000 5950
$Comp
L power:GNDA #PWR0124
U 1 1 5D44A2A5
P 4900 5200
F 0 "#PWR0124" H 4900 4950 50  0001 C CNN
F 1 "GNDA" H 4905 5027 50  0000 C CNN
F 2 "" H 4900 5200 50  0001 C CNN
F 3 "" H 4900 5200 50  0001 C CNN
	1    4900 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 5550 5150 5200
Wire Wire Line
	5150 5200 4900 5200
$Comp
L power:GNDA #PWR0125
U 1 1 5DC10650
P 2350 1450
F 0 "#PWR0125" H 2350 1200 50  0001 C CNN
F 1 "GNDA" H 2355 1277 50  0000 C CNN
F 2 "" H 2350 1450 50  0001 C CNN
F 3 "" H 2350 1450 50  0001 C CNN
	1    2350 1450
	1    0    0    -1  
$EndComp
Text Label 1700 7350 0    50   ~ 0
MCLK-Conn
Text Label 1750 7950 0    50   ~ 0
SDA-Conn
Text Label 1750 7850 0    50   ~ 0
SCL-Conn
Text Label 1700 7450 0    50   ~ 0
SCLK-Conn
Text Label 1200 7550 2    50   ~ 0
SDIN-Conn
Text Label 1700 7550 0    50   ~ 0
LRCK-Conn
$Comp
L power:GND #PWR0130
U 1 1 5DDE3AB5
P 1550 1350
F 0 "#PWR0130" H 1550 1100 50  0001 C CNN
F 1 "GND" H 1555 1177 50  0000 C CNN
F 2 "" H 1550 1350 50  0001 C CNN
F 3 "" H 1550 1350 50  0001 C CNN
	1    1550 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0131
U 1 1 5DDE3CDE
P 1850 1350
F 0 "#PWR0131" H 1850 1100 50  0001 C CNN
F 1 "GNDA" H 1855 1177 50  0000 C CNN
F 2 "" H 1850 1350 50  0001 C CNN
F 3 "" H 1850 1350 50  0001 C CNN
	1    1850 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:Net-Tie_2 NT1
U 1 1 5DDE3F16
P 1700 1300
F 0 "NT1" H 1700 1478 50  0000 C CNN
F 1 "Net-Tie_2" H 1700 1387 50  0000 C CNN
F 2 "NetTie:NetTie-2_SMD_Pad0.5mm" H 1700 1300 50  0001 C CNN
F 3 "xx" H 1700 1300 50  0001 C CNN
F 4 "NOPOP" H -10450 -10400 50  0001 C CNN "Manufacturer_Part_Number"
	1    1700 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1350 1550 1300
Wire Wire Line
	1550 1300 1600 1300
Wire Wire Line
	1800 1300 1850 1300
Wire Wire Line
	1850 1300 1850 1350
$Comp
L power:+3.3V #PWR0132
U 1 1 5DE3B5DA
P 2850 5450
F 0 "#PWR0132" H 2850 5300 50  0001 C CNN
F 1 "+3.3V" H 2865 5623 50  0000 C CNN
F 2 "" H 2850 5450 50  0001 C CNN
F 3 "" H 2850 5450 50  0001 C CNN
	1    2850 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0138
U 1 1 5DDB157B
P 6200 8800
F 0 "#PWR0138" H 6200 8550 50  0001 C CNN
F 1 "GND" H 6205 8627 50  0000 C CNN
F 2 "" H 6200 8800 50  0001 C CNN
F 3 "" H 6200 8800 50  0001 C CNN
	1    6200 8800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0139
U 1 1 5DDD9427
P 1850 8150
F 0 "#PWR0139" H 1850 7900 50  0001 C CNN
F 1 "GND" H 1700 8100 50  0000 C CNN
F 2 "" H 1850 8150 50  0001 C CNN
F 3 "" H 1850 8150 50  0001 C CNN
	1    1850 8150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5DE5CC82
P 11700 7650
F 0 "R1" V 11493 7650 50  0000 C CNN
F 1 "22" V 11584 7650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 11630 7650 50  0001 C CNN
F 3 "xxRES, 22,1%, 0.125 W, 0805" H 11700 7650 50  0001 C CNN
F 4 "C17561" H 150 -700 50  0001 C CNN "Manufacturer_Part_Number"
F 5 "RC0805FR-0722RL" H 150 -700 50  0001 C CNN "PartNumber"
	1    11700 7650
	0    1    1    0   
$EndComp
Text Label 1200 7450 2    50   ~ 0
SDOUT-Conn
Text Label 12100 7650 0    50   ~ 0
SDOUT-Conn
Wire Wire Line
	13150 9350 12450 9350
Wire Wire Line
	13150 9950 12450 9950
Text Label 4450 14650 2    50   ~ 0
\RESET-AMP-Conn
$Comp
L Jumper:Jumper_3_Bridged12 JP1
U 1 1 5DF1B6B7
P 4900 14650
F 0 "JP1" H 4900 14762 50  0000 C CNN
F 1 "AMP RESET Jumper" H 4900 14950 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4900 14650 50  0001 C CNN
F 3 "~" H 4900 14650 50  0001 C CNN
F 4 "NOPOP" H -12100 2750 50  0001 C CNN "Manufacturer_Part_Number"
	1    4900 14650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0141
U 1 1 5DF1BA57
P 5150 14700
F 0 "#PWR0141" H 5150 14450 50  0001 C CNN
F 1 "GND" H 5150 14550 50  0000 C CNN
F 2 "" H 5150 14700 50  0001 C CNN
F 3 "" H 5150 14700 50  0001 C CNN
	1    5150 14700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R43
U 1 1 5DFC02F4
P 5400 15300
F 0 "R43" H 5470 15346 50  0000 L CNN
F 1 "20.0k" H 5470 15255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5330 15300 50  0001 C CNN
F 3 "xxRES, 20.0k,1%, 0.125 W, 0805" H 5400 15300 50  0001 C CNN
F 4 "C4328" H -12100 2750 50  0001 C CNN "Manufacturer_Part_Number"
	1    5400 15300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0142
U 1 1 5DFC0454
P 5400 15450
F 0 "#PWR0142" H 5400 15200 50  0001 C CNN
F 1 "GND" H 5405 15277 50  0000 C CNN
F 2 "" H 5400 15450 50  0001 C CNN
F 3 "" H 5400 15450 50  0001 C CNN
	1    5400 15450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 14500 5400 15150
Wire Wire Line
	5400 14500 4900 14500
Wire Wire Line
	5150 14650 5150 14700
Wire Wire Line
	4650 14650 4450 14650
$Comp
L Device:R R40
U 1 1 5E10FAEA
P 11300 12500
F 0 "R40" H 11370 12546 50  0000 L CNN
F 1 "100k" H 11370 12455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 11230 12500 50  0001 C CNN
F 3 "xxRES, 100.0k,1%, 0.125 W, 0805" H 11300 12500 50  0001 C CNN
F 4 "C17407" H -4350 2100 50  0001 C CNN "Manufacturer_Part_Number"
	1    11300 12500
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R41
U 1 1 5E10FC30
P 10900 12600
F 0 "R41" H 10970 12646 50  0000 L CNN
F 1 "12k" H 10970 12555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10830 12600 50  0001 C CNN
F 3 "xxRES, 12k, 1%, 0.125 W, 0805" H 10900 12600 50  0001 C CNN
F 4 "0805W8F1202T5E" H -5150 2100 50  0001 C CNN "Manufacturer_Name"
F 5 "C17444" H -5150 2100 50  0001 C CNN "Manufacturer_Part_Number"
	1    10900 12600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R42
U 1 1 5E10FD78
P 10900 13300
F 0 "R42" H 10970 13346 50  0000 L CNN
F 1 "3.3k" H 10970 13255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10830 13300 50  0001 C CNN
F 3 "xxRES, 3.3k, 1%, 0.125 W, 0805" H 10900 13300 50  0001 C CNN
F 4 "0805W8F3301T5E" H -5150 2100 50  0001 C CNN "Manufacturer_Name"
F 5 "C26010" H -5150 2100 50  0001 C CNN "Manufacturer_Part_Number"
	1    10900 13300
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C54
U 1 1 5E10FECB
P 11300 12850
F 0 "C54" H 11415 12896 50  0000 L CNN
F 1 "1µF" H 11415 12805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 11338 12700 50  0001 C CNN
F 3 "xxCAP, CERM, 1 μF, 50 V, ±10%, X7R, 0805" H 11300 12850 50  0001 C CNN
F 4 "CL21B105KBFNNNE" H -4350 2100 50  0001 C CNN "Manufacturer_Name"
F 5 "C28323" H -4350 2100 50  0001 C CNN "Manufacturer_Part_Number"
	1    11300 12850
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C55
U 1 1 5E110011
P 11300 13300
F 0 "C55" H 11415 13346 50  0000 L CNN
F 1 "1µF" H 11415 13255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 11338 13150 50  0001 C CNN
F 3 "xxCAP, CERM, 1 μF, 50 V, ±10%, X7R, 0805" H 11300 13300 50  0001 C CNN
F 4 "CL21B105KBFNNNE" H -4350 2100 50  0001 C CNN "Manufacturer_Name"
F 5 "C28323" H -4350 2100 50  0001 C CNN "Manufacturer_Part_Number"
	1    11300 13300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0143
U 1 1 5E1103E9
P 11300 13550
F 0 "#PWR0143" H 11300 13300 50  0001 C CNN
F 1 "GND" H 11305 13377 50  0000 C CNN
F 2 "" H 11300 13550 50  0001 C CNN
F 3 "" H 11300 13550 50  0001 C CNN
	1    11300 13550
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0144
U 1 1 5E11051F
P 10900 13550
F 0 "#PWR0144" H 10900 13300 50  0001 C CNN
F 1 "GND" H 10905 13377 50  0000 C CNN
F 2 "" H 10900 13550 50  0001 C CNN
F 3 "" H 10900 13550 50  0001 C CNN
	1    10900 13550
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0146
U 1 1 5E11078B
P 10050 13300
F 0 "#PWR0146" H 10050 13050 50  0001 C CNN
F 1 "GND" H 10055 13127 50  0000 C CNN
F 2 "" H 10050 13300 50  0001 C CNN
F 3 "" H 10050 13300 50  0001 C CNN
	1    10050 13300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11300 12650 11300 12700
Wire Wire Line
	11300 13000 11300 13050
Wire Wire Line
	11300 13450 11300 13550
Wire Wire Line
	11300 13050 10900 13050
Connection ~ 11300 13050
Wire Wire Line
	11300 13050 11300 13150
Connection ~ 10900 13050
Wire Wire Line
	10900 13050 10900 13150
Wire Wire Line
	10900 13450 10900 13550
$Comp
L power:+12V #PWR0147
U 1 1 5E33D141
P 10900 12350
F 0 "#PWR0147" H 10900 12200 50  0001 C CNN
F 1 "+12V" H 10915 12523 50  0000 C CNN
F 2 "" H 10900 12350 50  0001 C CNN
F 3 "" H 10900 12350 50  0001 C CNN
	1    10900 12350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10900 12350 10900 12450
$Comp
L power:VDD #PWR0148
U 1 1 5E36BCC2
P 11300 12350
F 0 "#PWR0148" H 11300 12200 50  0001 C CNN
F 1 "VDD" H 11317 12523 50  0000 C CNN
F 2 "" H 11300 12350 50  0001 C CNN
F 3 "" H 11300 12350 50  0001 C CNN
	1    11300 12350
	-1   0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 5E3C4CC5
P 5200 8400
F 0 "TP6" H 5258 8520 50  0000 L CNN
F 1 "TP - Reset_Amp" H 5050 8600 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 5400 8400 50  0001 C CNN
F 3 "xx" H 5400 8400 50  0001 C CNN
F 4 "NOPOP" H -14200 -2650 50  0001 C CNN "Manufacturer_Part_Number"
	1    5200 8400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 13150 10050 13300
$Comp
L power:+3.3V #PWR0151
U 1 1 5E50B4E5
P 2100 8050
F 0 "#PWR0151" H 2100 7900 50  0001 C CNN
F 1 "+3.3V" H 2115 8223 50  0000 C CNN
F 2 "" H 2100 8050 50  0001 C CNN
F 3 "" H 2100 8050 50  0001 C CNN
	1    2100 8050
	-1   0    0    1   
$EndComp
Text Notes 10800 12000 0    59   ~ 0
for Reset function
Text Label 1600 8800 0    50   ~ 0
\RESET-AMP-Conn
$Comp
L MCU_ST_STM32F0:STM32F030C8Tx U5
U 1 1 5DF0442C
P 8000 13700
F 0 "U5" H 7550 11950 50  0000 C CNN
F 1 "STM32F030C8Tx" H 7550 11850 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 7500 12200 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00088500.pdf" H 8000 13700 50  0001 C CNN
F 4 "C23922" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    8000 13700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J12
U 1 1 5DFB59AB
P 1500 7450
F 0 "J12" H 1550 7150 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 1500 7050 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x03_P2.54mm_Vertical" H 1500 7450 50  0001 C CNN
F 3 "~" H 1500 7450 50  0001 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    1500 7450
	-1   0    0    1   
$EndComp
Wire Wire Line
	10550 7250 10550 11250
Wire Wire Line
	10550 11250 13450 11250
Wire Wire Line
	13450 11250 13450 11350
$Comp
L power:GND #PWR0140
U 1 1 5E0D1D54
P 1100 7350
F 0 "#PWR0140" H 1100 7100 50  0001 C CNN
F 1 "GND" H 1105 7177 50  0000 C CNN
F 2 "" H 1100 7350 50  0001 C CNN
F 3 "" H 1100 7350 50  0001 C CNN
	1    1100 7350
	-1   0    0    1   
$EndComp
Wire Wire Line
	1200 7350 1100 7350
$Comp
L Connector_Generic:Conn_01x04 J13
U 1 1 5E101125
P 1500 7950
F 0 "J13" H 1700 7800 50  0000 C CNN
F 1 "Conn_01x04" H 2050 7700 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 1500 7950 50  0001 C CNN
F 3 "~" H 1500 7950 50  0001 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    1500 7950
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J16
U 1 1 5E1602A8
P 9350 12800
F 0 "J16" V 9316 12612 50  0000 R CNN
F 1 "Conn_01x03" V 9500 13000 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9350 12800 50  0001 C CNN
F 3 "~" H 9350 12800 50  0001 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    9350 12800
	1    0    0    -1  
$EndComp
Text Label 9150 12800 2    50   ~ 0
Volume
$Comp
L power:GND #PWR0153
U 1 1 5E1606F8
P 9000 12950
F 0 "#PWR0153" H 9000 12700 50  0001 C CNN
F 1 "GND" H 9005 12777 50  0000 C CNN
F 2 "" H 9000 12950 50  0001 C CNN
F 3 "" H 9000 12950 50  0001 C CNN
	1    9000 12950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0154
U 1 1 5E16084A
P 9000 12700
F 0 "#PWR0154" H 9000 12550 50  0001 C CNN
F 1 "+3.3V" H 9015 12873 50  0000 C CNN
F 2 "" H 9000 12700 50  0001 C CNN
F 3 "" H 9000 12700 50  0001 C CNN
	1    9000 12700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 12700 9150 12700
Wire Wire Line
	9000 12950 9000 12900
Wire Wire Line
	9000 12900 9150 12900
$Comp
L Connector_Generic:Conn_01x06 J11
U 1 1 5E1C1FB8
P 1300 9000
F 0 "J11" H 1380 8992 50  0000 L CNN
F 1 "Conn_01x06" H 1380 8901 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-06A_1x06_P2.54mm_Vertical" H 1300 9000 50  0001 C CNN
F 3 "~" H 1300 9000 50  0001 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    1300 9000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0155
U 1 1 5E225593
P 1600 8700
F 0 "#PWR0155" H 1600 8450 50  0001 C CNN
F 1 "GND" H 1605 8527 50  0000 C CNN
F 2 "" H 1600 8700 50  0001 C CNN
F 3 "" H 1600 8700 50  0001 C CNN
	1    1600 8700
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 8700 1500 8700
Wire Wire Line
	1600 8800 1500 8800
Wire Wire Line
	1600 8900 1500 8900
$Comp
L Connector_Generic:Conn_01x10 J17
U 1 1 5E2ED566
P 10400 14200
F 0 "J17" H 10480 14192 50  0000 L CNN
F 1 "Conn_01x10" H 10480 14101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 10400 14200 50  0001 C CNN
F 3 "~" H 10400 14200 50  0001 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    10400 14200
	1    0    0    -1  
$EndComp
Text Label 10200 13800 2    50   ~ 0
GPIO_1
Text Label 10200 13900 2    50   ~ 0
GPIO_2
Text Label 10200 14000 2    50   ~ 0
GPIO_3
Text Label 10200 14100 2    50   ~ 0
GPIO_4
Text Label 10200 14200 2    50   ~ 0
GPIO_5
$Comp
L power:GND #PWR0156
U 1 1 5E2EE5A4
P 10150 14700
F 0 "#PWR0156" H 10150 14450 50  0001 C CNN
F 1 "GND" H 10155 14527 50  0000 C CNN
F 2 "" H 10150 14700 50  0001 C CNN
F 3 "" H 10150 14700 50  0001 C CNN
	1    10150 14700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J15
U 1 1 5E32300C
P 2650 11800
F 0 "J15" H 2570 11375 50  0000 C CNN
F 1 "Conn_02x05" H 2650 11300 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 2650 11800 50  0001 C CNN
F 3 "~" H 2650 11800 50  0001 C CNN
F 4 "NOPOP" H -1600 100 50  0001 C CNN "Manufacturer_Part_Number"
	1    2650 11800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0157
U 1 1 5E323463
P 1750 11800
F 0 "#PWR0157" H 1750 11550 50  0001 C CNN
F 1 "GND" H 1750 11650 50  0000 C CNN
F 2 "" H 1750 11800 50  0001 C CNN
F 3 "" H 1750 11800 50  0001 C CNN
	1    1750 11800
	1    0    0    -1  
$EndComp
Text Label 8850 15000 0    50   ~ 0
SWCLK
Text Label 8850 14900 0    50   ~ 0
SWDIO
$Comp
L power:+3.3V #PWR0158
U 1 1 5E356F45
P 1050 12100
F 0 "#PWR0158" H 1050 11950 50  0001 C CNN
F 1 "+3.3V" H 1065 12273 50  0000 C CNN
F 2 "" H 1050 12100 50  0001 C CNN
F 3 "" H 1050 12100 50  0001 C CNN
	1    1050 12100
	-1   0    0    1   
$EndComp
Wire Wire Line
	17750 4050 20550 4050
Wire Wire Line
	17750 5650 20550 5650
Wire Wire Line
	17750 7250 20550 7250
Wire Wire Line
	17750 8850 20550 8850
Wire Notes Line
	5850 6750 4600 6750
Wire Notes Line
	4600 6750 4600 7250
Wire Notes Line
	4600 7250 5850 7250
Wire Wire Line
	3200 6950 3200 6900
Wire Wire Line
	3200 6900 2900 6900
Connection ~ 2900 6900
Wire Wire Line
	2900 6900 2900 6950
Wire Wire Line
	2550 7350 3450 7350
Connection ~ 3450 7350
Wire Wire Line
	3550 7050 3550 7450
Wire Wire Line
	2550 7450 3550 7450
Connection ~ 3550 7450
Wire Wire Line
	2550 7550 3650 7550
Connection ~ 3650 7550
Wire Wire Line
	2550 7650 3750 7650
Connection ~ 3750 7650
Wire Wire Line
	5800 10000 5800 10200
Wire Wire Line
	6100 10000 6100 10200
Wire Wire Line
	5800 8250 6550 8250
Wire Wire Line
	5800 8250 5800 9700
Wire Wire Line
	6100 8150 6550 8150
Wire Wire Line
	6100 8150 6100 9700
Wire Wire Line
	6550 8450 6200 8450
Wire Wire Line
	6200 8450 6200 8800
Wire Wire Line
	6550 9250 6550 8950
Connection ~ 6550 8950
Wire Wire Line
	1700 7350 2250 7350
Wire Wire Line
	1700 7450 2250 7450
Wire Wire Line
	1700 7550 2250 7550
Wire Wire Line
	1200 7650 1200 7550
Wire Wire Line
	1200 7650 2250 7650
Wire Wire Line
	1500 9200 4250 9200
Connection ~ 4250 9200
Wire Wire Line
	8950 7650 11550 7650
Wire Wire Line
	11850 7650 12100 7650
$Comp
L power:GND #PWR0160
U 1 1 5F4B8C98
P 7900 15300
F 0 "#PWR0160" H 7900 15050 50  0001 C CNN
F 1 "GND" H 8050 15200 50  0000 C CNN
F 2 "" H 7900 15300 50  0001 C CNN
F 3 "" H 7900 15300 50  0001 C CNN
	1    7900 15300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 15300 8000 15300
Wire Wire Line
	8000 15300 7900 15300
Connection ~ 8000 15300
Connection ~ 7900 15300
$Comp
L power:+3.3V #PWR0161
U 1 1 5F5402C7
P 7900 11950
F 0 "#PWR0161" H 7900 11800 50  0001 C CNN
F 1 "+3.3V" H 7915 12123 50  0000 C CNN
F 2 "" H 7900 11950 50  0001 C CNN
F 3 "" H 7900 11950 50  0001 C CNN
	1    7900 11950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 11950 7900 12000
Wire Wire Line
	7900 12000 8000 12000
Wire Wire Line
	8000 12000 8000 12100
Connection ~ 7900 12000
Wire Wire Line
	7900 12000 7900 12100
Wire Wire Line
	8000 12000 8100 12000
Wire Wire Line
	8100 12000 8100 12100
Connection ~ 8000 12000
Text Label 6850 14300 2    50   ~ 0
SDA-Conn
Text Label 6850 14200 2    50   ~ 0
SCL-Conn
Wire Wire Line
	6850 14200 7400 14200
Wire Wire Line
	6850 14300 7400 14300
Text Label 6850 14600 2    50   ~ 0
I2C2_SCL
Text Label 6850 14700 2    50   ~ 0
I2C2_SCA
Wire Wire Line
	6850 14600 7400 14600
Wire Wire Line
	6850 14700 7400 14700
Wire Wire Line
	4950 8750 4950 9200
Wire Wire Line
	4950 9200 4250 9200
Wire Wire Line
	4950 8750 6550 8750
Text GLabel 6850 13900 0    50   Input ~ 0
\FAULT
Text Label 6850 14000 2    60   ~ 0
ADR-Conn
Text Label 6800 13000 2    48   ~ 0
\RESET-AMP
Text Label 6850 14400 2    48   ~ 0
\DAC_MUTE
Text Label 1750 9100 0    48   ~ 0
\DAC_MUTE-Conn
Wire Wire Line
	6850 14000 7400 14000
Wire Wire Line
	6850 14400 7400 14400
Wire Wire Line
	5200 8400 5200 8550
Wire Wire Line
	5200 8550 6550 8550
Text Notes 10800 11850 0    59   ~ 0
Voltage measurement
Wire Wire Line
	9200 12800 9150 12800
Wire Wire Line
	8750 12800 8750 13600
Wire Wire Line
	8750 13600 8600 13600
Connection ~ 9150 12800
Wire Wire Line
	9150 12800 8750 12800
Wire Wire Line
	10200 13800 8600 13800
Wire Wire Line
	10200 14000 8600 14000
Wire Wire Line
	10200 14100 8600 14100
Wire Wire Line
	10200 14200 8600 14200
Connection ~ 13450 11250
Connection ~ 13450 11350
Wire Wire Line
	13450 11350 13450 11450
Connection ~ 13450 11450
Wire Wire Line
	13450 11450 13450 11550
Wire Wire Line
	8600 13900 10200 13900
Wire Wire Line
	10150 14700 10200 14700
Wire Wire Line
	8600 14300 10200 14300
Text Label 10200 14300 2    50   ~ 0
GPIO_6
Text Label 7400 13600 2    50   ~ 0
GPIO_7
Text Label 7400 13700 2    50   ~ 0
GPIO_8
Text Label 7400 13800 2    50   ~ 0
GPIO_9
Text Label 10200 14400 2    50   ~ 0
GPIO_7
Text Label 10200 14500 2    50   ~ 0
GPIO_8
Text Label 10200 14600 2    50   ~ 0
GPIO_9
Wire Wire Line
	6800 13000 7400 13000
$Comp
L Device:C_Small C64
U 1 1 5E0D7E90
P 6300 11700
F 0 "C64" H 6250 11500 50  0000 L CNN
F 1 "0.1µF" H 6250 11400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6300 11700 50  0001 C CNN
F 3 "xxCAP, CERM, 0.1 μF, 50V, ±10%, X7R, 0805" H 6300 11700 50  0001 C CNN
F 4 "C49678" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    6300 11700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C63
U 1 1 5E0D8ADD
P 5950 11700
F 0 "C63" H 5900 11500 50  0000 L CNN
F 1 "0.1µF" H 5900 11400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5950 11700 50  0001 C CNN
F 3 "xxCAP, CERM, 0.1 μF, 50V, ±10%, X7R, 0805" H 5950 11700 50  0001 C CNN
F 4 "C49678" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    5950 11700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0162
U 1 1 5E10C148
P 5650 11600
F 0 "#PWR0162" H 5650 11450 50  0001 C CNN
F 1 "+3V3" H 5665 11773 50  0000 C CNN
F 2 "" H 5650 11600 50  0001 C CNN
F 3 "" H 5650 11600 50  0001 C CNN
	1    5650 11600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0163
U 1 1 5E10C2AC
P 5650 11800
F 0 "#PWR0163" H 5650 11550 50  0001 C CNN
F 1 "GND" H 5655 11627 50  0000 C CNN
F 2 "" H 5650 11800 50  0001 C CNN
F 3 "" H 5650 11800 50  0001 C CNN
	1    5650 11800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 11600 5950 11600
Wire Wire Line
	5950 11600 6300 11600
Connection ~ 5950 11600
Wire Wire Line
	5650 11800 5950 11800
Wire Wire Line
	5950 11800 6300 11800
Connection ~ 5950 11800
$Comp
L Device:C_Small C65
U 1 1 5E3508E6
P 8650 11950
F 0 "C65" H 8750 12000 50  0000 L CNN
F 1 "0.01µF" H 8700 11900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8650 11950 50  0001 C CNN
F 3 "xxCAP, CERM, 0.01 μF, 50 V, ±10%, X7R, 0805" H 8650 11950 50  0001 C CNN
F 4 "CL21B103KBANNNC" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 5 "C1710" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    8650 11950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C66
U 1 1 5E350E58
P 9000 11950
F 0 "C66" H 9100 12000 50  0000 L CNN
F 1 "1µF" H 9100 11900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9000 11950 50  0001 C CNN
F 3 "xxCAP, CERM, 1 μF, 50 V, ±10%, X7R, 0805" H 9000 11950 50  0001 C CNN
F 4 "CL21B105KBFNNNE" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 5 "C28323" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    9000 11950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 12100 8200 11850
Wire Wire Line
	8200 11850 8650 11850
Wire Wire Line
	8650 11850 9000 11850
Connection ~ 8650 11850
Wire Wire Line
	8650 12050 9000 12050
$Comp
L power:GND #PWR0164
U 1 1 5E3EEF90
P 8650 12050
F 0 "#PWR0164" H 8650 11800 50  0001 C CNN
F 1 "GND" H 8655 11877 50  0000 C CNN
F 2 "" H 8650 12050 50  0001 C CNN
F 3 "" H 8650 12050 50  0001 C CNN
	1    8650 12050
	1    0    0    -1  
$EndComp
Connection ~ 8650 12050
$Comp
L power:+3.3V #PWR0165
U 1 1 5E3EFCE1
P 8650 11850
F 0 "#PWR0165" H 8650 11700 50  0001 C CNN
F 1 "+3.3V" H 8665 12023 50  0000 C CNN
F 2 "" H 8650 11850 50  0001 C CNN
F 3 "" H 8650 11850 50  0001 C CNN
	1    8650 11850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C62
U 1 1 5E3F18F3
P 5200 12500
F 0 "C62" H 5292 12546 50  0000 L CNN
F 1 "0.1µF" H 5292 12455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5200 12500 50  0001 C CNN
F 3 "xxCAP, CERM, 0.1 μF, 50V, ±10%, X7R, 0805" H 5200 12500 50  0001 C CNN
F 4 "C49678" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    5200 12500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 12300 5200 12300
Wire Wire Line
	5200 12400 5200 12300
Connection ~ 5200 12300
Wire Wire Line
	5200 12300 7400 12300
Wire Wire Line
	5200 12600 5200 12700
Wire Wire Line
	5200 12700 4900 12700
$Comp
L power:GND #PWR0166
U 1 1 5E492E5F
P 5200 12700
F 0 "#PWR0166" H 5200 12450 50  0001 C CNN
F 1 "GND" H 5205 12527 50  0000 C CNN
F 2 "" H 5200 12700 50  0001 C CNN
F 3 "" H 5200 12700 50  0001 C CNN
	1    5200 12700
	1    0    0    -1  
$EndComp
Connection ~ 5200 12700
Wire Wire Line
	7400 12500 5700 12500
Wire Wire Line
	5700 12500 5700 12700
$Comp
L power:GND #PWR0167
U 1 1 5E4CB299
P 5700 13050
F 0 "#PWR0167" H 5700 12800 50  0001 C CNN
F 1 "GND" H 5705 12877 50  0000 C CNN
F 2 "" H 5700 13050 50  0001 C CNN
F 3 "" H 5700 13050 50  0001 C CNN
	1    5700 13050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 14900 8850 14900
Wire Wire Line
	8600 15000 8850 15000
Text Label 3350 11700 0    50   ~ 0
SWDIO
Text Label 3350 11600 0    50   ~ 0
SWCLK
Wire Wire Line
	1750 11800 2450 11800
NoConn ~ 2450 12000
$Comp
L Device:R R34
U 1 1 5E6C395E
P 5700 12850
F 0 "R34" H 5770 12896 50  0000 L CNN
F 1 "10.0k" H 5770 12805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5630 12850 50  0001 C CNN
F 3 "xxRES, 10.0k,1%, 0.125 W, 0805" H 5700 12850 50  0001 C CNN
F 4 "C17414" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
F 5 "0805W8F1002T5E" H 0   0   50  0001 C CNN "Manufacturer_Name"
	1    5700 12850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 13000 5700 13050
Wire Wire Line
	3200 7250 3200 7950
Wire Wire Line
	2900 7250 2900 7850
Wire Wire Line
	6550 7850 2900 7850
Wire Wire Line
	6550 7950 3200 7950
Wire Wire Line
	1700 8050 2100 8050
Wire Wire Line
	1700 8150 1850 8150
NoConn ~ 7400 12700
NoConn ~ 7400 12800
NoConn ~ 7400 12900
NoConn ~ 7400 13200
NoConn ~ 7400 13400
NoConn ~ 7400 14800
NoConn ~ 7400 14900
NoConn ~ 7400 15000
NoConn ~ 7400 15100
NoConn ~ 8600 14800
NoConn ~ 8600 14700
NoConn ~ 8600 14400
Text Notes 600  8050 0    47   ~ 0
I2C Grove pinout
$Comp
L Connector_Generic:Conn_01x04 J19
U 1 1 5EF83FB0
P 1500 9700
F 0 "J19" H 1700 9550 50  0000 C CNN
F 1 "Conn_01x04" H 2050 9450 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 1500 9700 50  0001 C CNN
F 3 "~" H 1500 9700 50  0001 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    1500 9700
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0176
U 1 1 5EF84F5E
P 2150 9800
F 0 "#PWR0176" H 2150 9650 50  0001 C CNN
F 1 "+3.3V" H 2165 9973 50  0000 C CNN
F 2 "" H 2150 9800 50  0001 C CNN
F 3 "" H 2150 9800 50  0001 C CNN
	1    2150 9800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0177
U 1 1 5EF85097
P 1850 9900
F 0 "#PWR0177" H 1850 9650 50  0001 C CNN
F 1 "GND" H 1700 9850 50  0000 C CNN
F 2 "" H 1850 9900 50  0001 C CNN
F 3 "" H 1850 9900 50  0001 C CNN
	1    1850 9900
	1    0    0    -1  
$EndComp
Text Label 1950 9600 0    50   ~ 0
I2C2_SCL
Text Label 1950 9700 0    50   ~ 0
I2C2_SCA
Wire Wire Line
	1700 9600 1950 9600
Wire Wire Line
	1700 9700 1950 9700
Wire Wire Line
	1700 9800 2150 9800
Wire Wire Line
	1700 9900 1850 9900
Text Notes 550  9700 0    79   ~ 0
I2C2 \n(pin header\nnot populated)
Text Label 8600 15100 0    60   ~ 0
\CLIP_OTW
Text Label 1600 8900 0    50   ~ 0
\CLIP_OTW
Text Label 12750 6850 0    60   ~ 0
\CLIP_OTW
Wire Wire Line
	2800 8650 2800 9100
Wire Wire Line
	1500 9100 2800 9100
Wire Wire Line
	1500 9000 1750 9000
Wire Wire Line
	6850 13900 7400 13900
Connection ~ 5400 14500
NoConn ~ 7400 14100
Wire Wire Line
	6550 6250 6350 6250
Wire Wire Line
	2450 11900 2200 11900
$Comp
L power:GND #PWR0152
U 1 1 5E1F63C2
P 3350 11850
F 0 "#PWR0152" H 3350 11600 50  0001 C CNN
F 1 "GND" H 3350 11700 50  0000 C CNN
F 2 "" H 3350 11850 50  0001 C CNN
F 3 "" H 3350 11850 50  0001 C CNN
	1    3350 11850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 11800 3350 11800
Wire Wire Line
	3350 11800 3350 11850
Wire Wire Line
	2950 11600 3050 11600
Wire Wire Line
	2950 11700 3050 11700
NoConn ~ 2950 11900
NoConn ~ 2950 12000
NoConn ~ 2450 11600
NoConn ~ 2450 11700
Wire Wire Line
	2200 11900 2200 12050
$Comp
L Device:R R35
U 1 1 5E3C95D5
P 3200 11600
F 0 "R35" V 2993 11600 50  0000 C CNN
F 1 "22" V 3200 11600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3130 11600 50  0001 C CNN
F 3 "xxRES, 22,1%, 0.125 W, 0605" H 3200 11600 50  0001 C CNN
F 4 "C23345" H -1600 100 50  0001 C CNN "Manufacturer_Part_Number"
	1    3200 11600
	0    1    1    0   
$EndComp
$Comp
L Device:R R36
U 1 1 5E3C97D1
P 3200 11700
F 0 "R36" V 2993 11700 50  0000 C CNN
F 1 "22" V 3200 11700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3130 11700 50  0001 C CNN
F 3 "xxRES, 22,1%, 0.125 W, 0605" H 3200 11700 50  0001 C CNN
F 4 "C23345" H -1600 100 50  0001 C CNN "Manufacturer_Part_Number"
	1    3200 11700
	0    1    1    0   
$EndComp
$Comp
L Device:LED D6
U 1 1 5E3D1D66
P 1500 12050
F 0 "D6" H 1491 12266 50  0000 C CNN
F 1 "Green" H 1491 12175 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1500 12050 50  0001 C CNN
F 3 "xxLED, Green, SMD" H 1500 12050 50  0001 C CNN
F 4 "C2297" H -1600 100 50  0001 C CNN "Manufacturer_Part_Number"
	1    1500 12050
	-1   0    0    1   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:RC0603JR-07560RL R37
U 1 1 5E3D27F9
P 2000 12050
F 0 "R37" H 1890 12080 60  0000 L BNN
F 1 "560" H 2000 11950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2000 12050 50  0001 C CNN
F 3 "xxRES, 560,1%, 0.125 W, 0805" H 2000 12050 50  0001 C CNN
F 4 "560" V -9600 7250 60  0001 C CNN "ValueDisplayed"
F 5 "YAGEO" H -11350 2100 50  0001 C CNN "Manufacturer"
F 6 "RC0805FR-07560RL" H -11350 2100 50  0001 C CNN "PartNumber"
F 7 "C28636" H -11350 2100 50  0001 C CNN "Manufacturer_Part_Number"
	1    2000 12050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 12050 1650 12050
Wire Wire Line
	1050 12100 1050 12050
Wire Wire Line
	1050 12050 1350 12050
$Comp
L Memory_EEPROM:24LC02 U4
U 1 1 5E44E178
P 2750 13550
F 0 "U4" H 2550 14050 50  0000 C CNN
F 1 "AT24C256C" H 2500 13950 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2750 13550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Microchip-Tech-AT24C256C-SSHL-T_C6482.pdf" H 2750 13550 50  0001 C CNN
F 4 "AT24C256C-SSHL-T" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 5 "C6482" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    2750 13550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 14500 7400 14500
$Comp
L power:GND #PWR020
U 1 1 5E4C48F9
P 2750 14000
F 0 "#PWR020" H 2750 13750 50  0001 C CNN
F 1 "GND" H 2755 13827 50  0000 C CNN
F 2 "" H 2750 14000 50  0001 C CNN
F 3 "" H 2750 14000 50  0001 C CNN
	1    2750 14000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR019
U 1 1 5E4C4A6D
P 2750 12800
F 0 "#PWR019" H 2750 12650 50  0001 C CNN
F 1 "+3.3V" H 2765 12973 50  0000 C CNN
F 2 "" H 2750 12800 50  0001 C CNN
F 3 "" H 2750 12800 50  0001 C CNN
	1    2750 12800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 13850 2750 14000
Text Label 3300 13550 0    50   ~ 0
SCL-Conn
Text Label 3300 13450 0    50   ~ 0
SDA-Conn
Wire Wire Line
	3150 13450 3300 13450
Wire Wire Line
	3150 13550 3300 13550
$Comp
L power:GND #PWR024
U 1 1 5E18B0D7
P 3300 13750
F 0 "#PWR024" H 3300 13500 50  0001 C CNN
F 1 "GND" H 3305 13577 50  0000 C CNN
F 2 "" H 3300 13750 50  0001 C CNN
F 3 "" H 3300 13750 50  0001 C CNN
	1    3300 13750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 13650 3300 13650
Wire Wire Line
	3300 13650 3300 13750
$Comp
L Device:R R47
U 1 1 5E1C6ECB
P 2050 13000
F 0 "R47" H 2120 13046 50  0000 L CNN
F 1 "10.0k" H 2120 12955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1980 13000 50  0001 C CNN
F 3 "xxRES, 20.0k,1%, 0.1 W, 0603" H 2050 13000 50  0001 C CNN
F 4 "0603WAF1002T5E" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 5 "C25804" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    2050 13000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5E1C77B7
P 2050 14000
F 0 "#PWR023" H 2050 13750 50  0001 C CNN
F 1 "GND" H 2055 13827 50  0000 C CNN
F 2 "" H 2050 14000 50  0001 C CNN
F 3 "" H 2050 14000 50  0001 C CNN
	1    2050 14000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 13150 2050 13250
Wire Wire Line
	2050 13650 2050 14000
Wire Wire Line
	2200 13450 2350 13450
Wire Wire Line
	2750 13250 2750 12800
$Comp
L Device:R R46
U 1 1 5E2B9D89
P 1650 13000
F 0 "R46" H 1720 13046 50  0000 L CNN
F 1 "10.0k" H 1720 12955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1580 13000 50  0001 C CNN
F 3 "xxRES, 20.0k,1%, 0.1 W, 0603" H 1650 13000 50  0001 C CNN
F 4 "0603WAF1002T5E" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 5 "C25804" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    1650 13000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R45
U 1 1 5E2B9EE1
P 1250 13000
F 0 "R45" H 1320 13046 50  0000 L CNN
F 1 "10.0k" H 1320 12955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1180 13000 50  0001 C CNN
F 3 "xxRES, 20.0k,1%, 0.1 W, 0603" H 1250 13000 50  0001 C CNN
F 4 "0603WAF1002T5E" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 5 "C25804" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    1250 13000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5E2BA03B
P 1650 14000
F 0 "#PWR022" H 1650 13750 50  0001 C CNN
F 1 "GND" H 1655 13827 50  0000 C CNN
F 2 "" H 1650 14000 50  0001 C CNN
F 3 "" H 1650 14000 50  0001 C CNN
	1    1650 14000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5E2BA184
P 1250 14000
F 0 "#PWR021" H 1250 13750 50  0001 C CNN
F 1 "GND" H 1255 13827 50  0000 C CNN
F 2 "" H 1250 14000 50  0001 C CNN
F 3 "" H 1250 14000 50  0001 C CNN
	1    1250 14000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 12850 1250 12800
Wire Wire Line
	1250 12800 1650 12800
Connection ~ 2750 12800
Wire Wire Line
	1650 12850 1650 12800
Connection ~ 1650 12800
Wire Wire Line
	1650 12800 2050 12800
Wire Wire Line
	2050 12850 2050 12800
Connection ~ 2050 12800
Wire Wire Line
	2050 12800 2750 12800
Wire Wire Line
	1250 13150 1250 13450
Wire Wire Line
	1650 13150 1650 13350
Wire Wire Line
	1250 13850 1250 14000
Wire Wire Line
	1650 13750 1650 14000
Wire Wire Line
	2350 13550 1800 13550
$Comp
L Jumper:SolderJumper_3_Open JP8
U 1 1 5E531E5C
P 2050 13450
F 0 "JP8" V 2096 13518 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 2250 13250 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 2050 13450 50  0001 C CNN
F 3 "~" H 2050 13450 50  0001 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    2050 13450
	0    -1   -1   0   
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP7
U 1 1 5E573121
P 1650 13550
F 0 "JP7" V 1696 13618 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 1850 13350 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 1650 13550 50  0001 C CNN
F 3 "~" H 1650 13550 50  0001 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    1650 13550
	0    -1   -1   0   
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP6
U 1 1 5E573279
P 1250 13650
F 0 "JP6" V 1296 13718 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 1400 13450 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 1250 13650 50  0001 C CNN
F 3 "~" H 1250 13650 50  0001 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    1250 13650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2350 13650 2250 13650
Wire Wire Line
	2250 13650 2250 13850
Wire Wire Line
	2250 13850 1500 13850
Wire Wire Line
	1500 13850 1500 13650
Wire Wire Line
	1500 13650 1400 13650
$Comp
L Device:C_Small C67
U 1 1 5E6024A7
P 3000 12900
F 0 "C67" H 3092 12946 50  0000 L CNN
F 1 "0.1µF" H 3092 12855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3000 12900 50  0001 C CNN
F 3 "xxCAP, CERM, 0.1 μF, 50V, ±10%, X7R, 0805" H 3000 12900 50  0001 C CNN
F 4 "C49678" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    3000 12900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5E60262B
P 3000 13100
F 0 "#PWR025" H 3000 12850 50  0001 C CNN
F 1 "GND" H 3005 12927 50  0000 C CNN
F 2 "" H 3000 13100 50  0001 C CNN
F 3 "" H 3000 13100 50  0001 C CNN
	1    3000 13100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 13000 3000 13100
Wire Wire Line
	3000 12800 2750 12800
$Comp
L power:+3.3V #PWR026
U 1 1 5E1B0F00
P 10050 12400
F 0 "#PWR026" H 10050 12250 50  0001 C CNN
F 1 "+3.3V" H 10065 12573 50  0000 C CNN
F 2 "" H 10050 12400 50  0001 C CNN
F 3 "" H 10050 12400 50  0001 C CNN
	1    10050 12400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 12400 10050 12550
$Comp
L Device:D_Schottky_x2_Serial_AKC D7
U 1 1 5E1FA592
P 10050 12850
F 0 "D7" V 10096 12928 50  0000 L CNN
F 1 "D_Schottky_x2_Serial_AKC" V 9750 12250 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10050 12850 50  0001 C CNN
F 3 "BAS40-04" H 10050 12850 50  0001 C CNN
F 4 "BAS40-04,215" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 5 "C255581" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    10050 12850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10900 12750 10900 13050
Wire Wire Line
	10900 13050 10450 13050
Wire Wire Line
	10450 13050 10450 12850
Wire Wire Line
	10450 12850 10250 12850
Wire Wire Line
	10250 12850 10250 13700
Wire Wire Line
	10250 13700 8600 13700
Connection ~ 10250 12850
Text Label 8850 14600 0    50   ~ 0
USART1_RX
Text Label 8850 14500 0    50   ~ 0
USART1_TX
Wire Wire Line
	8600 14500 8850 14500
Wire Wire Line
	8600 14600 8850 14600
$Comp
L Connector_Generic:Conn_01x03 J10
U 1 1 5E39072D
P 10400 15300
F 0 "J10" H 10480 15342 50  0000 L CNN
F 1 "Conn_01x03" H 10480 15251 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10400 15300 50  0001 C CNN
F 3 "~" H 10400 15300 50  0001 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    10400 15300
	1    0    0    -1  
$EndComp
Text Label 10000 15200 2    50   ~ 0
USART1_TX
Text Label 10000 15300 2    50   ~ 0
USART1_RX
$Comp
L power:GND #PWR027
U 1 1 5E390DDC
P 10100 15500
F 0 "#PWR027" H 10100 15250 50  0001 C CNN
F 1 "GND" H 10105 15327 50  0000 C CNN
F 2 "" H 10100 15500 50  0001 C CNN
F 3 "" H 10100 15500 50  0001 C CNN
	1    10100 15500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 15200 10000 15200
Wire Wire Line
	10200 15300 10000 15300
Wire Wire Line
	10200 15400 10100 15400
Wire Wire Line
	10100 15400 10100 15500
Wire Wire Line
	1700 7850 2900 7850
Connection ~ 2900 7850
Wire Wire Line
	1700 7950 3200 7950
Connection ~ 3200 7950
Wire Wire Line
	2800 8650 6550 8650
$Comp
L Switch:SW_Push SW1
U 1 1 5E23B008
P 4900 12500
F 0 "SW1" V 4950 12900 50  0000 R CNN
F 1 "SW_Push" V 4850 12900 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 4900 12700 50  0001 C CNN
F 3 "" H 4900 12700 50  0001 C CNN
F 4 "C318884" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    4900 12500
	0    -1   -1   0   
$EndComp
$Comp
L AAP090A_TAS3251DKQ-IO-SchDoc-rescue:RC0603JR-07560RL R28
U 1 1 5E23D5E8
P 6450 13300
F 0 "R28" H 6340 13330 60  0000 L BNN
F 1 "560" H 6450 13200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6450 13300 50  0001 C CNN
F 3 "xxRES, 560,1%, 0.1 W, 0603" H 6450 13300 50  0001 C CNN
F 4 "Uniroyal" H -6900 3350 50  0001 C CNN "Manufacturer"
F 5 "0603WAF5600T5E" H -6900 3350 50  0001 C CNN "PartNumber"
F 6 "560" V -5150 8500 60  0001 C CNN "ValueDisplayed"
F 7 "C23204" H -6900 3350 50  0001 C CNN "Manufacturer_Part_Number"
	1    6450 13300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D8
U 1 1 5E23D771
P 6950 13300
F 0 "D8" H 6941 13516 50  0000 C CNN
F 1 "Green" H 6941 13425 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 6950 13300 50  0001 C CNN
F 3 "xxLED, Green, SMD, 0603" H 6950 13300 50  0001 C CNN
F 4 "C72043" H 3850 1350 50  0001 C CNN "Manufacturer_Part_Number"
	1    6950 13300
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR028
U 1 1 5E23D900
P 6100 13200
F 0 "#PWR028" H 6100 13050 50  0001 C CNN
F 1 "+3.3V" H 6115 13373 50  0000 C CNN
F 2 "" H 6100 13200 50  0001 C CNN
F 3 "" H 6100 13200 50  0001 C CNN
	1    6100 13200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 13200 6100 13300
Wire Wire Line
	6100 13300 6250 13300
Wire Wire Line
	7100 13300 7400 13300
Wire Wire Line
	6650 13300 6800 13300
Wire Wire Line
	9150 8050 9150 8350
Wire Wire Line
	8950 8150 9300 8150
Wire Wire Line
	9300 8150 9300 8200
Wire Wire Line
	8950 8750 9150 8750
Connection ~ 9150 8750
Wire Wire Line
	9150 8750 9150 8950
$Comp
L power:GNDA #PWR0145
U 1 1 5E3082FD
P 4150 5050
F 0 "#PWR0145" H 4150 4800 50  0001 C CNN
F 1 "GNDA" H 4155 4877 50  0000 C CNN
F 2 "" H 4150 5050 50  0001 C CNN
F 3 "" H 4150 5050 50  0001 C CNN
	1    4150 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0149
U 1 1 5E308D0E
P 4650 5050
F 0 "#PWR0149" H 4650 4800 50  0001 C CNN
F 1 "GNDA" H 4655 4877 50  0000 C CNN
F 2 "" H 4650 5050 50  0001 C CNN
F 3 "" H 4650 5050 50  0001 C CNN
	1    4650 5050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
