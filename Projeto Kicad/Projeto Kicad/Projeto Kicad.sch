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
L ESP32DEVKITV1:ESP32DEVKITV1 ESP
U 1 1 60739FDA
P 4950 3650
F 0 "ESP" V 3874 3650 50  0000 C CNN
F 1 "ESP32DEVKITV1" H 4950 3650 50  0001 L BNN
F 2 "ESP32-DEVKITV1" H 4950 3650 50  0001 L BNN
F 3 "" H 4950 3650 50  0001 L BNN
F 4 "None" H 4950 3650 50  0001 L BNN "Price"
F 5 "ESP32 DEVKIT V1" H 4950 3650 50  0001 L BNN "MP"
F 6 "Unavailable" H 4950 3650 50  0001 L BNN "Availability"
F 7 "Dual core, Wi-Fi: 2.4 GHz up to 150 Mbits/s,BLE (Bluetooth Low Energy) and legacy Bluetooth, 32 bits, Up to 240 MHz" H 4950 3650 50  0001 L BNN "Description"
F 8 "Package" H 4950 3650 50  0001 L BNN "Package"
F 9 "Do it" H 4950 3650 50  0001 L BNN "MF"
	1    4950 3650
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6073B12C
P 5750 2650
F 0 "#PWR?" H 5750 2500 50  0001 C CNN
F 1 "+5V" H 5765 2823 50  0000 C CNN
F 2 "" H 5750 2650 50  0001 C CNN
F 3 "" H 5750 2650 50  0001 C CNN
	1    5750 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6073B695
P 5950 2600
F 0 "#PWR?" H 5950 2350 50  0001 C CNN
F 1 "GND" H 5955 2427 50  0000 C CNN
F 2 "" H 5950 2600 50  0001 C CNN
F 3 "" H 5950 2600 50  0001 C CNN
	1    5950 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2650 5750 2750
Wire Wire Line
	5750 2750 5650 2750
Wire Wire Line
	5950 2600 5950 2550
Wire Wire Line
	5950 2550 5850 2550
Wire Wire Line
	5850 2850 5650 2850
Wire Wire Line
	5850 2550 5850 2850
Wire Wire Line
	5650 3250 5850 3250
Wire Wire Line
	5650 3150 5850 3150
Wire Wire Line
	5850 3050 5650 3050
Wire Wire Line
	5850 2950 5650 2950
Text GLabel 5850 3250 2    50   Output ~ 0
t_volta
Text GLabel 5850 3150 2    50   Output ~ 0
t_mais
Text GLabel 5850 3050 2    50   Output ~ 0
t_menos
Wire Wire Line
	7550 2450 7650 2450
Wire Wire Line
	7600 3100 7700 3100
Wire Wire Line
	6850 2800 6950 2800
Text GLabel 6850 2800 0    50   Input ~ 0
t_volta
Text GLabel 7600 3100 0    50   Input ~ 0
t_menos
Text GLabel 7550 2450 0    50   Input ~ 0
t_mais
Wire Wire Line
	8350 2800 8450 2800
Text GLabel 8350 2800 0    50   Input ~ 0
t_enter
$Comp
L Connector:Conn_01x01_Male J4
U 1 1 60754FC3
P 7150 2800
F 0 "J4" H 7122 2732 50  0000 R CNN
F 1 "Conn_01x01_Male" H 7122 2823 50  0000 R CNN
F 2 "" H 7150 2800 50  0001 C CNN
F 3 "~" H 7150 2800 50  0001 C CNN
	1    7150 2800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J1
U 1 1 60754868
P 8650 2800
F 0 "J1" H 8622 2732 50  0000 R CNN
F 1 "Conn_01x01_Male" H 8622 2823 50  0000 R CNN
F 2 "" H 8650 2800 50  0001 C CNN
F 3 "~" H 8650 2800 50  0001 C CNN
	1    8650 2800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J2
U 1 1 60753E06
P 7900 3100
F 0 "J2" H 7872 3032 50  0000 R CNN
F 1 "Conn_01x01_Male" H 7872 3123 50  0000 R CNN
F 2 "" H 7900 3100 50  0001 C CNN
F 3 "~" H 7900 3100 50  0001 C CNN
	1    7900 3100
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J3
U 1 1 60750E2F
P 7850 2450
F 0 "J3" H 7822 2382 50  0000 R CNN
F 1 "Conn_01x01_Male" H 7822 2473 50  0000 R CNN
F 2 "" H 7850 2450 50  0001 C CNN
F 3 "~" H 7850 2450 50  0001 C CNN
	1    7850 2450
	-1   0    0    1   
$EndComp
Text GLabel 5850 2950 2    50   Output ~ 0
t_enter
$Comp
L Connector:Conn_01x02_Female Canal1
U 1 1 6075D75A
P 8000 3550
F 0 "Canal1" H 8028 3526 50  0000 L CNN
F 1 "Conn_01x02_Female" H 8028 3435 50  0000 L CNN
F 2 "" H 8000 3550 50  0001 C CNN
F 3 "~" H 8000 3550 50  0001 C CNN
	1    8000 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6075E0F5
P 7650 3750
F 0 "#PWR?" H 7650 3500 50  0001 C CNN
F 1 "GND" H 7655 3577 50  0000 C CNN
F 2 "" H 7650 3750 50  0001 C CNN
F 3 "" H 7650 3750 50  0001 C CNN
	1    7650 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3750 7650 3650
Wire Wire Line
	7650 3650 7800 3650
$Comp
L Connector:Conn_01x02_Female Canal2
U 1 1 6075E71C
P 8000 4200
F 0 "Canal2" H 8028 4176 50  0000 L CNN
F 1 "Conn_01x02_Female" H 8028 4085 50  0000 L CNN
F 2 "" H 8000 4200 50  0001 C CNN
F 3 "~" H 8000 4200 50  0001 C CNN
	1    8000 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6075F4A9
P 7650 4350
F 0 "#PWR?" H 7650 4100 50  0001 C CNN
F 1 "GND" H 7655 4177 50  0000 C CNN
F 2 "" H 7650 4350 50  0001 C CNN
F 3 "" H 7650 4350 50  0001 C CNN
	1    7650 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4350 7650 4300
Wire Wire Line
	7650 4300 7800 4300
Wire Wire Line
	6800 3550 7800 3550
Wire Wire Line
	6700 4200 7800 4200
Text Label 6700 3700 0    50   ~ 0
dac_2
Text Label 6800 3450 0    50   ~ 0
dac_1
$Comp
L Display_Character:WC1602A lcd
U 1 1 60764D90
P 2550 3400
F 0 "lcd" H 2650 3050 50  0000 C CNN
F 1 "WC1602A" H 2650 3150 50  0000 C CNN
F 2 "Display:WC1602A" H 2550 2500 50  0001 C CIN
F 3 "http://www.wincomlcd.com/pdf/WC1602A-SFYLYHTC06.pdf" H 3250 3400 50  0001 C CNN
	1    2550 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4250 2950 3650 2950
Wire Wire Line
	3650 2950 3650 2800
Wire Wire Line
	3650 2800 2950 2800
Wire Wire Line
	4250 3250 3550 3250
Wire Wire Line
	3550 3250 3550 2900
Wire Wire Line
	3550 2900 2950 2900
Wire Wire Line
	3450 3350 3450 3000
Wire Wire Line
	3450 3000 2950 3000
Wire Wire Line
	3450 3350 4250 3350
Wire Wire Line
	4250 3550 3350 3550
Wire Wire Line
	3350 3550 3350 3100
Wire Wire Line
	3350 3100 2950 3100
Text Label 3700 2950 0    50   ~ 0
lcd_d7
Text Label 3700 3250 0    50   ~ 0
lcd_d6
Text Label 3700 3350 0    50   ~ 0
lcd_d5
Text Label 3700 3550 0    50   ~ 0
lcd_d4
Wire Wire Line
	4250 3650 3350 3650
Wire Wire Line
	3350 3650 3350 3800
Wire Wire Line
	3350 3800 2950 3800
Text Label 3700 3650 0    50   ~ 0
lcd_rs
$Comp
L power:GND #PWR?
U 1 1 6076A2D4
P 3550 3900
F 0 "#PWR?" H 3550 3650 50  0001 C CNN
F 1 "GND" H 3555 3727 50  0000 C CNN
F 2 "" H 3550 3900 50  0001 C CNN
F 3 "" H 3550 3900 50  0001 C CNN
	1    3550 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3900 2950 3900
Wire Wire Line
	4250 4150 3250 4150
Wire Wire Line
	3250 4150 3250 4000
Wire Wire Line
	3250 4000 2950 4000
Text Label 3700 4150 0    50   ~ 0
lcd_en
$Comp
L power:+5V #PWR?
U 1 1 6076BEB2
P 2550 2200
F 0 "#PWR?" H 2550 2050 50  0001 C CNN
F 1 "+5V" H 2565 2373 50  0000 C CNN
F 2 "" H 2550 2200 50  0001 C CNN
F 3 "" H 2550 2200 50  0001 C CNN
	1    2550 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2200 2550 2600
$Comp
L power:GND #PWR?
U 1 1 6076DE2A
P 2550 4350
F 0 "#PWR?" H 2550 4100 50  0001 C CNN
F 1 "GND" H 2555 4177 50  0000 C CNN
F 2 "" H 2550 4350 50  0001 C CNN
F 3 "" H 2550 4350 50  0001 C CNN
	1    2550 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4350 2550 4250
$Comp
L Device:R_POT pot
U 1 1 6076F9A4
P 1250 4000
F 0 "pot" H 1181 4046 50  0000 R CNN
F 1 "R_POT" H 1181 3955 50  0000 R CNN
F 2 "" H 1250 4000 50  0001 C CNN
F 3 "~" H 1250 4000 50  0001 C CNN
	1    1250 4000
	1    0    0    -1  
$EndComp
Connection ~ 2550 4250
Wire Wire Line
	2550 4250 2550 4200
$Comp
L power:GND #PWR?
U 1 1 60773422
P 2100 3250
F 0 "#PWR?" H 2100 3000 50  0001 C CNN
F 1 "GND" H 2105 3077 50  0000 C CNN
F 2 "" H 2100 3250 50  0001 C CNN
F 3 "" H 2100 3250 50  0001 C CNN
	1    2100 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4000 2150 4000
Wire Wire Line
	1250 4250 1250 4150
Wire Wire Line
	1250 4250 2550 4250
$Comp
L power:+5V #PWR?
U 1 1 6077A4FB
P 1250 3550
F 0 "#PWR?" H 1250 3400 50  0001 C CNN
F 1 "+5V" H 1265 3723 50  0000 C CNN
F 2 "" H 1250 3550 50  0001 C CNN
F 3 "" H 1250 3550 50  0001 C CNN
	1    1250 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3550 1250 3700
$Comp
L Device:R_Small R1
U 1 1 6077E3C7
P 1550 3700
F 0 "R1" V 1354 3700 50  0000 C CNN
F 1 "R_Small" V 1445 3700 50  0000 C CNN
F 2 "" H 1550 3700 50  0001 C CNN
F 3 "~" H 1550 3700 50  0001 C CNN
	1    1550 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 3700 2150 3700
Wire Wire Line
	1450 3700 1250 3700
Connection ~ 1250 3700
Wire Wire Line
	1250 3700 1250 3850
Wire Wire Line
	2150 3600 1900 3600
Wire Wire Line
	1900 3600 1900 3200
Wire Wire Line
	1900 3200 2100 3200
Wire Wire Line
	2100 3200 2100 3250
Wire Wire Line
	6700 4200 6700 3450
Wire Wire Line
	5650 3450 6700 3450
Wire Wire Line
	6800 3550 6800 3350
Wire Wire Line
	5650 3350 6800 3350
$EndSCHEMATC
