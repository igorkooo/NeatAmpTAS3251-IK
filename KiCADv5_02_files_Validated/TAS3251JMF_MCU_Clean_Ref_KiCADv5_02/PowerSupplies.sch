EESchema Schematic File Version 4
LIBS:TAS3251JMF_MCU-cache
EELAYER 26 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 3 3
Title "JMF Neat Amp - PowerSupplies"
Date "2019-11-10"
Rev ""
Comp ""
Comment1 "Licence: CC BY-SA 4.0"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	4100 10800 4100 10500
$Comp
L power:GND #GND_038
U 1 1 5B69DF87
P 2000 3450
F 0 "#GND_038" H 2000 3590 20  0000 C CNN
F 1 "+GND" H 2000 3560 30  0000 C CNN
F 2 "" H 2000 3450 70  0000 C CNN
F 3 "" H 2000 3450 70  0000 C CNN
	1    2000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3350 2200 3350
Wire Wire Line
	2000 3450 2000 3350
Wire Wire Line
	1400 3150 1400 3250
$Comp
L power:GND #GND_037
U 1 1 5B69DF86
P 1400 3650
F 0 "#GND_037" H 1400 3790 20  0000 C CNN
F 1 "+GND" H 1400 3760 30  0000 C CNN
F 2 "" H 1400 3650 70  0000 C CNN
F 3 "" H 1400 3650 70  0000 C CNN
	1    1400 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3550 1400 3650
Wire Wire Line
	800  3150 800  3250
Wire Wire Line
	800  3550 800  3650
$Comp
L power:GND #GND_034
U 1 1 5B69DF85
P 800 3650
F 0 "#GND_034" H 800 3790 20  0000 C CNN
F 1 "+GND" H 800 3760 30  0000 C CNN
F 2 "" H 800 3650 70  0000 C CNN
F 3 "" H 800 3650 70  0000 C CNN
	1    800  3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1100 1200 1100
Wire Wire Line
	1400 1700 1400 1100
Wire Wire Line
	1400 1800 1400 1700
Wire Notes Line
	600  2200 600  600 
Wire Notes Line
	600  2200 3400 2200
Wire Notes Line
	600  600  3400 600 
Wire Notes Line
	3400 2200 3400 600 
Wire Wire Line
	1400 1000 1400 900 
Wire Wire Line
	2200 1000 2200 1200
Wire Wire Line
	1600 1000 2200 1000
Wire Wire Line
	1400 1000 1600 1000
Wire Wire Line
	1200 1000 1400 1000
$Comp
L power:VDD #PVDD_03
U 1 1 5B69DF84
P 1400 900
F 0 "#PVDD_03" H 1400 900 20  0000 C CNN
F 1 "VDD" H 1400 830 30  0000 C CNN
F 2 "" H 1400 900 70  0000 C CNN
F 3 "" H 1400 900 70  0000 C CNN
	1    1400 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #GND_036
U 1 1 5B69DF83
P 1400 1800
F 0 "#GND_036" H 1400 1940 20  0000 C CNN
F 1 "+GND" H 1400 1910 30  0000 C CNN
F 2 "" H 1400 1800 70  0000 C CNN
F 3 "" H 1400 1800 70  0000 C CNN
	1    1400 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1700 1400 1700
Wire Wire Line
	2200 1700 1600 1700
Wire Wire Line
	2200 1700 2200 1500
Wire Wire Line
	1600 1000 1600 1200
Text Notes 2000 850  0    96   ~ 0
PVDD MAX = 36V
Wire Wire Line
	800  3150 800  3050
Wire Wire Line
	1400 3150 800  3150
Wire Wire Line
	2200 3150 1400 3150
$Comp
L power:GND #GND_043
U 1 1 5B69DF7E
P 3800 3650
F 0 "#GND_043" H 4000 3600 20  0000 C CNN
F 1 "+GND" H 3800 3760 30  0000 C CNN
F 2 "" H 3800 3650 70  0000 C CNN
F 3 "" H 3800 3650 70  0000 C CNN
	1    3800 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #GND_047
U 1 1 5B69DF7D
P 5000 3650
F 0 "#GND_047" H 5000 3790 20  0000 C CNN
F 1 "+GND" H 5000 3760 30  0000 C CNN
F 2 "" H 5000 3650 70  0000 C CNN
F 3 "" H 5000 3650 70  0000 C CNN
	1    5000 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #GND_042
U 1 1 5B69DF7C
P 3400 3450
F 0 "#GND_042" H 3400 3590 20  0000 C CNN
F 1 "+GND" H 3400 3560 30  0000 C CNN
F 2 "" H 3400 3450 70  0000 C CNN
F 3 "" H 3400 3450 70  0000 C CNN
	1    3400 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3350 3400 3450
Wire Wire Line
	3200 3350 3400 3350
Wire Wire Line
	3800 3150 3800 3250
Wire Wire Line
	5000 3650 5000 3550
Wire Wire Line
	3800 3150 4400 3150
Wire Wire Line
	3200 3150 3800 3150
Wire Wire Line
	8300 3650 8100 3650
Wire Wire Line
	8300 3750 8300 3650
Wire Wire Line
	6700 3650 6700 3550
Wire Wire Line
	6900 3650 6700 3650
$Comp
L power:GND #GND_056
U 1 1 5B69DF7A
P 8300 3750
F 0 "#GND_056" H 8300 3890 20  0000 C CNN
F 1 "+GND" H 8300 3860 30  0000 C CNN
F 2 "" H 8300 3750 70  0000 C CNN
F 3 "" H 8300 3750 70  0000 C CNN
	1    8300 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3050 8100 3050
Wire Wire Line
	8300 3150 8300 3050
Wire Wire Line
	6700 3050 6700 2950
Wire Wire Line
	6900 3050 6700 3050
$Comp
L power:GND #GND_055
U 1 1 5B69DF78
P 8300 3150
F 0 "#GND_055" H 8300 3290 20  0000 C CNN
F 1 "+GND" H 8300 3260 30  0000 C CNN
F 2 "" H 8300 3150 70  0000 C CNN
F 3 "" H 8300 3150 70  0000 C CNN
	1    8300 3150
	1    0    0    -1  
$EndComp
Text Label 900  3550 0    70   ~ 0
25V
Connection ~ 800  3150
Connection ~ 1400 3150
Connection ~ 1400 1700
Connection ~ 1400 1000
Connection ~ 1600 1700
Connection ~ 1600 1000
Connection ~ 3800 3150
$Comp
L AAP090A_PowerSupplies-SchDoc-rescue:LM2940IMP-12_NOPB U3
U 1 1 5B69DF53
P 2400 3050
F 0 "U3" H 2700 3050 60  0000 L BNN
F 1 "LM2940-12" H 2500 2500 60  0000 L BNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 2700 2650 60  0001 C CNN
F 3 "XX" H 2700 2650 60  0000 C CNN
F 4 "Texas Instrument" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "LM2940IMP-12/NOPB" H 0   0   50  0001 C CNN "PartNumber"
F 6 "!!LM2940G-12V-AA3-R" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 7 "C127023" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    2400 3050
	1    0    0    -1  
$EndComp
$Comp
L AAP090A_PowerSupplies-SchDoc-rescue:RC0603FR-07499RL R25
U 1 1 5B69DF51
P 7900 3650
F 0 "R25" H 7790 3680 60  0000 L BNN
F 1 "499" H 7900 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7900 3650 50  0001 C CNN
F 3 "xxRES, 499,1%, 0.125 W, 0805" H 7900 3650 50  0001 C CNN
F 4 "499" V 1300 2250 60  0001 C CNN "ValueDisplayed"
F 5 "YAGEO" H 650 0   50  0001 C CNN "Manufacturer"
F 6 "RC0805FR-07499RL" H 650 0   50  0001 C CNN "PartNumber"
F 7 "C83386" H 650 0   50  0001 C CNN "Manufacturer_Part_Number"
	1    7900 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 5B69DF50
P 7050 3650
F 0 "D5" H 7150 3650 60  0000 L BNN
F 1 "Green" H 7150 3550 60  0000 L BNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7150 3550 60  0001 C CNN
F 3 "xxLED, Green, SMD" H 6750 3350 60  0000 C CNN
F 4 "Lite-On" H 500 0   50  0001 C CNN "Manufacturer"
F 5 "LTST-C171GKT" H 500 0   50  0001 C CNN "PartNumber"
F 6 " -" H 500 0   50  0001 C CNN "Manufacturer_Name"
F 7 "C2297" H 500 0   50  0001 C CNN "Manufacturer_Part_Number"
	1    7050 3650
	-1   0    0    1   
$EndComp
$Comp
L AAP090A_PowerSupplies-SchDoc-rescue:RC0603FR-071K5L R24
U 1 1 5B69DF4F
P 7900 3050
F 0 "R24" H 7790 3080 60  0000 L BNN
F 1 "1.50k" H 7900 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7900 3050 50  0001 C CNN
F 3 "xxRES, 1.50 k, 1%, 0.125 W, 0805" H 7900 3050 50  0001 C CNN
F 4 "1.50k" V 1300 2250 60  0001 C CNN "ValueDisplayed"
F 5 "YAGEO" H 650 0   50  0001 C CNN "Manufacturer"
F 6 "RC0805FR-071K5L" H 650 0   50  0001 C CNN "PartNumber"
F 7 "C4310" H 650 0   50  0001 C CNN "Manufacturer_Part_Number"
	1    7900 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5B69DF4E
P 7050 3050
F 0 "D4" H 7150 3050 60  0000 L BNN
F 1 "Green" H 7150 2950 60  0000 L BNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7150 2950 60  0001 C CNN
F 3 "xxLED, Green, SMD" H 6750 2850 60  0000 C CNN
F 4 "Lite-On" H 500 0   50  0001 C CNN "Manufacturer"
F 5 "LTST-C171GKT" H 500 0   50  0001 C CNN "PartNumber"
F 6 " -" H 500 0   50  0001 C CNN "Manufacturer_Name"
F 7 "C2297" H 500 0   50  0001 C CNN "Manufacturer_Part_Number"
	1    7050 3050
	-1   0    0    1   
$EndComp
$Comp
L AAP090A_PowerSupplies-SchDoc-rescue:GRM188R71E474KA12D C39
U 1 1 5B69DF48
P 1400 3450
F 0 "C39" V 1410 3360 60  0000 R TNN
F 1 "0.47µF" V 1350 3200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1400 3450 50  0001 C CNN
F 3 "xxCAP, CERM, 0.47 μF, 25 V, ±10%, X7R, 0805" H 1400 3450 50  0001 C CNN
F 4 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "CC0805KKX7R8BB474" H 0   0   50  0001 C CNN "PartNumber"
F 6 "0.47µF" V 1400 2350 60  0001 C CNN "ValueDisplayed"
F 7 "x25V" H 0   0   50  0001 C CNN "Value2"
F 8 "CL21B474KBFNNNE" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 9 "C13967" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    1400 3450
	0    -1   -1   0   
$EndComp
$Comp
L AAP090A_PowerSupplies-SchDoc-rescue:GRM31CR72A105KA01L C41
U 1 1 5B69DF3F
P 2200 1300
F 0 "C41" V 2200 1400 60  0000 L BNN
F 1 "2.2µF" V 2250 1500 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2200 1300 50  0001 C CNN
F 3 "xxCAP, CERM, 2.2 μF, 50 V, ±10%, X7R, 1206" H 2200 1300 50  0001 C CNN
F 4 "1µF" V 1400 2000 60  0001 C CNN "ValueDisplayed"
F 5 "x50V" V 1400 2000 60  0001 C CNN "Value2"
F 6 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "" H 0   0   50  0001 C CNN "PartNumber"
F 8 "CL31B225KBHNNNE" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 9 "C50254" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    2200 1300
	0    1    1    0   
$EndComp
$Comp
L AAP090A_PowerSupplies-SchDoc-rescue:06031C103KAT2A C43
U 1 1 5B69DF3D
P 3000 1400
AR Path="/5B69DF3D" Ref="C43"  Part="1" 
AR Path="/5B7D4339/5B69DF3D" Ref="C43"  Part="1" 
F 0 "C43" V 3100 1300 60  0000 R TNN
F 1 "0.01µF" V 3050 1150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3000 1400 50  0001 C CNN
F 3 "xxCAP, CERM, 0.01 μF, 50 V, ±10%, X7R, 0805" H 3000 1400 50  0001 C CNN
F 4 "0.01µF" V 1600 2000 60  0001 C CNN "ValueDisplayed"
F 5 "x50V" V 1600 2000 60  0000 C CNN "Value2"
F 6 "YAGEO" H 200 0   50  0001 C CNN "Manufacturer"
F 7 "CC0805JRX7R9BB103" H 200 0   50  0001 C CNN "PartNumber"
F 8 "CL21B103KBANNNC" H 200 0   50  0001 C CNN "Manufacturer_Name"
F 9 "C1710" H 200 0   50  0001 C CNN "Manufacturer_Part_Number"
	1    3000 1400
	0    -1   -1   0   
$EndComp
$Comp
L AAP090A_PowerSupplies-SchDoc-rescue:GRM31CR71E475KA88L C37
U 1 1 5B69DF3C
P 800 3450
F 0 "C37" V 900 3350 60  0000 R TNN
F 1 "4.7µF" V 850 3250 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 800 3450 50  0001 C CNN
F 3 "xxCAP, CERM, 4.7 μF, 25 V, ±10%, X7R, 1206" H 800 3450 50  0001 C CNN
F 4 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "CC1206KKX7R8BB475" H 0   0   50  0001 C CNN "PartNumber"
F 6 "4.7µF" V 1400 2350 60  0001 C CNN "ValueDisplayed"
F 7 "x25V" V 1400 2350 60  0001 C CNN "Value2"
F 8 "1206B475K500NT" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 9 "C29823" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    800  3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C40
U 1 1 5B69DF32
P 1600 1350
F 0 "C40" H 1900 1400 60  0000 R TNN
F 1 "47µF" H 1800 1250 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_8x6.2" H 1600 1350 50  0001 C CNN
F 3 "xxSMD-ECAP-8x6.5 xCAP, AL, 47 μF, 50 V, ±20%, 0.65 ohm, SMD" H 1600 1350 50  0001 C CNN
F 4 "Panasonic" H 1600 1350 50  0001 C CNN "Manufacturer"
F 5 "EEE-FK1H470P" H 1600 1350 50  0001 C CNN "PartNumber"
F 6 "47µF" V 1400 1950 60  0001 C CNN "ValueDisplayed"
F 7 "x50V" V 1400 1950 60  0001 C CNN "Value2"
F 8 "VZH470M1HTR-0806L" H 0   -50 50  0001 C CNN "Manufacturer_Name"
F 9 "C176689" H 0   -50 50  0001 C CNN "Manufacturer_Part_Number"
	1    1600 1350
	1    0    0    -1  
$EndComp
$Comp
L AAP090A_PowerSupplies-SchDoc-rescue:CMP-0075104-1 J5
U 1 1 5B69DF1F
P 900 1000
F 0 "J5" H 1000 900 60  0000 R TNN
F 1 "PVDD" H 1000 1300 60  0000 R TNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-2-5.08_1x02_P5.08mm_Horizontal" H 1000 1300 60  0001 C CNN
F 3 "xxTerminalBlock_Phoenix_MKDS-3-2-5.08_1x02_P5.08mm_Horizontal" H 1000 1300 60  0001 C CNN
F 4 "Phoenix Contact" H 900 1000 50  0001 C CNN "Manufacturer"
F 5 "1711725" H 0   0   50  0001 C CNN "PartNumber"
F 6 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    900  1000
	-1   0    0    1   
$EndComp
$Comp
L AAP090A_PowerSupplies-SchDoc-rescue:C0603C104K5RACTU C51
U 1 1 5B69DF1B
P 5000 3350
F 0 "C51" V 5090 3440 60  0000 L BNN
F 1 "0.1µF" V 5190 3440 60  0000 L BNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5190 3440 60  0001 C CNN
F 3 "xxCAP, CERM, 0.1 μF, 50V, ±10%, X7R, 0805" H 5190 3440 60  0001 C CNN
F 4 "YAGEO" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "CC0805KRX7R9BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "x16V" H 0   0   50  0001 C CNN "Value2"
F 7 "0.1µF" H 0   0   50  0001 C CNN "ValueDisplayed"
F 8 "C49678" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    5000 3350
	0    1    1    0   
$EndComp
$Comp
L Device:CP C47
U 1 1 5B69DF1A
P 3800 3400
F 0 "C47" H 4100 3300 60  0000 R TNN
F 1 "47µF" H 4000 3200 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.8" H 3800 3400 50  0001 C CNN
F 3 "xxCAP, AL, 47 μF, 16 V, ±20%, 0.36 ohm, SMD" H 3800 3400 50  0001 C CNN
F 4 "Panasonic" H 3800 3400 50  0001 C CNN "Manufacturer"
F 5 "EEE-FK1C470P" H 3800 3400 50  0001 C CNN "PartNumber"
F 6 "47µF" V 1400 2300 60  0001 C CNN "ValueDisplayed"
F 7 "x16V" H 0   -50 50  0001 C CNN "Value2"
F 8 "VZS470M1ETR-0606" H 0   -50 50  0001 C CNN "Manufacturer_Name"
F 9 "C249976" H 0   -50 50  0001 C CNN "Manufacturer_Part_Number"
	1    3800 3400
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Bridged JP4
U 1 1 5C37BA9E
P 4600 3150
F 0 "JP4" H 4600 3345 50  0000 C CNN
F 1 "Jumper_2_Bridged" H 4600 3254 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4600 3150 50  0001 C CNN
F 3 "xx" H 4600 3150 50  0001 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    4600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3050 5000 3150
Wire Wire Line
	4800 3150 5000 3150
Connection ~ 5000 3150
Wire Wire Line
	5000 3150 5000 3250
$Comp
L Jumper:Jumper_2_Bridged JP5
U 1 1 5C39F0B4
P 4750 1700
F 0 "JP5" H 4750 1895 50  0000 C CNN
F 1 "Jumper_2_Bridged" H 4750 1800 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4750 1700 50  0001 C CNN
F 3 "xx" H 4750 1700 50  0001 C CNN
F 4 "NOPOP" H -1650 650 50  0001 C CNN "PartNumber"
F 5 "NOPOP" H -900 0   50  0001 C CNN "Manufacturer_Part_Number"
	1    4750 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:L L5
U 1 1 5C40B266
P 9500 1600
F 0 "L5" V 9600 1600 50  0000 C CNN
F 1 "150µH " V 9600 1400 50  0000 C CNN
F 2 "TAS3251:L_Wuerth_74404064151_Handsolder" H 9500 1600 50  0001 C CNN
F 3 "150µH" H 9500 1600 50  0001 C CNN
F 4 "Wurth" H 9500 1600 50  0001 C CNN "Manufacturer"
F 5 "74404064151" H 9500 1600 50  0001 C CNN "PartNumber"
F 6 "Wuerth_74404064151" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 7 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    9500 1600
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C48
U 1 1 5C41358D
P 6800 2000
F 0 "C48" H 6548 2000 50  0000 C CNN
F 1 "0.47µF" H 6500 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6838 1850 50  0001 C CNN
F 3 "xxCAP, CERM, 0.47 μF, 25 V, ±10%, X7R, 0805" H 6800 2000 50  0001 C CNN
F 4 "x50V" H -1000 850 50  0001 C CNN "Value2"
F 5 "CL21B474KBFNNNE" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 6 "C13967" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    6800 2000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 5C413A86
P 10150 1850
F 0 "R7" H 10220 1896 50  0000 L CNN
F 1 "5.1k" H 10220 1805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10080 1850 50  0001 C CNN
F 3 "RES, 5.1k, 1%, 0.125 W, 0805" H 10150 1850 50  0001 C CNN
F 4 "0805W8F5101T5E" H 10150 1850 50  0001 C CNN "Manufacturer"
F 5 "C27834" H 10150 1850 50  0001 C CNN "PartNumber"
F 6 "C27834" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    10150 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 5C413B53
P 10150 2450
F 0 "R18" H 10220 2496 50  0000 L CNN
F 1 "1.02k" H 10220 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10080 2450 50  0001 C CNN
F 3 "xxRES, 1.00 k, 1%, 0.125 W, 0805" H 10150 2450 50  0001 C CNN
F 4 "YAGEO" H -200 350 50  0001 C CNN "Manufacturer"
F 5 "RC0805FR-071KL" H -200 350 50  0001 C CNN "PartNumber"
F 6 "1k" H -200 350 50  0001 C CNN "ValueDisplayed"
F 7 "C17513" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    10150 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C49
U 1 1 5C413C49
P 9000 1600
F 0 "C49" V 9050 1400 50  0000 L CNN
F 1 "0.1µF" V 9150 1400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9038 1450 50  0001 C CNN
F 3 "xxCAP, CERM, 0.1 μF, 50V, ±10%, X7R, 0805" H 9000 1600 50  0001 C CNN
F 4 "x25V" H 50  -100 50  0001 C CNN "Value2"
F 5 "" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 6 "C49678" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    9000 1600
	0    1    1    0   
$EndComp
$Comp
L Device:C C50
U 1 1 5C413D67
P 9800 1950
F 0 "C50" H 9900 1950 50  0000 L CNN
F 1 "4700pF" H 9850 1850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9838 1800 50  0001 C CNN
F 3 "xxCAP, CERM, 4700 pF, 50 V, ±10%, X7R, 0805" H 9800 1950 50  0001 C CNN
F 4 "Guangdong Fenghua Advanced Tech" H 9800 1950 50  0001 C CNN "Manufacturer"
F 5 "C1744" H 9800 1950 50  0001 C CNN "PartNumber"
F 6 "x50V" H 450 250 50  0001 C CNN "Value2"
F 7 "0805B472K500NT" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 8 "C1744" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    9800 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C45
U 1 1 5C413EA5
P 6300 1850
F 0 "C45" H 6415 1896 50  0000 L CNN
F 1 "0.1µF" H 6415 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6338 1700 50  0001 C CNN
F 3 "xxCAP, CERM, 0.1 μF, 50V, ±10%, X7R, 0805" H 6300 1850 50  0001 C CNN
F 4 "YAGEO" H 350 650 50  0001 C CNN "Manufacturer"
F 5 "CC0805KRX7R9BB104" H 350 650 50  0001 C CNN "PartNumber"
F 6 "x50V" H 450 550 50  0001 C CNN "Value2"
F 7 "0.1µF" H 350 650 50  0001 C CNN "ValueDisplayed"
F 8 "C49678" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    6300 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C44
U 1 1 5C413FD2
P 6000 1850
F 0 "C44" H 6050 1750 50  0000 L CNN
F 1 "2.2µF" H 6050 1650 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6038 1700 50  0001 C CNN
F 3 "xxCAP, CERM, 2.2 μF, 50 V, ±10%, X7R, 1206" H 6000 1850 50  0001 C CNN
F 4 "TDK" H 6000 1850 50  0001 C CNN "Manufacturer"
F 5 "NOPOP" H 6000 1850 50  0001 C CNN "PartNumber"
F 6 "CL31B225KBHNNNE" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 7 "C50254" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    6000 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5C44FA9B
P 6000 2000
F 0 "#PWR0111" H 6000 1750 50  0001 C CNN
F 1 "GND" H 6005 1827 50  0000 C CNN
F 2 "" H 6000 2000 50  0001 C CNN
F 3 "" H 6000 2000 50  0001 C CNN
	1    6000 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5C44FB51
P 6300 2000
F 0 "#PWR0112" H 6300 1750 50  0001 C CNN
F 1 "GND" H 6305 1827 50  0000 C CNN
F 2 "" H 6300 2000 50  0001 C CNN
F 3 "" H 6300 2000 50  0001 C CNN
	1    6300 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C46
U 1 1 5C466049
P 6400 1400
F 0 "C46" V 6350 1150 50  0000 L CNN
F 1 "4700pF" V 6450 1050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6438 1250 50  0001 C CNN
F 3 "xxCAP, CERM, 4700 pF, 50 V, ±10%, X7R, 0805" H 6400 1400 50  0001 C CNN
F 4 "YAGEO" H -500 -450 50  0001 C CNN "Manufacturer"
F 5 "CC0805KRX7R9BB472" H -500 -450 50  0001 C CNN "PartNumber"
F 6 "x50V" H 200 100 50  0001 C CNN "Value2"
F 7 "0805B472K500NT" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 8 "C1744" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    6400 1400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5C466130
P 5500 1400
F 0 "#PWR0113" H 5500 1150 50  0001 C CNN
F 1 "GND" H 5500 1450 50  0000 C CNN
F 2 "" H 5500 1400 50  0001 C CNN
F 3 "" H 5500 1400 50  0001 C CNN
	1    5500 1400
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:TLV1117-33 U2
U 1 1 5C483326
P 2750 4400
F 0 "U2" H 2750 4642 50  0000 C CNN
F 1 "AMS1117-3.3" H 2750 4551 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2750 4400 50  0001 C CNN
F 3 "xx" H 2750 4400 50  0001 C CNN
F 4 "Texas Instrument" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "TLV1117-33IDCYR" H 0   0   50  0001 C CNN "PartNumber"
F 6 "AMS1117-3.3" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 7 "C6186" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    2750 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C42
U 1 1 5C485736
P 3300 4550
F 0 "C42" H 3415 4596 50  0000 L CNN
F 1 "100µF" H 3415 4505 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_5x5.8" H 3338 4400 50  0001 C CNN
F 3 "xxSMD-ECAP-5x5.3 - xCAP,AL, 100 μF, 6.3 V, +/- 20%,0.7ohm,SMD" H 3300 4550 50  0001 C CNN
F 4 "Panasonic" H 3300 4550 50  0001 C CNN "Manufacturer"
F 5 "EEE-FK0J101UR" H 3300 4550 50  0001 C CNN "PartNumber"
F 6 "5V" H 0   0   50  0001 C CNN "Value2"
F 7 "100µF" H 0   0   50  0001 C CNN "ValueDisplayed"
F 8 "VE-101M0JTR-0505" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 9 "C249463" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    3300 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C38
U 1 1 5C485833
P 2150 4550
F 0 "C38" H 2265 4596 50  0000 L CNN
F 1 "10µF" H 2265 4505 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.8" H 2188 4400 50  0001 C CNN
F 3 "xxSMD-ECAP-4x5.3xCAP,AL, 10 μF, 16 V, ±20%,1.35Ω, SMD" H 2150 4550 50  0001 C CNN
F 4 "Panasonic" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "EEE-FK1C100R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "x16V" H 0   0   50  0001 C CNN "Value2"
F 7 "VE-100M1ETR-0405" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 8 "C134721" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    2150 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5C485905
P 3300 4700
F 0 "#PWR015" H 3300 4450 50  0001 C CNN
F 1 "GND" H 3305 4527 50  0000 C CNN
F 2 "" H 3300 4700 50  0001 C CNN
F 3 "" H 3300 4700 50  0001 C CNN
	1    3300 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5C485A73
P 2150 4700
F 0 "#PWR012" H 2150 4450 50  0001 C CNN
F 1 "GND" H 2155 4527 50  0000 C CNN
F 2 "" H 2150 4700 50  0001 C CNN
F 3 "" H 2150 4700 50  0001 C CNN
	1    2150 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4400 2450 4400
Wire Wire Line
	3050 4400 3300 4400
$Comp
L power:+12V #PWR011
U 1 1 5C489ED7
P 2150 4400
F 0 "#PWR011" H 2150 4250 50  0001 C CNN
F 1 "+12V" H 2165 4573 50  0000 C CNN
F 2 "" H 2150 4400 50  0001 C CNN
F 3 "" H 2150 4400 50  0001 C CNN
	1    2150 4400
	1    0    0    -1  
$EndComp
Connection ~ 2150 4400
$Comp
L power:+3.3V #PWR014
U 1 1 5C489F5C
P 3300 4400
F 0 "#PWR014" H 3300 4250 50  0001 C CNN
F 1 "+3.3V" H 3315 4573 50  0000 C CNN
F 2 "" H 3300 4400 50  0001 C CNN
F 3 "" H 3300 4400 50  0001 C CNN
	1    3300 4400
	1    0    0    -1  
$EndComp
Connection ~ 3300 4400
$Comp
L power:GND #PWR013
U 1 1 5C48A0C7
P 2750 4700
F 0 "#PWR013" H 2750 4450 50  0001 C CNN
F 1 "GND" H 2755 4527 50  0000 C CNN
F 2 "" H 2750 4700 50  0001 C CNN
F 3 "" H 2750 4700 50  0001 C CNN
	1    2750 4700
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PVDD_04
U 1 1 5B69DF71
P 4350 1700
F 0 "#PVDD_04" H 4350 1700 20  0000 C CNN
F 1 "VDD" H 4350 1630 30  0000 C CNN
F 2 "" H 4350 1700 70  0000 C CNN
F 3 "" H 4350 1700 70  0000 C CNN
	1    4350 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D3
U 1 1 5C4A812B
P 8700 1500
F 0 "D3" H 8750 1450 50  0000 L CNN
F 1 "D_Schottky" H 8350 1400 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 8700 1500 50  0001 C CNN
F 3 "xxDiode, Schottky, 100 V, 1 A, SOD-123F" H 8700 1500 50  0001 C CNN
F 4 "Nexperia" H 8700 1500 50  0001 C CNN "Manufacturer"
F 5 "B1100-13-F" H 8700 1500 50  0001 C CNN "PartNumber"
F 6 "PMEG6010CEH,115" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 7 "C110797" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    8700 1500
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5C4D330B
P 4000 750
F 0 "#FLG0102" H 4000 825 50  0001 C CNN
F 1 "PWR_FLAG" H 4000 923 50  0000 C CNN
F 2 "" H 4000 750 50  0001 C CNN
F 3 "~" H 4000 750 50  0001 C CNN
	1    4000 750 
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR0105
U 1 1 5C4D33AA
P 4000 750
F 0 "#PWR0105" H 4000 600 50  0001 C CNN
F 1 "VDD" H 4017 923 50  0000 C CNN
F 2 "" H 4000 750 50  0001 C CNN
F 3 "" H 4000 750 50  0001 C CNN
	1    4000 750 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0116
U 1 1 5C3E8A5F
P 6700 3550
F 0 "#PWR0116" H 6700 3400 50  0001 C CNN
F 1 "+3.3V" H 6715 3723 50  0000 C CNN
F 2 "" H 6700 3550 50  0001 C CNN
F 3 "" H 6700 3550 50  0001 C CNN
	1    6700 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0119
U 1 1 5CA14701
P 5000 3050
F 0 "#PWR0119" H 5000 2900 50  0001 C CNN
F 1 "+12V" H 5015 3223 50  0000 C CNN
F 2 "" H 5000 3050 50  0001 C CNN
F 3 "" H 5000 3050 50  0001 C CNN
	1    5000 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 2200 10150 2000
Wire Wire Line
	10150 2300 10150 2200
Connection ~ 10150 2200
Wire Wire Line
	9800 2200 9800 2100
Wire Wire Line
	9800 2200 10150 2200
Wire Wire Line
	9800 1800 9800 1600
Wire Wire Line
	9800 1600 9650 1600
Wire Wire Line
	10150 1700 10150 1600
Wire Wire Line
	10150 1600 9800 1600
Connection ~ 9800 1600
$Comp
L power:GND #PWR0107
U 1 1 5CB95A64
P 10150 2600
F 0 "#PWR0107" H 10150 2350 50  0001 C CNN
F 1 "GND" H 10155 2427 50  0000 C CNN
F 2 "" H 10150 2600 50  0001 C CNN
F 3 "" H 10150 2600 50  0001 C CNN
	1    10150 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5CB96594
P 9150 1300
F 0 "#PWR0108" H 9150 1050 50  0001 C CNN
F 1 "GND" H 9150 1150 50  0000 C CNN
F 2 "" H 9150 1300 50  0001 C CNN
F 3 "" H 9150 1300 50  0001 C CNN
	1    9150 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 5CBB5A81
P 6800 1500
F 0 "R19" V 6900 1400 50  0000 C CNN
F 1 "365k" V 6800 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6730 1500 50  0001 C CNN
F 3 "xxRES, 365k, 1%, 0.125 W, 0805 !! is 390 or 330k acceptable" H 6800 1500 50  0001 C CNN
F 4 "UniRoyql Elec" H 6800 1500 50  0001 C CNN "Manufacturer"
F 5 "C17647" H 6800 1500 50  0001 C CNN "PartNumber"
F 6 "365k" H -750 50  50  0001 C CNN "ValueDisplayed"
F 7 "C25825" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    6800 1500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5CBC08B1
P 6800 2150
F 0 "#PWR0109" H 6800 1900 50  0001 C CNN
F 1 "GND" H 6805 1977 50  0000 C CNN
F 2 "" H 6800 2150 50  0001 C CNN
F 3 "" H 6800 2150 50  0001 C CNN
	1    6800 2150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5CC085DF
P 6850 5000
F 0 "H2" H 6950 5046 50  0000 L CNN
F 1 "MountingHole" H 6950 4955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 6850 5000 50  0001 C CNN
F 3 "xx" H 6850 5000 50  0001 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    6850 5000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5CC08BD5
P 7950 5000
F 0 "H3" H 8050 5046 50  0000 L CNN
F 1 "MountingHole" H 8050 4955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 7950 5000 50  0001 C CNN
F 3 "xx" H 7950 5000 50  0001 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    7950 5000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5CC0941A
P 8950 5000
F 0 "H4" H 9050 5046 50  0000 L CNN
F 1 "MountingHole" H 9050 4955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 8950 5000 50  0001 C CNN
F 3 "xx" H 8950 5000 50  0001 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    8950 5000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H5
U 1 1 5CC09EF6
P 10000 5000
F 0 "H5" H 10100 5046 50  0000 L CNN
F 1 "MountingHole" H 10100 4955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 10000 5000 50  0001 C CNN
F 3 "xx" H 10000 5000 50  0001 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    10000 5000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Heatsink_Pad HS1
U 1 1 5CC22F66
P 9150 3700
F 0 "HS1" H 9292 3821 50  0000 L CNN
F 1 "Heatsink" H 9292 3730 50  0000 L CNN
F 2 "TAS3251:Advanced_ATS078036036-TI1OP-1099-C1-R1" H 9162 3700 50  0001 C CNN
F 3 "xx" H 9162 3700 50  0001 C CNN
F 4 "Advanced Thermal Solutions " H 0   0   50  0001 C CNN "Manufacturer"
F 5 "ATS-TI1OP-519-C1-R3" H 0   0   50  0001 C CNN "PartNumber"
F 6 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    9150 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J6
U 1 1 5CF9318A
P 6550 5500
F 0 "J6" H 6656 5678 50  0000 C CNN
F 1 "Conn_01x01_Male" H 6600 5600 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6550 5500 50  0001 C CNN
F 3 "xx" H 6550 5500 50  0001 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    6550 5500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J7
U 1 1 5CF9323B
P 7350 5500
F 0 "J7" H 7456 5678 50  0000 C CNN
F 1 "Conn_01x01_Male" H 7456 5587 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 7350 5500 50  0001 C CNN
F 3 "xx" H 7350 5500 50  0001 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    7350 5500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J8
U 1 1 5CF93326
P 8100 5500
F 0 "J8" H 8206 5678 50  0000 C CNN
F 1 "Conn_01x01_Male" H 8206 5587 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 8100 5500 50  0001 C CNN
F 3 "xx" H 8100 5500 50  0001 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    8100 5500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J9
U 1 1 5CF93415
P 8900 5500
F 0 "J9" H 9006 5678 50  0000 C CNN
F 1 "Conn_01x01_Male" H 9006 5587 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 8900 5500 50  0001 C CNN
F 3 "xx" H 8900 5500 50  0001 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "PartNumber"
F 5 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    8900 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5DD57B40
P 9100 5500
F 0 "#PWR0126" H 9100 5250 50  0001 C CNN
F 1 "GND" H 9105 5327 50  0000 C CNN
F 2 "" H 9100 5500 50  0001 C CNN
F 3 "" H 9100 5500 50  0001 C CNN
	1    9100 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5DD57BCE
P 8300 5500
F 0 "#PWR0127" H 8300 5250 50  0001 C CNN
F 1 "GND" H 8305 5327 50  0000 C CNN
F 2 "" H 8300 5500 50  0001 C CNN
F 3 "" H 8300 5500 50  0001 C CNN
	1    8300 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 5DD57C5C
P 7550 5500
F 0 "#PWR0128" H 7550 5250 50  0001 C CNN
F 1 "GND" H 7555 5327 50  0000 C CNN
F 2 "" H 7550 5500 50  0001 C CNN
F 3 "" H 7550 5500 50  0001 C CNN
	1    7550 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 5DD57D20
P 6750 5500
F 0 "#PWR0129" H 6750 5250 50  0001 C CNN
F 1 "GND" H 6755 5327 50  0000 C CNN
F 2 "" H 6750 5500 50  0001 C CNN
F 3 "" H 6750 5500 50  0001 C CNN
	1    6750 5500
	1    0    0    -1  
$EndComp
$Comp
L TAS3251JMF_MCU-rescue:LM5010AMH-SamacSys_Parts IC1
U 1 1 5DC1BC6F
P 8550 1800
F 0 "IC1" H 9350 1972 50  0000 C CNN
F 1 "LM5010MHX" H 9350 2063 50  0000 C CNN
F 2 "SamacSys_Parts:SOP65P640X110-15N" H 10000 1900 50  0001 L CNN
F 3 "xxLM5010MH, Switching Regulator, Buck Controller, 1A, Adjustable, 6.6  7.4 V, 1000 kHz, 14-Pin TSSOP EP" H 10000 1800 50  0001 L CNN
F 4 "" H 10000 1700 50  0001 L CNN "Description"
F 5 "1.1" H 10000 1600 50  0001 L CNN "Height"
F 6 "" H 10000 1500 50  0001 L CNN "Manufacturer_Name"
F 7 "C39878" H 10000 1400 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "926-LM5010AMH" H 10000 1300 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=926-LM5010AMH" H 10000 1200 50  0001 L CNN "Mouser Price/Stock"
F 10 "6553948P" H 10000 1100 50  0001 L CNN "RS Part Number"
F 11 "http://uk.rs-online.com/web/p/products/6553948P" H 10000 1000 50  0001 L CNN "RS Price/Stock"
	1    8550 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 1700 6300 1700
Connection ~ 6300 1700
Wire Wire Line
	6300 1700 6300 1500
Wire Wire Line
	6550 1400 6950 1400
Wire Wire Line
	8550 1600 8850 1600
Wire Wire Line
	8550 1700 9350 1700
Wire Wire Line
	9350 1700 9350 1600
Wire Wire Line
	9350 1600 9150 1600
Connection ~ 9350 1600
Wire Wire Line
	8850 1500 9350 1500
Wire Wire Line
	9350 1500 9350 1600
Wire Wire Line
	8550 1300 8600 1300
Wire Wire Line
	8550 1400 8600 1400
Wire Wire Line
	8600 1400 8600 1300
Connection ~ 8600 1300
Wire Wire Line
	8600 1300 9150 1300
Wire Wire Line
	6250 1400 5500 1400
Wire Wire Line
	6300 1700 6950 1700
Wire Wire Line
	6300 1500 6650 1500
Wire Wire Line
	6800 1850 6800 1600
Wire Wire Line
	6800 1600 6950 1600
Wire Wire Line
	6800 800  6800 1300
Wire Wire Line
	6800 1300 6950 1300
$Comp
L power:GND #PWR0106
U 1 1 5DC4DB0D
P 8000 550
F 0 "#PWR0106" H 8000 300 50  0001 C CNN
F 1 "GND" H 8005 377 50  0000 C CNN
F 2 "" H 8000 550 50  0001 C CNN
F 3 "" H 8000 550 50  0001 C CNN
	1    8000 550 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 700  7750 550 
Wire Wire Line
	7750 550  8000 550 
$Comp
L power:GND #PWR0133
U 1 1 5DC51D83
P 8550 1800
F 0 "#PWR0133" H 8550 1550 50  0001 C CNN
F 1 "GND" H 8555 1627 50  0000 C CNN
F 2 "" H 8550 1800 50  0001 C CNN
F 3 "" H 8550 1800 50  0001 C CNN
	1    8550 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 5DC51E0F
P 6950 1800
F 0 "#PWR0134" H 6950 1550 50  0001 C CNN
F 1 "GND" H 6955 1627 50  0000 C CNN
F 2 "" H 6950 1800 50  0001 C CNN
F 3 "" H 6950 1800 50  0001 C CNN
	1    6950 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0135
U 1 1 5DC51E9B
P 8750 1050
F 0 "#PWR0135" H 8750 800 50  0001 C CNN
F 1 "GND" H 8755 877 50  0000 C CNN
F 2 "" H 8750 1050 50  0001 C CNN
F 3 "" H 8750 1050 50  0001 C CNN
	1    8750 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 5DC51F27
P 6850 1050
F 0 "#PWR0136" H 6850 800 50  0001 C CNN
F 1 "GND" H 6855 877 50  0000 C CNN
F 2 "" H 6850 1050 50  0001 C CNN
F 3 "" H 6850 1050 50  0001 C CNN
	1    6850 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1200 6950 1050
Wire Wire Line
	6950 1050 6850 1050
Wire Wire Line
	8550 1200 8600 1200
Wire Wire Line
	8600 1200 8600 1050
Wire Wire Line
	8600 1050 8750 1050
$Comp
L power:GND #PWR0137
U 1 1 5DC19C22
P 9150 3800
F 0 "#PWR0137" H 9150 3550 50  0001 C CNN
F 1 "GND" H 9155 3627 50  0000 C CNN
F 2 "" H 9150 3800 50  0001 C CNN
F 3 "" H 9150 3800 50  0001 C CNN
	1    9150 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R38
U 1 1 5DD6BA45
P 10600 2450
F 0 "R38" H 10670 2496 50  0000 L CNN
F 1 "0" H 10670 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 10530 2450 50  0001 C CNN
F 3 "xxRES, 0 Ohm , 0603" H 10600 2450 50  0001 C CNN
F 4 "C21189" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
F 5 "0603WAF0000T5E" H 0   0   50  0001 C CNN "Manufacturer_Name"
	1    10600 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C52
U 1 1 5DD6BCCB
P 10600 1850
F 0 "C52" H 10715 1896 50  0000 L CNN
F 1 "4.7µF" H 10715 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10638 1700 50  0001 C CNN
F 3 "xxCAP, CERM, 4.7μF, 50V, ±10%, X7R, 1206" H 10600 1850 50  0001 C CNN
F 4 "Murata" H 10600 1850 50  0001 C CNN "Manufacturer"
F 5 "GRM31CR71H475KA12L" H 10600 1850 50  0001 C CNN "PartNumber"
F 6 "1206B475K500NT" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 7 "C29823" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    10600 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 1600 10600 1600
Connection ~ 10150 1600
Wire Wire Line
	10600 1600 10600 1700
Connection ~ 10600 1600
$Comp
L power:GND #PWR04
U 1 1 5DD713E4
P 10600 2600
F 0 "#PWR04" H 10600 2350 50  0001 C CNN
F 1 "GND" H 10605 2427 50  0000 C CNN
F 2 "" H 10600 2600 50  0001 C CNN
F 3 "" H 10600 2600 50  0001 C CNN
	1    10600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3550 3800 3650
Wire Wire Line
	1600 1500 1600 1700
Wire Wire Line
	7200 3050 7700 3050
Wire Wire Line
	7200 3650 7700 3650
Text Notes 6450 2550 0    50   ~ 0
Final design of LM5010 stage as of LM5010_15V_0.5A_330kHz final decision.pdf
$Comp
L Device:C C58
U 1 1 5DD94A07
P 2600 1350
F 0 "C58" H 2715 1396 50  0000 L CNN
F 1 "2.2µF" H 2715 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2638 1200 50  0001 C CNN
F 3 "xxCAP, CERM, 2.2 μF, 50 V, ±10%, X7R, 1206" H 2600 1350 50  0001 C CNN
F 4 "CL31B225KBHNNNE" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 5 "C50254" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    2600 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1000 2600 1000
Wire Wire Line
	2600 1000 2600 1200
Connection ~ 2200 1000
Wire Wire Line
	2200 1700 2600 1700
Wire Wire Line
	2600 1700 2600 1500
Connection ~ 2200 1700
Wire Wire Line
	2600 1000 3000 1000
Wire Wire Line
	3000 1000 3000 1200
Connection ~ 2600 1000
Wire Wire Line
	2600 1700 3000 1700
Wire Wire Line
	3000 1700 3000 1500
Connection ~ 2600 1700
$Comp
L power:GND #PWR017
U 1 1 5DDA1A30
P 5550 2000
F 0 "#PWR017" H 5550 1750 50  0001 C CNN
F 1 "GND" H 5555 1827 50  0000 C CNN
F 2 "" H 5550 2000 50  0001 C CNN
F 3 "" H 5550 2000 50  0001 C CNN
	1    5550 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5DDA1AC8
P 5100 2000
F 0 "#PWR01" H 5100 1750 50  0001 C CNN
F 1 "GND" H 5105 1827 50  0000 C CNN
F 2 "" H 5100 2000 50  0001 C CNN
F 3 "" H 5100 2000 50  0001 C CNN
	1    5100 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1700 4550 1700
Connection ~ 6000 1700
Wire Wire Line
	10600 1600 11000 1600
Wire Wire Line
	11000 1600 11000 1700
Connection ~ 11000 1600
Wire Wire Line
	11000 1600 11350 1600
Wire Wire Line
	10600 2000 10600 2300
Wire Wire Line
	11000 2000 11000 2300
Wire Wire Line
	10600 2300 11000 2300
Connection ~ 10600 2300
Wire Wire Line
	10150 2200 11850 2200
Wire Wire Line
	11850 2200 11850 800 
Wire Wire Line
	6800 800  11850 800 
$Comp
L power:GND #PWR018
U 1 1 5DDBB452
P 11000 2600
F 0 "#PWR018" H 11000 2350 50  0001 C CNN
F 1 "GND" H 11005 2427 50  0000 C CNN
F 2 "" H 11000 2600 50  0001 C CNN
F 3 "" H 11000 2600 50  0001 C CNN
	1    11000 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C61
U 1 1 5DDBBDD0
P 11000 1850
F 0 "C61" H 11115 1896 50  0000 L CNN
F 1 "4.7µF" H 11115 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 11038 1700 50  0001 C CNN
F 3 "xxCAP, CERM, 4.7μF, 50V, ±10%, X7R, 1206" H 11000 1850 50  0001 C CNN
F 4 "Murata" H 11000 1850 50  0001 C CNN "Manufacturer"
F 5 "GRM31CR71H475KA12L" H 11000 1850 50  0001 C CNN "PartNumber"
F 6 "1206B475K500NT" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 7 "C29823" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    11000 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R44
U 1 1 5DDBBEFA
P 11000 2450
F 0 "R44" H 11070 2496 50  0000 L CNN
F 1 "NoPOP" H 11070 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 10930 2450 50  0001 C CNN
F 3 "xxRES, NoPop , 1%,  1210" H 11000 2450 50  0001 C CNN
F 4 "0603WAF100KT5E" H 400 0   50  0001 C CNN "PartNumber"
F 5 "0603WAF100KT5E" H 400 0   50  0001 C CNN "Manufacturer_Name"
F 6 "NOPOP" H 400 0   50  0001 C CNN "Manufacturer_Part_Number"
	1    11000 2450
	1    0    0    -1  
$EndComp
Connection ~ 11000 2300
Wire Wire Line
	4950 1700 5100 1700
$Comp
L Device:C C60
U 1 1 5DDBC518
P 5550 1850
F 0 "C60" H 5600 1750 50  0000 L CNN
F 1 "2.2µF" H 5600 1650 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5588 1700 50  0001 C CNN
F 3 "xxCAP, CERM, 2.2 μF, 50 V, ±10%, X7R, 1206" H 5550 1850 50  0001 C CNN
F 4 "TDK" H 5550 1850 50  0001 C CNN "Manufacturer"
F 5 "NOPOP" H 5550 1850 50  0001 C CNN "PartNumber"
F 6 "CL31B225KBHNNNE" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 7 "C50254" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    5550 1850
	1    0    0    -1  
$EndComp
Connection ~ 5550 1700
Wire Wire Line
	5550 1700 6000 1700
$Comp
L Device:C C59
U 1 1 5DDBC5B4
P 5100 1850
F 0 "C59" H 5150 1750 50  0000 L CNN
F 1 "2.2µF" H 5150 1650 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5138 1700 50  0001 C CNN
F 3 "xxCAP, CERM, 2.2 μF, 50 V, ±10%, X7R, 1206" H 5100 1850 50  0001 C CNN
F 4 "TDK" H 5100 1850 50  0001 C CNN "Manufacturer"
F 5 "NOPOP" H 5100 1850 50  0001 C CNN "PartNumber"
F 6 "CL31B225KBHNNNE" H 0   0   50  0001 C CNN "Manufacturer_Name"
F 7 "C50254" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    5100 1850
	1    0    0    -1  
$EndComp
Connection ~ 5100 1700
Wire Wire Line
	5100 1700 5550 1700
$Comp
L Connector_Generic:Conn_01x04 J18
U 1 1 5E4A8DDF
P 13550 1100
F 0 "J18" H 13630 1092 50  0000 L CNN
F 1 "Conn_01x04" H 13630 1001 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 13550 1100 50  0001 C CNN
F 3 "~" H 13550 1100 50  0001 C CNN
F 4 "NOPOP" H 0   0   50  0001 C CNN "Manufacturer_Part_Number"
	1    13550 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0168
U 1 1 5E4A9148
P 13200 1400
F 0 "#PWR0168" H 13200 1150 50  0001 C CNN
F 1 "GND" H 13205 1227 50  0000 C CNN
F 2 "" H 13200 1400 50  0001 C CNN
F 3 "" H 13200 1400 50  0001 C CNN
	1    13200 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	13350 1300 13200 1300
Wire Wire Line
	13200 1300 13200 1400
$Comp
L power:+12V #PWR0169
U 1 1 5E4AC32C
P 12900 1100
F 0 "#PWR0169" H 12900 950 50  0001 C CNN
F 1 "+12V" H 12915 1273 50  0000 C CNN
F 2 "" H 12900 1100 50  0001 C CNN
F 3 "" H 12900 1100 50  0001 C CNN
	1    12900 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0170
U 1 1 5E4ACA46
P 12600 1200
F 0 "#PWR0170" H 12600 1050 50  0001 C CNN
F 1 "+3.3V" H 12615 1373 50  0000 C CNN
F 2 "" H 12600 1200 50  0001 C CNN
F 3 "" H 12600 1200 50  0001 C CNN
	1    12600 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	13050 850  13050 1000
Wire Wire Line
	13050 1000 13350 1000
Wire Wire Line
	12900 1100 13350 1100
Wire Wire Line
	12600 1200 13350 1200
$Comp
L power:+12V #PWR0171
U 1 1 5EF7796B
P 6700 2950
F 0 "#PWR0171" H 6700 2800 50  0001 C CNN
F 1 "+12V" H 6715 3123 50  0000 C CNN
F 2 "" H 6700 2950 50  0001 C CNN
F 3 "" H 6700 2950 50  0001 C CNN
	1    6700 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0172
U 1 1 5EF77BA3
P 11350 1600
F 0 "#PWR0172" H 11350 1450 50  0001 C CNN
F 1 "+15V" H 11365 1773 50  0000 C CNN
F 2 "" H 11350 1600 50  0001 C CNN
F 3 "" H 11350 1600 50  0001 C CNN
	1    11350 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0173
U 1 1 5EF781A1
P 13050 850
F 0 "#PWR0173" H 13050 700 50  0001 C CNN
F 1 "+15V" H 13065 1023 50  0000 C CNN
F 2 "" H 13050 850 50  0001 C CNN
F 3 "" H 13050 850 50  0001 C CNN
	1    13050 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0174
U 1 1 5EF797F7
P 800 3050
F 0 "#PWR0174" H 800 2900 50  0001 C CNN
F 1 "+15V" H 815 3223 50  0000 C CNN
F 2 "" H 800 3050 50  0001 C CNN
F 3 "" H 800 3050 50  0001 C CNN
	1    800  3050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
