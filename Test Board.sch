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
L Regulator_Switching:LM2575-5.0BT U?
U 1 1 61156E14
P 3500 3050
F 0 "U?" H 3500 3417 50  0000 C CNN
F 1 "LM2575-5.0BT" H 3500 3326 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-5_Vertical" H 3500 2800 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/lm2575.pdf" H 3500 3050 50  0001 C CNN
	1    3500 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 611691A8
P 2600 3100
F 0 "C?" H 2718 3146 50  0000 L CNN
F 1 "100uF" H 2718 3055 50  0000 L CNN
F 2 "" H 2638 2950 50  0001 C CNN
F 3 "~" H 2600 3100 50  0001 C CNN
	1    2600 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 6116A00D
P 4500 3300
F 0 "C?" H 4618 3346 50  0000 L CNN
F 1 "220uF" H 4618 3255 50  0000 L CNN
F 2 "" H 4538 3150 50  0001 C CNN
F 3 "~" H 4500 3300 50  0001 C CNN
	1    4500 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 6116B3C0
P 4000 3300
F 0 "D?" V 3954 3380 50  0000 L CNN
F 1 "MBR360" V 4045 3380 50  0000 L CNN
F 2 "" H 4000 3300 50  0001 C CNN
F 3 "~" H 4000 3300 50  0001 C CNN
	1    4000 3300
	0    1    1    0   
$EndComp
$Comp
L Device:L L?
U 1 1 6116C55B
P 4350 3150
F 0 "L?" V 4540 3150 50  0000 C CNN
F 1 "330uH" V 4449 3150 50  0000 C CNN
F 2 "" H 4350 3150 50  0001 C CNN
F 3 "~" H 4350 3150 50  0001 C CNN
	1    4350 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 3450 3500 3450
Wire Wire Line
	3500 3450 3500 3350
Connection ~ 4000 3450
Wire Wire Line
	3500 3450 3000 3450
Wire Wire Line
	3000 3450 3000 3150
Connection ~ 3500 3450
Wire Wire Line
	2600 3250 2600 3450
Wire Wire Line
	4500 2950 4500 3150
Connection ~ 4500 3150
$Comp
L power:+5V #PWR?
U 1 1 6117809E
P 4500 2950
F 0 "#PWR?" H 4500 2800 50  0001 C CNN
F 1 "+5V" V 4515 3078 50  0000 L CNN
F 2 "" H 4500 2950 50  0001 C CNN
F 3 "" H 4500 2950 50  0001 C CNN
	1    4500 2950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61179283
P 3500 3450
F 0 "#PWR?" H 3500 3200 50  0001 C CNN
F 1 "GND" H 3505 3277 50  0000 C CNN
F 2 "" H 3500 3450 50  0001 C CNN
F 3 "" H 3500 3450 50  0001 C CNN
	1    3500 3450
	1    0    0    -1  
$EndComp
$Comp
L Diode_Bridge:VS-KBPC802 D?
U 1 1 6117A94D
P 1500 3050
F 0 "D?" V 1546 2706 50  0000 R CNN
F 1 "VS-KBPC802" V 1455 2706 50  0000 R CNN
F 2 "Diode_THT:Diode_Bridge_Vishay_KBPC6" H 1650 3175 50  0001 L CNN
F 3 "http://www.vishay.com/docs/93586/kbpc8series.pdf" H 1500 3050 50  0001 C CNN
	1    1500 3050
	0    -1   -1   0   
$EndComp
$Comp
L power:+VDC #PWR?
U 1 1 61180A92
P 2600 2950
F 0 "#PWR?" H 2600 2850 50  0001 C CNN
F 1 "+VDC" H 2600 3225 50  0000 C CNN
F 2 "" H 2600 2950 50  0001 C CNN
F 3 "" H 2600 2950 50  0001 C CNN
	1    2600 2950
	1    0    0    -1  
$EndComp
Connection ~ 2600 2950
$Comp
L power:+VDC #PWR?
U 1 1 6118181E
P 1500 2750
F 0 "#PWR?" H 1500 2650 50  0001 C CNN
F 1 "+VDC" H 1500 3025 50  0000 C CNN
F 2 "" H 1500 2750 50  0001 C CNN
F 3 "" H 1500 2750 50  0001 C CNN
	1    1500 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61182229
P 1500 3350
F 0 "#PWR?" H 1500 3100 50  0001 C CNN
F 1 "GND" H 1505 3177 50  0000 C CNN
F 2 "" H 1500 3350 50  0001 C CNN
F 3 "" H 1500 3350 50  0001 C CNN
	1    1500 3350
	1    0    0    -1  
$EndComp
Connection ~ 4500 2950
Wire Wire Line
	4000 3450 4500 3450
Wire Wire Line
	4000 3150 4200 3150
Connection ~ 4000 3150
Wire Wire Line
	4000 2950 4500 2950
Wire Wire Line
	2600 3450 3000 3450
Connection ~ 3000 3450
Wire Wire Line
	2600 2950 3000 2950
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 6118966F
P 1000 2950
F 0 "J?" H 918 3167 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 918 3076 50  0000 C CNN
F 2 "" H 1000 2950 50  0001 C CNN
F 3 "~" H 1000 2950 50  0001 C CNN
	1    1000 2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1200 2950 1200 2350
Wire Wire Line
	1200 2350 1800 2350
Wire Wire Line
	1800 2350 1800 3050
$Comp
L MCU_Module:Arduino_Nano_v3.x A?
U 1 1 6118DE62
P 10250 3100
F 0 "A?" H 10250 2011 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 10250 1920 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 10250 3100 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 10250 3100 50  0001 C CNN
	1    10250 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6119078D
P 10450 2100
F 0 "#PWR?" H 10450 1950 50  0001 C CNN
F 1 "+5V" H 10465 2273 50  0000 C CNN
F 2 "" H 10450 2100 50  0001 C CNN
F 3 "" H 10450 2100 50  0001 C CNN
	1    10450 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61191730
P 10350 4100
F 0 "#PWR?" H 10350 3850 50  0001 C CNN
F 1 "GND" H 10355 3927 50  0000 C CNN
F 2 "" H 10350 4100 50  0001 C CNN
F 3 "" H 10350 4100 50  0001 C CNN
	1    10350 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 611922A0
P 10250 4100
F 0 "#PWR?" H 10250 3850 50  0001 C CNN
F 1 "GND" H 10255 3927 50  0000 C CNN
F 2 "" H 10250 4100 50  0001 C CNN
F 3 "" H 10250 4100 50  0001 C CNN
	1    10250 4100
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:WC1602A DS?
U 1 1 61193DC1
P 6950 4550
F 0 "DS?" H 6950 5531 50  0000 C CNN
F 1 "WC1602A" H 6950 5440 50  0000 C CNN
F 2 "Display:WC1602A" H 6950 3650 50  0001 C CIN
F 3 "http://www.wincomlcd.com/pdf/WC1602A-SFYLYHTC06.pdf" H 7650 4550 50  0001 C CNN
	1    6950 4550
	1    0    0    -1  
$EndComp
Text GLabel 10750 3500 2    50   Input ~ 0
SDA
Text GLabel 10750 3600 2    50   Input ~ 0
SCL
$Comp
L Device:R R?
U 1 1 611A692B
P 7850 1950
F 0 "R?" V 8057 1950 50  0000 C CNN
F 1 "10k" V 7966 1950 50  0000 C CNN
F 2 "" V 7780 1950 50  0001 C CNN
F 3 "~" H 7850 1950 50  0001 C CNN
	1    7850 1950
	0    -1   -1   0   
$EndComp
$Comp
L IOExpander:PCA8574PW U?
U 1 1 6119CA4C
P 6200 1700
F 0 "U?" H 7000 2187 60  0000 C CNN
F 1 "PCA8574PW" H 7000 2081 60  0000 C CNN
F 2 "SOT403-1_NXP" H 7000 2040 60  0001 C CNN
F 3 "" H 6300 1900 60  0000 C CNN
	1    6200 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1850 7700 1950
Connection ~ 7700 1950
Wire Wire Line
	7700 2050 7700 1950
$Comp
L power:+5V #PWR?
U 1 1 611AA1CA
P 8000 1950
F 0 "#PWR?" H 8000 1800 50  0001 C CNN
F 1 "+5V" V 8015 2078 50  0000 L CNN
F 2 "" H 8000 1950 50  0001 C CNN
F 3 "" H 8000 1950 50  0001 C CNN
	1    8000 1950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 611AB050
P 6300 2850
F 0 "#PWR?" H 6300 2600 50  0001 C CNN
F 1 "GND" H 6305 2677 50  0000 C CNN
F 2 "" H 6300 2850 50  0001 C CNN
F 3 "" H 6300 2850 50  0001 C CNN
	1    6300 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 611AC3CE
P 6300 2650
F 0 "#PWR?" H 6300 2500 50  0001 C CNN
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
L power:+5V #PWR?
U 1 1 611AE3B2
P 5600 2100
F 0 "#PWR?" H 5600 1950 50  0001 C CNN
F 1 "+5V" H 5615 2273 50  0000 C CNN
F 2 "" H 5600 2100 50  0001 C CNN
F 3 "" H 5600 2100 50  0001 C CNN
	1    5600 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 611AF2A7
P 5600 2800
F 0 "#PWR?" H 5600 2650 50  0001 C CNN
F 1 "+5V" H 5615 2973 50  0000 C CNN
F 2 "" H 5600 2800 50  0001 C CNN
F 3 "" H 5600 2800 50  0001 C CNN
	1    5600 2800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 611B05DC
P 5600 2650
F 0 "R?" H 5670 2696 50  0000 L CNN
F 1 "10k" H 5670 2605 50  0000 L CNN
F 2 "" V 5530 2650 50  0001 C CNN
F 3 "~" H 5600 2650 50  0001 C CNN
	1    5600 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 611B2881
P 5600 2250
F 0 "R?" H 5670 2296 50  0000 L CNN
F 1 "10k" H 5670 2205 50  0000 L CNN
F 2 "" V 5530 2250 50  0001 C CNN
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
$EndSCHEMATC
