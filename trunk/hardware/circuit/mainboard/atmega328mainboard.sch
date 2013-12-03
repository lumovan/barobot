EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:opendous
LIBS:atmega328mainboard-cache
EELAYER 27 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title ""
Date "21 nov 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R1
U 1 1 525FBAED
P 3600 6750
F 0 "R1" V 3680 6750 40  0000 C CNN
F 1 "10k" V 3607 6751 40  0000 C CNN
F 2 "SM1206" V 3530 6750 30  0000 C CNN
F 3 "~" H 3600 6750 30  0000 C CNN
	1    3600 6750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR1
U 1 1 525FBAFC
P 750 3550
F 0 "#PWR1" H 750 3550 30  0001 C CNN
F 1 "GND" H 750 3480 30  0001 C CNN
F 2 "" H 750 3550 60  0000 C CNN
F 3 "" H 750 3550 60  0000 C CNN
	1    750  3550
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 525FBB28
P 950 3100
F 0 "C4" H 950 3200 40  0000 L CNN
F 1 "100nF" H 956 3015 40  0000 L CNN
F 2 "SM1206" H 988 2950 30  0000 C CNN
F 3 "~" H 950 3100 60  0000 C CNN
	1    950  3100
	0    1    1    0   
$EndComp
$Comp
L C C5
U 1 1 525FBDD0
P 1750 3400
F 0 "C5" H 1750 3500 40  0000 L CNN
F 1 "100nF" H 1756 3315 40  0000 L CNN
F 2 "SM1206" H 1788 3250 30  0000 C CNN
F 3 "~" H 1750 3400 60  0000 C CNN
	1    1750 3400
	0    1    1    0   
$EndComp
$Comp
L C C3
U 1 1 525FBE32
P 750 2550
F 0 "C3" H 750 2650 40  0000 L CNN
F 1 "100nF" H 756 2465 40  0000 L CNN
F 2 "SM1206" H 788 2400 30  0000 C CNN
F 3 "~" H 750 2550 60  0000 C CNN
	1    750  2550
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 525FCDA0
P 4950 4300
F 0 "R5" V 5030 4300 40  0000 C CNN
F 1 "330" V 4957 4301 40  0000 C CNN
F 2 "SM1206" V 4880 4300 30  0000 C CNN
F 3 "~" H 4950 4300 30  0000 C CNN
	1    4950 4300
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 525FCDAD
P 4950 4400
F 0 "R6" V 5030 4400 40  0000 C CNN
F 1 "330" V 4957 4401 40  0000 C CNN
F 2 "SM1206" V 4880 4400 30  0000 C CNN
F 3 "~" H 4950 4400 30  0000 C CNN
	1    4950 4400
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 525FCDB3
P 4950 4600
F 0 "R7" V 5030 4600 40  0000 C CNN
F 1 "330" V 4957 4601 40  0000 C CNN
F 2 "SM1206" V 4880 4600 30  0000 C CNN
F 3 "~" H 4950 4600 30  0000 C CNN
	1    4950 4600
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 525FCDC2
P 4950 5100
F 0 "R3" V 5030 5100 40  0000 C CNN
F 1 "330" V 4957 5101 40  0000 C CNN
F 2 "SM1206" V 4880 5100 30  0000 C CNN
F 3 "~" H 4950 5100 30  0000 C CNN
	1    4950 5100
	0    1    1    0   
$EndComp
Text Notes 4750 1000 0    60   ~ 0
CARRET CONNECTOR\n1 - VCC 6V\n2 - MOSI\n3 - MISO\n4 - SCK\n5 - SDA\n6 - VCC 5V\n7 - GND\n8 - GND\n9 - SCL\n10 - CARRET_RESET\n
$Comp
L CRYSTAL X1
U 1 1 52664B72
P 3700 7500
F 0 "X1" H 3700 7650 60  0000 C CNN
F 1 "16MHz" H 3700 7350 60  0000 C CNN
F 2 "~" H 3700 7500 60  0000 C CNN
F 3 "~" H 3700 7500 60  0000 C CNN
	1    3700 7500
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 52664D88
P 4000 7800
F 0 "C1" H 4000 7900 40  0000 L CNN
F 1 "27p" H 4006 7715 40  0000 L CNN
F 2 "~" H 4038 7650 30  0000 C CNN
F 3 "~" H 4000 7800 60  0000 C CNN
	1    4000 7800
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 52664FDD
P 3400 7800
F 0 "C2" H 3400 7900 40  0000 L CNN
F 1 "27p" H 3406 7715 40  0000 L CNN
F 2 "~" H 3438 7650 30  0000 C CNN
F 3 "~" H 3400 7800 60  0000 C CNN
	1    3400 7800
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA328P-A IC1
U 1 1 5277F6D5
P 3000 3900
F 0 "IC1" H 2250 5150 40  0000 L BNN
F 1 "ATMEGA328P-A" H 3400 2500 40  0000 L BNN
F 2 "TQFP32" H 3000 3900 30  0000 C CIN
F 3 "" H 3000 3900 60  0000 C CNN
	1    3000 3900
	1    0    0    -1  
$EndComp
Text Label 4000 3400 0    60   ~ 0
PB6
Text Label 4000 3500 0    60   ~ 0
PB7
Entry Wire Line
	4000 7150 4100 7050
Entry Wire Line
	4000 7250 4100 7150
Text Label 4000 7250 0    60   ~ 0
PB6
Entry Wire Line
	4000 3300 4100 3200
Entry Wire Line
	4000 3200 4100 3100
Entry Wire Line
	4000 3100 4100 3000
Entry Wire Line
	4000 3000 4100 2900
Entry Wire Line
	4000 2800 4100 2700
Entry Wire Line
	4000 3500 4100 3400
Entry Wire Line
	4000 3400 4100 3300
Entry Wire Line
	4000 3650 4100 3550
Entry Wire Line
	4000 3750 4100 3650
Entry Wire Line
	4000 3850 4100 3750
Entry Wire Line
	4000 3950 4100 3850
Entry Wire Line
	4000 4050 4100 3950
Entry Wire Line
	4000 4150 4100 4050
Entry Wire Line
	4000 4250 4100 4150
Entry Wire Line
	4000 4400 4100 4300
Entry Wire Line
	4000 4600 4100 4500
Entry Wire Line
	4000 4700 4100 4600
Entry Wire Line
	4000 4800 4100 4700
Entry Wire Line
	4000 4900 4100 4800
Entry Wire Line
	4000 5000 4100 4900
Entry Wire Line
	4000 5100 4100 5000
Text Label 4000 2800 0    60   ~ 0
PB0
Text Label 4000 3000 0    60   ~ 0
PB2
Text Label 4000 3100 0    60   ~ 0
PB3
Text Label 4000 3200 0    60   ~ 0
PB4
Text Label 4000 3300 0    60   ~ 0
PB5
Text Label 4000 3650 0    60   ~ 0
PC0
Text Label 4000 3750 0    60   ~ 0
PC1
Text Label 4000 3850 0    60   ~ 0
PC2
Text Label 4000 3950 0    60   ~ 0
PC3
Text Label 4000 4050 0    60   ~ 0
PC4
Text Label 4000 4150 0    60   ~ 0
PC5
Text Label 4000 4250 0    60   ~ 0
PC6
Text Label 4000 4400 0    60   ~ 0
PD0
Text Label 4000 4600 0    60   ~ 0
PD2
Text Label 4000 4700 0    60   ~ 0
PD3
Text Label 4000 4800 0    60   ~ 0
PD4
Text Label 4000 4900 0    60   ~ 0
PD5
Text Label 4000 5000 0    60   ~ 0
PD6
Text Label 4000 5100 0    60   ~ 0
PD7
Text Label 4000 4500 0    60   ~ 0
PD1
Entry Wire Line
	4000 2900 4100 2800
Text Label 4000 2900 0    60   ~ 0
PB1
Entry Wire Line
	4000 6750 4100 6650
Text Label 4200 1850 0    60   ~ 0
PC5
Text Label 4200 1150 0    60   ~ 0
PB3
Text Label 4200 1250 0    60   ~ 0
PB4
Text Label 4200 1350 0    60   ~ 0
PB5
Text Label 4200 1450 0    60   ~ 0
PC4
Text Label 4000 6750 0    60   ~ 0
PC6
Entry Wire Line
	4500 4400 4600 4300
Entry Wire Line
	4500 4500 4600 4400
Text Label 6750 3900 0    60   ~ 0
PD5
Text Label 4600 4400 0    60   ~ 0
PD6
Text Label 6750 3400 0    60   ~ 0
PC2
Text Label 6750 3200 0    60   ~ 0
PC0
Text Label 6750 3300 0    60   ~ 0
PC1
Text GLabel 750  3500 0    60   Input ~ 0
GND
$Comp
L GND #PWR2
U 1 1 5278791A
P 2100 5400
F 0 "#PWR2" H 2100 5400 30  0001 C CNN
F 1 "GND" H 2100 5330 30  0001 C CNN
F 2 "~" H 2100 5400 60  0000 C CNN
F 3 "~" H 2100 5400 60  0000 C CNN
	1    2100 5400
	1    0    0    -1  
$EndComp
Text GLabel 2100 5300 0    60   Input ~ 0
GND
Entry Wire Line
	4100 5700 4200 5600
Entry Wire Line
	4100 5800 4200 5700
Text GLabel 4200 5800 0    60   Input ~ 0
GND
Text Label 4200 5600 0    60   ~ 0
PD0
Text Label 4200 5700 0    60   ~ 0
PD1
Text Notes 5700 6000 0    60   ~ 0
SERIAL 2 ANDROID\n( PL2303 )\n1 - VCC\n2 - RX\n3 - TX\n4 - GND
Text Label 6750 3500 0    60   ~ 0
PC3
Text Label 4200 1950 0    60   ~ 0
PD7
Text Label 6750 1150 0    60   ~ 0
PB0
Text Label 6750 3800 0    60   ~ 0
PD4
Text Label 4600 4300 0    60   ~ 0
PD3
Text Label 4200 2400 0    60   ~ 0
PD2
$Comp
L CONN_1 P2
U 1 1 527889C9
P 1550 4150
F 0 "P2" H 1630 4150 40  0000 L CNN
F 1 "CONN_1" H 1550 4205 30  0001 C CNN
F 2 "" H 1550 4150 60  0000 C CNN
F 3 "" H 1550 4150 60  0000 C CNN
	1    1550 4150
	-1   0    0    -1  
$EndComp
$Comp
L CONN_1 P3
U 1 1 527889D6
P 1550 4250
F 0 "P3" H 1630 4250 40  0000 L CNN
F 1 "CONN_1" H 1550 4305 30  0001 C CNN
F 2 "" H 1550 4250 60  0000 C CNN
F 3 "" H 1550 4250 60  0000 C CNN
	1    1550 4250
	-1   0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG1
U 1 1 5278BAD7
P 750 1350
F 0 "#FLG1" H 750 1445 30  0001 C CNN
F 1 "PWR_FLAG" H 750 1530 30  0000 C CNN
F 2 "~" H 750 1350 60  0000 C CNN
F 3 "~" H 750 1350 60  0000 C CNN
	1    750  1350
	1    0    0    -1  
$EndComp
$Comp
L CONN_4 P4
U 1 1 5278C4D5
P 5900 4450
F 0 "P4" V 5850 4450 50  0000 C CNN
F 1 "CONN_4" V 5950 4450 50  0000 C CNN
F 2 "" H 5900 4450 60  0000 C CNN
F 3 "" H 5900 4450 60  0000 C CNN
	1    5900 4450
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P7
U 1 1 5278C942
P 5550 4750
F 0 "P7" V 5500 4750 40  0000 C CNN
F 1 "CONN_2" V 5600 4750 40  0000 C CNN
F 2 "" H 5550 4750 60  0000 C CNN
F 3 "" H 5550 4750 60  0000 C CNN
	1    5550 4750
	0    -1   -1   0   
$EndComp
Text GLabel 750  1450 0    60   Input ~ 0
PWR
$Comp
L GND #PWR3
U 1 1 5278CEC1
P 3400 8250
F 0 "#PWR3" H 3400 8250 30  0001 C CNN
F 1 "GND" H 3400 8180 30  0001 C CNN
F 2 "~" H 3400 8250 60  0000 C CNN
F 3 "~" H 3400 8250 60  0000 C CNN
	1    3400 8250
	1    0    0    -1  
$EndComp
Text GLabel 3400 8100 0    60   Input ~ 0
GND
$Comp
L CONN_10 P1
U 1 1 528BAEB3
P 4550 1500
F 0 "P1" V 4500 1500 60  0000 C CNN
F 1 "CONN_10" V 4600 1500 60  0000 C CNN
F 2 "" H 4550 1500 60  0000 C CNN
F 3 "" H 4550 1500 60  0000 C CNN
	1    4550 1500
	1    0    0    -1  
$EndComp
Entry Wire Line
	4100 1150 4200 1050
Entry Wire Line
	4100 1250 4200 1150
Entry Wire Line
	4100 1350 4200 1250
Entry Wire Line
	4100 1450 4200 1350
Entry Wire Line
	4100 1550 4200 1450
Entry Wire Line
	4100 1650 4200 1550
Entry Wire Line
	4100 1750 4200 1650
Entry Wire Line
	4100 1850 4200 1750
Entry Wire Line
	4100 1950 4200 1850
Entry Wire Line
	4100 2050 4200 1950
Text Label 4200 1050 0    60   ~ 0
VCC6
Text Label 4200 1750 0    60   ~ 0
GND
Text Label 4200 1650 0    60   ~ 0
GND
Entry Wire Line
	4100 5900 4200 5800
Text Label 4200 5800 0    60   ~ 0
GND
Text Label 4200 1550 0    60   ~ 0
VCC
Entry Wire Line
	4500 4000 4600 3900
Text Label 4500 4000 0    60   ~ 0
VCC
Entry Wire Line
	4000 6950 4100 6850
Text Label 4000 6950 0    60   ~ 0
VCC
Entry Wire Line
	4500 5200 4600 5100
Text Notes 7300 1050 0    60   ~ 0
UPANEL CONNECTOR\n1 - SCL (28)\n2 - UPANEL_RESET\n3 - MOSI (17)\n4 - MISO (18)\n5 - SCK (19)\n6 - SDA (27)\n7 - VCC\n8 - GND (8)\n
Entry Wire Line
	6650 1150 6750 1050
Entry Wire Line
	6650 1250 6750 1150
Entry Wire Line
	6650 1350 6750 1250
Entry Wire Line
	6650 1450 6750 1350
Entry Wire Line
	6650 1550 6750 1450
Entry Wire Line
	6650 1650 6750 1550
Entry Wire Line
	6650 1750 6750 1650
Entry Wire Line
	6650 1850 6750 1750
Text Label 6750 1050 0    60   ~ 0
PC5
$Comp
L CONN_8 P5
U 1 1 528BF901
P 7100 1400
F 0 "P5" V 7050 1400 60  0000 C CNN
F 1 "CONN_8" V 7150 1400 60  0000 C CNN
F 2 "" H 7100 1400 60  0000 C CNN
F 3 "" H 7100 1400 60  0000 C CNN
	1    7100 1400
	1    0    0    -1  
$EndComp
Text Label 6750 1250 0    60   ~ 0
PB3
Text Label 6750 1350 0    60   ~ 0
PB4
Text Label 6750 1450 0    60   ~ 0
PB5
Text Label 6750 1550 0    60   ~ 0
PC4
Text Label 6750 1650 0    60   ~ 0
VCC
Text Label 6750 1750 0    60   ~ 0
GND
Text Notes 7300 3150 0    60   ~ 0
Pololu STEPPER X (left)\n1 - ENABLE\n2 - MS1\n3 - MS2\n4 - MS3\n5 - RESET\n6 - SLEEP\n7 - STEP\n8 - DIR\n
Text Notes 7300 2300 0    60   ~ 0
Pololu STEPPER X (right)\n1 - VMOT\n2 - GND\n3 - 2B\n4 - 2A\n5 - 1A\n6 - 1B\n7 - VCC 5V\n8 - GND\n
$Comp
L CONN_8 P6
U 1 1 528C0124
P 7100 2650
F 0 "P6" V 7050 2650 60  0000 C CNN
F 1 "CONN_8" V 7150 2650 60  0000 C CNN
F 2 "" H 7100 2650 60  0000 C CNN
F 3 "" H 7100 2650 60  0000 C CNN
	1    7100 2650
	1    0    0    -1  
$EndComp
Entry Wire Line
	4500 4700 4600 4600
$Comp
L CONN_8 P8
U 1 1 528C0779
P 7100 3550
F 0 "P8" V 7050 3550 60  0000 C CNN
F 1 "CONN_8" V 7150 3550 60  0000 C CNN
F 2 "" H 7100 3550 60  0000 C CNN
F 3 "" H 7100 3550 60  0000 C CNN
	1    7100 3550
	1    0    0    -1  
$EndComp
Entry Wire Line
	6650 2400 6750 2300
Entry Wire Line
	6650 2500 6750 2400
Entry Wire Line
	6650 2600 6750 2500
Entry Wire Line
	6650 2700 6750 2600
Entry Wire Line
	6650 2800 6750 2700
Entry Wire Line
	6650 2900 6750 2800
Entry Wire Line
	6650 3000 6750 2900
Entry Wire Line
	6650 3100 6750 3000
Entry Wire Line
	6650 3300 6750 3200
Entry Wire Line
	6650 3400 6750 3300
Entry Wire Line
	6650 3500 6750 3400
Entry Wire Line
	6650 3900 6750 3800
Entry Wire Line
	6650 4000 6750 3900
Text Label 6750 3000 0    60   ~ 0
GND
$Comp
L CONN_4 P9
U 1 1 528C094D
P 6200 2200
F 0 "P9" V 6150 2200 50  0000 C CNN
F 1 "CONN_4" V 6250 2200 50  0000 C CNN
F 2 "" H 6200 2200 60  0000 C CNN
F 3 "" H 6200 2200 60  0000 C CNN
	1    6200 2200
	-1   0    0    -1  
$EndComp
Entry Wire Line
	6550 2050 6650 1950
Entry Wire Line
	6550 2150 6650 2050
Entry Wire Line
	6550 2250 6650 2150
Entry Wire Line
	6550 2350 6650 2250
Text Label 6550 2050 0    60   ~ 0
2B
Text Label 6550 2150 0    60   ~ 0
2A
Text Label 6550 2250 0    60   ~ 0
1A
Text Label 6550 2350 0    60   ~ 0
1B
Text Label 6750 2500 0    60   ~ 0
2B
Text Label 6750 2600 0    60   ~ 0
2A
Text Label 6750 2700 0    60   ~ 0
1A
Text Label 6750 2800 0    60   ~ 0
1B
Text Label 6750 2900 0    60   ~ 0
VCC
$Comp
L SW_PUSH_SMALL SW1
U 1 1 528C0CDE
P 3750 6400
F 0 "SW1" H 3900 6510 30  0000 C CNN
F 1 "RESET_BTN" H 3750 6321 30  0000 C CNN
F 2 "~" H 3750 6400 60  0000 C CNN
F 3 "~" H 3750 6400 60  0000 C CNN
	1    3750 6400
	1    0    0    -1  
$EndComp
Entry Wire Line
	4000 6250 4100 6150
Text Label 4000 6250 0    60   ~ 0
GND
Wire Wire Line
	2100 3100 1150 3100
Wire Wire Line
	750  2750 750  3550
Wire Wire Line
	1950 3400 2100 3400
Wire Wire Line
	750  3400 1550 3400
Connection ~ 750  3100
Wire Wire Line
	750  1750 3750 1750
Wire Wire Line
	750  1350 750  2350
Wire Wire Line
	5200 4300 5550 4300
Wire Wire Line
	4000 4500 4100 4500
Connection ~ 750  1750
Connection ~ 5550 4300
Wire Wire Line
	2100 1750 2100 3100
Wire Wire Line
	2100 4900 2100 5400
Wire Wire Line
	4000 7250 4000 7600
Wire Bus Line
	4100 650  4100 7150
Connection ~ 4000 7500
Wire Wire Line
	3400 7150 3400 7600
Wire Wire Line
	4000 8000 3400 8000
Connection ~ 2100 2800
Wire Wire Line
	4000 6750 3850 6750
Connection ~ 750  3400
Connection ~ 2100 5000
Connection ~ 2100 5100
Wire Wire Line
	2100 4150 1700 4150
Wire Wire Line
	1700 4250 2100 4250
Connection ~ 2100 2900
Wire Wire Line
	5200 4400 5550 4400
Wire Wire Line
	5200 4600 5550 4600
Wire Wire Line
	3400 8000 3400 8250
Wire Wire Line
	5450 5100 5200 5100
Wire Bus Line
	4500 4000 4500 5300
Wire Wire Line
	4000 6950 3350 6950
Wire Wire Line
	3350 6950 3350 6750
Wire Bus Line
	4100 650  6650 650 
Wire Bus Line
	6650 650  6650 4000
Wire Wire Line
	5550 4500 6100 4500
Wire Wire Line
	6100 3900 6100 5100
Wire Wire Line
	6100 5100 5650 5100
Connection ~ 6100 4500
Wire Bus Line
	4500 5300 4100 5300
Wire Wire Line
	6100 3900 4600 3900
Wire Wire Line
	4600 4300 4700 4300
Wire Wire Line
	4700 4400 4600 4400
Wire Wire Line
	4600 4600 4700 4600
Wire Wire Line
	4700 5100 4600 5100
Wire Wire Line
	3850 6750 3850 6500
Wire Wire Line
	4000 6250 3650 6250
Wire Wire Line
	3650 6250 3650 6300
Wire Wire Line
	6750 3700 6750 3600
Text Label 6750 2400 0    60   ~ 0
GND
$Comp
L CONN_4 P10
U 1 1 528C1188
P 1300 950
F 0 "P10" V 1250 950 50  0000 C CNN
F 1 "CONN_4" V 1350 950 50  0000 C CNN
F 2 "" H 1300 950 60  0000 C CNN
F 3 "" H 1300 950 60  0000 C CNN
	1    1300 950 
	-1   0    0    -1  
$EndComp
Text Notes 850  650  0    60   ~ 0
POWER INPUT\n1. 12V\n2. 5V\n3. 6V\n4. GND
Entry Wire Line
	4000 800  4100 700 
Entry Wire Line
	4000 900  4100 800 
Entry Wire Line
	4000 1000 4100 900 
Entry Wire Line
	4000 1100 4100 1000
Wire Wire Line
	1650 800  4000 800 
Wire Wire Line
	1650 900  4000 900 
Wire Wire Line
	1650 1000 4000 1000
Wire Wire Line
	1650 1100 4000 1100
Text Label 1650 1100 0    60   ~ 0
GND
Text Label 1650 1000 0    60   ~ 0
VCC6
Text Label 1650 900  0    60   ~ 0
VCC
Text Label 1650 800  0    60   ~ 0
VCC12
Text Label 6750 2300 0    60   ~ 0
VCC12
Entry Wire Line
	4100 5600 4200 5500
$Comp
L CONN_4 P11
U 1 1 528C1614
P 6850 5650
F 0 "P11" V 6800 5650 50  0000 C CNN
F 1 "CONN_4" V 6900 5650 50  0000 C CNN
F 2 "" H 6850 5650 60  0000 C CNN
F 3 "" H 6850 5650 60  0000 C CNN
	1    6850 5650
	1    0    0    -1  
$EndComp
Text Label 4200 5500 0    60   ~ 0
VCC
Wire Wire Line
	4200 5800 6500 5800
Wire Wire Line
	4200 5700 6500 5700
Wire Wire Line
	4200 5600 6500 5600
$Comp
L R R2
U 1 1 528C16E9
P 4650 5500
F 0 "R2" V 4730 5500 40  0000 C CNN
F 1 "R" V 4657 5501 40  0000 C CNN
F 2 "~" V 4580 5500 30  0000 C CNN
F 3 "~" H 4650 5500 30  0000 C CNN
	1    4650 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 5500 5000 5500
Wire Wire Line
	4400 5500 4200 5500
Text Label 4600 5100 0    60   ~ 0
PB2
Text Label 4600 4600 0    60   ~ 0
PB1
$Comp
L CONN_1 P12
U 1 1 528C1E03
P 4500 2400
F 0 "P12" H 4580 2400 40  0000 L CNN
F 1 "CONN_1" H 4500 2455 30  0001 C CNN
F 2 "" H 4500 2400 60  0000 C CNN
F 3 "" H 4500 2400 60  0000 C CNN
	1    4500 2400
	1    0    0    -1  
$EndComp
Entry Wire Line
	4100 2500 4200 2400
Wire Wire Line
	4200 2400 4350 2400
Text Label 4000 7150 0    60   ~ 0
PB7
Wire Wire Line
	3400 7150 4000 7150
Connection ~ 3400 7500
Text Notes 6150 4350 0    60   ~ 0
LEDS (<20mA każda)\n1. VCC\n2. PWM ERROR (red)\n3. PWM ACTIVE (green)\n4. PWM STATE (blue)\n\n1. PWM LIGHT (white)\n2. VCC
Wire Wire Line
	3750 1750 3750 900 
Connection ~ 3750 900 
Connection ~ 2100 1750
Text Notes 1000 3900 0    40   ~ 0
Piny nie używane obecnie, \nale mogą się przydać dlatego \nsą wyprowadzone.
Text Notes 4400 2500 0    40   ~ 0
Piny nie używane obecnie, \nale mogą się przydać dlatego \nsą wyprowadzone.
$Comp
L C C6
U 1 1 528CC911
P 3400 1300
F 0 "C6" H 3400 1400 40  0000 L CNN
F 1 "C" H 3406 1215 40  0000 L CNN
F 2 "~" H 3438 1150 30  0000 C CNN
F 3 "~" H 3400 1300 60  0000 C CNN
	1    3400 1300
	0    -1   -1   0   
$EndComp
$Comp
L C C7
U 1 1 528CC920
P 2850 1300
F 0 "C7" H 2850 1400 40  0000 L CNN
F 1 "C" H 2856 1215 40  0000 L CNN
F 2 "~" H 2888 1150 30  0000 C CNN
F 3 "~" H 2850 1300 60  0000 C CNN
	1    2850 1300
	0    -1   -1   0   
$EndComp
$Comp
L C C8
U 1 1 528CC92F
P 2200 1300
F 0 "C8" H 2200 1400 40  0000 L CNN
F 1 "C" H 2206 1215 40  0000 L CNN
F 2 "~" H 2238 1150 30  0000 C CNN
F 3 "~" H 2200 1300 60  0000 C CNN
	1    2200 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 1300 3600 1100
Connection ~ 3600 1100
Wire Wire Line
	3050 1300 3050 1100
Connection ~ 3050 1100
Wire Wire Line
	2400 1300 2400 1100
Connection ~ 2400 1100
Wire Wire Line
	3200 1300 3200 800 
Connection ~ 3200 800 
Wire Wire Line
	2650 1300 2650 900 
Connection ~ 2650 900 
Wire Wire Line
	2000 1300 2000 1000
Connection ~ 2000 1000
Text Notes 2300 1550 0    60   ~ 0
Dobrać pojemność
Text Notes 2850 6100 0    60   ~ 0
Kondensator do resetu\njest wbudowany w mcu?
Text Notes 7200 5750 0    60   ~ 0
Jak zasilać tablet z USB?
$Comp
L DIODE D1
U 1 1 528CD0F4
P 5200 5500
F 0 "D1" H 5200 5600 40  0000 C CNN
F 1 "DIODE" H 5200 5400 40  0000 C CNN
F 2 "~" H 5200 5500 60  0000 C CNN
F 3 "~" H 5200 5500 60  0000 C CNN
	1    5200 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 5500 6500 5500
$EndSCHEMATC
