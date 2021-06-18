EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CPU_NXP_68001:MC6809 U1
U 1 1 6064C947
P 5600 3500
F 0 "U1" H 5300 4850 50  0000 R CNN
F 1 "MC6809" H 6000 4850 50  0000 R CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 5600 2000 50  0001 C CNN
F 3 "" H 5600 3500 50  0001 C CNN
	1    5600 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2300 6250 2300
Entry Wire Line
	6250 2300 6350 2400
Entry Wire Line
	6250 2400 6350 2500
Entry Wire Line
	6250 2500 6350 2600
Entry Wire Line
	6250 2600 6350 2700
Entry Wire Line
	6250 2700 6350 2800
Entry Wire Line
	6250 2800 6350 2900
Entry Wire Line
	6250 2900 6350 3000
Entry Wire Line
	6250 3000 6350 3100
Entry Wire Line
	6250 3100 6350 3200
Entry Wire Line
	6250 3200 6350 3300
Entry Wire Line
	6250 3300 6350 3400
Entry Wire Line
	6250 3400 6350 3500
Entry Wire Line
	6250 3500 6350 3600
Entry Wire Line
	6250 3600 6350 3700
Entry Wire Line
	6250 3700 6350 3800
Entry Wire Line
	6250 3800 6350 3900
Wire Wire Line
	6100 2400 6250 2400
Wire Wire Line
	6100 2500 6250 2500
Wire Wire Line
	6250 2600 6100 2600
Wire Wire Line
	6100 2700 6250 2700
Wire Wire Line
	6250 2800 6100 2800
Wire Wire Line
	6100 2900 6250 2900
Wire Wire Line
	6250 3000 6100 3000
Wire Wire Line
	6100 3100 6250 3100
Wire Wire Line
	6250 3200 6100 3200
Wire Wire Line
	6100 3300 6250 3300
Wire Wire Line
	6250 3400 6100 3400
Wire Wire Line
	6100 3500 6250 3500
Wire Wire Line
	6250 3600 6100 3600
Wire Wire Line
	6100 3700 6250 3700
Wire Wire Line
	6250 3800 6100 3800
$Comp
L power:GND #PWR0101
U 1 1 60654104
P 5600 5050
F 0 "#PWR0101" H 5600 4800 50  0001 C CNN
F 1 "GND" H 5605 4877 50  0000 C CNN
F 2 "" H 5600 5050 50  0001 C CNN
F 3 "" H 5600 5050 50  0001 C CNN
	1    5600 5050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 6065460E
P 5600 1900
F 0 "#PWR0102" H 5600 1750 50  0001 C CNN
F 1 "+5V" H 5615 2073 50  0000 C CNN
F 2 "" H 5600 1900 50  0001 C CNN
F 3 "" H 5600 1900 50  0001 C CNN
	1    5600 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2100 5600 1900
$Comp
L CPLD_Xilinx:XC9572XL-VQ64 U2
U 1 1 60655A28
P 8650 3200
F 0 "U2" H 9050 4800 50  0000 C CNN
F 1 "XC9572XL-VQ64" H 8100 4800 50  0000 C CNN
F 2 "Package_QFP:TQFP-64_10x10mm_P0.5mm" H 8650 3200 50  0001 C CNN
F 3 "http://www.xilinx.com/support/documentation/data_sheets/ds057.pdf" H 8650 3200 50  0001 C CNN
	1    8650 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 3800 9450 3800
Wire Wire Line
	9450 3900 9750 3900
Wire Wire Line
	7850 4000 7550 4000
Wire Wire Line
	7550 4100 7850 4100
Wire Wire Line
	7850 4200 7550 4200
Wire Wire Line
	7550 4300 7850 4300
Wire Wire Line
	7850 4400 7550 4400
Wire Wire Line
	7850 3200 7550 3200
Wire Wire Line
	7550 3300 7850 3300
Wire Wire Line
	7850 3400 7550 3400
Text Label 6150 2300 0    50   ~ 0
A0
Text Label 6150 2400 0    50   ~ 0
A1
Text Label 6150 2500 0    50   ~ 0
A2
Text Label 6150 2600 0    50   ~ 0
A3
Text Label 6150 2700 0    50   ~ 0
A4
Text Label 6150 2800 0    50   ~ 0
A5
Text Label 6150 2900 0    50   ~ 0
A6
Text Label 6150 3000 0    50   ~ 0
A7
Text Label 6150 3100 0    50   ~ 0
A8
Text Label 6150 3200 0    50   ~ 0
A9
Text Label 6150 3300 0    50   ~ 0
A10
Text Label 6150 3400 0    50   ~ 0
A11
Text Label 6150 3500 0    50   ~ 0
A12
Text Label 6150 3600 0    50   ~ 0
A13
Text Label 6150 3700 0    50   ~ 0
A14
Text Label 6150 3800 0    50   ~ 0
A15
Text Label 7700 3900 0    50   ~ 0
A0
Text Label 7700 3800 0    50   ~ 0
A1
Text Label 9650 4300 0    50   ~ 0
A2
Text Label 7750 4000 0    50   ~ 0
A8
Text Label 7750 4100 0    50   ~ 0
A9
Text Label 7700 4200 0    50   ~ 0
A10
Text Label 7700 4300 0    50   ~ 0
A11
Text Label 7700 4400 0    50   ~ 0
A12
Text Label 7700 3200 0    50   ~ 0
A13
Text Label 7700 3300 0    50   ~ 0
A14
Text Label 7700 3400 0    50   ~ 0
A15
Text GLabel 6350 2000 0    50   BiDi ~ 0
ADDR
Entry Wire Line
	4500 2900 4600 3000
Entry Wire Line
	4500 2800 4600 2900
Entry Wire Line
	4500 2700 4600 2800
Entry Wire Line
	4500 2600 4600 2700
Entry Wire Line
	4500 2500 4600 2600
Entry Wire Line
	4500 2400 4600 2500
Entry Wire Line
	4500 2300 4600 2400
Entry Wire Line
	4500 2200 4600 2300
Wire Wire Line
	4600 2300 5100 2300
Wire Wire Line
	5100 2400 4600 2400
Wire Wire Line
	4600 2500 5100 2500
Wire Wire Line
	5100 2600 4600 2600
Wire Wire Line
	4600 2700 5100 2700
Wire Wire Line
	5100 2800 4600 2800
Wire Wire Line
	4600 2900 5100 2900
Wire Wire Line
	5100 3000 4600 3000
Wire Bus Line
	4500 2000 4350 2000
Text GLabel 4350 2000 0    50   BiDi ~ 0
DATA
Text Label 4700 2300 0    50   ~ 0
D0
Text Label 4700 2400 0    50   ~ 0
D1
Text Label 4700 2500 0    50   ~ 0
D2
Text Label 4700 2600 0    50   ~ 0
D3
Text Label 4700 2700 0    50   ~ 0
D4
Text Label 4700 2800 0    50   ~ 0
D5
Text Label 4700 2900 0    50   ~ 0
D6
Text Label 4700 3000 0    50   ~ 0
D7
Wire Wire Line
	7550 1800 7850 1800
Wire Wire Line
	8550 1500 8550 1350
Wire Wire Line
	8650 1350 8650 1500
Wire Wire Line
	8550 1350 8650 1350
Wire Wire Line
	8750 1500 8750 1350
Wire Wire Line
	8750 1350 8700 1350
Connection ~ 8650 1350
Wire Wire Line
	8850 1500 8850 1350
Wire Wire Line
	8850 1350 8750 1350
Connection ~ 8750 1350
Wire Wire Line
	8550 5000 8550 5100
Wire Wire Line
	8550 5100 8650 5100
Wire Wire Line
	8650 5100 8650 5000
Wire Wire Line
	8650 5100 8750 5100
Wire Wire Line
	8750 5000 8750 5100
Connection ~ 8650 5100
Wire Wire Line
	8750 5100 8850 5100
Wire Wire Line
	8850 5100 8850 5000
Connection ~ 8750 5100
$Comp
L power:GND #PWR0103
U 1 1 606A154B
P 8650 5200
F 0 "#PWR0103" H 8650 4950 50  0001 C CNN
F 1 "GND" H 8655 5027 50  0000 C CNN
F 2 "" H 8650 5200 50  0001 C CNN
F 3 "" H 8650 5200 50  0001 C CNN
	1    8650 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0104
U 1 1 606A1C71
P 8700 1250
F 0 "#PWR0104" H 8700 1100 50  0001 C CNN
F 1 "+3V3" H 8715 1423 50  0000 C CNN
F 2 "" H 8700 1250 50  0001 C CNN
F 3 "" H 8700 1250 50  0001 C CNN
	1    8700 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 1250 8700 1350
Connection ~ 8700 1350
Wire Wire Line
	8700 1350 8650 1350
Wire Wire Line
	8650 5100 8650 5200
$Comp
L Device:C C3
U 1 1 606A9B1E
P 4800 1200
F 0 "C3" H 4915 1246 50  0000 L CNN
F 1 "100n" H 4915 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4838 1050 50  0001 C CNN
F 3 "~" H 4800 1200 50  0001 C CNN
	1    4800 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 606AA431
P 5200 1200
F 0 "C4" H 5315 1246 50  0000 L CNN
F 1 "100n" H 5315 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5238 1050 50  0001 C CNN
F 3 "~" H 5200 1200 50  0001 C CNN
	1    5200 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 606AAC6F
P 7100 1200
F 0 "C5" H 7215 1246 50  0000 L CNN
F 1 "100n" H 7215 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7138 1050 50  0001 C CNN
F 3 "~" H 7100 1200 50  0001 C CNN
	1    7100 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 606AB303
P 7550 1200
F 0 "C6" H 7665 1246 50  0000 L CNN
F 1 "100n" H 7665 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7588 1050 50  0001 C CNN
F 3 "~" H 7550 1200 50  0001 C CNN
	1    7550 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 606AB973
P 6700 1200
F 0 "C2" H 6815 1246 50  0000 L CNN
F 1 "100n" H 6815 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6738 1050 50  0001 C CNN
F 3 "~" H 6700 1200 50  0001 C CNN
	1    6700 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 606AC3BF
P 6350 1200
F 0 "C1" H 6465 1246 50  0000 L CNN
F 1 "100n" H 6465 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6388 1050 50  0001 C CNN
F 3 "~" H 6350 1200 50  0001 C CNN
	1    6350 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 1050 6700 1050
Wire Wire Line
	5200 1050 4800 1050
Connection ~ 4800 1050
Wire Wire Line
	4800 1350 5200 1350
Connection ~ 5200 1350
Connection ~ 4800 1350
$Comp
L power:+5V #PWR0105
U 1 1 606CAE46
P 4800 1050
F 0 "#PWR0105" H 4800 900 50  0001 C CNN
F 1 "+5V" H 4815 1223 50  0000 C CNN
F 2 "" H 4800 1050 50  0001 C CNN
F 3 "" H 4800 1050 50  0001 C CNN
	1    4800 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 606CB512
P 4800 1350
F 0 "#PWR0106" H 4800 1100 50  0001 C CNN
F 1 "GND" H 4805 1177 50  0000 C CNN
F 2 "" H 4800 1350 50  0001 C CNN
F 3 "" H 4800 1350 50  0001 C CNN
	1    4800 1350
	1    0    0    -1  
$EndComp
Text GLabel 6300 4000 2    50   Input ~ 0
RW
Wire Wire Line
	6300 4000 6100 4000
$Comp
L power:+3.3V #PWR0107
U 1 1 6073A8D7
P 6700 1050
F 0 "#PWR0107" H 6700 900 50  0001 C CNN
F 1 "+3.3V" H 6715 1223 50  0000 C CNN
F 2 "" H 6700 1050 50  0001 C CNN
F 3 "" H 6700 1050 50  0001 C CNN
	1    6700 1050
	1    0    0    -1  
$EndComp
Connection ~ 6700 1050
Wire Wire Line
	6700 1050 7100 1050
Wire Wire Line
	7550 1050 7100 1050
Connection ~ 7100 1050
Wire Wire Line
	6700 1350 7000 1350
Wire Wire Line
	7100 1350 7550 1350
Connection ~ 7100 1350
Wire Wire Line
	6350 1350 6700 1350
Connection ~ 6350 1350
Connection ~ 6700 1350
Wire Wire Line
	5200 1350 5900 1350
$Comp
L Regulator_Linear:NCP1117-3.3_SOT223 U3
U 1 1 6075F8A9
P 5900 1050
F 0 "U3" H 5900 1292 50  0000 C CNN
F 1 "NCP1117-3.3_SOT223" H 5900 1201 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 5900 1250 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/NCP1117-D.PDF" H 6000 800 50  0001 C CNN
	1    5900 1050
	1    0    0    -1  
$EndComp
Connection ~ 5900 1350
Wire Wire Line
	5900 1350 6350 1350
Wire Wire Line
	6200 1050 6350 1050
Connection ~ 6350 1050
Wire Wire Line
	5600 1050 5200 1050
Connection ~ 5200 1050
$Comp
L Device:C C7
U 1 1 6076EC0C
P 4400 1200
F 0 "C7" H 4515 1246 50  0000 L CNN
F 1 "100n" H 4515 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4438 1050 50  0001 C CNN
F 3 "~" H 4400 1200 50  0001 C CNN
	1    4400 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 6076F4B1
P 7950 1200
F 0 "C8" H 8065 1246 50  0000 L CNN
F 1 "100n" H 8065 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7988 1050 50  0001 C CNN
F 3 "~" H 7950 1200 50  0001 C CNN
	1    7950 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 1050 7950 1050
Connection ~ 7550 1050
Wire Wire Line
	7950 1350 7550 1350
Connection ~ 7550 1350
Wire Wire Line
	4400 1350 4800 1350
Entry Wire Line
	950  5100 1050 5200
Entry Wire Line
	950  5200 1050 5300
Entry Wire Line
	950  5300 1050 5400
Entry Wire Line
	950  5400 1050 5500
Entry Wire Line
	950  5500 1050 5600
Entry Wire Line
	950  5600 1050 5700
Entry Wire Line
	950  5700 1050 5800
Entry Wire Line
	950  5800 1050 5900
Entry Wire Line
	950  5900 1050 6000
Entry Wire Line
	950  6000 1050 6100
Entry Wire Line
	950  6100 1050 6200
Entry Wire Line
	950  6200 1050 6300
Entry Wire Line
	950  6300 1050 6400
Entry Wire Line
	950  6400 1050 6500
Entry Wire Line
	950  6500 1050 6600
Wire Bus Line
	950  5000 850  5000
Text GLabel 850  5000 0    50   Input ~ 0
ADDR
Text Label 1150 5200 0    50   ~ 0
A0
Text Label 1150 5300 0    50   ~ 0
A1
Text Label 1150 5400 0    50   ~ 0
A2
Text Label 1150 5500 0    50   ~ 0
A3
Text Label 1150 5600 0    50   ~ 0
A4
Text Label 1150 5700 0    50   ~ 0
A5
Text Label 1150 5800 0    50   ~ 0
A6
Text Label 1150 5900 0    50   ~ 0
A7
Text Label 1150 6000 0    50   ~ 0
A8
Text Label 1150 6100 0    50   ~ 0
A9
Text Label 1150 6200 0    50   ~ 0
A10
Text Label 1150 6300 0    50   ~ 0
A11
Text Label 1150 6400 0    50   ~ 0
A12
Text Label 1150 6500 0    50   ~ 0
A13
Text Label 1150 6600 0    50   ~ 0
A14
Entry Wire Line
	2800 5200 2900 5300
Entry Wire Line
	2800 5300 2900 5400
Entry Wire Line
	2800 5400 2900 5500
Entry Wire Line
	2800 5500 2900 5600
Entry Wire Line
	2800 5600 2900 5700
Entry Wire Line
	2800 5700 2900 5800
Entry Wire Line
	2800 5800 2900 5900
Entry Wire Line
	2800 5900 2900 6000
Wire Wire Line
	2800 5300 2550 5300
Wire Wire Line
	2550 5400 2800 5400
Wire Wire Line
	2800 5500 2550 5500
Wire Wire Line
	2550 5600 2800 5600
Wire Wire Line
	2800 5700 2550 5700
Wire Wire Line
	2550 5800 2800 5800
Wire Wire Line
	2800 5900 2550 5900
Wire Bus Line
	2900 5000 3000 5000
Text GLabel 3000 5000 2    50   Input ~ 0
DATA
Text GLabel 1150 7200 0    50   Input ~ 0
RAM
Text GLabel 1150 7000 0    50   Input ~ 0
R
Text GLabel 1150 6900 0    50   Input ~ 0
W
$Comp
L power:+5V #PWR0108
U 1 1 6083914F
P 1950 4850
F 0 "#PWR0108" H 1950 4700 50  0001 C CNN
F 1 "+5V" H 1965 5023 50  0000 C CNN
F 2 "" H 1950 4850 50  0001 C CNN
F 3 "" H 1950 4850 50  0001 C CNN
	1    1950 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 6083957A
P 1950 7350
F 0 "#PWR0109" H 1950 7100 50  0001 C CNN
F 1 "GND" H 1955 7177 50  0000 C CNN
F 2 "" H 1950 7350 50  0001 C CNN
F 3 "" H 1950 7350 50  0001 C CNN
	1    1950 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 7350 1950 7250
Wire Wire Line
	1950 5150 1950 4850
Text GLabel 9700 3600 2    50   Input ~ 0
R
Text GLabel 9650 3700 2    50   Input ~ 0
W
Text GLabel 9900 3400 2    50   Input ~ 0
RAM
Wire Wire Line
	9900 3400 9450 3400
Wire Wire Line
	1050 5200 1350 5200
Wire Wire Line
	1050 5300 1350 5300
Wire Wire Line
	1050 5400 1350 5400
Wire Wire Line
	1050 5500 1350 5500
Wire Wire Line
	1050 5600 1350 5600
Wire Wire Line
	1050 5700 1350 5700
Wire Wire Line
	1050 5800 1350 5800
Wire Wire Line
	1050 5900 1350 5900
Wire Wire Line
	1050 6000 1350 6000
Wire Wire Line
	1050 6100 1350 6100
Wire Wire Line
	1050 6200 1350 6200
Wire Wire Line
	1050 6300 1350 6300
Wire Wire Line
	1050 6400 1350 6400
$Comp
L cbm-steve:UM61256 U4
U 1 1 60784D5D
P 1950 6100
F 0 "U4" H 1950 7231 50  0000 C CNN
F 1 "UM61256" H 1950 7140 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 1950 6000 50  0001 C CNN
F 3 "https://web.mit.edu/6.115/www/document/62256.pdf" H 1950 6000 50  0001 C CNN
	1    1950 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 6500 1350 6500
Wire Wire Line
	1050 6600 1350 6600
Wire Wire Line
	2550 5200 2800 5200
Wire Wire Line
	1150 6900 1350 6900
Wire Wire Line
	1350 7000 1150 7000
Wire Wire Line
	1150 7200 1350 7200
Text Label 2600 5200 0    50   ~ 0
D0
Text Label 2600 5300 0    50   ~ 0
D1
Text Label 2600 5400 0    50   ~ 0
D2
Text Label 2600 5500 0    50   ~ 0
D3
Text Label 2600 5600 0    50   ~ 0
D4
Text Label 2600 5700 0    50   ~ 0
D5
Text Label 2600 5800 0    50   ~ 0
D6
Text Label 2600 5900 0    50   ~ 0
D7
$Comp
L Memory_EEPROM:28C256 U5
U 1 1 60669222
P 1950 3050
F 0 "U5" H 1950 4331 50  0000 C CNN
F 1 "28C256" H 1950 4240 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_Socket" H 1950 3050 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 1950 3050 50  0001 C CNN
	1    1950 3050
	1    0    0    -1  
$EndComp
Entry Wire Line
	2600 2150 2700 2250
Entry Wire Line
	2600 2250 2700 2350
Entry Wire Line
	2600 2350 2700 2450
Entry Wire Line
	2600 2450 2700 2550
Entry Wire Line
	2600 2550 2700 2650
Entry Wire Line
	2600 2650 2700 2750
Entry Wire Line
	2600 2750 2700 2850
Entry Wire Line
	2600 2850 2700 2950
Wire Wire Line
	2600 2250 2350 2250
Wire Wire Line
	2350 2350 2600 2350
Wire Wire Line
	2600 2450 2350 2450
Wire Wire Line
	2350 2550 2600 2550
Wire Wire Line
	2600 2650 2350 2650
Wire Wire Line
	2350 2750 2600 2750
Wire Wire Line
	2600 2850 2350 2850
Wire Bus Line
	2700 1950 2800 1950
Text GLabel 2800 1950 2    50   Input ~ 0
DATA
Wire Wire Line
	2350 2150 2600 2150
Text Label 2400 2150 0    50   ~ 0
D0
Text Label 2400 2250 0    50   ~ 0
D1
Text Label 2400 2350 0    50   ~ 0
D2
Text Label 2400 2450 0    50   ~ 0
D3
Text Label 2400 2550 0    50   ~ 0
D4
Text Label 2400 2650 0    50   ~ 0
D5
Text Label 2400 2750 0    50   ~ 0
D6
Text Label 2400 2850 0    50   ~ 0
D7
Text GLabel 1150 3750 0    50   Input ~ 0
W
Text GLabel 1150 3850 0    50   Input ~ 0
R
Text Label 1150 3350 0    50   ~ 0
A12
Text Label 1150 3250 0    50   ~ 0
A11
Text Label 1150 3150 0    50   ~ 0
A10
Text Label 1150 3050 0    50   ~ 0
A9
Text Label 1150 2950 0    50   ~ 0
A8
Text Label 1150 2850 0    50   ~ 0
A7
Text Label 1150 2750 0    50   ~ 0
A6
Text Label 1150 2650 0    50   ~ 0
A5
Text Label 1150 2550 0    50   ~ 0
A4
Text Label 1150 2450 0    50   ~ 0
A3
Text Label 1150 2350 0    50   ~ 0
A2
Text Label 1150 2250 0    50   ~ 0
A1
Text Label 1150 2150 0    50   ~ 0
A0
Text GLabel 850  1950 0    50   Input ~ 0
ADDR
Wire Bus Line
	950  1950 850  1950
Entry Wire Line
	950  3250 1050 3350
Entry Wire Line
	950  3150 1050 3250
Entry Wire Line
	950  3050 1050 3150
Entry Wire Line
	950  2950 1050 3050
Entry Wire Line
	950  2850 1050 2950
Entry Wire Line
	950  2750 1050 2850
Entry Wire Line
	950  2650 1050 2750
Entry Wire Line
	950  2550 1050 2650
Entry Wire Line
	950  2450 1050 2550
Entry Wire Line
	950  2350 1050 2450
Entry Wire Line
	950  2250 1050 2350
Entry Wire Line
	950  2150 1050 2250
Entry Wire Line
	950  2050 1050 2150
Wire Wire Line
	1050 2150 1550 2150
Wire Wire Line
	1050 2250 1550 2250
Wire Wire Line
	1050 2350 1550 2350
Wire Wire Line
	1050 2450 1550 2450
Wire Wire Line
	1050 2550 1550 2550
Wire Wire Line
	1050 2650 1550 2650
Wire Wire Line
	1050 2750 1550 2750
Wire Wire Line
	1050 2850 1550 2850
Wire Wire Line
	1050 2950 1550 2950
Wire Wire Line
	1050 3050 1550 3050
Wire Wire Line
	1050 3150 1550 3150
Wire Wire Line
	1050 3250 1550 3250
Wire Wire Line
	1050 3350 1550 3350
Wire Wire Line
	1150 3750 1550 3750
Wire Wire Line
	1150 3850 1550 3850
Text GLabel 1150 3950 0    50   Input ~ 0
ROM
Wire Wire Line
	1150 3950 1550 3950
$Comp
L power:GND #PWR0110
U 1 1 607C312A
P 1950 4200
F 0 "#PWR0110" H 1950 3950 50  0001 C CNN
F 1 "GND" H 1955 4027 50  0000 C CNN
F 2 "" H 1950 4200 50  0001 C CNN
F 3 "" H 1950 4200 50  0001 C CNN
	1    1950 4200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 607C37CA
P 1950 1650
F 0 "#PWR0111" H 1950 1500 50  0001 C CNN
F 1 "+5V" H 1965 1823 50  0000 C CNN
F 2 "" H 1950 1650 50  0001 C CNN
F 3 "" H 1950 1650 50  0001 C CNN
	1    1950 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1650 1950 1950
Wire Wire Line
	1950 4200 1950 4150
$Comp
L Device:C C10
U 1 1 607FE8F3
P 4000 1200
F 0 "C10" H 4115 1246 50  0000 L CNN
F 1 "100n" H 4115 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4038 1050 50  0001 C CNN
F 3 "~" H 4000 1200 50  0001 C CNN
	1    4000 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 6080A022
P 3550 1200
F 0 "C9" H 3665 1246 50  0000 L CNN
F 1 "100n" H 3665 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3588 1050 50  0001 C CNN
F 3 "~" H 3550 1200 50  0001 C CNN
	1    3550 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1050 4000 1050
Wire Wire Line
	4000 1050 4400 1050
Connection ~ 4000 1050
Connection ~ 4400 1050
Wire Wire Line
	4400 1050 4800 1050
Wire Wire Line
	3550 1350 3700 1350
Wire Wire Line
	4000 1350 4400 1350
Connection ~ 4000 1350
Connection ~ 4400 1350
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 60871873
P 10100 5100
F 0 "J1" H 10072 5074 50  0000 R CNN
F 1 "Conn_01x06_Male" H 10072 4983 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 10100 5100 50  0001 C CNN
F 3 "~" H 10100 5100 50  0001 C CNN
	1    10100 5100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9700 5000 9700 4500
Wire Wire Line
	9700 4500 9450 4500
Wire Wire Line
	9650 4600 9450 4600
Wire Wire Line
	9600 5200 9600 4700
Wire Wire Line
	9600 4700 9450 4700
Wire Wire Line
	9550 5300 9550 4800
Wire Wire Line
	9550 4800 9450 4800
$Comp
L power:GND #PWR0112
U 1 1 608A3EDE
P 9800 5450
F 0 "#PWR0112" H 9800 5200 50  0001 C CNN
F 1 "GND" H 9805 5277 50  0000 C CNN
F 2 "" H 9800 5450 50  0001 C CNN
F 3 "" H 9800 5450 50  0001 C CNN
	1    9800 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0113
U 1 1 608A4373
P 9800 4700
F 0 "#PWR0113" H 9800 4550 50  0001 C CNN
F 1 "+3V3" H 9815 4873 50  0000 C CNN
F 2 "" H 9800 4700 50  0001 C CNN
F 3 "" H 9800 4700 50  0001 C CNN
	1    9800 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 4700 9800 4900
Wire Wire Line
	9800 4900 9900 4900
Wire Wire Line
	9700 5000 9900 5000
Wire Wire Line
	9650 4600 9650 5100
Wire Wire Line
	9650 5100 9900 5100
Wire Wire Line
	9600 5200 9900 5200
Wire Wire Line
	9550 5300 9900 5300
Wire Wire Line
	9900 5400 9800 5400
Wire Wire Line
	9800 5400 9800 5450
$Comp
L Device:Crystal Y1
U 1 1 6095D9EE
P 4550 4600
F 0 "Y1" H 4550 4868 50  0000 C CNN
F 1 "Crystal" H 4550 4777 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 4550 4600 50  0001 C CNN
F 3 "~" H 4550 4600 50  0001 C CNN
	1    4550 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 6095E424
P 4250 4750
F 0 "C11" H 4365 4796 50  0000 L CNN
F 1 "22p" H 4365 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4288 4600 50  0001 C CNN
F 3 "~" H 4250 4750 50  0001 C CNN
	1    4250 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4600 4850 4600
Wire Wire Line
	4250 5000 4250 4900
Wire Wire Line
	5600 5000 5600 4900
Wire Wire Line
	5600 5050 5600 5000
Connection ~ 5600 5000
Wire Wire Line
	4250 5000 4850 5000
$Comp
L Device:C C12
U 1 1 6095EF99
P 4850 4750
F 0 "C12" H 4965 4796 50  0000 L CNN
F 1 "22p" H 4965 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4888 4600 50  0001 C CNN
F 3 "~" H 4850 4750 50  0001 C CNN
	1    4850 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4900 4850 5000
Connection ~ 4850 5000
Wire Wire Line
	4850 5000 5600 5000
Wire Wire Line
	4850 4600 5100 4600
Connection ~ 4850 4600
Wire Wire Line
	4250 4600 4400 4600
Wire Wire Line
	5100 4500 4800 4500
Wire Wire Line
	4800 4500 4800 4450
Wire Wire Line
	4800 4450 4250 4450
Wire Wire Line
	4250 4450 4250 4600
Connection ~ 4250 4600
Text GLabel 7400 2500 0    50   BiDi ~ 0
DATA
Wire Bus Line
	7400 2500 7450 2500
Entry Wire Line
	7450 2400 7550 2500
Entry Wire Line
	7450 2300 7550 2400
Entry Wire Line
	7450 2200 7550 2300
Entry Wire Line
	7450 2100 7550 2200
Entry Wire Line
	7450 2000 7550 2100
Entry Wire Line
	7450 1900 7550 2000
Entry Wire Line
	7450 1800 7550 1900
Wire Wire Line
	7550 2500 7850 2500
Wire Wire Line
	7550 2400 7850 2400
Wire Wire Line
	7550 2300 7850 2300
Wire Wire Line
	7550 2200 7850 2200
Wire Wire Line
	7550 2100 7850 2100
Wire Wire Line
	7550 2000 7850 2000
Wire Wire Line
	7550 1900 7850 1900
Text Label 7650 2500 0    50   ~ 0
D0
Text Label 7650 2400 0    50   ~ 0
D1
Text Label 7650 2300 0    50   ~ 0
D2
Text Label 7650 2200 0    50   ~ 0
D3
Text Label 7650 2100 0    50   ~ 0
D4
Text Label 7650 2000 0    50   ~ 0
D5
Text Label 7650 1900 0    50   ~ 0
D6
Text Label 7700 1800 0    50   ~ 0
D7
Wire Wire Line
	9450 3700 9650 3700
Text GLabel 9600 3500 2    50   Input ~ 0
ROM
Wire Wire Line
	9600 3500 9450 3500
Wire Wire Line
	9700 3600 9450 3600
Text Label 9650 3900 0    50   ~ 0
A6
Wire Wire Line
	9450 4300 9750 4300
Wire Wire Line
	9750 4000 9450 4000
Text Label 9650 4000 0    50   ~ 0
A5
Text Label 9650 4100 0    50   ~ 0
A4
Text Label 9650 4200 0    50   ~ 0
A3
Wire Wire Line
	9750 4200 9450 4200
Wire Wire Line
	9450 4100 9750 4100
Wire Wire Line
	7550 3800 7850 3800
Wire Wire Line
	7850 3900 7550 3900
Text Label 9650 3800 0    50   ~ 0
A7
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 60CFB424
P 10550 2100
F 0 "J2" H 10522 2124 50  0000 R CNN
F 1 "Conn_01x03_Male" H 10522 2033 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10550 2100 50  0001 C CNN
F 3 "~" H 10550 2100 50  0001 C CNN
	1    10550 2100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 60CFD0FF
P 10250 1700
F 0 "#PWR0114" H 10250 1450 50  0001 C CNN
F 1 "GND" H 10255 1527 50  0000 C CNN
F 2 "" H 10250 1700 50  0001 C CNN
F 3 "" H 10250 1700 50  0001 C CNN
	1    10250 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1700 10250 1600
Wire Wire Line
	10250 1600 10350 1600
Wire Wire Line
	10350 1600 10350 2000
$Comp
L Connector:Mini-DIN-6 J3
U 1 1 606C3F64
P 9800 1100
F 0 "J3" H 9800 1467 50  0000 C CNN
F 1 "Mini-DIN-6" H 9800 1376 50  0000 C CNN
F 2 "custom:Connector_Mini-DIN_Female_6Pin_2rows" H 9800 1100 50  0001 C CNN
F 3 "http://service.powerdynamics.com/ec/Catalog17/Section%2011.pdf" H 9800 1100 50  0001 C CNN
	1    9800 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 1600 10350 1100
Wire Wire Line
	10350 1100 10100 1100
Connection ~ 10350 1600
$Comp
L power:+5V #PWR0115
U 1 1 606F02A7
P 9250 950
F 0 "#PWR0115" H 9250 800 50  0001 C CNN
F 1 "+5V" H 9265 1123 50  0000 C CNN
F 2 "" H 9250 950 50  0001 C CNN
F 3 "" H 9250 950 50  0001 C CNN
	1    9250 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 950  9250 1100
Wire Wire Line
	9250 1100 9500 1100
Wire Wire Line
	10100 1000 10150 1000
$Comp
L Device:R R1
U 1 1 6076255C
P 9750 1900
F 0 "R1" V 9750 1900 50  0000 C CNN
F 1 "100R" V 9700 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9680 1900 50  0001 C CNN
F 3 "~" H 9750 1900 50  0001 C CNN
	1    9750 1900
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 60763227
P 9750 1800
F 0 "R2" V 9750 1800 50  0000 C CNN
F 1 "100R" V 9700 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9680 1800 50  0001 C CNN
F 3 "~" H 9750 1800 50  0001 C CNN
	1    9750 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 607642F1
P 9800 2100
F 0 "R3" V 9800 2100 50  0000 C CNN
F 1 "100R" V 9750 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9685 2100 50  0001 C CNN
F 3 "~" H 9800 2100 50  0001 C CNN
	1    9800 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 607652D0
P 9800 2200
F 0 "R4" V 9800 2200 50  0000 C CNN
F 1 "100R" V 9750 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9730 2200 50  0001 C CNN
F 3 "~" H 9800 2200 50  0001 C CNN
	1    9800 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	9450 1900 9600 1900
Wire Wire Line
	9600 1800 9450 1800
Wire Wire Line
	9450 2100 9650 2100
Wire Wire Line
	9650 2200 9450 2200
Wire Wire Line
	9950 2200 10350 2200
Wire Wire Line
	10350 2100 9950 2100
Wire Wire Line
	9900 1800 10100 1800
Text GLabel 4900 4100 0    50   Input ~ 0
HALT
Text GLabel 4900 3400 0    50   Input ~ 0
IRQ
Wire Wire Line
	4900 3400 5100 3400
Wire Wire Line
	4900 4100 5100 4100
Wire Wire Line
	5100 4000 5000 4000
Wire Wire Line
	5000 4000 5000 3500
Wire Wire Line
	5000 3500 5100 3500
Wire Wire Line
	5000 3500 5000 3300
Wire Wire Line
	5000 3300 5100 3300
Connection ~ 5000 3500
Wire Wire Line
	5000 3300 4550 3300
Connection ~ 5000 3300
$Comp
L power:+5V #PWR0116
U 1 1 608413EE
P 4550 3300
F 0 "#PWR0116" H 4550 3150 50  0001 C CNN
F 1 "+5V" H 4565 3473 50  0000 C CNN
F 2 "" H 4550 3300 50  0001 C CNN
F 3 "" H 4550 3300 50  0001 C CNN
	1    4550 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4400 5000 4400
Wire Wire Line
	5000 4400 5000 4000
Connection ~ 5000 4000
Text GLabel 4950 3200 0    50   Input ~ 0
RESET
Wire Wire Line
	4950 3200 5100 3200
Text GLabel 6400 4400 2    50   Input ~ 0
E
Text GLabel 6400 4500 2    50   Input ~ 0
Q
Wire Wire Line
	6400 4400 6100 4400
Wire Wire Line
	6400 4500 6100 4500
Text GLabel 7600 3000 0    50   Input ~ 0
E
Text GLabel 7600 2900 0    50   Input ~ 0
Q
Text GLabel 7600 2800 0    50   Input ~ 0
IRQ
Text GLabel 7600 2700 0    50   Input ~ 0
HALT
Text GLabel 7600 2600 0    50   Input ~ 0
RESET
Wire Wire Line
	7600 3000 7850 3000
Wire Wire Line
	7600 2900 7850 2900
Wire Wire Line
	7600 2800 7850 2800
Wire Wire Line
	7600 2700 7850 2700
Wire Wire Line
	7600 2600 7850 2600
Wire Wire Line
	10100 1800 10100 1200
Wire Wire Line
	9900 1900 10150 1900
Wire Wire Line
	10150 1000 10150 1900
$Comp
L Regulator_Linear:LM7805_TO220 U6
U 1 1 609C1B8E
P 2450 1050
F 0 "U6" H 2450 1292 50  0000 C CNN
F 1 "LM7805_TO220" H 2450 1201 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2450 1275 50  0001 C CIN
F 3 "https://www.onsemi.cn/PowerSolutions/document/MC7800-D.PDF" H 2450 1000 50  0001 C CNN
	1    2450 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1350 2800 1350
Connection ~ 3550 1350
Connection ~ 3550 1050
$Comp
L Device:C C15
U 1 1 609FCC31
P 2800 1200
F 0 "C15" H 2915 1246 50  0000 L CNN
F 1 "100n" H 2915 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2838 1050 50  0001 C CNN
F 3 "~" H 2800 1200 50  0001 C CNN
	1    2800 1200
	1    0    0    -1  
$EndComp
Connection ~ 2800 1050
Wire Wire Line
	2800 1050 2750 1050
Connection ~ 2800 1350
Wire Wire Line
	2800 1350 3050 1350
$Comp
L Device:C C14
U 1 1 609FD6DD
P 2000 1200
F 0 "C14" H 2115 1246 50  0000 L CNN
F 1 "100n" H 2115 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2038 1050 50  0001 C CNN
F 3 "~" H 2000 1200 50  0001 C CNN
	1    2000 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C13
U 1 1 609FE346
P 1650 1200
F 0 "C13" H 1768 1246 50  0000 L CNN
F 1 "1000u" H 1768 1155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 1688 1050 50  0001 C CNN
F 3 "~" H 1650 1200 50  0001 C CNN
	1    1650 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C16
U 1 1 609FEC49
P 3050 1200
F 0 "C16" H 3168 1246 50  0000 L CNN
F 1 "1000u" H 3168 1155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 3088 1050 50  0001 C CNN
F 3 "~" H 3050 1200 50  0001 C CNN
	1    3050 1200
	1    0    0    -1  
$EndComp
Connection ~ 3050 1050
Wire Wire Line
	3050 1050 2800 1050
Connection ~ 3050 1350
Wire Wire Line
	2450 1350 2000 1350
Connection ~ 2450 1350
Wire Wire Line
	2150 1050 2000 1050
Wire Wire Line
	2000 1350 1650 1350
Connection ~ 2000 1350
Wire Wire Line
	2000 1050 1650 1050
Connection ~ 2000 1050
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 60A5155F
P 1000 1250
F 0 "J4" H 918 925 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 918 1016 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1000 1250 50  0001 C CNN
F 3 "~" H 1000 1250 50  0001 C CNN
	1    1000 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	1650 1350 1300 1350
Wire Wire Line
	1300 1350 1300 1250
Wire Wire Line
	1300 1250 1200 1250
Connection ~ 1650 1350
Wire Wire Line
	1200 1150 1300 1150
Wire Wire Line
	1300 1150 1300 1050
Wire Wire Line
	1300 1050 1650 1050
Connection ~ 1650 1050
$Comp
L Device:LED D1
U 1 1 60A7DCB6
P 3850 800
F 0 "D1" H 3843 1017 50  0000 C CNN
F 1 "LED" H 3843 926 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 3850 800 50  0001 C CNN
F 3 "~" H 3850 800 50  0001 C CNN
	1    3850 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 60A83D5B
P 7300 800
F 0 "D2" H 7293 1017 50  0000 C CNN
F 1 "LED" H 7293 926 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 7300 800 50  0001 C CNN
F 3 "~" H 7300 800 50  0001 C CNN
	1    7300 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 60A86174
P 4250 800
F 0 "R5" V 4043 800 50  0000 C CNN
F 1 "1k" V 4134 800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4180 800 50  0001 C CNN
F 3 "~" H 4250 800 50  0001 C CNN
	1    4250 800 
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 60A872C6
P 7700 800
F 0 "R6" V 7493 800 50  0000 C CNN
F 1 "1k" V 7584 800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7630 800 50  0001 C CNN
F 3 "~" H 7700 800 50  0001 C CNN
	1    7700 800 
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 1050 4400 800 
Wire Wire Line
	4100 800  4000 800 
Wire Wire Line
	3700 800  3700 1350
Connection ~ 3700 1350
Wire Wire Line
	3700 1350 4000 1350
Wire Wire Line
	7850 800  7950 800 
Wire Wire Line
	7950 800  7950 1050
Connection ~ 7950 1050
Wire Wire Line
	7550 800  7450 800 
Wire Wire Line
	7150 800  7000 800 
Wire Wire Line
	7000 800  7000 1350
Connection ~ 7000 1350
Wire Wire Line
	7000 1350 7100 1350
Wire Wire Line
	3050 1050 3550 1050
Wire Wire Line
	3050 1350 3550 1350
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 60B31F9A
P 10550 2450
F 0 "J5" H 10522 2474 50  0000 R CNN
F 1 "Conn_01x03_Male" H 10522 2383 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10550 2450 50  0001 C CNN
F 3 "~" H 10550 2450 50  0001 C CNN
	1    10550 2450
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 60B7C151
P 9800 2300
F 0 "R7" V 9800 2300 50  0000 C CNN
F 1 "100R" V 9750 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9685 2300 50  0001 C CNN
F 3 "~" H 9800 2300 50  0001 C CNN
	1    9800 2300
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 60B7C157
P 9800 2400
F 0 "R8" V 9800 2400 50  0000 C CNN
F 1 "100R" V 9750 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9730 2400 50  0001 C CNN
F 3 "~" H 9800 2400 50  0001 C CNN
	1    9800 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	9450 2300 9650 2300
Wire Wire Line
	9650 2400 9450 2400
Wire Wire Line
	10350 2450 10250 2450
Wire Wire Line
	10250 2450 10250 2300
Wire Wire Line
	10250 2300 9950 2300
Wire Wire Line
	10350 2550 10200 2550
Wire Wire Line
	10200 2550 10200 2400
Wire Wire Line
	10200 2400 9950 2400
Connection ~ 10350 2000
Wire Wire Line
	10350 2000 10350 2350
Wire Wire Line
	9450 3300 9800 3300
Wire Bus Line
	7450 1800 7450 2500
Wire Bus Line
	2700 1950 2700 2950
Wire Bus Line
	2900 5000 2900 6000
Wire Bus Line
	4500 2000 4500 2900
Wire Bus Line
	950  5000 950  6500
Wire Bus Line
	950  1950 950  3250
Wire Bus Line
	6350 2000 6350 3900
Text GLabel 9800 3300 2    50   Input ~ 0
RW
$EndSCHEMATC
