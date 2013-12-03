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
LIBS:led_rgb
LIBS:LED_SMD
LIBS:ULN2803A
LIBS:Dispositivos_I2C
LIBS:ULN280xA
LIBS:U-modul8-cache
EELAYER 27 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "U-modul.sch"
Date "21 nov 2013"
Rev ""
Comp "AnY"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA8A-A IC2
U 1 1 527190D2
P 5900 5650
F 0 "IC2" H 5200 6800 50  0000 L BNN
F 1 "ATMEGA8A-A" H 6200 4150 50  0000 L BNN
F 2 "TQFP32" H 5350 4200 50  0001 C CNN
F 3 "" H 5900 5650 60  0000 C CNN
	1    5900 5650
	1    0    0    -1  
$EndComp
$Comp
L CONN_8 P4
U 1 1 527297C2
P 9650 5250
F 0 "P4" V 9600 5250 60  0000 C CNN
F 1 "CONN_8" V 9700 5250 60  0000 C CNN
F 2 "" H 9650 5250 60  0000 C CNN
F 3 "" H 9650 5250 60  0000 C CNN
	1    9650 5250
	1    0    0    -1  
$EndComp
Entry Wire Line
	6900 4650 7000 4750
Entry Wire Line
	6900 4750 7000 4850
Entry Wire Line
	6900 4850 7000 4950
Entry Wire Line
	6900 5050 7000 5150
Entry Wire Line
	6900 5150 7000 5250
Entry Wire Line
	6900 5350 7000 5450
Entry Wire Line
	6900 5450 7000 5550
Entry Wire Line
	6900 5550 7000 5650
Entry Wire Line
	6900 5650 7000 5750
Entry Wire Line
	6900 5750 7000 5850
Entry Wire Line
	6900 5950 7000 6050
Entry Wire Line
	6900 6050 7000 6150
Entry Wire Line
	6900 6250 7000 6350
Entry Wire Line
	6900 6350 7000 6450
Entry Wire Line
	6900 6450 7000 6550
Entry Wire Line
	6900 6550 7000 6650
Entry Wire Line
	6900 6650 7000 6750
Text Label 6900 5050 0    60   ~ 0
MISO
$Comp
L CONN_8 P5
U 1 1 5272A00E
P 9650 6650
F 0 "P5" V 9600 6650 60  0000 C CNN
F 1 "CONN_8" V 9700 6650 60  0000 C CNN
F 2 "" H 9650 6650 60  0000 C CNN
F 3 "" H 9650 6650 60  0000 C CNN
	1    9650 6650
	1    0    0    -1  
$EndComp
Entry Wire Line
	6900 4950 7000 5050
Entry Wire Line
	6900 5850 7000 5950
Entry Wire Line
	6900 6750 7000 6850
Entry Wire Line
	6900 6850 7000 6950
Entry Wire Line
	6900 6950 7000 7050
$Comp
L ULN2803A U2
U 1 1 5272A7FC
P 12800 5250
F 0 "U2" H 12800 5350 70  0000 C CNN
F 1 "ULN2803A" H 12800 5150 70  0000 C CNN
F 2 "PSO-18" H 12800 5250 60  0000 C CNN
F 3 "" H 12800 5250 60  0000 C CNN
	1    12800 5250
	1    0    0    -1  
$EndComp
Entry Wire Line
	12050 4750 12150 4850
Entry Wire Line
	12050 4850 12150 4950
Entry Wire Line
	12050 4950 12150 5050
Entry Wire Line
	12050 5050 12150 5150
Entry Wire Line
	12050 5150 12150 5250
Entry Wire Line
	12050 5250 12150 5350
Entry Wire Line
	12050 5350 12150 5450
Entry Wire Line
	12050 5450 12150 5550
Text Label 9300 4900 0    60   ~ 0
SDA
Text Label 9300 5600 0    60   ~ 0
SCL
Text Label 9300 6300 0    60   ~ 0
SDA
Text Label 9300 7000 0    60   ~ 0
SCL
Text Label 6900 5750 0    60   ~ 0
SDA
Text Label 6900 5850 0    60   ~ 0
SCL
Entry Wire Line
	7700 5950 7800 6050
Entry Wire Line
	7700 6050 7800 6150
Entry Wire Line
	7700 6150 7800 6250
Text Label 7800 6050 0    60   ~ 0
RX
Text Label 6900 6250 0    60   ~ 0
RX
Text Label 6900 6350 0    60   ~ 0
TX
Text Label 7800 6150 0    60   ~ 0
TX
Text Label 7800 6250 0    60   ~ 0
GND
Text Label 9300 5500 0    60   ~ 0
GND
Text Label 9300 6900 0    60   ~ 0
GND
Entry Wire Line
	5950 7250 6050 7350
Entry Wire Line
	5850 7250 5950 7350
Text Label 5950 7250 0    60   ~ 0
GND
Entry Wire Line
	7300 4500 7400 4600
Text Label 9300 5000 0    60   ~ 0
MY_RESET
Text Label 9300 6400 0    60   ~ 0
NEXT_RESET
Text Label 6900 5350 0    60   ~ 0
NEXT_RESET
Text Label 9300 5100 0    60   ~ 0
MOSI
Text Label 9300 6500 0    60   ~ 0
MOSI
Text Label 6900 4950 0    60   ~ 0
MOSI
Text Label 9300 5200 0    60   ~ 0
MISO
Text Label 9300 6600 0    60   ~ 0
MISO
Text Label 9300 5300 0    60   ~ 0
SCK
Text Label 9300 6700 0    60   ~ 0
SCK
Text Label 6900 5150 0    60   ~ 0
SCK
Entry Wire Line
	7000 4500 7100 4600
Text Label 7000 4500 0    60   ~ 0
VCC
Text Label 5850 7250 0    60   ~ 0
GND
$Comp
L C C4
U 1 1 5272CEA0
P 6050 4150
F 0 "C4" H 6100 4250 50  0000 L CNN
F 1 "100n" H 6100 4050 50  0000 L CNN
F 2 "SM0805" H 6050 4150 60  0000 C CNN
F 3 "" H 6050 4150 60  0001 C CNN
	1    6050 4150
	0    -1   -1   0   
$EndComp
$Comp
L C C2
U 1 1 5272CEA6
P 4100 4850
F 0 "C2" H 4150 4950 50  0000 L CNN
F 1 "100n" H 4150 4750 50  0000 L CNN
F 2 "SM0805" H 4100 4850 60  0000 C CNN
F 3 "" H 4100 4850 60  0001 C CNN
	1    4100 4850
	0    1    1    0   
$EndComp
$Comp
L C C3
U 1 1 5272CEAC
P 4450 4950
F 0 "C3" H 4500 5050 50  0000 L CNN
F 1 "100n" H 4500 4850 50  0000 L CNN
F 2 "SM0805" H 4450 4950 60  0000 C CNN
F 3 "" H 4450 4950 60  0001 C CNN
	1    4450 4950
	0    1    1    0   
$EndComp
Entry Wire Line
	6900 4500 7000 4600
Entry Wire Line
	6900 4500 7000 4600
Text Label 6900 4500 0    60   ~ 0
GND
$Comp
L R R14
U 1 1 5272D2A3
P 4900 4400
F 0 "R14" V 4980 4400 50  0000 C CNN
F 1 "10k" V 4900 4400 50  0000 C CNN
F 2 "SM0805" H 4900 4400 60  0000 C CNN
F 3 "" H 4900 4400 60  0001 C CNN
	1    4900 4400
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 5272D2AA
P 12450 6150
F 0 "SW2" H 12600 6260 50  0000 C CNN
F 1 "SW_PUSH" H 12450 6070 50  0000 C CNN
F 2 "SW_SMD" H 12450 6150 60  0000 C CNN
F 3 "" H 12450 6150 60  0001 C CNN
	1    12450 6150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5272D2B0
P 12750 6500
F 0 "#PWR01" H 12750 6500 30  0001 C CNN
F 1 "GND" H 12750 6430 30  0001 C CNN
F 2 "" H 12750 6500 60  0001 C CNN
F 3 "" H 12750 6500 60  0001 C CNN
	1    12750 6500
	1    0    0    -1  
$EndComp
Entry Wire Line
	3900 7250 4000 7350
Text Label 3900 7250 0    60   ~ 0
GND
Text Label 7300 4500 0    60   ~ 0
MY_RESET
$Comp
L +5V #PWR02
U 1 1 5272EB2B
P 15400 2650
F 0 "#PWR02" H 15400 2740 20  0001 C CNN
F 1 "+5V" H 15400 2740 30  0000 C CNN
F 2 "" H 15400 2650 60  0001 C CNN
F 3 "" H 15400 2650 60  0001 C CNN
	1    15400 2650
	1    0    0    -1  
$EndComp
$Comp
L R R22
U 1 1 5272EB31
P 15350 4000
F 0 "R22" V 15430 4000 40  0000 C CNN
F 1 "220R" V 15357 4001 40  0000 C CNN
F 2 "SM0805" V 15280 4000 30  0000 C CNN
F 3 "~" H 15350 4000 30  0000 C CNN
	1    15350 4000
	1    0    0    -1  
$EndComp
$Comp
L R R19
U 1 1 5272EB37
P 14400 4000
F 0 "R19" V 14480 4000 40  0000 C CNN
F 1 "220R" V 14407 4001 40  0000 C CNN
F 2 "SM0805" V 14330 4000 30  0000 C CNN
F 3 "~" H 14400 4000 30  0000 C CNN
	1    14400 4000
	1    0    0    -1  
$EndComp
$Comp
L R R20
U 1 1 5272EB3D
P 14650 4000
F 0 "R20" V 14730 4000 40  0000 C CNN
F 1 "330R" V 14657 4001 40  0000 C CNN
F 2 "SM0805" V 14580 4000 30  0000 C CNN
F 3 "~" H 14650 4000 30  0000 C CNN
	1    14650 4000
	1    0    0    -1  
$EndComp
$Comp
L R R21
U 1 1 5272EB43
P 14900 4000
F 0 "R21" V 14980 4000 40  0000 C CNN
F 1 "220R" V 14907 4001 40  0000 C CNN
F 2 "SM0805" V 14830 4000 30  0000 C CNN
F 3 "~" H 14900 4000 30  0000 C CNN
	1    14900 4000
	1    0    0    -1  
$EndComp
$Comp
L LED_RGB LDP9
U 1 1 5272EB49
P 14650 3250
F 0 "LDP9" H 15250 2850 60  0000 C CNN
F 1 "LED_RGB" H 14650 3400 60  0000 C CNN
F 2 "5050" H 15250 3500 60  0000 C CNN
F 3 "~" H 14850 2650 60  0000 C CNN
	1    14650 3250
	1    0    0    -1  
$EndComp
$Comp
L LED_WHITE LDP10
U 1 1 5272EB4F
P 15350 3250
F 0 "LDP10" H 15950 2850 60  0000 C CNN
F 1 "LED_WHITE" H 15350 3400 60  0000 C CNN
F 2 "5050" H 15950 3500 60  0000 C CNN
F 3 "~" H 15550 2650 60  0000 C CNN
	1    15350 3250
	1    0    0    -1  
$EndComp
NoConn ~ 15600 3600
NoConn ~ 15100 3600
NoConn ~ 15600 2900
NoConn ~ 15100 2900
$Comp
L LED_RGB LDP7
U 1 1 5272EB59
P 13250 3250
F 0 "LDP7" H 13850 2850 60  0000 C CNN
F 1 "LED_RGB" H 13250 3400 60  0000 C CNN
F 2 "5050" H 13850 3500 60  0000 C CNN
F 3 "~" H 13450 2650 60  0000 C CNN
	1    13250 3250
	1    0    0    -1  
$EndComp
$Comp
L LED_WHITE LDP8
U 1 1 5272EB5F
P 13950 3250
F 0 "LDP8" H 14550 2850 60  0000 C CNN
F 1 "LED_WHITE" H 13950 3400 60  0000 C CNN
F 2 "5050" H 14550 3500 60  0000 C CNN
F 3 "~" H 14150 2650 60  0000 C CNN
	1    13950 3250
	1    0    0    -1  
$EndComp
NoConn ~ 14200 3600
NoConn ~ 13700 3600
NoConn ~ 14200 2900
NoConn ~ 13700 2900
$Comp
L R R18
U 1 1 5272EB69
P 13950 3950
F 0 "R18" V 14030 3950 40  0000 C CNN
F 1 "220R" V 13957 3951 40  0000 C CNN
F 2 "SM0805" V 13880 3950 30  0000 C CNN
F 3 "~" H 13950 3950 30  0000 C CNN
	1    13950 3950
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 5272EB6F
P 13000 3900
F 0 "R15" V 13080 3900 40  0000 C CNN
F 1 "220R" V 13007 3901 40  0000 C CNN
F 2 "SM0805" V 12930 3900 30  0000 C CNN
F 3 "~" H 13000 3900 30  0000 C CNN
	1    13000 3900
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 5272EB75
P 13250 3900
F 0 "R16" V 13330 3900 40  0000 C CNN
F 1 "330R" V 13257 3901 40  0000 C CNN
F 2 "SM0805" V 13180 3900 30  0000 C CNN
F 3 "~" H 13250 3900 30  0000 C CNN
	1    13250 3900
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 5272EB7B
P 13500 3900
F 0 "R17" V 13580 3900 40  0000 C CNN
F 1 "220R" V 13507 3901 40  0000 C CNN
F 2 "SM0805" V 13430 3900 30  0000 C CNN
F 3 "~" H 13500 3900 30  0000 C CNN
	1    13500 3900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 5272EB81
P 13950 2550
F 0 "#PWR03" H 13950 2640 20  0001 C CNN
F 1 "+5V" H 13950 2640 30  0000 C CNN
F 2 "" H 13950 2550 60  0001 C CNN
F 3 "" H 13950 2550 60  0001 C CNN
	1    13950 2550
	1    0    0    -1  
$EndComp
Entry Wire Line
	15350 4300 15450 4400
Entry Wire Line
	14900 4300 15000 4400
Entry Wire Line
	14650 4300 14750 4400
Entry Wire Line
	14400 4300 14500 4400
Entry Wire Line
	13950 4300 14050 4400
Entry Wire Line
	13500 4300 13600 4400
Entry Wire Line
	13250 4300 13350 4400
Entry Wire Line
	13000 4300 13100 4400
Entry Wire Line
	13450 4850 13550 4950
Entry Wire Line
	13450 4950 13550 5050
Entry Wire Line
	13450 5050 13550 5150
Entry Wire Line
	13450 5150 13550 5250
Entry Wire Line
	13450 5250 13550 5350
Entry Wire Line
	13450 5350 13550 5450
Entry Wire Line
	13450 5450 13550 5550
Entry Wire Line
	13450 5550 13550 5650
Entry Wire Line
	12050 5900 12150 6000
Text Label 12150 6000 0    60   ~ 0
VCC
Text Label 9300 5400 0    60   ~ 0
VCC
Text Label 9300 6800 0    60   ~ 0
VCC
$Comp
L CONN_1 P6
U 1 1 52730655
P 7950 4850
F 0 "P6" H 8030 4850 40  0000 L CNN
F 1 "CONN_1" H 7950 4905 30  0001 C CNN
F 2 "" H 7950 4850 60  0000 C CNN
F 3 "" H 7950 4850 60  0000 C CNN
	1    7950 4850
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P7
U 1 1 52730664
P 7950 5000
F 0 "P7" H 8030 5000 40  0000 L CNN
F 1 "CONN_1" H 7950 5055 30  0001 C CNN
F 2 "" H 7950 5000 60  0000 C CNN
F 3 "" H 7950 5000 60  0000 C CNN
	1    7950 5000
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P8
U 1 1 52730673
P 7950 5150
F 0 "P8" H 8030 5150 40  0000 L CNN
F 1 "CONN_1" H 7950 5205 30  0001 C CNN
F 2 "" H 7950 5150 60  0000 C CNN
F 3 "" H 7950 5150 60  0000 C CNN
	1    7950 5150
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P9
U 1 1 52730682
P 7950 5300
F 0 "P9" H 8030 5300 40  0000 L CNN
F 1 "CONN_1" H 7950 5355 30  0001 C CNN
F 2 "" H 7950 5300 60  0000 C CNN
F 3 "" H 7950 5300 60  0000 C CNN
	1    7950 5300
	1    0    0    -1  
$EndComp
Entry Wire Line
	7700 4750 7800 4850
Entry Wire Line
	7700 4900 7800 5000
Entry Wire Line
	7700 5050 7800 5150
Entry Wire Line
	7700 5200 7800 5300
Text Label 6900 4650 0    60   ~ 0
PB0
Text Label 6900 4750 0    60   ~ 0
PB1
Text Label 6900 4850 0    60   ~ 0
PB2
Text Label 6900 5450 0    60   ~ 0
PC1
Text Label 6900 5550 0    60   ~ 0
PC2
Text Label 6900 5650 0    60   ~ 0
PC3
Text Label 6900 5950 0    60   ~ 0
ADC6
Text Label 6900 6050 0    60   ~ 0
ADC7
Text Label 6900 6450 0    60   ~ 0
PD2
Text Label 6900 6550 0    60   ~ 0
PD3
Text Label 6900 6650 0    60   ~ 0
PD4
Text Label 6900 6750 0    60   ~ 0
PD5
Text Label 6900 6850 0    60   ~ 0
PD6
Text Label 6900 6950 0    60   ~ 0
PD7
Text Label 7800 4850 0    60   ~ 0
PB6
Text Notes 10000 4900 0    60   ~ 0
CONN PREV\n(male goldpin)\n1 - SDA (27)\n2 - MY_RESET (29)\n3 - MOSI (15)\n4 - MISO (16)\n5 - SCK (17)\n6 - VCC\n7 - GND\n8 - SCL (28)
Entry Wire Line
	12050 6050 12150 6150
Text Label 12150 6150 0    60   ~ 0
PD3
Text Label 7800 5150 0    60   ~ 0
ADC6
Text Label 7800 5300 0    60   ~ 0
ADC7
Text Label 7800 5000 0    60   ~ 0
PB7
Entry Wire Line
	4900 5450 5000 5350
Entry Wire Line
	4900 5650 5000 5550
Text Label 5000 5350 0    60   ~ 0
PB6
Text Label 5000 5550 0    60   ~ 0
PB7
Text Label 13450 4850 0    60   ~ 0
OUT0
Text Label 13450 4950 0    60   ~ 0
OUT1
Text Label 13450 5050 0    60   ~ 0
OUT2
Text Label 13450 5150 0    60   ~ 0
OUT3
Text Label 13450 5250 0    60   ~ 0
OUT4
Text Label 13450 5350 0    60   ~ 0
OUT5
Text Label 13450 5450 0    60   ~ 0
OUT6
Text Label 13450 5550 0    60   ~ 0
OUT7
Text Label 13000 4300 0    60   ~ 0
OUT0
Text Label 13250 4300 0    60   ~ 0
OUT1
Text Label 13500 4300 0    60   ~ 0
OUT2
Text Label 13950 4300 0    60   ~ 0
OUT3
Text Label 14400 4300 0    60   ~ 0
OUT4
Text Label 14650 4300 0    60   ~ 0
OUT5
Text Label 14900 4300 0    60   ~ 0
OUT6
Text Label 15350 4300 0    60   ~ 0
OUT7
Text Notes 10000 6300 0    60   ~ 0
CONN NEXT\n(female goldpin)\n1 - SDA (27)\n2 - NEXT_RESET(23)\n3 - MOSI (15)\n4 - MISO (16)\n5 - SCK (17)\n6 - VCC\n7 - GND\n8 - SCL (28)
Text Label 7800 5450 0    60   ~ 0
PD2
Text Label 7800 5600 0    60   ~ 0
PC1
Text Label 7800 5750 0    60   ~ 0
PB2
Entry Wire Line
	7700 5350 7800 5450
Entry Wire Line
	7700 5500 7800 5600
Entry Wire Line
	7700 5650 7800 5750
$Comp
L CONN_1 P3
U 1 1 528B84AE
P 7950 5750
F 0 "P3" H 8030 5750 40  0000 L CNN
F 1 "CONN_1" H 7950 5805 30  0001 C CNN
F 2 "" H 7950 5750 60  0000 C CNN
F 3 "" H 7950 5750 60  0000 C CNN
	1    7950 5750
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P1
U 1 1 528B84B5
P 7950 5450
F 0 "P1" H 8030 5450 40  0000 L CNN
F 1 "CONN_1" H 7950 5505 30  0001 C CNN
F 2 "" H 7950 5450 60  0000 C CNN
F 3 "" H 7950 5450 60  0000 C CNN
	1    7950 5450
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P2
U 1 1 528B84BB
P 7950 5600
F 0 "P2" H 8030 5600 40  0000 L CNN
F 1 "CONN_1" H 7950 5655 30  0001 C CNN
F 2 "" H 7950 5600 60  0000 C CNN
F 3 "" H 7950 5600 60  0000 C CNN
	1    7950 5600
	1    0    0    -1  
$EndComp
Text Label 12150 4950 0    60   ~ 0
PB1
Text Label 12150 5050 0    60   ~ 0
PC2
Text Label 12150 5150 0    60   ~ 0
PC3
Text Label 12150 4850 0    60   ~ 0
PB0
Text Label 12150 5250 0    60   ~ 0
PD4
Text Label 12150 5450 0    60   ~ 0
PD6
Text Label 12150 5550 0    60   ~ 0
PD7
Text Label 12150 5350 0    60   ~ 0
PD5
Wire Bus Line
	12050 4600 12050 6750
Wire Bus Line
	7000 4600 12050 4600
Wire Bus Line
	7000 4600 7000 7600
Wire Wire Line
	5850 4350 7000 4350
Wire Bus Line
	7700 4600 7700 6150
Wire Bus Line
	2900 7350 7000 7350
Wire Wire Line
	7000 4350 7000 4500
Connection ~ 5950 4350
Wire Wire Line
	5850 4150 5850 4350
Wire Wire Line
	6900 4500 6900 4150
Wire Wire Line
	6900 4150 6250 4150
Wire Wire Line
	12750 6150 12750 6500
Wire Wire Line
	5850 4150 4900 4150
Wire Wire Line
	3900 4850 3900 7250
Wire Wire Line
	5000 4850 4300 4850
Wire Wire Line
	4650 4950 5000 4950
Wire Wire Line
	4250 4950 3900 4950
Connection ~ 3900 4950
Wire Wire Line
	5000 5050 3900 5050
Connection ~ 3900 5050
Wire Wire Line
	4650 4650 5000 4650
Wire Wire Line
	4650 4650 4650 3700
Wire Wire Line
	4650 3700 7300 3700
Connection ~ 4900 4650
Connection ~ 4650 3700
Wire Wire Line
	7300 3700 7300 4500
Wire Wire Line
	15400 2750 15400 2650
Wire Wire Line
	14900 2750 14900 2900
Wire Wire Line
	14400 2750 15400 2750
Wire Wire Line
	15350 2900 15350 2750
Connection ~ 15350 2750
Wire Wire Line
	14650 2900 14650 2750
Connection ~ 14900 2750
Wire Wire Line
	14400 2900 14400 2750
Connection ~ 14650 2750
Wire Wire Line
	13950 2550 13950 2900
Wire Wire Line
	13000 2750 13950 2750
Wire Wire Line
	13500 2750 13500 2900
Connection ~ 13950 2750
Wire Wire Line
	13250 2900 13250 2750
Connection ~ 13500 2750
Wire Wire Line
	13000 2900 13000 2750
Connection ~ 13250 2750
Wire Wire Line
	13950 3700 13950 3600
Wire Wire Line
	13500 3650 13500 3600
Wire Wire Line
	13250 3650 13250 3600
Wire Wire Line
	13000 3600 13000 3650
Wire Wire Line
	15350 3600 15350 3750
Wire Wire Line
	14400 3600 14400 3750
Wire Wire Line
	14650 3600 14650 3750
Wire Wire Line
	14900 3600 14900 3750
Wire Bus Line
	13000 4400 15800 4400
Wire Wire Line
	15350 4250 15350 4300
Wire Wire Line
	14900 4300 14900 4250
Wire Wire Line
	14650 4250 14650 4300
Wire Wire Line
	14400 4300 14400 4250
Wire Wire Line
	13950 4200 13950 4300
Wire Wire Line
	13500 4300 13500 4150
Wire Wire Line
	13250 4150 13250 4300
Wire Wire Line
	13000 4300 13000 4150
Wire Bus Line
	13550 4400 13550 5650
Wire Wire Line
	12150 6000 13450 6000
Wire Wire Line
	13450 6000 13450 5800
Wire Bus Line
	4900 5450 4900 7350
$Comp
L CONN_4 P10
U 1 1 528CB132
P 8150 6100
F 0 "P10" V 8100 6100 50  0000 C CNN
F 1 "CONN_4" V 8200 6100 50  0000 C CNN
F 2 "" H 8150 6100 60  0000 C CNN
F 3 "" H 8150 6100 60  0000 C CNN
	1    8150 6100
	1    0    0    -1  
$EndComp
Text Label 7800 5950 0    60   ~ 0
VCC
Entry Wire Line
	7700 5850 7800 5950
Text Notes 7700 6400 0    60   ~ 0
DEBUG CONNECTOR\n(goldpin)\n1. VCC 5V\n2. RX\n3. TX\n4. GND
Entry Wire Line
	9200 4800 9300 4900
Entry Wire Line
	9200 4900 9300 5000
Entry Wire Line
	9200 5000 9300 5100
Entry Wire Line
	9200 5100 9300 5200
Entry Wire Line
	9200 5200 9300 5300
Entry Wire Line
	9200 5300 9300 5400
Entry Wire Line
	9200 5400 9300 5500
Entry Wire Line
	9200 5500 9300 5600
Entry Wire Line
	9200 6200 9300 6300
Entry Wire Line
	9200 6300 9300 6400
Entry Wire Line
	9200 6400 9300 6500
Entry Wire Line
	9200 6500 9300 6600
Entry Wire Line
	9200 6600 9300 6700
Entry Wire Line
	9200 6800 9300 6900
Entry Wire Line
	9200 6700 9300 6800
Entry Wire Line
	9200 6900 9300 7000
Wire Bus Line
	9200 6900 9200 4600
Text Notes 14550 4550 0    60   ~ 0
Dobrać oporniki aby \nLED równo świeciły
Text Notes 9550 5900 0    60   ~ 0
uważać na spójność przy \nzmianach kolejności pinów
Text Notes 13050 6200 0    60   ~ 0
co ze stabilnością zasilania?
Text Notes 8250 5100 0    60   ~ 0
Pojedyńcze miejsca\nna goldpiny
$EndSCHEMATC
