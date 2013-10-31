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
LIBS:button_pad_silicon_2x2
LIBS:LED_MATRIX_RG_8x8
LIBS:LED_RGB
LIBS:TSOP2438
LIBS:atmega8upanel-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "23 oct 2013"
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
P 1250 2350
F 0 "R1" V 1330 2350 40  0000 C CNN
F 1 "10k" V 1257 2351 40  0000 C CNN
F 2 "SM1206" V 1180 2350 30  0000 C CNN
F 3 "~" H 1250 2350 30  0000 C CNN
	1    1250 2350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR2
U 1 1 525FBAFC
P 750 7200
F 0 "#PWR2" H 750 7200 30  0001 C CNN
F 1 "GND" H 750 7130 30  0001 C CNN
F 2 "" H 750 7200 60  0000 C CNN
F 3 "" H 750 7200 60  0000 C CNN
	1    750  7200
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 525FBB28
P 3700 2050
F 0 "C4" H 3700 2150 40  0000 L CNN
F 1 "100nF" H 3706 1965 40  0000 L CNN
F 2 "SM1206" H 3738 1900 30  0000 C CNN
F 3 "~" H 3700 2050 60  0000 C CNN
	1    3700 2050
	0    1    1    0   
$EndComp
$Comp
L SW_PUSH_SMALL SW1
U 1 1 525FBC5B
P 4350 6700
F 0 "SW1" H 4500 6810 30  0000 C CNN
F 1 "SW_PUSH_SMALL" H 4350 6621 30  0000 C CNN
F 2 "SM0201_r" H 4350 6700 60  0000 C CNN
F 3 "~" H 4350 6700 60  0000 C CNN
	1    4350 6700
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 525FBDD0
P 1750 3000
F 0 "C5" H 1750 3100 40  0000 L CNN
F 1 "100nF" H 1756 2915 40  0000 L CNN
F 2 "SM1206" H 1788 2850 30  0000 C CNN
F 3 "~" H 1750 3000 60  0000 C CNN
	1    1750 3000
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
L R R8
U 1 1 525FC63C
P 8100 5450
F 0 "R8" V 8180 5450 40  0000 C CNN
F 1 "10k" V 8107 5451 40  0000 C CNN
F 2 "SM1206" V 8030 5450 30  0000 C CNN
F 3 "~" H 8100 5450 30  0000 C CNN
	1    8100 5450
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 525FCA2B
P 8850 6400
F 0 "D1" H 8850 6500 50  0000 C CNN
F 1 "LED" H 8850 6300 50  0000 C CNN
F 2 "SM1206" H 8850 6400 60  0000 C CNN
F 3 "~" H 8850 6400 60  0000 C CNN
	1    8850 6400
	1    0    0    -1  
$EndComp
$Comp
L LEDS2_CRBG LED2
U 1 1 525FCB4C
P 8750 5600
F 0 "LED2" H 8610 5860 60  0000 C CNN
F 1 "LEDS2_CRBG" H 8750 5350 60  0000 C CNN
F 2 "SM1206" H 8750 5600 60  0000 C CNN
F 3 "" H 8750 5600 60  0000 C CNN
	1    8750 5600
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 525FCD44
P 8100 5600
F 0 "R9" V 8180 5600 40  0000 C CNN
F 1 "10k" V 8107 5601 40  0000 C CNN
F 2 "SM1206" V 8030 5600 30  0000 C CNN
F 3 "~" H 8100 5600 30  0000 C CNN
	1    8100 5600
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 525FCD4A
P 8100 5750
F 0 "R10" V 8180 5750 40  0000 C CNN
F 1 "10k" V 8107 5751 40  0000 C CNN
F 2 "SM1206" V 8030 5750 30  0000 C CNN
F 3 "~" H 8100 5750 30  0000 C CNN
	1    8100 5750
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 525FCDA0
P 7800 4300
F 0 "R5" V 7880 4300 40  0000 C CNN
F 1 "10k" V 7807 4301 40  0000 C CNN
F 2 "SM1206" V 7730 4300 30  0000 C CNN
F 3 "~" H 7800 4300 30  0000 C CNN
	1    7800 4300
	0    1    1    0   
$EndComp
$Comp
L LEDS2_CRBG LED1
U 1 1 525FCDA6
P 9200 4450
F 0 "LED1" H 9060 4710 60  0000 C CNN
F 1 "LEDS2_CRBG" H 9200 4200 60  0000 C CNN
F 2 "SM1206" H 9200 4450 60  0000 C CNN
F 3 "" H 9200 4450 60  0000 C CNN
	1    9200 4450
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 525FCDAD
P 7800 4450
F 0 "R6" V 7880 4450 40  0000 C CNN
F 1 "10k" V 7807 4451 40  0000 C CNN
F 2 "SM1206" V 7730 4450 30  0000 C CNN
F 3 "~" H 7800 4450 30  0000 C CNN
	1    7800 4450
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 525FCDB3
P 7800 4600
F 0 "R7" V 7880 4600 40  0000 C CNN
F 1 "10k" V 7807 4601 40  0000 C CNN
F 2 "SM1206" V 7730 4600 30  0000 C CNN
F 3 "~" H 7800 4600 30  0000 C CNN
	1    7800 4600
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 525FCDC2
P 8250 6400
F 0 "R3" V 8330 6400 40  0000 C CNN
F 1 "10k" V 8257 6401 40  0000 C CNN
F 2 "SM1206" V 8180 6400 30  0000 C CNN
F 3 "~" H 8250 6400 30  0000 C CNN
	1    8250 6400
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 525FCDC9
P 8200 2900
F 0 "R4" V 8280 2900 40  0000 C CNN
F 1 "10k" V 8207 2901 40  0000 C CNN
F 2 "SM1206" V 8130 2900 30  0000 C CNN
F 3 "~" H 8200 2900 30  0000 C CNN
	1    8200 2900
	0    1    1    0   
$EndComp
$Comp
L LED D2
U 1 1 525FCDD0
P 8800 2900
F 0 "D2" H 8800 3000 50  0000 C CNN
F 1 "LED" H 8800 2800 50  0000 C CNN
F 2 "SM1206" H 8800 2900 60  0000 C CNN
F 3 "~" H 8800 2900 60  0000 C CNN
	1    8800 2900
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P2
U 1 1 525FD0D2
P 8900 3550
F 0 "P2" V 8850 3550 60  0000 C CNN
F 1 "CONN_6" V 8950 3550 60  0000 C CNN
F 2 "SM1206" H 8900 3550 60  0000 C CNN
F 3 "" H 8900 3550 60  0000 C CNN
	1    8900 3550
	1    0    0    -1  
$EndComp
Text GLabel 9300 3600 0    60   Input ~ 0
PWM
$Comp
L R R2
U 1 1 525FD286
P 3850 6400
F 0 "R2" V 3930 6400 40  0000 C CNN
F 1 "10k" V 3857 6401 40  0000 C CNN
F 2 "SM1206" V 3780 6400 30  0000 C CNN
F 3 "~" H 3850 6400 30  0000 C CNN
	1    3850 6400
	0    1    1    0   
$EndComp
Text GLabel 9400 3600 0    60   Input ~ 0
INT
Text GLabel 7750 3600 0    60   Input ~ 0
RX
Text GLabel 7850 3600 0    60   Input ~ 0
TX
$Comp
L +5V #PWR1
U 1 1 525FDF83
P 750 1100
F 0 "#PWR1" H 750 1190 20  0001 C CNN
F 1 "+5V" H 750 1190 30  0000 C CNN
F 2 "" H 750 1100 60  0000 C CNN
F 3 "" H 750 1100 60  0000 C CNN
	1    750  1100
	1    0    0    -1  
$EndComp
$Comp
L ULN2003A U2
U 1 1 52601BD8
P 6450 4700
F 0 "U2" H 6450 4800 70  0000 C CNN
F 1 "ULN2003A" H 6450 4600 70  0000 C CNN
F 2 "SM1206" H 6450 4700 60  0000 C CNN
F 3 "" H 6450 4700 60  0000 C CNN
	1    6450 4700
	1    0    0    -1  
$EndComp
$Comp
L LED D3
U 1 1 52604C28
P 8850 6650
F 0 "D3" H 8850 6750 50  0000 C CNN
F 1 "LED" H 8850 6550 50  0000 C CNN
F 2 "SM1206" H 8850 6650 60  0000 C CNN
F 3 "~" H 8850 6650 60  0000 C CNN
	1    8850 6650
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 52604C2E
P 8250 6650
F 0 "R11" V 8330 6650 40  0000 C CNN
F 1 "10k" V 8257 6651 40  0000 C CNN
F 2 "SM1206" V 8180 6650 30  0000 C CNN
F 3 "~" H 8250 6650 30  0000 C CNN
	1    8250 6650
	0    1    1    0   
$EndComp
$Comp
L LEDS2_CRBG LED3
U 1 1 52604F30
P 8700 4950
F 0 "LED3" H 8560 5210 60  0000 C CNN
F 1 "LEDS2_CRBG" H 8700 4700 60  0000 C CNN
F 2 "SM1206" H 8700 4950 60  0000 C CNN
F 3 "" H 8700 4950 60  0000 C CNN
	1    8700 4950
	1    0    0    -1  
$EndComp
$Comp
L CONN_8 P1
U 1 1 52605ACE
P 4950 1200
F 0 "P1" V 4900 1200 60  0000 C CNN
F 1 "CONN_8" V 5000 1200 60  0000 C CNN
F 2 "" H 4950 1200 60  0000 C CNN
F 3 "" H 4950 1200 60  0000 C CNN
	1    4950 1200
	0    -1   -1   0   
$EndComp
$Comp
L CONN_8 P3
U 1 1 52605AE0
P 6800 1200
F 0 "P3" V 6750 1200 60  0000 C CNN
F 1 "CONN_8" V 6850 1200 60  0000 C CNN
F 2 "" H 6800 1200 60  0000 C CNN
F 3 "" H 6800 1200 60  0000 C CNN
	1    6800 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	750  2750 750  7200
Wire Wire Line
	1950 3000 2100 3000
Wire Wire Line
	1500 2350 2100 2350
Wire Wire Line
	1550 3000 750  3000
Connection ~ 750  3100
Connection ~ 750  3000
Connection ~ 1000 1750
Wire Wire Line
	1000 1750 1000 2350
Wire Wire Line
	750  1750 7050 1750
Wire Wire Line
	1950 3000 1950 6400
Connection ~ 1950 3000
Wire Wire Line
	750  1050 750  2350
Wire Wire Line
	8350 5450 8500 5450
Wire Wire Line
	8350 5600 8500 5600
Wire Wire Line
	8500 5750 8350 5750
Wire Wire Line
	8050 4300 8950 4300
Wire Wire Line
	8050 4450 8950 4450
Wire Wire Line
	8050 4600 8950 4600
Wire Wire Line
	8500 6400 8650 6400
Wire Wire Line
	8450 2900 8600 2900
Wire Wire Line
	9550 5600 9000 5600
Wire Wire Line
	9550 4450 9450 4450
Wire Wire Line
	9550 6800 9550 1700
Wire Wire Line
	9550 2900 9000 2900
Wire Wire Line
	1950 6400 3600 6400
Wire Wire Line
	5000 1550 5000 2200
Wire Wire Line
	4900 1550 4900 2050
Wire Wire Line
	4800 1550 4800 1900
Wire Wire Line
	5100 1550 5100 2300
Wire Wire Line
	4800 1900 6650 1900
Wire Wire Line
	6650 1900 6650 1550
Wire Wire Line
	4900 2050 6750 2050
Wire Wire Line
	6750 2050 6750 1550
Wire Wire Line
	5000 2200 6850 2200
Wire Wire Line
	6850 2200 6850 1550
Wire Wire Line
	5100 2300 6950 2300
Wire Wire Line
	6950 2300 6950 1550
Wire Wire Line
	5300 1550 5300 1700
Wire Wire Line
	5300 1700 9550 1700
Wire Wire Line
	7150 1550 7150 1700
Connection ~ 7150 1700
Connection ~ 9550 2900
Connection ~ 9550 4450
Wire Wire Line
	8550 3300 8550 3150
Wire Wire Line
	8550 3150 9550 3150
Connection ~ 9550 3150
Connection ~ 750  1100
Connection ~ 750  1750
Wire Wire Line
	4450 6800 9550 6800
Wire Wire Line
	7100 4300 7550 4300
Wire Wire Line
	7100 4400 7550 4450
Wire Wire Line
	6050 1750 6050 5600
Wire Wire Line
	6050 3400 8550 3400
Connection ~ 6050 3400
Wire Wire Line
	8500 6650 8650 6650
Connection ~ 9550 5600
Connection ~ 9550 2750
Wire Wire Line
	9050 6400 9050 6800
Connection ~ 9050 6800
Connection ~ 9050 6650
Wire Wire Line
	8950 4950 9550 4950
Connection ~ 9550 4950
Wire Wire Line
	7550 4600 7100 4500
Wire Wire Line
	8450 4800 8400 4800
Wire Wire Line
	8400 4800 8400 4300
Connection ~ 8400 4300
Wire Wire Line
	8350 4450 8350 4950
Wire Wire Line
	8350 4950 8450 4950
Connection ~ 8350 4450
Wire Wire Line
	8450 5100 8250 5100
Wire Wire Line
	8250 5100 8250 4600
Connection ~ 8250 4600
Wire Wire Line
	7100 4600 7850 5450
Wire Wire Line
	7100 4700 7850 5600
Wire Wire Line
	7100 4800 7850 5750
Wire Wire Line
	7100 4900 8000 6400
Wire Wire Line
	8000 6400 8000 6650
Wire Wire Line
	7100 5100 6900 5600
Wire Wire Line
	6900 5600 6050 5600
Wire Wire Line
	6450 1550 6450 1650
Wire Wire Line
	6450 1650 4600 1650
Wire Wire Line
	4600 1650 4600 1550
Wire Wire Line
	5200 1550 5200 1750
Connection ~ 5200 1750
Wire Wire Line
	7050 1750 7050 1550
Connection ~ 6050 1750
Text Notes 3400 600  0    60   ~ 0
1 - SCL (28)\n2 - MY_RESET (1)\n3 - MOSI (17)\n4 - MISO (18)\n5 - SCK (19)\n6 - SDA (27)\n7 - VCC (7)\n8 - GND (8)
Text Notes 7350 650  0    60   ~ 0
1 - SCL (28)\n2 - NEXT_RESET (23)\n3 - MOSI (17)\n4 - MISO (18)\n5 - SCK (19)\n6 - SDA (27)\n7 - VCC (7)\n8 - GND (8)
$Comp
L R R12
U 1 1 5260666E
P 6550 2600
F 0 "R12" V 6630 2600 40  0000 C CNN
F 1 "1k" V 6557 2601 40  0000 C CNN
F 2 "SM1206" V 6480 2600 30  0000 C CNN
F 3 "~" H 6550 2600 30  0000 C CNN
	1    6550 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2350 6550 1550
Text Notes 8500 2150 0    60   ~ 0
1 - GND (8)\n2 - VCC (7)\n3 - PWM (16)\n4 - ANALOG (24)\n5 - RX (2)\n6 - TX (3)\n
$Comp
L ATMEGA16-A IC?
U 1 1 5267E085
P 3200 4050
F 0 "IC?" H 2250 5930 40  0000 L BNN
F 1 "ATMEGA16-A" H 3700 2100 50  0000 L BNN
F 2 "TQFP44" H 3200 4050 30  0000 C CIN
F 3 "" H 3200 4050 60  0000 C CNN
	1    3200 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2050 3300 1750
Connection ~ 3300 1750
Wire Wire Line
	3000 2050 3400 1750
Connection ~ 3400 1750
Wire Wire Line
	3100 2050 3500 1750
Connection ~ 3500 1750
Wire Wire Line
	3300 2050 3700 1750
Connection ~ 3700 1750
Wire Wire Line
	2900 6050 3300 6050
Connection ~ 3100 6050
Connection ~ 3000 6050
$Comp
L C C?
U 1 1 5267E581
P 1350 5000
F 0 "C?" H 1350 5100 40  0000 L CNN
F 1 "22pf" H 1356 4915 40  0000 L CNN
F 2 "~" H 1388 4850 30  0000 C CNN
F 3 "~" H 1350 5000 60  0000 C CNN
	1    1350 5000
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5267E58E
P 1050 5000
F 0 "C?" H 1050 5100 40  0000 L CNN
F 1 "22pf" H 1056 4915 40  0000 L CNN
F 2 "~" H 1088 4850 30  0000 C CNN
F 3 "~" H 1050 5000 60  0000 C CNN
	1    1050 5000
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X?
U 1 1 5267E5A5
P 1400 3650
F 0 "X?" H 1400 3800 60  0000 C CNN
F 1 "CRYSTAL" H 1400 3500 60  0000 C CNN
F 2 "~" H 1400 3650 60  0000 C CNN
F 3 "~" H 1400 3650 60  0000 C CNN
	1    1400 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1550 4700 1900
Wire Wire Line
	4700 1900 1850 1900
Wire Wire Line
	1850 1900 1850 2350
Connection ~ 1850 2350
$EndSCHEMATC
