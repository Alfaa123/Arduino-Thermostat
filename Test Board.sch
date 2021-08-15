EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Arduino Thermostat"
Date "2021-08-14"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Switching:LM2575-5.0BT U1
U 1 1 61156E14
P 2350 1300
F 0 "U1" H 2350 1667 50  0000 C CNN
F 1 "LM2575-5.0BT" H 2350 1576 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-5_Vertical" H 2350 1050 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/lm2575.pdf" H 2350 1300 50  0001 C CNN
	1    2350 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 611691A8
P 1450 1350
F 0 "C1" H 1568 1396 50  0000 L CNN
F 1 "100uF" H 1568 1305 50  0000 L CNN
F 2 "" H 1488 1200 50  0001 C CNN
F 3 "~" H 1450 1350 50  0001 C CNN
	1    1450 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 6116A00D
P 3350 1550
F 0 "C2" H 3468 1596 50  0000 L CNN
F 1 "220uF" H 3468 1505 50  0000 L CNN
F 2 "" H 3388 1400 50  0001 C CNN
F 3 "~" H 3350 1550 50  0001 C CNN
	1    3350 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D2
U 1 1 6116B3C0
P 2850 1550
F 0 "D2" V 2804 1630 50  0000 L CNN
F 1 "MBR360" V 2895 1630 50  0000 L CNN
F 2 "Diode_THT:D_DO-201_P15.24mm_Horizontal" H 2850 1550 50  0001 C CNN
F 3 "~" H 2850 1550 50  0001 C CNN
	1    2850 1550
	0    1    1    0   
$EndComp
$Comp
L Device:L L1
U 1 1 6116C55B
P 3200 1400
F 0 "L1" V 3390 1400 50  0000 C CNN
F 1 "330uH" V 3299 1400 50  0000 C CNN
F 2 "Inductor_THT:L_Radial_D21.0mm_P19.00mm" H 3200 1400 50  0001 C CNN
F 3 "~" H 3200 1400 50  0001 C CNN
	1    3200 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2850 1700 2650 1700
Wire Wire Line
	2350 1700 2350 1600
Connection ~ 2850 1700
Wire Wire Line
	2350 1700 1850 1700
Wire Wire Line
	1850 1700 1850 1400
Connection ~ 2350 1700
Wire Wire Line
	1450 1500 1450 1700
Wire Wire Line
	3350 1200 3350 1400
Connection ~ 3350 1400
$Comp
L power:+5V #PWR0101
U 1 1 6117809E
P 3350 1200
F 0 "#PWR0101" H 3350 1050 50  0001 C CNN
F 1 "+5V" V 3365 1328 50  0000 L CNN
F 2 "" H 3350 1200 50  0001 C CNN
F 3 "" H 3350 1200 50  0001 C CNN
	1    3350 1200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 61179283
P 2350 1700
F 0 "#PWR0102" H 2350 1450 50  0001 C CNN
F 1 "GND" H 2355 1527 50  0000 C CNN
F 2 "" H 2350 1700 50  0001 C CNN
F 3 "" H 2350 1700 50  0001 C CNN
	1    2350 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+VDC #PWR0103
U 1 1 61180A92
P 1450 1200
F 0 "#PWR0103" H 1450 1100 50  0001 C CNN
F 1 "+VDC" H 1450 1475 50  0000 C CNN
F 2 "" H 1450 1200 50  0001 C CNN
F 3 "" H 1450 1200 50  0001 C CNN
	1    1450 1200
	1    0    0    -1  
$EndComp
Connection ~ 1450 1200
$Comp
L power:+VDC #PWR0104
U 1 1 6118181E
P 1950 2800
F 0 "#PWR0104" H 1950 2700 50  0001 C CNN
F 1 "+VDC" H 1950 3075 50  0000 C CNN
F 2 "" H 1950 2800 50  0001 C CNN
F 3 "" H 1950 2800 50  0001 C CNN
	1    1950 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 61182229
P 1950 3400
F 0 "#PWR0105" H 1950 3150 50  0001 C CNN
F 1 "GND" H 1955 3227 50  0000 C CNN
F 2 "" H 1950 3400 50  0001 C CNN
F 3 "" H 1950 3400 50  0001 C CNN
	1    1950 3400
	1    0    0    -1  
$EndComp
Connection ~ 3350 1200
Wire Wire Line
	2850 1700 3350 1700
Wire Wire Line
	2850 1400 3050 1400
Connection ~ 2850 1400
Wire Wire Line
	2850 1200 3350 1200
Wire Wire Line
	1450 1700 1850 1700
Connection ~ 1850 1700
Wire Wire Line
	1450 1200 1750 1200
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 6118966F
P 1650 5350
F 0 "J1" H 1568 5567 50  0000 C CNN
F 1 "SCREW TERMINAL" H 1568 5476 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 1650 5350 50  0001 C CNN
F 3 "~" H 1650 5350 50  0001 C CNN
	1    1650 5350
	-1   0    0    -1  
$EndComp
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 6118DE62
P 10200 1800
F 0 "A1" H 10200 711 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 10200 620 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 10200 1800 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 10200 1800 50  0001 C CNN
	1    10200 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 6119078D
P 10400 800
F 0 "#PWR0106" H 10400 650 50  0001 C CNN
F 1 "+5V" H 10415 973 50  0000 C CNN
F 2 "" H 10400 800 50  0001 C CNN
F 3 "" H 10400 800 50  0001 C CNN
	1    10400 800 
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:WC1602A DS1
U 1 1 61193DC1
P 6950 4550
F 0 "DS1" H 6950 5531 50  0000 C CNN
F 1 "WC1602A" H 6950 5440 50  0000 C CNN
F 2 "Display:WC1602A" H 6950 3650 50  0001 C CIN
F 3 "http://www.wincomlcd.com/pdf/WC1602A-SFYLYHTC06.pdf" H 7650 4550 50  0001 C CNN
	1    6950 4550
	1    0    0    -1  
$EndComp
Text GLabel 10700 2200 2    50   Input ~ 0
SDA
Text GLabel 10700 2300 2    50   Input ~ 0
SCL
$Comp
L Device:R R17
U 1 1 611A692B
P 7850 1950
F 0 "R17" V 8057 1950 50  0000 C CNN
F 1 "10k" V 7966 1950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7780 1950 50  0001 C CNN
F 3 "~" H 7850 1950 50  0001 C CNN
	1    7850 1950
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 611AA1CA
P 8000 1950
F 0 "#PWR0107" H 8000 1800 50  0001 C CNN
F 1 "+5V" V 8015 2078 50  0000 L CNN
F 2 "" H 8000 1950 50  0001 C CNN
F 3 "" H 8000 1950 50  0001 C CNN
	1    8000 1950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 611AB050
P 6300 2850
F 0 "#PWR0108" H 6300 2600 50  0001 C CNN
F 1 "GND" H 6305 2677 50  0000 C CNN
F 2 "" H 6300 2850 50  0001 C CNN
F 3 "" H 6300 2850 50  0001 C CNN
	1    6300 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 611AC3CE
P 6300 2650
F 0 "#PWR0109" H 6300 2500 50  0001 C CNN
F 1 "+5V" V 6315 2778 50  0000 L CNN
F 2 "" H 6300 2650 50  0001 C CNN
F 3 "" H 6300 2650 50  0001 C CNN
	1    6300 2650
	0    -1   -1   0   
$EndComp
Text GLabel 5550 2400 0    50   Input ~ 0
SCL
Text GLabel 5550 2500 0    50   Input ~ 0
SDA
$Comp
L power:+5V #PWR0110
U 1 1 611AE3B2
P 5600 2100
F 0 "#PWR0110" H 5600 1950 50  0001 C CNN
F 1 "+5V" H 5615 2273 50  0000 C CNN
F 2 "" H 5600 2100 50  0001 C CNN
F 3 "" H 5600 2100 50  0001 C CNN
	1    5600 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 611AF2A7
P 5600 2800
F 0 "#PWR0111" H 5600 2650 50  0001 C CNN
F 1 "+5V" H 5615 2973 50  0000 C CNN
F 2 "" H 5600 2800 50  0001 C CNN
F 3 "" H 5600 2800 50  0001 C CNN
	1    5600 2800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R14
U 1 1 611B05DC
P 5600 2650
F 0 "R14" H 5670 2696 50  0000 L CNN
F 1 "10k" H 5670 2605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5530 2650 50  0001 C CNN
F 3 "~" H 5600 2650 50  0001 C CNN
	1    5600 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 611B2881
P 5600 2250
F 0 "R13" H 5670 2296 50  0000 L CNN
F 1 "10k" H 5670 2205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5530 2250 50  0001 C CNN
F 3 "~" H 5600 2250 50  0001 C CNN
	1    5600 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2400 5600 2400
Wire Wire Line
	5550 2500 5600 2500
Wire Wire Line
	5600 2400 6300 2400
Connection ~ 5600 2400
Wire Wire Line
	5600 2500 6300 2500
Connection ~ 5600 2500
Wire Wire Line
	6300 1600 5950 1600
Text Label 5950 1600 0    50   ~ 0
RS
Text Label 5950 1700 0    50   ~ 0
RW
Text Label 5950 1800 0    50   ~ 0
E
Text Label 5950 1900 0    50   ~ 0
BT
Wire Wire Line
	6300 1700 5950 1700
Wire Wire Line
	6300 1800 5950 1800
Wire Wire Line
	6300 1900 5950 1900
Text Label 5950 2000 0    50   ~ 0
D4
Text Label 5950 2100 0    50   ~ 0
D5
Text Label 5950 2200 0    50   ~ 0
D6
Text Label 5950 2300 0    50   ~ 0
D7
Wire Wire Line
	6300 2000 5950 2000
Wire Wire Line
	6300 2100 5950 2100
Wire Wire Line
	6300 2200 5950 2200
Wire Wire Line
	6300 2300 5950 2300
Text Label 6400 3950 0    50   ~ 0
E
Text Label 6400 4050 0    50   ~ 0
RW
Text Label 6400 4150 0    50   ~ 0
RS
Text Label 6400 4850 0    50   ~ 0
D4
Text Label 6400 4950 0    50   ~ 0
D5
Text Label 6400 5050 0    50   ~ 0
D6
Text Label 6400 5150 0    50   ~ 0
D7
Wire Wire Line
	6550 4850 6400 4850
Wire Wire Line
	6550 4950 6400 4950
Wire Wire Line
	6550 5050 6400 5050
Wire Wire Line
	6550 5150 6400 5150
Wire Wire Line
	6550 4150 6400 4150
Wire Wire Line
	6550 4050 6400 4050
Wire Wire Line
	6550 3950 6400 3950
$Comp
L power:GND #PWR0112
U 1 1 61183121
P 6950 5350
F 0 "#PWR0112" H 6950 5100 50  0001 C CNN
F 1 "GND" H 6955 5177 50  0000 C CNN
F 2 "" H 6950 5350 50  0001 C CNN
F 3 "" H 6950 5350 50  0001 C CNN
	1    6950 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 61183F42
P 6700 3750
F 0 "#PWR0113" H 6700 3600 50  0001 C CNN
F 1 "+5V" H 6715 3923 50  0000 C CNN
F 2 "" H 6700 3750 50  0001 C CNN
F 3 "" H 6700 3750 50  0001 C CNN
	1    6700 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3750 6700 3750
$Comp
L Device:R_POT RV1
U 1 1 61186CBF
P 7650 3750
F 0 "RV1" V 7443 3750 50  0000 C CNN
F 1 "10k" V 7534 3750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 7650 3750 50  0001 C CNN
F 3 "~" H 7650 3750 50  0001 C CNN
	1    7650 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 3950 7650 3950
$Comp
L power:+5V #PWR0114
U 1 1 6118B7B8
P 7650 4250
F 0 "#PWR0114" H 7650 4100 50  0001 C CNN
F 1 "+5V" V 7665 4378 50  0000 L CNN
F 2 "" H 7650 4250 50  0001 C CNN
F 3 "" H 7650 4250 50  0001 C CNN
	1    7650 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3750 7500 3750
Connection ~ 6950 3750
Wire Wire Line
	7650 3950 7650 3900
$Comp
L power:GND #PWR0115
U 1 1 61193426
P 7800 3750
F 0 "#PWR0115" H 7800 3500 50  0001 C CNN
F 1 "GND" V 7805 3622 50  0000 R CNN
F 2 "" H 7800 3750 50  0001 C CNN
F 3 "" H 7800 3750 50  0001 C CNN
	1    7800 3750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R16
U 1 1 61194214
P 7800 4550
F 0 "R16" V 8007 4550 50  0000 C CNN
F 1 "10k" V 7916 4550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7730 4550 50  0001 C CNN
F 3 "~" H 7800 4550 50  0001 C CNN
	1    7800 4550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R15
U 1 1 611951A9
P 7800 4250
F 0 "R15" V 8007 4250 50  0000 C CNN
F 1 "4.7k" V 7916 4250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7730 4250 50  0001 C CNN
F 3 "~" H 7800 4250 50  0001 C CNN
	1    7800 4250
	0    -1   -1   0   
$EndComp
Text Label 8100 4450 0    50   ~ 0
BT
$Comp
L Transistor_BJT:S8050 Q4
U 1 1 61198173
P 7450 4550
F 0 "Q4" H 7641 4596 50  0000 L CNN
F 1 "S8050" H 7641 4505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7650 4475 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 7450 4550 50  0001 L CNN
	1    7450 4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7350 4250 7650 4250
Connection ~ 7650 4250
Wire Wire Line
	7950 4450 8100 4450
Connection ~ 7950 4450
Wire Wire Line
	7950 4450 7950 4550
$Comp
L power:GND #PWR0116
U 1 1 611AFD45
P 7350 4750
F 0 "#PWR0116" H 7350 4500 50  0001 C CNN
F 1 "GND" H 7355 4577 50  0000 C CNN
F 2 "" H 7350 4750 50  0001 C CNN
F 3 "" H 7350 4750 50  0001 C CNN
	1    7350 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4250 7950 4450
$Comp
L Sensor:DHT11 U6
U 1 1 611B2F78
P 10200 3750
F 0 "U6" V 9819 3750 50  0000 C CNN
F 1 "DHT11" V 9910 3750 50  0000 C CNN
F 2 "Sensor:Aosong_DHT11_5.5x12.0_P2.54mm" H 10200 3350 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/aosong/DHT11.pdf" H 10350 4000 50  0001 C CNN
	1    10200 3750
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0117
U 1 1 611B795B
P 10500 3750
F 0 "#PWR0117" H 10500 3600 50  0001 C CNN
F 1 "+5V" V 10515 3878 50  0000 L CNN
F 2 "" H 10500 3750 50  0001 C CNN
F 3 "" H 10500 3750 50  0001 C CNN
	1    10500 3750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 611B8ADF
P 9900 3750
F 0 "#PWR0118" H 9900 3500 50  0001 C CNN
F 1 "GND" V 9905 3622 50  0000 R CNN
F 2 "" H 9900 3750 50  0001 C CNN
F 3 "" H 9900 3750 50  0001 C CNN
	1    9900 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R R22
U 1 1 611B9B90
P 10050 4250
F 0 "R22" V 9843 4250 50  0000 C CNN
F 1 "10k" V 9934 4250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9980 4250 50  0001 C CNN
F 3 "~" H 10050 4250 50  0001 C CNN
	1    10050 4250
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0119
U 1 1 611BC197
P 9900 4250
F 0 "#PWR0119" H 9900 4100 50  0001 C CNN
F 1 "+5V" V 9915 4378 50  0000 L CNN
F 2 "" H 9900 4250 50  0001 C CNN
F 3 "" H 9900 4250 50  0001 C CNN
	1    9900 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10200 4050 10200 4250
Text Label 9500 1400 0    50   ~ 0
DHT
Wire Wire Line
	9700 1400 9500 1400
Text Label 10350 4400 2    50   ~ 0
DHT
Wire Wire Line
	10200 4250 10200 4400
Connection ~ 10200 4250
Wire Wire Line
	10200 4400 10350 4400
Wire Wire Line
	10300 2800 10200 2800
Wire Wire Line
	10200 2800 9800 2800
Connection ~ 10200 2800
$Comp
L power:GND #PWR0120
U 1 1 611C69A1
P 9800 2800
F 0 "#PWR0120" H 9800 2550 50  0001 C CNN
F 1 "GND" V 9805 2672 50  0000 R CNN
F 2 "" H 9800 2800 50  0001 C CNN
F 3 "" H 9800 2800 50  0001 C CNN
	1    9800 2800
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J2
U 1 1 611CF99A
P 1650 5900
F 0 "J2" H 1568 5575 50  0000 C CNN
F 1 "SCREW TERMINAL" H 1568 5666 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-3-5.08_1x03_P5.08mm_Horizontal" H 1650 5900 50  0001 C CNN
F 3 "~" H 1650 5900 50  0001 C CNN
	1    1650 5900
	-1   0    0    1   
$EndComp
$Comp
L Triac_Thyristor:BT138-600 Q3
U 1 1 611D9241
P 4550 6900
F 0 "Q3" H 4678 6854 50  0000 L CNN
F 1 "BT138-600" H 4678 6945 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4750 6825 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BT138_SER_D_E.pdf" H 4550 6900 50  0001 L CNN
	1    4550 6900
	1    0    0    1   
$EndComp
$Comp
L Relay_SolidState:MOC3012M U4
U 1 1 611E03C5
P 3800 6700
F 0 "U4" H 3800 7025 50  0000 C CNN
F 1 "MOC3012M" H 3800 6934 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 3600 6500 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MOC3023M-D.PDF" H 3800 6700 50  0001 L CNN
	1    3800 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 611ED26B
P 3350 5600
F 0 "R2" V 3143 5600 50  0000 C CNN
F 1 "560R" V 3234 5600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3280 5600 50  0001 C CNN
F 3 "~" H 3350 5600 50  0001 C CNN
	1    3350 5600
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 611EE4E0
P 3350 4600
F 0 "R1" V 3143 4600 50  0000 C CNN
F 1 "560R" V 3234 4600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3280 4600 50  0001 C CNN
F 3 "~" H 3350 4600 50  0001 C CNN
	1    3350 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 611EF19A
P 3350 6600
F 0 "R3" V 3143 6600 50  0000 C CNN
F 1 "560R" V 3234 6600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3280 6600 50  0001 C CNN
F 3 "~" H 3350 6600 50  0001 C CNN
	1    3350 6600
	0    1    1    0   
$EndComp
Text Label 9500 1500 0    50   ~ 0
FAN
Text Label 9500 1600 0    50   ~ 0
HEAT
Text Label 9500 1700 0    50   ~ 0
COOL
Wire Wire Line
	9700 1700 9500 1700
Wire Wire Line
	9700 1600 9500 1600
Wire Wire Line
	9700 1500 9500 1500
Text Label 3000 4600 0    50   ~ 0
FAN
Text Label 3000 5600 0    50   ~ 0
HEAT
Text Label 3000 6600 0    50   ~ 0
COOL
Wire Wire Line
	3000 4600 3200 4600
Wire Wire Line
	3000 5600 3200 5600
Wire Wire Line
	3000 6600 3200 6600
$Comp
L power:GND #PWR0121
U 1 1 611FB04B
P 3500 5800
F 0 "#PWR0121" H 3500 5550 50  0001 C CNN
F 1 "GND" V 3505 5672 50  0000 R CNN
F 2 "" H 3500 5800 50  0001 C CNN
F 3 "" H 3500 5800 50  0001 C CNN
	1    3500 5800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 611FC37C
P 3500 4800
F 0 "#PWR0122" H 3500 4550 50  0001 C CNN
F 1 "GND" V 3505 4672 50  0000 R CNN
F 2 "" H 3500 4800 50  0001 C CNN
F 3 "" H 3500 4800 50  0001 C CNN
	1    3500 4800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 611FD12D
P 3500 6800
F 0 "#PWR0123" H 3500 6550 50  0001 C CNN
F 1 "GND" V 3505 6672 50  0000 R CNN
F 2 "" H 3500 6800 50  0001 C CNN
F 3 "" H 3500 6800 50  0001 C CNN
	1    3500 6800
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 6120DA87
P 4250 6600
F 0 "R9" V 4043 6600 50  0000 C CNN
F 1 "100R" V 4134 6600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4180 6600 50  0001 C CNN
F 3 "~" H 4250 6600 50  0001 C CNN
	1    4250 6600
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 61215F29
P 4100 6950
F 0 "R6" H 4170 6996 50  0000 L CNN
F 1 "180R" H 4170 6905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4030 6950 50  0001 C CNN
F 3 "~" H 4100 6950 50  0001 C CNN
	1    4100 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 6600 4550 6600
Wire Wire Line
	4550 6600 4550 6750
Wire Wire Line
	4100 6800 4400 6800
Connection ~ 4100 6800
Wire Wire Line
	4100 7100 4550 7100
Wire Wire Line
	4550 7100 4550 7050
Text Label 2100 5800 2    50   ~ 0
Y
Text Label 2100 5900 2    50   ~ 0
G
Text Label 2100 6000 2    50   ~ 0
W
Wire Wire Line
	1850 5800 2100 5800
Wire Wire Line
	1850 5900 2100 5900
Wire Wire Line
	1850 6000 2100 6000
$Comp
L Device:R R12
U 1 1 6123F2C7
P 5200 6750
F 0 "R12" H 5270 6796 50  0000 L CNN
F 1 "33R" H 5270 6705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5130 6750 50  0001 C CNN
F 3 "~" H 5200 6750 50  0001 C CNN
	1    5200 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 61240246
P 5200 7000
F 0 "C5" H 5292 7046 50  0000 L CNN
F 1 "0.01uf" H 5292 6955 50  0000 L CNN
F 2 "" H 5200 7000 50  0001 C CNN
F 3 "~" H 5200 7000 50  0001 C CNN
	1    5200 7000
	1    0    0    -1  
$EndComp
Connection ~ 4550 6600
Wire Wire Line
	4550 7100 5200 7100
Connection ~ 4550 7100
Text Label 2100 5450 2    50   ~ 0
C
Text Label 2100 5350 2    50   ~ 0
R
Text Label 4650 6450 2    50   ~ 0
R
Wire Wire Line
	4550 6600 5200 6600
Wire Wire Line
	4550 6600 4550 6450
Wire Wire Line
	4550 6450 4650 6450
Wire Wire Line
	4550 7100 4550 7250
$Comp
L Triac_Thyristor:BT138-600 Q2
U 1 1 61260B5F
P 4550 5900
F 0 "Q2" H 4678 5854 50  0000 L CNN
F 1 "BT138-600" H 4678 5945 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4750 5825 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BT138_SER_D_E.pdf" H 4550 5900 50  0001 L CNN
	1    4550 5900
	1    0    0    1   
$EndComp
$Comp
L Relay_SolidState:MOC3012M U3
U 1 1 61260B65
P 3800 5700
F 0 "U3" H 3800 6025 50  0000 C CNN
F 1 "MOC3012M" H 3800 5934 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 3600 5500 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MOC3023M-D.PDF" H 3800 5700 50  0001 L CNN
	1    3800 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 61260B6B
P 4250 5600
F 0 "R8" V 4043 5600 50  0000 C CNN
F 1 "100R" V 4134 5600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4180 5600 50  0001 C CNN
F 3 "~" H 4250 5600 50  0001 C CNN
	1    4250 5600
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 61260B71
P 4100 5950
F 0 "R5" H 4170 5996 50  0000 L CNN
F 1 "180R" H 4170 5905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4030 5950 50  0001 C CNN
F 3 "~" H 4100 5950 50  0001 C CNN
	1    4100 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 5600 4550 5600
Wire Wire Line
	4550 5600 4550 5750
Wire Wire Line
	4100 5800 4400 5800
Connection ~ 4100 5800
Wire Wire Line
	4100 6100 4550 6100
Wire Wire Line
	4550 6100 4550 6050
$Comp
L Device:R R11
U 1 1 61260B7D
P 5200 5750
F 0 "R11" H 5270 5796 50  0000 L CNN
F 1 "33R" H 5270 5705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5130 5750 50  0001 C CNN
F 3 "~" H 5200 5750 50  0001 C CNN
	1    5200 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 61260B83
P 5200 6000
F 0 "C4" H 5292 6046 50  0000 L CNN
F 1 "0.01uf" H 5292 5955 50  0000 L CNN
F 2 "" H 5200 6000 50  0001 C CNN
F 3 "~" H 5200 6000 50  0001 C CNN
	1    5200 6000
	1    0    0    -1  
$EndComp
Connection ~ 4550 5600
Wire Wire Line
	4550 6100 5200 6100
Connection ~ 4550 6100
Text Label 4650 5450 2    50   ~ 0
R
Wire Wire Line
	4550 5600 5200 5600
Wire Wire Line
	4550 5600 4550 5450
Wire Wire Line
	4550 5450 4650 5450
Wire Wire Line
	4550 6100 4550 6250
$Comp
L Triac_Thyristor:BT138-600 Q1
U 1 1 61267A95
P 4550 4900
F 0 "Q1" H 4678 4854 50  0000 L CNN
F 1 "BT138-600" H 4678 4945 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4750 4825 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BT138_SER_D_E.pdf" H 4550 4900 50  0001 L CNN
	1    4550 4900
	1    0    0    1   
$EndComp
$Comp
L Relay_SolidState:MOC3012M U2
U 1 1 61267A9B
P 3800 4700
F 0 "U2" H 3800 5025 50  0000 C CNN
F 1 "MOC3012M" H 3800 4934 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 3600 4500 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MOC3023M-D.PDF" H 3800 4700 50  0001 L CNN
	1    3800 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 61267AA1
P 4250 4600
F 0 "R7" V 4043 4600 50  0000 C CNN
F 1 "100R" V 4134 4600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4180 4600 50  0001 C CNN
F 3 "~" H 4250 4600 50  0001 C CNN
	1    4250 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 61267AA7
P 4100 4950
F 0 "R4" H 4170 4996 50  0000 L CNN
F 1 "180R" H 4170 4905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4030 4950 50  0001 C CNN
F 3 "~" H 4100 4950 50  0001 C CNN
	1    4100 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4600 4550 4600
Wire Wire Line
	4550 4600 4550 4750
Wire Wire Line
	4100 4800 4400 4800
Connection ~ 4100 4800
Wire Wire Line
	4100 5100 4550 5100
Wire Wire Line
	4550 5100 4550 5050
$Comp
L Device:R R10
U 1 1 61267AB3
P 5200 4750
F 0 "R10" H 5270 4796 50  0000 L CNN
F 1 "33R" H 5270 4705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5130 4750 50  0001 C CNN
F 3 "~" H 5200 4750 50  0001 C CNN
	1    5200 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 61267AB9
P 5200 5000
F 0 "C3" H 5292 5046 50  0000 L CNN
F 1 "0.01uf" H 5292 4955 50  0000 L CNN
F 2 "" H 5200 5000 50  0001 C CNN
F 3 "~" H 5200 5000 50  0001 C CNN
	1    5200 5000
	1    0    0    -1  
$EndComp
Connection ~ 4550 4600
Wire Wire Line
	4550 5100 5200 5100
Connection ~ 4550 5100
Text Label 4650 4450 2    50   ~ 0
R
Wire Wire Line
	4550 4600 5200 4600
Wire Wire Line
	4550 4600 4550 4450
Wire Wire Line
	4550 4450 4650 4450
Wire Wire Line
	4550 5100 4550 5250
Text Label 4650 7250 2    50   ~ 0
Y
Text Label 4650 6250 2    50   ~ 0
W
Text Label 4650 5250 2    50   ~ 0
G
Wire Wire Line
	4550 5250 4650 5250
Wire Wire Line
	4550 6250 4650 6250
Wire Wire Line
	4550 7250 4650 7250
$Comp
L Switch:SW_Push SW3
U 1 1 612824A2
P 9600 5200
F 0 "SW3" H 9600 5485 50  0000 C CNN
F 1 "DN-MJTP1230" H 9600 5394 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 9600 5400 50  0001 C CNN
F 3 "~" H 9600 5400 50  0001 C CNN
	1    9600 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 61284FD9
P 9950 5050
F 0 "R20" H 10020 5096 50  0000 L CNN
F 1 "47k" H 10020 5005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9880 5050 50  0001 C CNN
F 3 "~" H 9950 5050 50  0001 C CNN
	1    9950 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 612870DD
P 9400 5200
F 0 "#PWR0124" H 9400 4950 50  0001 C CNN
F 1 "GND" H 9405 5027 50  0000 C CNN
F 2 "" H 9400 5200 50  0001 C CNN
F 3 "" H 9400 5200 50  0001 C CNN
	1    9400 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0125
U 1 1 61288513
P 9950 4900
F 0 "#PWR0125" H 9950 4750 50  0001 C CNN
F 1 "+5V" H 9965 5073 50  0000 C CNN
F 2 "" H 9950 4900 50  0001 C CNN
F 3 "" H 9950 4900 50  0001 C CNN
	1    9950 4900
	1    0    0    -1  
$EndComp
Text Label 10350 5200 2    50   ~ 0
SW_DN
Wire Wire Line
	9950 5200 10350 5200
$Comp
L Device:R R18
U 1 1 612A0D94
P 8800 5050
F 0 "R18" H 8870 5096 50  0000 L CNN
F 1 "47k" H 8870 5005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8730 5050 50  0001 C CNN
F 3 "~" H 8800 5050 50  0001 C CNN
	1    8800 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 612A0D9A
P 8250 5200
F 0 "#PWR0126" H 8250 4950 50  0001 C CNN
F 1 "GND" H 8255 5027 50  0000 C CNN
F 2 "" H 8250 5200 50  0001 C CNN
F 3 "" H 8250 5200 50  0001 C CNN
	1    8250 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0127
U 1 1 612A0DA0
P 8800 4900
F 0 "#PWR0127" H 8800 4750 50  0001 C CNN
F 1 "+5V" H 8815 5073 50  0000 C CNN
F 2 "" H 8800 4900 50  0001 C CNN
F 3 "" H 8800 4900 50  0001 C CNN
	1    8800 4900
	1    0    0    -1  
$EndComp
Text Label 9200 5200 2    50   ~ 0
SW_UP
Wire Wire Line
	8800 5200 9200 5200
$Comp
L Switch:SW_Push SW2
U 1 1 612A5F5D
P 8450 5900
F 0 "SW2" H 8450 6185 50  0000 C CNN
F 1 "LT-MJTP1230" H 8450 6094 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 8450 6100 50  0001 C CNN
F 3 "~" H 8450 6100 50  0001 C CNN
	1    8450 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 612A5F63
P 8800 5750
F 0 "R19" H 8870 5796 50  0000 L CNN
F 1 "47k" H 8870 5705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8730 5750 50  0001 C CNN
F 3 "~" H 8800 5750 50  0001 C CNN
	1    8800 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 612A5F69
P 8250 5900
F 0 "#PWR0128" H 8250 5650 50  0001 C CNN
F 1 "GND" H 8255 5727 50  0000 C CNN
F 2 "" H 8250 5900 50  0001 C CNN
F 3 "" H 8250 5900 50  0001 C CNN
	1    8250 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0129
U 1 1 612A5F6F
P 8800 5600
F 0 "#PWR0129" H 8800 5450 50  0001 C CNN
F 1 "+5V" H 8815 5773 50  0000 C CNN
F 2 "" H 8800 5600 50  0001 C CNN
F 3 "" H 8800 5600 50  0001 C CNN
	1    8800 5600
	1    0    0    -1  
$EndComp
Text Label 9200 5900 2    50   ~ 0
SW_LT
Wire Wire Line
	8800 5900 9200 5900
$Comp
L Switch:SW_Push SW4
U 1 1 612AA08B
P 9550 5900
F 0 "SW4" H 9550 6185 50  0000 C CNN
F 1 "RT-MJTP1230" H 9550 6094 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 9550 6100 50  0001 C CNN
F 3 "~" H 9550 6100 50  0001 C CNN
	1    9550 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 612AA091
P 9950 5750
F 0 "R21" H 10020 5796 50  0000 L CNN
F 1 "47k" H 10020 5705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9880 5750 50  0001 C CNN
F 3 "~" H 9950 5750 50  0001 C CNN
	1    9950 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 612AA097
P 9350 5900
F 0 "#PWR0130" H 9350 5650 50  0001 C CNN
F 1 "GND" H 9355 5727 50  0000 C CNN
F 2 "" H 9350 5900 50  0001 C CNN
F 3 "" H 9350 5900 50  0001 C CNN
	1    9350 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0131
U 1 1 612AA09D
P 9950 5600
F 0 "#PWR0131" H 9950 5450 50  0001 C CNN
F 1 "+5V" H 9965 5773 50  0000 C CNN
F 2 "" H 9950 5600 50  0001 C CNN
F 3 "" H 9950 5600 50  0001 C CNN
	1    9950 5600
	1    0    0    -1  
$EndComp
Text Label 10350 5900 2    50   ~ 0
SW_RT
Wire Wire Line
	9950 5900 10350 5900
Text Label 9450 1800 0    50   ~ 0
SW_UP
Text Label 9450 1900 0    50   ~ 0
SW_DN
Text Label 9450 2000 0    50   ~ 0
SW_LT
Text Label 9450 2100 0    50   ~ 0
SW_RT
Wire Wire Line
	9700 2100 9450 2100
Wire Wire Line
	9700 2000 9450 2000
Wire Wire Line
	9700 1900 9450 1900
Wire Wire Line
	9700 1800 9450 1800
NoConn ~ 10700 2100
NoConn ~ 10700 2000
NoConn ~ 10700 1900
NoConn ~ 10700 1800
NoConn ~ 10700 1600
NoConn ~ 10700 1300
NoConn ~ 10700 1200
NoConn ~ 9700 2500
NoConn ~ 9700 2400
NoConn ~ 9700 2300
NoConn ~ 9700 2200
NoConn ~ 9700 1300
NoConn ~ 9700 1200
NoConn ~ 10300 800 
NoConn ~ 10100 800 
NoConn ~ 6300 1500
NoConn ~ 6550 4750
NoConn ~ 6550 4650
NoConn ~ 6550 4550
NoConn ~ 6550 4450
Wire Wire Line
	7700 1850 7700 1950
Connection ~ 7700 1950
Wire Wire Line
	7700 2050 7700 1950
$Comp
L IOExpander:PCA8574PW U5
U 1 1 6131AF02
P 6200 1700
F 0 "U5" H 7000 2187 60  0000 C CNN
F 1 "PCA8574PW" H 7000 2081 60  0000 C CNN
F 2 "SOT403-1_NXP" H 7000 2040 60  0001 C CNN
F 3 "" H 6300 1900 60  0000 C CNN
	1    6200 1700
	1    0    0    -1  
$EndComp
NoConn ~ 10700 2400
NoConn ~ 10700 2500
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61324CB9
P 7350 4350
F 0 "#FLG0101" H 7350 4425 50  0001 C CNN
F 1 "PWR_FLAG" V 7350 4478 50  0000 L CNN
F 2 "" H 7350 4350 50  0001 C CNN
F 3 "~" H 7350 4350 50  0001 C CNN
	1    7350 4350
	0    1    1    0   
$EndComp
Connection ~ 7350 4350
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 6132694E
P 2650 1700
F 0 "#FLG0102" H 2650 1775 50  0001 C CNN
F 1 "PWR_FLAG" H 2650 1873 50  0000 C CNN
F 2 "" H 2650 1700 50  0001 C CNN
F 3 "~" H 2650 1700 50  0001 C CNN
	1    2650 1700
	-1   0    0    1   
$EndComp
Connection ~ 2650 1700
Wire Wire Line
	2650 1700 2350 1700
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 61327DD2
P 1750 1200
F 0 "#FLG0103" H 1750 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 1750 1373 50  0000 C CNN
F 2 "" H 1750 1200 50  0001 C CNN
F 3 "~" H 1750 1200 50  0001 C CNN
	1    1750 1200
	1    0    0    -1  
$EndComp
Connection ~ 1750 1200
Wire Wire Line
	1750 1200 1850 1200
Wire Wire Line
	1850 5350 2100 5350
Wire Wire Line
	1850 5450 2100 5450
$Comp
L Diode_Bridge:B40C5000-3x00A D1
U 1 1 61365C58
P 1950 3100
F 0 "D1" V 1996 2756 50  0000 R CNN
F 1 "B40C5000-3x00A" V 1905 2756 50  0000 R CNN
F 2 "Diode_THT:Diode_Bridge_32.0x5.6x17.0mm_P10.0mm_P7.5mm" H 2100 3225 50  0001 L CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/b40c500033" H 1950 3100 50  0001 C CNN
	1    1950 3100
	0    -1   -1   0   
$EndComp
Text Label 1400 3100 0    50   ~ 0
R
Text Label 2500 3100 2    50   ~ 0
C
Wire Wire Line
	2250 3100 2500 3100
Wire Wire Line
	1400 3100 1650 3100
$Comp
L Device:CP C6
U 1 1 613AC318
P 1000 1350
F 0 "C6" H 1118 1396 50  0000 L CNN
F 1 "220uF" H 1118 1305 50  0000 L CNN
F 2 "" H 1038 1200 50  0001 C CNN
F 3 "~" H 1000 1350 50  0001 C CNN
	1    1000 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1200 1000 1200
Wire Wire Line
	1000 1500 1000 1700
Wire Wire Line
	1000 1700 1450 1700
Connection ~ 1450 1700
$Comp
L Switch:SW_Push SW1
U 1 1 612A0D8E
P 8450 5200
F 0 "SW1" H 8450 5485 50  0000 C CNN
F 1 "UP-MJTP1230" H 8450 5394 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 8450 5400 50  0001 C CNN
F 3 "~" H 8450 5400 50  0001 C CNN
	1    8450 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 5200 8800 5200
Connection ~ 8800 5200
Wire Wire Line
	8800 5900 8650 5900
Connection ~ 8800 5900
Wire Wire Line
	9800 5200 9950 5200
Connection ~ 9950 5200
Wire Wire Line
	9750 5900 9950 5900
Connection ~ 9950 5900
$EndSCHEMATC
