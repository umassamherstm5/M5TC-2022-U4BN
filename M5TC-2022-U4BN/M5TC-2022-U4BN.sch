EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "M5TC-2022-U4BN"
Date "2022-02-23"
Rev "v1.0"
Comp "M5 Makerspace"
Comment1 ""
Comment2 ""
Comment3 "LICENSE: CC BY 4.0"
Comment4 "Authors: Akshat Sahay, Chris Caron"
$EndDescr
$Comp
L Switch:SW_SPDT SW1
U 1 1 621AE4BB
P 1550 1500
F 0 "SW1" V 1850 1550 50  0000 R CNN
F 1 "SW_SPDT" V 1505 1312 50  0001 R CNN
F 2 "SparkFun-Electromechanical:SWITCH-SPDT" H 1550 1500 50  0001 C CNN
F 3 "~" H 1550 1500 50  0001 C CNN
	1    1550 1500
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_SPDT SW2
U 1 1 621B10C3
P 1950 1500
F 0 "SW2" V 2250 1550 50  0000 R CNN
F 1 "SW_SPDT" V 1905 1312 50  0001 R CNN
F 2 "SparkFun-Electromechanical:SWITCH-SPDT" H 1950 1500 50  0001 C CNN
F 3 "~" H 1950 1500 50  0001 C CNN
	1    1950 1500
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_SPDT SW3
U 1 1 621B1635
P 2350 1500
F 0 "SW3" V 2650 1550 50  0000 R CNN
F 1 "SW_SPDT" V 2305 1312 50  0001 R CNN
F 2 "SparkFun-Electromechanical:SWITCH-SPDT" H 2350 1500 50  0001 C CNN
F 3 "~" H 2350 1500 50  0001 C CNN
	1    2350 1500
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_SPDT SW4
U 1 1 621B6555
P 2750 1500
F 0 "SW4" V 3050 1550 50  0000 R CNN
F 1 "SW_SPDT" V 2705 1312 50  0001 R CNN
F 2 "SparkFun-Electromechanical:SWITCH-SPDT" H 2750 1500 50  0001 C CNN
F 3 "~" H 2750 1500 50  0001 C CNN
	1    2750 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1450 1100 1450 1300
Wire Wire Line
	1850 1100 1850 1300
Wire Wire Line
	2250 1100 2250 1300
Wire Wire Line
	2650 1100 2650 1300
NoConn ~ 1650 1300
NoConn ~ 2050 1300
NoConn ~ 2450 1300
NoConn ~ 2850 1300
$Comp
L Device:R R1
U 1 1 621B8AB3
P 1550 2250
F 0 "R1" H 1620 2296 50  0000 L CNN
F 1 "10K" H 1620 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1480 2250 50  0001 C CNN
F 3 "~" H 1550 2250 50  0001 C CNN
	1    1550 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 621B96F4
P 1950 2250
F 0 "R2" H 2020 2296 50  0000 L CNN
F 1 "10K" H 2020 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1880 2250 50  0001 C CNN
F 3 "~" H 1950 2250 50  0001 C CNN
	1    1950 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 621B99FF
P 2350 2250
F 0 "R3" H 2420 2296 50  0000 L CNN
F 1 "10K" H 2420 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2280 2250 50  0001 C CNN
F 3 "~" H 2350 2250 50  0001 C CNN
	1    2350 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 621B9C10
P 2750 2250
F 0 "R4" H 2820 2296 50  0000 L CNN
F 1 "10K" H 2820 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2680 2250 50  0001 C CNN
F 3 "~" H 2750 2250 50  0001 C CNN
	1    2750 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 621B9DDC
P 1550 2400
F 0 "#PWR08" H 1550 2150 50  0001 C CNN
F 1 "GND" H 1555 2227 50  0000 C CNN
F 2 "" H 1550 2400 50  0001 C CNN
F 3 "" H 1550 2400 50  0001 C CNN
	1    1550 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 621BA0C4
P 1950 2400
F 0 "#PWR09" H 1950 2150 50  0001 C CNN
F 1 "GND" H 1955 2227 50  0000 C CNN
F 2 "" H 1950 2400 50  0001 C CNN
F 3 "" H 1950 2400 50  0001 C CNN
	1    1950 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 621BA743
P 2350 2400
F 0 "#PWR010" H 2350 2150 50  0001 C CNN
F 1 "GND" H 2355 2227 50  0000 C CNN
F 2 "" H 2350 2400 50  0001 C CNN
F 3 "" H 2350 2400 50  0001 C CNN
	1    2350 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 621BAA18
P 2750 2400
F 0 "#PWR011" H 2750 2150 50  0001 C CNN
F 1 "GND" H 2755 2227 50  0000 C CNN
F 2 "" H 2750 2400 50  0001 C CNN
F 3 "" H 2750 2400 50  0001 C CNN
	1    2750 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1700 2350 1800
Wire Wire Line
	1950 1700 1950 1900
Wire Wire Line
	1450 1100 1850 1100
Wire Wire Line
	1850 1100 2250 1100
Connection ~ 1850 1100
Wire Wire Line
	2650 1100 2250 1100
Connection ~ 2250 1100
Text GLabel 2950 1700 2    50   Input ~ 0
SLIDE_DATA_0
Text GLabel 2950 1800 2    50   Input ~ 0
SLIDE_DATA_1
Text GLabel 2950 1900 2    50   Input ~ 0
SLIDE_DATA_2
Text GLabel 2950 2000 2    50   Input ~ 0
SLIDE_DATA_3
Wire Wire Line
	2950 1700 2750 1700
Connection ~ 2750 1700
Wire Wire Line
	2950 1800 2350 1800
Connection ~ 2350 1800
Wire Wire Line
	2950 1900 1950 1900
Connection ~ 1950 1900
Wire Wire Line
	2750 1700 2750 2100
Wire Wire Line
	2350 1800 2350 2100
Wire Wire Line
	1950 1900 1950 2100
Wire Wire Line
	1550 1700 1550 2000
Wire Wire Line
	2950 2000 1550 2000
Connection ~ 1550 2000
Wire Wire Line
	1550 2000 1550 2100
$Comp
L power:+5V #PWR07
U 1 1 621CF65F
P 1450 1000
F 0 "#PWR07" H 1450 850 50  0001 C CNN
F 1 "+5V" H 1465 1173 50  0000 C CNN
F 2 "" H 1450 1000 50  0001 C CNN
F 3 "" H 1450 1000 50  0001 C CNN
	1    1450 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1000 1450 1100
Connection ~ 1450 1100
$Comp
L SparkFun-Electromechanical:SWITCH-4PDTCNK_LOCK M1
U 1 1 621D5793
P 2200 4350
F 0 "M1" H 2200 5100 50  0000 C CNN
F 1 "SWITCH-4PDTCNK_LOCK" H 2200 5124 50  0001 C CNN
F 2 "SparkFun-Electromechanical:SWITCH-4PDT-CNK" H 2230 4500 20  0001 C CNN
F 3 "" H 2200 4350 50  0001 C CNN
	1    2200 4350
	1    0    0    -1  
$EndComp
Text GLabel 2400 3750 2    50   Input ~ 0
SLIDE_DATA_0
Text GLabel 2400 4050 2    50   Input ~ 0
SLIDE_DATA_1
Text GLabel 2400 4350 2    50   Input ~ 0
SLIDE_DATA_2
Text GLabel 2400 4650 2    50   Input ~ 0
SLIDE_DATA_3
Text GLabel 2400 3950 2    50   Input ~ 0
ROT_DATA_0
Text GLabel 2400 4250 2    50   Input ~ 0
ROT_DATA_1
Text GLabel 2400 4550 2    50   Input ~ 0
ROT_DATA_2
Text GLabel 2400 4850 2    50   Input ~ 0
ROT_DATA_3
Text GLabel 2000 3850 0    50   Input ~ 0
DATA_0
Text GLabel 2000 4150 0    50   Input ~ 0
DATA_1
Text GLabel 2000 4450 0    50   Input ~ 0
DATA_2
Text GLabel 2000 4750 0    50   Input ~ 0
DATA_3
$Comp
L Switch:SW_Coded_SH-7050 SW5
U 1 1 621DD910
P 1650 6500
F 0 "SW5" H 1650 6850 50  0000 C CNN
F 1 "SW_Coded_SH-7050" H 1707 6876 50  0001 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC12E-Switch_Vertical_H20mm" H 1350 6050 50  0001 L CNN
F 3 "https://www.nidec-copal-electronics.com/e/catalog/switch/sh-7000.pdf" H 1650 6500 50  0001 C CNN
	1    1650 6500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR012
U 1 1 621E116E
P 2250 6300
F 0 "#PWR012" H 2250 6150 50  0001 C CNN
F 1 "VCC" H 2265 6473 50  0000 C CNN
F 2 "" H 2250 6300 50  0001 C CNN
F 3 "" H 2250 6300 50  0001 C CNN
	1    2250 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 6300 2050 6300
Text Notes 2750 6350 0    50   ~ 0
10K\n
Wire Wire Line
	2050 6500 2450 6500
Wire Wire Line
	2050 6600 2300 6600
Wire Wire Line
	2050 6700 2150 6700
Connection ~ 2150 6700
Connection ~ 2300 6600
Connection ~ 2450 6500
Wire Wire Line
	2050 6400 2600 6400
Wire Wire Line
	2450 6500 2700 6500
Wire Wire Line
	2300 6600 2700 6600
Wire Wire Line
	2150 6700 2700 6700
Connection ~ 2600 6400
Wire Wire Line
	2600 6400 2700 6400
Wire Wire Line
	2600 6400 2600 7000
Text GLabel 2600 7000 2    50   Input ~ 0
ROT_DATA_0
Wire Wire Line
	2450 6500 2450 7100
Text GLabel 2600 7100 2    50   Input ~ 0
ROT_DATA_1
Text GLabel 2600 7200 2    50   Input ~ 0
ROT_DATA_2
Text GLabel 2600 7300 2    50   Input ~ 0
ROT_DATA_3
Wire Wire Line
	2450 7100 2600 7100
Wire Wire Line
	2300 7200 2600 7200
Wire Wire Line
	2300 6600 2300 7200
Wire Wire Line
	2150 7300 2600 7300
Wire Wire Line
	2150 6700 2150 7300
Text Notes 600  5650 0    75   ~ 0
Rotary (Hex) Encoder 
Text Notes 600  3150 0    75   ~ 0
Input Selection Switch (4PDT)
Text Notes 550  650  0    75   ~ 0
Slide Switches (4 x SPDT)
Text Notes 7850 650  0    75   ~ 0
Adafruit Feather 328P
Connection ~ 9450 2300
Wire Wire Line
	9450 1700 9450 2300
Wire Wire Line
	10600 1700 9450 1700
Connection ~ 9850 2200
Wire Wire Line
	9850 1800 10600 1800
Wire Wire Line
	9850 2200 9850 1800
Connection ~ 10200 2100
Wire Wire Line
	10200 1900 10600 1900
Wire Wire Line
	10200 2100 10200 1900
Text GLabel 10600 1700 2    50   Input ~ 0
DATA_0
Text GLabel 10600 1800 2    50   Input ~ 0
DATA_1
Text GLabel 10600 1900 2    50   Input ~ 0
DATA_2
Text GLabel 10600 2000 2    50   Input ~ 0
DATA_3
Wire Wire Line
	9250 2000 10600 2000
NoConn ~ 8250 2100
$Comp
L Device:R R5
U 1 1 6217EA4A
P 9450 2750
F 0 "R5" H 9520 2796 50  0000 L CNN
F 1 "330" H 9520 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 9380 2750 50  0001 C CNN
F 3 "~" H 9450 2750 50  0001 C CNN
	1    9450 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 6219072C
P 9850 2750
F 0 "R6" H 9920 2796 50  0000 L CNN
F 1 "330" H 9920 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 9780 2750 50  0001 C CNN
F 3 "~" H 9850 2750 50  0001 C CNN
	1    9850 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 62190E81
P 10200 2750
F 0 "R7" H 10270 2796 50  0000 L CNN
F 1 "330" H 10270 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 10130 2750 50  0001 C CNN
F 3 "~" H 10200 2750 50  0001 C CNN
	1    10200 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 621915F6
P 10600 2750
F 0 "R8" H 10670 2796 50  0000 L CNN
F 1 "330" H 10670 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 10530 2750 50  0001 C CNN
F 3 "~" H 10600 2750 50  0001 C CNN
	1    10600 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 2300 9450 2300
Wire Wire Line
	9250 2200 9850 2200
Wire Wire Line
	9250 2100 10200 2100
$Comp
L power:GND #PWR06
U 1 1 6217D5B8
P 10600 2900
F 0 "#PWR06" H 10600 2650 50  0001 C CNN
F 1 "GND" H 10605 2727 50  0000 C CNN
F 2 "" H 10600 2900 50  0001 C CNN
F 3 "" H 10600 2900 50  0001 C CNN
	1    10600 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 6217D3BB
P 10200 2900
F 0 "#PWR05" H 10200 2650 50  0001 C CNN
F 1 "GND" H 10205 2727 50  0000 C CNN
F 2 "" H 10200 2900 50  0001 C CNN
F 3 "" H 10200 2900 50  0001 C CNN
	1    10200 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6217D1CA
P 9850 2900
F 0 "#PWR04" H 9850 2650 50  0001 C CNN
F 1 "GND" H 9855 2727 50  0000 C CNN
F 2 "" H 9850 2900 50  0001 C CNN
F 3 "" H 9850 2900 50  0001 C CNN
	1    9850 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 6217CFE5
P 9450 2900
F 0 "#PWR03" H 9450 2650 50  0001 C CNN
F 1 "GND" H 9455 2727 50  0000 C CNN
F 2 "" H 9450 2900 50  0001 C CNN
F 3 "" H 9450 2900 50  0001 C CNN
	1    9450 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 2000 10600 2300
Wire Wire Line
	10200 2100 10200 2300
Wire Wire Line
	9850 2200 9850 2300
$Comp
L Device:LED D4
U 1 1 6217C32A
P 10600 2450
F 0 "D4" V 10639 2332 50  0000 R CNN
F 1 "LED" V 10548 2332 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 10600 2450 50  0001 C CNN
F 3 "~" H 10600 2450 50  0001 C CNN
	1    10600 2450
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 6217C324
P 10200 2450
F 0 "D3" V 10239 2332 50  0000 R CNN
F 1 "LED" V 10148 2332 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 10200 2450 50  0001 C CNN
F 3 "~" H 10200 2450 50  0001 C CNN
	1    10200 2450
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 62178C23
P 9850 2450
F 0 "D2" V 9889 2332 50  0000 R CNN
F 1 "LED" V 9798 2332 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 9850 2450 50  0001 C CNN
F 3 "~" H 9850 2450 50  0001 C CNN
	1    9850 2450
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 621777A7
P 9450 2450
F 0 "D1" V 9489 2332 50  0000 R CNN
F 1 "LED" V 9398 2332 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 9450 2450 50  0001 C CNN
F 3 "~" H 9450 2450 50  0001 C CNN
	1    9450 2450
	0    -1   -1   0   
$EndComp
NoConn ~ 8250 3100
NoConn ~ 8250 3000
NoConn ~ 8250 2800
NoConn ~ 8250 2700
NoConn ~ 9250 2500
NoConn ~ 9250 2400
Text GLabel 8250 2500 0    50   Input ~ 0
K3
Text GLabel 8250 2400 0    50   Input ~ 0
K2
Text GLabel 8250 2300 0    50   Input ~ 0
K1
Text GLabel 8250 2000 0    50   Input ~ 0
G
Text GLabel 8250 1900 0    50   Input ~ 0
F
Text GLabel 8250 1800 0    50   Input ~ 0
E
Text GLabel 8250 1700 0    50   Input ~ 0
D
Text GLabel 8250 1600 0    50   Input ~ 0
C
Text GLabel 8250 1500 0    50   Input ~ 0
B
Text GLabel 8250 1400 0    50   Input ~ 0
A
$Comp
L power:GND #PWR01
U 1 1 62172933
P 8750 3500
F 0 "#PWR01" H 8750 3250 50  0001 C CNN
F 1 "GND" H 8755 3327 50  0000 C CNN
F 2 "" H 8750 3500 50  0001 C CNN
F 3 "" H 8750 3500 50  0001 C CNN
	1    8750 3500
	1    0    0    -1  
$EndComp
NoConn ~ 9250 1800
NoConn ~ 9250 1700
NoConn ~ 9250 1400
NoConn ~ 8850 1000
$Comp
L power:+5V #PWR02
U 1 1 62172477
P 8950 1000
F 0 "#PWR02" H 8950 850 50  0001 C CNN
F 1 "+5V" H 8965 1173 50  0000 C CNN
F 2 "" H 8950 1000 50  0001 C CNN
F 3 "" H 8950 1000 50  0001 C CNN
	1    8950 1000
	1    0    0    -1  
$EndComp
NoConn ~ 8650 1000
$Comp
L MCU_Module_Feather:Adafruit_Feather_328P A1
U 1 1 6216D6BD
P 8750 2200
F 0 "A1" H 8400 3350 50  0000 C CNN
F 1 "Feather 328P" H 9000 950 40  0000 C CNN
F 2 "Module_Feather:Adafruit_Feather" H 8850 850 50  0001 L CNN
F 3 "" H 8750 1400 50  0001 C CNN
	1    8750 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 62293085
P 2850 6400
F 0 "R9" V 2850 6400 50  0000 C CNN
F 1 "R" V 2734 6400 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2780 6400 50  0001 C CNN
F 3 "~" H 2850 6400 50  0001 C CNN
	1    2850 6400
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 6229ACA4
P 2850 6500
F 0 "R10" V 2850 6500 50  0000 C CNN
F 1 "R" V 2734 6500 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2780 6500 50  0001 C CNN
F 3 "~" H 2850 6500 50  0001 C CNN
	1    2850 6500
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 6229BBFE
P 2850 6600
F 0 "R11" V 2850 6600 50  0000 C CNN
F 1 "R" V 2966 6600 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2780 6600 50  0001 C CNN
F 3 "~" H 2850 6600 50  0001 C CNN
	1    2850 6600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 6229CBA9
P 2850 6700
F 0 "R12" V 2850 6700 50  0000 C CNN
F 1 "R" V 2734 6700 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2780 6700 50  0001 C CNN
F 3 "~" H 2850 6700 50  0001 C CNN
	1    2850 6700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 6229F148
P 3100 6700
F 0 "#PWR013" H 3100 6450 50  0001 C CNN
F 1 "GND" H 3105 6527 50  0000 C CNN
F 2 "" H 3100 6700 50  0001 C CNN
F 3 "" H 3100 6700 50  0001 C CNN
	1    3100 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 6700 3100 6700
Wire Wire Line
	3000 6700 3000 6600
Connection ~ 3000 6700
Wire Wire Line
	3000 6600 3000 6500
Connection ~ 3000 6600
Wire Wire Line
	3000 6500 3000 6400
Connection ~ 3000 6500
Text Notes 9800 1650 0    50   ~ 0
DATA[0:3] LEDs
Wire Notes Line
	550  7950 550  700 
Wire Notes Line
	4300 500  4300 7750
Wire Notes Line
	550  3000 4300 3000
Wire Notes Line
	550  5500 4300 5500
Wire Notes Line
	6950 7650 6950 6400
Wire Notes Line
	6950 6400 11200 6400
Wire Notes Line
	500  7750 6950 7750
Wire Notes Line
	7800 6400 7800 400 
Wire Notes Line
	11200 500  11200 6500
Wire Notes Line
	500  500  11200 500 
Wire Notes Line
	4300 4500 7800 4500
Text Notes 4350 4650 0    75   ~ 0
Testpoints\n
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 6232AE3E
P 5000 5250
F 0 "J1" V 4872 5330 50  0000 L CNN
F 1 "VCC" V 4963 5330 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_3.0x3.0mm" H 5000 5250 50  0001 C CNN
F 3 "~" H 5000 5250 50  0001 C CNN
	1    5000 5250
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR014
U 1 1 6232D820
P 5000 5050
F 0 "#PWR014" H 5000 4900 50  0001 C CNN
F 1 "VCC" H 5015 5223 50  0000 C CNN
F 2 "" H 5000 5050 50  0001 C CNN
F 3 "" H 5000 5050 50  0001 C CNN
	1    5000 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 6232DC5B
P 5500 5100
F 0 "#PWR015" H 5500 4850 50  0001 C CNN
F 1 "GND" H 5505 4927 50  0000 C CNN
F 2 "" H 5500 5100 50  0001 C CNN
F 3 "" H 5500 5100 50  0001 C CNN
	1    5500 5100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 6232C0D6
P 5500 4900
F 0 "J2" V 5372 4980 50  0000 L CNN
F 1 "GND" V 5463 4980 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_3.0x3.0mm" H 5500 4900 50  0001 C CNN
F 3 "~" H 5500 4900 50  0001 C CNN
	1    5500 4900
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J7
U 1 1 62338610
P 6950 4850
F 0 "J7" H 7030 4846 50  0000 L CNN
F 1 "K1" H 7030 4801 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_2.0x2.0mm" H 6950 4850 50  0001 C CNN
F 3 "~" H 6950 4850 50  0001 C CNN
	1    6950 4850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J8
U 1 1 6233D5E3
P 6950 5000
F 0 "J8" H 7030 4996 50  0000 L CNN
F 1 "K2" H 7030 4951 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_2.0x2.0mm" H 6950 5000 50  0001 C CNN
F 3 "~" H 6950 5000 50  0001 C CNN
	1    6950 5000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J9
U 1 1 6233DB6B
P 6950 5150
F 0 "J9" H 7030 5146 50  0000 L CNN
F 1 "K3" H 7030 5101 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_2.0x2.0mm" H 6950 5150 50  0001 C CNN
F 3 "~" H 6950 5150 50  0001 C CNN
	1    6950 5150
	1    0    0    -1  
$EndComp
Text GLabel 6750 4850 0    50   Input ~ 0
K1
Text GLabel 6750 5000 0    50   Input ~ 0
K2
Text GLabel 6750 5150 0    50   Input ~ 0
K3
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 623464AE
P 5500 5600
F 0 "J3" H 5580 5596 50  0000 L CNN
F 1 "DATA_0" H 5580 5551 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_2.0x2.0mm" H 5500 5600 50  0001 C CNN
F 3 "~" H 5500 5600 50  0001 C CNN
	1    5500 5600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 62346C76
P 5500 5750
F 0 "J4" H 5580 5746 50  0000 L CNN
F 1 "DATA_1" H 5580 5701 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_2.0x2.0mm" H 5500 5750 50  0001 C CNN
F 3 "~" H 5500 5750 50  0001 C CNN
	1    5500 5750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 62347F17
P 5500 5900
F 0 "J5" H 5580 5896 50  0000 L CNN
F 1 "DATA_2" H 5580 5851 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_2.0x2.0mm" H 5500 5900 50  0001 C CNN
F 3 "~" H 5500 5900 50  0001 C CNN
	1    5500 5900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 6234886E
P 5500 6050
F 0 "J6" H 5580 6046 50  0000 L CNN
F 1 "DATA_3" H 5580 6001 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_2.0x2.0mm" H 5500 6050 50  0001 C CNN
F 3 "~" H 5500 6050 50  0001 C CNN
	1    5500 6050
	1    0    0    -1  
$EndComp
Text GLabel 5300 5600 0    50   Input ~ 0
DATA_0
Text GLabel 5300 5750 0    50   Input ~ 0
DATA_1
Text GLabel 5300 5900 0    50   Input ~ 0
DATA_2
Text GLabel 5300 6050 0    50   Input ~ 0
DATA_3
$Comp
L Connector_Generic:Conn_01x01 J10
U 1 1 6234DBAF
P 6950 5600
F 0 "J10" H 7030 5596 50  0000 L CNN
F 1 "SLIDE_DATA_0" H 7030 5551 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_2.0x2.0mm" H 6950 5600 50  0001 C CNN
F 3 "~" H 6950 5600 50  0001 C CNN
	1    6950 5600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J11
U 1 1 6234DBB5
P 6950 5750
F 0 "J11" H 7030 5746 50  0000 L CNN
F 1 "SLIDE_DATA_1" H 7030 5701 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_2.0x2.0mm" H 6950 5750 50  0001 C CNN
F 3 "~" H 6950 5750 50  0001 C CNN
	1    6950 5750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J12
U 1 1 6234DBBB
P 6950 5900
F 0 "J12" H 7030 5896 50  0000 L CNN
F 1 "SLIDE_DATA_2" H 7030 5851 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_2.0x2.0mm" H 6950 5900 50  0001 C CNN
F 3 "~" H 6950 5900 50  0001 C CNN
	1    6950 5900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J13
U 1 1 6234DBC1
P 6950 6050
F 0 "J13" H 7030 6046 50  0000 L CNN
F 1 "SLIDE_DATA_3" H 7030 6001 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_2.0x2.0mm" H 6950 6050 50  0001 C CNN
F 3 "~" H 6950 6050 50  0001 C CNN
	1    6950 6050
	1    0    0    -1  
$EndComp
Text GLabel 6750 5600 0    50   Input ~ 0
SLIDE_DATA_0
Text GLabel 6750 5750 0    50   Input ~ 0
SLIDE_DATA_1
Text GLabel 6750 5900 0    50   Input ~ 0
SLIDE_DATA_2
Text GLabel 6750 6050 0    50   Input ~ 0
SLIDE_DATA_3
Wire Notes Line
	7800 3950 11200 3950
$EndSCHEMATC