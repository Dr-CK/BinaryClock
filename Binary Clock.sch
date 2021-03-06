EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Binary Clock"
Date "2021-12-11"
Rev "1.0"
Comp ""
Comment1 "Christoffer Karlsson"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 61B470D4
P 8200 5150
F 0 "A1" H 8200 4061 50  0000 C CNN
F 1 "Arduino" H 8200 3970 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 8200 5150 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 8200 5150 50  0001 C CNN
	1    8200 5150
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR013
U 1 1 61B4DB9F
P 9800 6150
F 0 "#PWR013" H 9800 5900 50  0001 C CNN
F 1 "Earth" H 9800 6000 50  0001 C CNN
F 2 "" H 9800 6150 50  0001 C CNN
F 3 "~" H 9800 6150 50  0001 C CNN
	1    9800 6150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 61B4DDC6
P 9800 4750
F 0 "#PWR012" H 9800 4600 50  0001 C CNN
F 1 "+5V" H 9815 4923 50  0000 C CNN
F 2 "" H 9800 4750 50  0001 C CNN
F 3 "" H 9800 4750 50  0001 C CNN
	1    9800 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 61B4E23D
P 8400 3900
F 0 "#PWR08" H 8400 3750 50  0001 C CNN
F 1 "+5V" H 8415 4073 50  0000 C CNN
F 2 "" H 8400 3900 50  0001 C CNN
F 3 "" H 8400 3900 50  0001 C CNN
	1    8400 3900
	1    0    0    -1  
$EndComp
NoConn ~ 9700 4750
NoConn ~ 9300 5650
NoConn ~ 9300 5750
NoConn ~ 9300 5950
NoConn ~ 10300 5950
NoConn ~ 10300 5650
NoConn ~ 10300 5350
NoConn ~ 10300 5250
NoConn ~ 10300 5150
Wire Wire Line
	8200 6150 8300 6150
$Comp
L power:Earth #PWR07
U 1 1 61B4E752
P 8300 6150
F 0 "#PWR07" H 8300 5900 50  0001 C CNN
F 1 "Earth" H 8300 6000 50  0001 C CNN
F 2 "" H 8300 6150 50  0001 C CNN
F 3 "~" H 8300 6150 50  0001 C CNN
	1    8300 6150
	1    0    0    -1  
$EndComp
Connection ~ 8300 6150
$Comp
L Timer_RTC:AB0805 U2
U 1 1 61B48435
P 9800 5450
F 0 "U2" H 9800 4661 50  0000 C CNN
F 1 "DS3231 RTC module" H 9800 4570 50  0000 C CNN
F 2 "Package_DFN_QFN:VQFN-16-1EP_3x3mm_P0.5mm_EP1.8x1.8mm" H 9800 4750 50  0001 C CNN
F 3 "https://abracon.com/Precisiontiming/AB08X5-RTC.PDF" H 9800 5450 50  0001 C CNN
	1    9800 5450
	1    0    0    -1  
$EndComp
NoConn ~ 8700 4950
NoConn ~ 8300 4150
NoConn ~ 8100 4150
$Comp
L 74xx:74HC595 U1
U 1 1 61B4E9A7
P 5750 4200
F 0 "U1" V 5796 3456 50  0000 R CNN
F 1 "74HC595" V 5705 3456 50  0000 R CNN
F 2 "" H 5750 4200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 5750 4200 50  0001 C CNN
	1    5750 4200
	0    -1   -1   0   
$EndComp
NoConn ~ 6250 3800
Wire Wire Line
	7700 5650 5850 5650
Wire Wire Line
	6450 4200 6450 4600
Wire Wire Line
	6450 4600 5950 4600
$Comp
L power:Earth #PWR02
U 1 1 61B5A34A
P 6450 4600
F 0 "#PWR02" H 6450 4350 50  0001 C CNN
F 1 "Earth" H 6450 4450 50  0001 C CNN
F 2 "" H 6450 4600 50  0001 C CNN
F 3 "~" H 6450 4600 50  0001 C CNN
	1    6450 4600
	1    0    0    -1  
$EndComp
Connection ~ 6450 4600
Wire Wire Line
	5650 4600 5650 4700
Wire Wire Line
	5650 4700 5150 4700
Wire Wire Line
	5150 4700 5150 4200
Wire Wire Line
	5150 4200 5150 3800
Connection ~ 5150 4200
$Comp
L power:+5V #PWR01
U 1 1 61B5ACC9
P 5150 3800
F 0 "#PWR01" H 5150 3650 50  0001 C CNN
F 1 "+5V" H 5165 3973 50  0000 C CNN
F 2 "" H 5150 3800 50  0001 C CNN
F 3 "" H 5150 3800 50  0001 C CNN
	1    5150 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 5750 7700 5750
Wire Wire Line
	7700 5550 5350 5550
$Comp
L Device:R_US R1
U 1 1 61B5B6FC
P 1200 3000
F 0 "R1" H 1268 3046 50  0000 L CNN
F 1 "100ohm-10k" H 1268 2955 50  0000 L CNN
F 2 "" V 1240 2990 50  0001 C CNN
F 3 "~" H 1200 3000 50  0001 C CNN
	1    1200 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D6
U 1 1 61B5F9A8
P 1350 2550
F 0 "D6" H 1343 2295 50  0000 C CNN
F 1 "LED" H 1343 2386 50  0000 C CNN
F 2 "" H 1350 2550 50  0001 C CNN
F 3 "~" H 1350 2550 50  0001 C CNN
	1    1350 2550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D5
U 1 1 61B60E15
P 1350 2300
F 0 "D5" H 1343 2045 50  0000 C CNN
F 1 "LED" H 1343 2136 50  0000 C CNN
F 2 "" H 1350 2300 50  0001 C CNN
F 3 "~" H 1350 2300 50  0001 C CNN
	1    1350 2300
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D4
U 1 1 61B613FB
P 1350 2050
F 0 "D4" H 1343 1795 50  0000 C CNN
F 1 "LED" H 1343 1886 50  0000 C CNN
F 2 "" H 1350 2050 50  0001 C CNN
F 3 "~" H 1350 2050 50  0001 C CNN
	1    1350 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 61B61929
P 1350 1800
F 0 "D3" H 1343 1545 50  0000 C CNN
F 1 "LED" H 1343 1636 50  0000 C CNN
F 2 "" H 1350 1800 50  0001 C CNN
F 3 "~" H 1350 1800 50  0001 C CNN
	1    1350 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 61B625E2
P 1350 1550
F 0 "D2" H 1343 1295 50  0000 C CNN
F 1 "LED" H 1343 1386 50  0000 C CNN
F 2 "" H 1350 1550 50  0001 C CNN
F 3 "~" H 1350 1550 50  0001 C CNN
	1    1350 1550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D1
U 1 1 61B62991
P 1350 1300
F 0 "D1" H 1343 1045 50  0000 C CNN
F 1 "LED" H 1343 1136 50  0000 C CNN
F 2 "" H 1350 1300 50  0001 C CNN
F 3 "~" H 1350 1300 50  0001 C CNN
	1    1350 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	1200 2850 1200 2550
$Comp
L Device:LED D12
U 1 1 61B7A0C6
P 2000 2550
F 0 "D12" H 1993 2295 50  0000 C CNN
F 1 "LED" H 1993 2386 50  0000 C CNN
F 2 "" H 2000 2550 50  0001 C CNN
F 3 "~" H 2000 2550 50  0001 C CNN
	1    2000 2550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D11
U 1 1 61B7A0CC
P 2000 2300
F 0 "D11" H 1993 2045 50  0000 C CNN
F 1 "LED" H 1993 2136 50  0000 C CNN
F 2 "" H 2000 2300 50  0001 C CNN
F 3 "~" H 2000 2300 50  0001 C CNN
	1    2000 2300
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D10
U 1 1 61B7A0D2
P 2000 2050
F 0 "D10" H 1993 1795 50  0000 C CNN
F 1 "LED" H 1993 1886 50  0000 C CNN
F 2 "" H 2000 2050 50  0001 C CNN
F 3 "~" H 2000 2050 50  0001 C CNN
	1    2000 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D9
U 1 1 61B7A0D8
P 2000 1800
F 0 "D9" H 1993 1545 50  0000 C CNN
F 1 "LED" H 1993 1636 50  0000 C CNN
F 2 "" H 2000 1800 50  0001 C CNN
F 3 "~" H 2000 1800 50  0001 C CNN
	1    2000 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D8
U 1 1 61B7A0DE
P 2000 1550
F 0 "D8" H 1993 1295 50  0000 C CNN
F 1 "LED" H 1993 1386 50  0000 C CNN
F 2 "" H 2000 1550 50  0001 C CNN
F 3 "~" H 2000 1550 50  0001 C CNN
	1    2000 1550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D7
U 1 1 61B7A0E4
P 2000 1300
F 0 "D7" H 1993 1045 50  0000 C CNN
F 1 "LED" H 1993 1136 50  0000 C CNN
F 2 "" H 2000 1300 50  0001 C CNN
F 3 "~" H 2000 1300 50  0001 C CNN
	1    2000 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	1500 2550 1500 2650
Wire Wire Line
	1500 2650 2150 2650
Wire Wire Line
	2150 2650 2150 2550
Wire Wire Line
	1500 2300 1500 2400
Wire Wire Line
	1500 2400 2150 2400
Wire Wire Line
	2150 2400 2150 2300
Wire Wire Line
	1500 2050 1500 2150
Wire Wire Line
	1500 2150 2150 2150
Wire Wire Line
	2150 2150 2150 2050
Wire Wire Line
	1500 1800 1500 1900
Wire Wire Line
	1500 1900 2150 1900
Wire Wire Line
	2150 1900 2150 1800
Wire Wire Line
	1500 1550 1500 1650
Wire Wire Line
	1500 1650 2150 1650
Wire Wire Line
	2150 1650 2150 1550
Wire Wire Line
	1500 1300 1500 1400
Wire Wire Line
	1500 1400 2150 1400
Wire Wire Line
	2150 1400 2150 1300
Wire Wire Line
	1200 2550 1200 2300
Connection ~ 1200 2550
Wire Wire Line
	1200 2050 1200 2300
Connection ~ 1200 2300
Wire Wire Line
	1200 2050 1200 1800
Connection ~ 1200 2050
Wire Wire Line
	1200 1800 1200 1550
Connection ~ 1200 1800
Wire Wire Line
	1200 1550 1200 1300
Connection ~ 1200 1550
Wire Wire Line
	1850 2550 1850 2300
Wire Wire Line
	1850 2300 1850 2050
Connection ~ 1850 2300
Wire Wire Line
	1850 1800 1850 2050
Connection ~ 1850 2050
Wire Wire Line
	1850 1800 1850 1550
Connection ~ 1850 1800
Wire Wire Line
	1850 1300 1850 1550
Connection ~ 1850 1550
$Comp
L Device:LED D18
U 1 1 61B8A9CA
P 2650 2550
F 0 "D18" H 2643 2295 50  0000 C CNN
F 1 "LED" H 2643 2386 50  0000 C CNN
F 2 "" H 2650 2550 50  0001 C CNN
F 3 "~" H 2650 2550 50  0001 C CNN
	1    2650 2550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D17
U 1 1 61B8A9D0
P 2650 2300
F 0 "D17" H 2643 2045 50  0000 C CNN
F 1 "LED" H 2643 2136 50  0000 C CNN
F 2 "" H 2650 2300 50  0001 C CNN
F 3 "~" H 2650 2300 50  0001 C CNN
	1    2650 2300
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D16
U 1 1 61B8A9D6
P 2650 2050
F 0 "D16" H 2643 1795 50  0000 C CNN
F 1 "LED" H 2643 1886 50  0000 C CNN
F 2 "" H 2650 2050 50  0001 C CNN
F 3 "~" H 2650 2050 50  0001 C CNN
	1    2650 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D15
U 1 1 61B8A9DC
P 2650 1800
F 0 "D15" H 2643 1545 50  0000 C CNN
F 1 "LED" H 2643 1636 50  0000 C CNN
F 2 "" H 2650 1800 50  0001 C CNN
F 3 "~" H 2650 1800 50  0001 C CNN
	1    2650 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D14
U 1 1 61B8A9E2
P 2650 1550
F 0 "D14" H 2643 1295 50  0000 C CNN
F 1 "LED" H 2643 1386 50  0000 C CNN
F 2 "" H 2650 1550 50  0001 C CNN
F 3 "~" H 2650 1550 50  0001 C CNN
	1    2650 1550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D13
U 1 1 61B8A9E8
P 2650 1300
F 0 "D13" H 2643 1045 50  0000 C CNN
F 1 "LED" H 2643 1136 50  0000 C CNN
F 2 "" H 2650 1300 50  0001 C CNN
F 3 "~" H 2650 1300 50  0001 C CNN
	1    2650 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 2650 2800 2650
Wire Wire Line
	2800 2650 2800 2550
Wire Wire Line
	2150 2400 2800 2400
Wire Wire Line
	2800 2400 2800 2300
Wire Wire Line
	2150 2150 2800 2150
Wire Wire Line
	2800 2150 2800 2050
Wire Wire Line
	2150 1900 2800 1900
Wire Wire Line
	2800 1900 2800 1800
Wire Wire Line
	2150 1650 2800 1650
Wire Wire Line
	2800 1650 2800 1550
Wire Wire Line
	2150 1400 2800 1400
Wire Wire Line
	2800 1400 2800 1300
Wire Wire Line
	2500 2550 2500 2300
Wire Wire Line
	2500 2300 2500 2050
Connection ~ 2500 2300
Wire Wire Line
	2500 1800 2500 2050
Connection ~ 2500 2050
Wire Wire Line
	2500 1800 2500 1550
Connection ~ 2500 1800
Wire Wire Line
	2500 1300 2500 1550
Connection ~ 2500 1550
$Comp
L Device:LED D24
U 1 1 61B8F5A5
P 3300 2550
F 0 "D24" H 3293 2295 50  0000 C CNN
F 1 "LED" H 3293 2386 50  0000 C CNN
F 2 "" H 3300 2550 50  0001 C CNN
F 3 "~" H 3300 2550 50  0001 C CNN
	1    3300 2550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D23
U 1 1 61B8F5AB
P 3300 2300
F 0 "D23" H 3293 2045 50  0000 C CNN
F 1 "LED" H 3293 2136 50  0000 C CNN
F 2 "" H 3300 2300 50  0001 C CNN
F 3 "~" H 3300 2300 50  0001 C CNN
	1    3300 2300
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D22
U 1 1 61B8F5B1
P 3300 2050
F 0 "D22" H 3293 1795 50  0000 C CNN
F 1 "LED" H 3293 1886 50  0000 C CNN
F 2 "" H 3300 2050 50  0001 C CNN
F 3 "~" H 3300 2050 50  0001 C CNN
	1    3300 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D21
U 1 1 61B8F5B7
P 3300 1800
F 0 "D21" H 3293 1545 50  0000 C CNN
F 1 "LED" H 3293 1636 50  0000 C CNN
F 2 "" H 3300 1800 50  0001 C CNN
F 3 "~" H 3300 1800 50  0001 C CNN
	1    3300 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D20
U 1 1 61B8F5BD
P 3300 1550
F 0 "D20" H 3293 1295 50  0000 C CNN
F 1 "LED" H 3293 1386 50  0000 C CNN
F 2 "" H 3300 1550 50  0001 C CNN
F 3 "~" H 3300 1550 50  0001 C CNN
	1    3300 1550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D19
U 1 1 61B8F5C3
P 3300 1300
F 0 "D19" H 3293 1045 50  0000 C CNN
F 1 "LED" H 3293 1136 50  0000 C CNN
F 2 "" H 3300 1300 50  0001 C CNN
F 3 "~" H 3300 1300 50  0001 C CNN
	1    3300 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 2650 3450 2650
Wire Wire Line
	3450 2650 3450 2550
Wire Wire Line
	2800 2400 3450 2400
Wire Wire Line
	3450 2400 3450 2300
Wire Wire Line
	2800 2150 3450 2150
Wire Wire Line
	3450 2150 3450 2050
Wire Wire Line
	2800 1900 3450 1900
Wire Wire Line
	3450 1900 3450 1800
Wire Wire Line
	2800 1650 3450 1650
Wire Wire Line
	3450 1650 3450 1550
Wire Wire Line
	2800 1400 3450 1400
Wire Wire Line
	3450 1400 3450 1300
Wire Wire Line
	3150 2550 3150 2300
Wire Wire Line
	3150 2300 3150 2050
Connection ~ 3150 2300
Wire Wire Line
	3150 1800 3150 2050
Connection ~ 3150 2050
Wire Wire Line
	3150 1800 3150 1550
Connection ~ 3150 1800
Wire Wire Line
	3150 1300 3150 1550
Connection ~ 3150 1550
$Comp
L Device:LED D30
U 1 1 61BB0758
P 3900 2550
F 0 "D30" H 3893 2295 50  0000 C CNN
F 1 "LED" H 3893 2386 50  0000 C CNN
F 2 "" H 3900 2550 50  0001 C CNN
F 3 "~" H 3900 2550 50  0001 C CNN
	1    3900 2550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D29
U 1 1 61BB075E
P 3900 2300
F 0 "D29" H 3893 2045 50  0000 C CNN
F 1 "LED" H 3893 2136 50  0000 C CNN
F 2 "" H 3900 2300 50  0001 C CNN
F 3 "~" H 3900 2300 50  0001 C CNN
	1    3900 2300
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D28
U 1 1 61BB0764
P 3900 2050
F 0 "D28" H 3893 1795 50  0000 C CNN
F 1 "LED" H 3893 1886 50  0000 C CNN
F 2 "" H 3900 2050 50  0001 C CNN
F 3 "~" H 3900 2050 50  0001 C CNN
	1    3900 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D27
U 1 1 61BB076A
P 3900 1800
F 0 "D27" H 3893 1545 50  0000 C CNN
F 1 "LED" H 3893 1636 50  0000 C CNN
F 2 "" H 3900 1800 50  0001 C CNN
F 3 "~" H 3900 1800 50  0001 C CNN
	1    3900 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D26
U 1 1 61BB0770
P 3900 1550
F 0 "D26" H 3893 1295 50  0000 C CNN
F 1 "LED" H 3893 1386 50  0000 C CNN
F 2 "" H 3900 1550 50  0001 C CNN
F 3 "~" H 3900 1550 50  0001 C CNN
	1    3900 1550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D25
U 1 1 61BB0776
P 3900 1300
F 0 "D25" H 3893 1045 50  0000 C CNN
F 1 "LED" H 3893 1136 50  0000 C CNN
F 2 "" H 3900 1300 50  0001 C CNN
F 3 "~" H 3900 1300 50  0001 C CNN
	1    3900 1300
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D36
U 1 1 61BB077D
P 4550 2550
F 0 "D36" H 4543 2295 50  0000 C CNN
F 1 "LED" H 4543 2386 50  0000 C CNN
F 2 "" H 4550 2550 50  0001 C CNN
F 3 "~" H 4550 2550 50  0001 C CNN
	1    4550 2550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D35
U 1 1 61BB0783
P 4550 2300
F 0 "D35" H 4543 2045 50  0000 C CNN
F 1 "LED" H 4543 2136 50  0000 C CNN
F 2 "" H 4550 2300 50  0001 C CNN
F 3 "~" H 4550 2300 50  0001 C CNN
	1    4550 2300
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D34
U 1 1 61BB0789
P 4550 2050
F 0 "D34" H 4543 1795 50  0000 C CNN
F 1 "LED" H 4543 1886 50  0000 C CNN
F 2 "" H 4550 2050 50  0001 C CNN
F 3 "~" H 4550 2050 50  0001 C CNN
	1    4550 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D33
U 1 1 61BB078F
P 4550 1800
F 0 "D33" H 4543 1545 50  0000 C CNN
F 1 "LED" H 4543 1636 50  0000 C CNN
F 2 "" H 4550 1800 50  0001 C CNN
F 3 "~" H 4550 1800 50  0001 C CNN
	1    4550 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D32
U 1 1 61BB0795
P 4550 1550
F 0 "D32" H 4543 1295 50  0000 C CNN
F 1 "LED" H 4543 1386 50  0000 C CNN
F 2 "" H 4550 1550 50  0001 C CNN
F 3 "~" H 4550 1550 50  0001 C CNN
	1    4550 1550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D31
U 1 1 61BB079B
P 4550 1300
F 0 "D31" H 4543 1045 50  0000 C CNN
F 1 "LED" H 4543 1136 50  0000 C CNN
F 2 "" H 4550 1300 50  0001 C CNN
F 3 "~" H 4550 1300 50  0001 C CNN
	1    4550 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 2550 4050 2650
Wire Wire Line
	4050 2650 4700 2650
Wire Wire Line
	4700 2650 4700 2550
Wire Wire Line
	4050 2300 4050 2400
Wire Wire Line
	4050 2400 4700 2400
Wire Wire Line
	4700 2400 4700 2300
Wire Wire Line
	4050 2050 4050 2150
Wire Wire Line
	4050 2150 4700 2150
Wire Wire Line
	4700 2150 4700 2050
Wire Wire Line
	4050 1800 4050 1900
Wire Wire Line
	4050 1900 4700 1900
Wire Wire Line
	4700 1900 4700 1800
Wire Wire Line
	4050 1550 4050 1650
Wire Wire Line
	4050 1650 4700 1650
Wire Wire Line
	4700 1650 4700 1550
Wire Wire Line
	4050 1300 4050 1400
Wire Wire Line
	4050 1400 4700 1400
Wire Wire Line
	4700 1400 4700 1300
Wire Wire Line
	3750 2550 3750 2300
Wire Wire Line
	3750 2050 3750 2300
Connection ~ 3750 2300
Wire Wire Line
	3750 2050 3750 1800
Connection ~ 3750 2050
Wire Wire Line
	3750 1800 3750 1550
Connection ~ 3750 1800
Wire Wire Line
	3750 1550 3750 1300
Connection ~ 3750 1550
Wire Wire Line
	4400 2550 4400 2300
Wire Wire Line
	4400 2300 4400 2050
Connection ~ 4400 2300
Wire Wire Line
	4400 1800 4400 2050
Connection ~ 4400 2050
Wire Wire Line
	4400 1800 4400 1550
Connection ~ 4400 1800
Wire Wire Line
	4400 1300 4400 1550
Connection ~ 4400 1550
$Comp
L Device:LED D42
U 1 1 61BB07C6
P 5200 2550
F 0 "D42" H 5193 2295 50  0000 C CNN
F 1 "LED" H 5193 2386 50  0000 C CNN
F 2 "" H 5200 2550 50  0001 C CNN
F 3 "~" H 5200 2550 50  0001 C CNN
	1    5200 2550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D41
U 1 1 61BB07CC
P 5200 2300
F 0 "D41" H 5193 2045 50  0000 C CNN
F 1 "LED" H 5193 2136 50  0000 C CNN
F 2 "" H 5200 2300 50  0001 C CNN
F 3 "~" H 5200 2300 50  0001 C CNN
	1    5200 2300
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D40
U 1 1 61BB07D2
P 5200 2050
F 0 "D40" H 5193 1795 50  0000 C CNN
F 1 "LED" H 5193 1886 50  0000 C CNN
F 2 "" H 5200 2050 50  0001 C CNN
F 3 "~" H 5200 2050 50  0001 C CNN
	1    5200 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D39
U 1 1 61BB07D8
P 5200 1800
F 0 "D39" H 5193 1545 50  0000 C CNN
F 1 "LED" H 5193 1636 50  0000 C CNN
F 2 "" H 5200 1800 50  0001 C CNN
F 3 "~" H 5200 1800 50  0001 C CNN
	1    5200 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D38
U 1 1 61BB07DE
P 5200 1550
F 0 "D38" H 5193 1295 50  0000 C CNN
F 1 "LED" H 5193 1386 50  0000 C CNN
F 2 "" H 5200 1550 50  0001 C CNN
F 3 "~" H 5200 1550 50  0001 C CNN
	1    5200 1550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D37
U 1 1 61BB07E4
P 5200 1300
F 0 "D37" H 5193 1045 50  0000 C CNN
F 1 "LED" H 5193 1136 50  0000 C CNN
F 2 "" H 5200 1300 50  0001 C CNN
F 3 "~" H 5200 1300 50  0001 C CNN
	1    5200 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4700 2650 5350 2650
Wire Wire Line
	5350 2650 5350 2550
Wire Wire Line
	4700 2400 5350 2400
Wire Wire Line
	5350 2400 5350 2300
Wire Wire Line
	4700 2150 5350 2150
Wire Wire Line
	5350 2150 5350 2050
Wire Wire Line
	4700 1900 5350 1900
Wire Wire Line
	5350 1900 5350 1800
Wire Wire Line
	4700 1650 5350 1650
Wire Wire Line
	5350 1650 5350 1550
Wire Wire Line
	4700 1400 5350 1400
Wire Wire Line
	5350 1400 5350 1300
Wire Wire Line
	5050 2550 5050 2300
Wire Wire Line
	5050 2300 5050 2050
Connection ~ 5050 2300
Wire Wire Line
	5050 1800 5050 2050
Connection ~ 5050 2050
Wire Wire Line
	5050 1800 5050 1550
Connection ~ 5050 1800
Wire Wire Line
	5050 1300 5050 1550
Connection ~ 5050 1550
$Comp
L Device:LED D48
U 1 1 61BB07FF
P 5850 2550
F 0 "D48" H 5843 2295 50  0000 C CNN
F 1 "LED" H 5843 2386 50  0000 C CNN
F 2 "" H 5850 2550 50  0001 C CNN
F 3 "~" H 5850 2550 50  0001 C CNN
	1    5850 2550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D47
U 1 1 61BB0805
P 5850 2300
F 0 "D47" H 5843 2045 50  0000 C CNN
F 1 "LED" H 5843 2136 50  0000 C CNN
F 2 "" H 5850 2300 50  0001 C CNN
F 3 "~" H 5850 2300 50  0001 C CNN
	1    5850 2300
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D46
U 1 1 61BB080B
P 5850 2050
F 0 "D46" H 5843 1795 50  0000 C CNN
F 1 "LED" H 5843 1886 50  0000 C CNN
F 2 "" H 5850 2050 50  0001 C CNN
F 3 "~" H 5850 2050 50  0001 C CNN
	1    5850 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D45
U 1 1 61BB0811
P 5850 1800
F 0 "D45" H 5843 1545 50  0000 C CNN
F 1 "LED" H 5843 1636 50  0000 C CNN
F 2 "" H 5850 1800 50  0001 C CNN
F 3 "~" H 5850 1800 50  0001 C CNN
	1    5850 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D44
U 1 1 61BB0817
P 5850 1550
F 0 "D44" H 5843 1295 50  0000 C CNN
F 1 "LED" H 5843 1386 50  0000 C CNN
F 2 "" H 5850 1550 50  0001 C CNN
F 3 "~" H 5850 1550 50  0001 C CNN
	1    5850 1550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D43
U 1 1 61BB081D
P 5850 1300
F 0 "D43" H 5843 1045 50  0000 C CNN
F 1 "LED" H 5843 1136 50  0000 C CNN
F 2 "" H 5850 1300 50  0001 C CNN
F 3 "~" H 5850 1300 50  0001 C CNN
	1    5850 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 2650 6000 2650
Wire Wire Line
	6000 2650 6000 2550
Wire Wire Line
	5350 2400 6000 2400
Wire Wire Line
	6000 2400 6000 2300
Wire Wire Line
	5350 2150 6000 2150
Wire Wire Line
	6000 2150 6000 2050
Wire Wire Line
	5350 1900 6000 1900
Wire Wire Line
	6000 1900 6000 1800
Wire Wire Line
	5350 1650 6000 1650
Wire Wire Line
	6000 1650 6000 1550
Wire Wire Line
	5350 1400 6000 1400
Wire Wire Line
	6000 1400 6000 1300
Wire Wire Line
	5700 2550 5700 2300
Wire Wire Line
	5700 2300 5700 2050
Connection ~ 5700 2300
Wire Wire Line
	5700 1800 5700 2050
Connection ~ 5700 2050
Wire Wire Line
	5700 1800 5700 1550
Connection ~ 5700 1800
Wire Wire Line
	5700 1300 5700 1550
Connection ~ 5700 1550
Wire Wire Line
	3450 2650 4050 2650
Connection ~ 3450 2650
Connection ~ 4050 2650
Connection ~ 2800 2650
Connection ~ 2150 2650
Connection ~ 4700 2650
Connection ~ 5350 2650
Connection ~ 2150 2400
Connection ~ 2800 2400
Connection ~ 2150 2150
Connection ~ 2800 2150
Connection ~ 2150 1900
Connection ~ 2800 1900
Connection ~ 2150 1650
Connection ~ 2800 1650
Connection ~ 2150 1400
Connection ~ 2800 1400
Connection ~ 4700 2400
Connection ~ 5350 2400
Connection ~ 4700 2150
Connection ~ 5350 2150
Connection ~ 4700 1900
Connection ~ 5350 1900
Connection ~ 4700 1650
Connection ~ 5350 1650
Connection ~ 4700 1400
Connection ~ 5350 1400
Wire Wire Line
	3450 2400 4050 2400
Connection ~ 3450 2400
Connection ~ 4050 2400
Wire Wire Line
	3450 2150 4050 2150
Connection ~ 3450 2150
Connection ~ 4050 2150
Wire Wire Line
	3450 1900 4050 1900
Connection ~ 3450 1900
Connection ~ 4050 1900
Wire Wire Line
	3450 1650 4050 1650
Connection ~ 3450 1650
Connection ~ 4050 1650
Wire Wire Line
	3450 1400 4050 1400
Connection ~ 3450 1400
Connection ~ 4050 1400
$Comp
L Device:R_US R2
U 1 1 61C3D00E
P 1850 3000
F 0 "R2" H 1918 3046 50  0000 L CNN
F 1 "100ohm-10k" H 1918 2955 50  0000 L CNN
F 2 "" V 1890 2990 50  0001 C CNN
F 3 "~" H 1850 3000 50  0001 C CNN
	1    1850 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 61C42618
P 2500 3000
F 0 "R3" H 2568 3046 50  0000 L CNN
F 1 "100ohm-10k" H 2568 2955 50  0000 L CNN
F 2 "" V 2540 2990 50  0001 C CNN
F 3 "~" H 2500 3000 50  0001 C CNN
	1    2500 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 61C47A59
P 3150 3000
F 0 "R4" H 3218 3046 50  0000 L CNN
F 1 "100ohm-10k" H 3218 2955 50  0000 L CNN
F 2 "" V 3190 2990 50  0001 C CNN
F 3 "~" H 3150 3000 50  0001 C CNN
	1    3150 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 61C4CEC5
P 3750 3000
F 0 "R5" H 3818 3046 50  0000 L CNN
F 1 "100ohm-10k" H 3818 2955 50  0000 L CNN
F 2 "" V 3790 2990 50  0001 C CNN
F 3 "~" H 3750 3000 50  0001 C CNN
	1    3750 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R6
U 1 1 61C523C9
P 4400 3000
F 0 "R6" H 4468 3046 50  0000 L CNN
F 1 "100ohm-10k" H 4468 2955 50  0000 L CNN
F 2 "" V 4440 2990 50  0001 C CNN
F 3 "~" H 4400 3000 50  0001 C CNN
	1    4400 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R7
U 1 1 61C57977
P 5050 3000
F 0 "R7" H 5118 3046 50  0000 L CNN
F 1 "100ohm-10k" H 5118 2955 50  0000 L CNN
F 2 "" V 5090 2990 50  0001 C CNN
F 3 "~" H 5050 3000 50  0001 C CNN
	1    5050 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R8
U 1 1 61C5CF85
P 5700 3000
F 0 "R8" H 5768 3046 50  0000 L CNN
F 1 "100ohm-10k" H 5768 2955 50  0000 L CNN
F 2 "" V 5740 2990 50  0001 C CNN
F 3 "~" H 5700 3000 50  0001 C CNN
	1    5700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2850 1850 2550
Connection ~ 1850 2550
Wire Wire Line
	2500 2850 2500 2550
Connection ~ 2500 2550
Wire Wire Line
	3150 2850 3150 2550
Connection ~ 3150 2550
Wire Wire Line
	3750 2850 3750 2550
Connection ~ 3750 2550
Wire Wire Line
	4400 2850 4400 2550
Connection ~ 4400 2550
Wire Wire Line
	5050 2850 5050 2550
Connection ~ 5050 2550
Wire Wire Line
	5700 2850 5700 2550
Connection ~ 5700 2550
$Comp
L Transistor_BJT:PN2222A Q6
U 1 1 61D654B3
P 9400 1600
F 0 "Q6" H 9591 1554 50  0000 L CNN
F 1 "PN2222A" H 9591 1645 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9600 1525 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/PN2222-D.PDF" H 9400 1600 50  0001 L CNN
	1    9400 1600
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:PN2222A Q5
U 1 1 61D6C642
P 8900 1850
F 0 "Q5" H 9091 1804 50  0000 L CNN
F 1 "PN2222A" H 9091 1895 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9100 1775 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/PN2222-D.PDF" H 8900 1850 50  0001 L CNN
	1    8900 1850
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:PN2222A Q4
U 1 1 61D752D6
P 8400 2100
F 0 "Q4" H 8591 2054 50  0000 L CNN
F 1 "PN2222A" H 8591 2145 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8600 2025 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/PN2222-D.PDF" H 8400 2100 50  0001 L CNN
	1    8400 2100
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:PN2222A Q3
U 1 1 61D8753B
P 7900 2350
F 0 "Q3" H 8091 2304 50  0000 L CNN
F 1 "PN2222A" H 8091 2395 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8100 2275 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/PN2222-D.PDF" H 7900 2350 50  0001 L CNN
	1    7900 2350
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:PN2222A Q2
U 1 1 61D87541
P 7400 2600
F 0 "Q2" H 7591 2554 50  0000 L CNN
F 1 "PN2222A" H 7591 2645 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7600 2525 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/PN2222-D.PDF" H 7400 2600 50  0001 L CNN
	1    7400 2600
	-1   0    0    1   
$EndComp
Connection ~ 6000 2650
Connection ~ 6000 2400
Connection ~ 6000 2150
Connection ~ 6000 1900
Connection ~ 6000 1650
Wire Wire Line
	6000 1400 9300 1400
Connection ~ 6000 1400
$Comp
L power:Earth #PWR03
U 1 1 61DEC527
P 6800 3050
F 0 "#PWR03" H 6800 2800 50  0001 C CNN
F 1 "Earth" H 6800 2900 50  0001 C CNN
F 2 "" H 6800 3050 50  0001 C CNN
F 3 "~" H 6800 3050 50  0001 C CNN
	1    6800 3050
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR04
U 1 1 61DECD46
P 7300 2800
F 0 "#PWR04" H 7300 2550 50  0001 C CNN
F 1 "Earth" H 7300 2650 50  0001 C CNN
F 2 "" H 7300 2800 50  0001 C CNN
F 3 "~" H 7300 2800 50  0001 C CNN
	1    7300 2800
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR05
U 1 1 61DED577
P 7800 2550
F 0 "#PWR05" H 7800 2300 50  0001 C CNN
F 1 "Earth" H 7800 2400 50  0001 C CNN
F 2 "" H 7800 2550 50  0001 C CNN
F 3 "~" H 7800 2550 50  0001 C CNN
	1    7800 2550
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR06
U 1 1 61DEDE6A
P 8300 2300
F 0 "#PWR06" H 8300 2050 50  0001 C CNN
F 1 "Earth" H 8300 2150 50  0001 C CNN
F 2 "" H 8300 2300 50  0001 C CNN
F 3 "~" H 8300 2300 50  0001 C CNN
	1    8300 2300
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR09
U 1 1 61DEE95A
P 8800 2050
F 0 "#PWR09" H 8800 1800 50  0001 C CNN
F 1 "Earth" H 8800 1900 50  0001 C CNN
F 2 "" H 8800 2050 50  0001 C CNN
F 3 "~" H 8800 2050 50  0001 C CNN
	1    8800 2050
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR011
U 1 1 61DEF466
P 9300 1800
F 0 "#PWR011" H 9300 1550 50  0001 C CNN
F 1 "Earth" H 9300 1650 50  0001 C CNN
F 2 "" H 9300 1800 50  0001 C CNN
F 3 "~" H 9300 1800 50  0001 C CNN
	1    9300 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 5550 8800 5550
Wire Wire Line
	8800 5550 8800 5250
Wire Wire Line
	8800 5250 9300 5250
Wire Wire Line
	8700 5650 8900 5650
Wire Wire Line
	8900 5650 8900 5150
Wire Wire Line
	8900 5150 9300 5150
Wire Wire Line
	5350 3800 5350 3550
Wire Wire Line
	5350 3550 1200 3550
Wire Wire Line
	1200 3550 1200 3150
Wire Wire Line
	5450 3800 5450 3500
Wire Wire Line
	5450 3500 1850 3500
Wire Wire Line
	1850 3500 1850 3150
Wire Wire Line
	5550 3450 2500 3450
Wire Wire Line
	2500 3450 2500 3150
Wire Wire Line
	5550 3450 5550 3800
Wire Wire Line
	5650 3800 5650 3400
Wire Wire Line
	5650 3400 3150 3400
Wire Wire Line
	3150 3400 3150 3150
Wire Wire Line
	5750 3800 5750 3350
Wire Wire Line
	5750 3350 3750 3350
Wire Wire Line
	3750 3350 3750 3150
Wire Wire Line
	5850 3300 4400 3300
Wire Wire Line
	4400 3300 4400 3150
Wire Wire Line
	5850 3300 5850 3800
Wire Wire Line
	5950 3800 5950 3250
Wire Wire Line
	5950 3250 5050 3250
Wire Wire Line
	5050 3250 5050 3150
Wire Wire Line
	6050 3800 6050 3200
Wire Wire Line
	6050 3200 5700 3200
Wire Wire Line
	5700 3200 5700 3150
NoConn ~ 7700 4950
NoConn ~ 7700 5250
NoConn ~ 7700 5850
NoConn ~ 8700 5850
NoConn ~ 8700 5750
NoConn ~ 8700 5450
NoConn ~ 8700 5350
NoConn ~ 8700 5250
NoConn ~ 8700 5150
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 61F71A18
P 9450 4050
F 0 "J1" H 9530 4042 50  0000 L CNN
F 1 "UART interface" H 9530 3951 50  0000 L CNN
F 2 "" H 9450 4050 50  0001 C CNN
F 3 "~" H 9450 4050 50  0001 C CNN
	1    9450 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4250 9250 4350
$Comp
L power:Earth #PWR010
U 1 1 61F8A480
P 9250 4350
F 0 "#PWR010" H 9250 4100 50  0001 C CNN
F 1 "Earth" H 9250 4200 50  0001 C CNN
F 2 "" H 9250 4350 50  0001 C CNN
F 3 "~" H 9250 4350 50  0001 C CNN
	1    9250 4350
	1    0    0    -1  
$EndComp
Connection ~ 9250 4350
Wire Wire Line
	9250 4050 7600 4050
Wire Wire Line
	7600 4050 7600 4650
Wire Wire Line
	7600 4650 7700 4650
Wire Wire Line
	9250 3950 7700 3950
Wire Wire Line
	7700 3950 7700 4550
Wire Wire Line
	8400 3900 8400 4150
Wire Wire Line
	8400 4150 9250 4150
Connection ~ 8400 4150
Wire Wire Line
	8700 4650 8700 4550
Wire Wire Line
	9250 3850 8700 3850
Wire Wire Line
	8700 3850 8700 4550
Connection ~ 8700 4550
Wire Wire Line
	5350 4600 5350 5550
Wire Wire Line
	5550 4600 5550 5750
Wire Wire Line
	5850 4600 5850 5650
$Comp
L Device:R_US R9
U 1 1 620845C8
P 7100 3100
F 0 "R9" H 7168 3146 50  0000 L CNN
F 1 "1k" H 7168 3055 50  0000 L CNN
F 2 "" V 7140 3090 50  0001 C CNN
F 3 "~" H 7100 3100 50  0001 C CNN
	1    7100 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R10
U 1 1 6208EB38
P 7600 3100
F 0 "R10" H 7668 3146 50  0000 L CNN
F 1 "1k" H 7668 3055 50  0000 L CNN
F 2 "" V 7640 3090 50  0001 C CNN
F 3 "~" H 7600 3100 50  0001 C CNN
	1    7600 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R11
U 1 1 62098D7F
P 8100 3100
F 0 "R11" H 8168 3146 50  0000 L CNN
F 1 "1k" H 8168 3055 50  0000 L CNN
F 2 "" V 8140 3090 50  0001 C CNN
F 3 "~" H 8100 3100 50  0001 C CNN
	1    8100 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R12
U 1 1 620A3127
P 8600 3100
F 0 "R12" H 8668 3146 50  0000 L CNN
F 1 "1k" H 8668 3055 50  0000 L CNN
F 2 "" V 8640 3090 50  0001 C CNN
F 3 "~" H 8600 3100 50  0001 C CNN
	1    8600 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R13
U 1 1 620AD790
P 9100 3100
F 0 "R13" H 9168 3146 50  0000 L CNN
F 1 "1k" H 9168 3055 50  0000 L CNN
F 2 "" V 9140 3090 50  0001 C CNN
F 3 "~" H 9100 3100 50  0001 C CNN
	1    9100 3100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:PN2222A Q1
U 1 1 61D87547
P 6900 2850
F 0 "Q1" H 7091 2804 50  0000 L CNN
F 1 "PN2222A" H 7091 2895 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7100 2775 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/PN2222-D.PDF" H 6900 2850 50  0001 L CNN
	1    6900 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 1650 8800 1650
Wire Wire Line
	6000 1900 8300 1900
Wire Wire Line
	6000 2150 7800 2150
Wire Wire Line
	6000 2400 7300 2400
Wire Wire Line
	6000 2650 6800 2650
Wire Wire Line
	7100 2850 7100 2950
Wire Wire Line
	7600 2600 7600 2950
Wire Wire Line
	8100 2350 8100 2950
Wire Wire Line
	8600 2100 8600 2950
Wire Wire Line
	9100 1850 9100 2950
$Comp
L Device:R_US R14
U 1 1 6217F279
P 9600 3100
F 0 "R14" H 9668 3146 50  0000 L CNN
F 1 "1k" H 9668 3055 50  0000 L CNN
F 2 "" V 9640 3090 50  0001 C CNN
F 3 "~" H 9600 3100 50  0001 C CNN
	1    9600 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1600 9600 2950
Wire Wire Line
	7100 3250 7100 5450
Wire Wire Line
	7100 5450 7700 5450
Wire Wire Line
	7150 5350 7700 5350
Wire Wire Line
	7200 5150 7700 5150
Wire Wire Line
	7250 5050 7700 5050
Wire Wire Line
	7300 4850 7700 4850
Wire Wire Line
	7350 4750 7350 3650
Wire Wire Line
	7350 3650 9600 3650
Wire Wire Line
	9600 3650 9600 3250
Wire Wire Line
	7350 4750 7700 4750
Wire Wire Line
	7300 3600 9100 3600
Wire Wire Line
	9100 3600 9100 3250
Wire Wire Line
	7300 3600 7300 4850
Wire Wire Line
	7250 5050 7250 3550
Wire Wire Line
	7250 3550 8600 3550
Wire Wire Line
	8600 3550 8600 3250
Wire Wire Line
	7200 5150 7200 3500
Wire Wire Line
	7200 3500 8100 3500
Wire Wire Line
	8100 3500 8100 3250
Wire Wire Line
	7150 5350 7150 3450
Wire Wire Line
	7150 3450 7600 3450
Wire Wire Line
	7600 3450 7600 3250
$EndSCHEMATC
