EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A2 23386 16535
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
L Relay:FINDER-40.41 SW-Pr_K1
U 1 1 60E3D034
P 6650 11450
F 0 "SW-Pr_K1" V 6175 11450 50  0000 C CNN
F 1 "." V 6174 11450 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_40.41" H 7790 11410 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 6650 11450 50  0001 C CNN
	1    6650 11450
	0    1    1    0   
$EndComp
$Comp
L Relay:FINDER-40.41 SW-Pr_K2
U 1 1 60E323E2
P 7550 11350
F 0 "SW-Pr_K2" V 7075 11350 50  0000 C CNN
F 1 "." V 7074 11350 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_40.41" H 8690 11310 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 7550 11350 50  0001 C CNN
	1    7550 11350
	0    1    1    0   
$EndComp
Text Label 7850 11450 0    50   ~ 0
.3
Text Label 7850 11650 0    50   ~ 0
.2
$Comp
L Connector:Conn_01x01_Female Banana_socket1
U 1 1 60E6DC55
P 2600 8500
F 0 "Banana_socket1" H 2492 8685 50  0001 C CNN
F 1 "Ph" H 2492 8594 50  0000 C CNN
F 2 "" H 2600 8500 50  0001 C CNN
F 3 "~" H 2600 8500 50  0001 C CNN
	1    2600 8500
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female Banana_socket2
U 1 1 60E72FB5
P 2600 8700
F 0 "Banana_socket2" H 2492 8885 50  0001 C CNN
F 1 "N" H 2492 8794 50  0000 C CNN
F 2 "" H 2600 8700 50  0001 C CNN
F 3 "~" H 2600 8700 50  0001 C CNN
	1    2600 8700
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female Banana_socket3
U 1 1 60E73AC3
P 2600 8900
F 0 "Banana_socket3" H 2492 9085 50  0001 C CNN
F 1 "CP" H 2492 8994 50  0000 C CNN
F 2 "" H 2600 8900 50  0001 C CNN
F 3 "~" H 2600 8900 50  0001 C CNN
	1    2600 8900
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female Banana_socket4
U 1 1 60E73E05
P 2600 9100
F 0 "Banana_socket4" H 2492 9285 50  0001 C CNN
F 1 "Prox" H 2492 9194 50  0000 C CNN
F 2 "" H 2600 9100 50  0001 C CNN
F 3 "~" H 2600 9100 50  0001 C CNN
	1    2600 9100
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female Banana_socket5
U 1 1 60E73EC8
P 2600 9300
F 0 "Banana_socket5" H 2492 9485 50  0001 C CNN
F 1 "PE" H 2492 9394 50  0000 C CNN
F 2 "" H 2600 9300 50  0001 C CNN
F 3 "~" H 2600 9300 50  0001 C CNN
	1    2600 9300
	-1   0    0    -1  
$EndComp
$Comp
L pspice:CAP Cg1
U 1 1 60E80331
P 4150 9700
F 0 "Cg1" V 4348 9746 50  0000 L CNN
F 1 "1n" V 4348 9615 50  0000 L CNN
F 2 "" H 4150 9700 50  0001 C CNN
F 3 "~" H 4150 9700 50  0001 C CNN
	1    4150 9700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4400 9700 4600 9700
$Comp
L Connector:Conn_Coaxial HF-Gen1
U 1 1 60E87DF8
P 4800 9700
F 0 "HF-Gen1" H 4900 9675 50  0000 L CNN
F 1 "BNC" H 4900 9584 50  0000 L CNN
F 2 "" H 4800 9700 50  0001 C CNN
F 3 " ~" H 4800 9700 50  0001 C CNN
	1    4800 9700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial Oszi1
U 1 1 60E8A6DD
P 4800 10200
F 0 "Oszi1" H 4900 10175 50  0000 L CNN
F 1 "BNC" H 4900 10084 50  0000 L CNN
F 2 "" H 4800 10200 50  0001 C CNN
F 3 " ~" H 4800 10200 50  0001 C CNN
	1    4800 10200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 9300 3450 9900
Wire Wire Line
	3650 8900 3650 9700
Wire Wire Line
	3650 9700 3900 9700
Connection ~ 3650 9700
Wire Wire Line
	3650 9700 3650 10200
Wire Wire Line
	3450 9900 4800 9900
Connection ~ 3450 9900
Wire Wire Line
	3450 9900 3450 10400
Wire Wire Line
	3650 10200 4600 10200
Wire Wire Line
	3450 10400 4800 10400
Connection ~ 3450 9300
Wire Wire Line
	2800 8900 3650 8900
Wire Wire Line
	2800 9300 3450 9300
$Comp
L Device:R R10
U 1 1 60E9A06C
P 7900 12000
F 0 "R10" H 7970 12046 50  0000 L CNN
F 1 "680" H 7970 11955 50  0000 L CNN
F 2 "" V 7830 12000 50  0001 C CNN
F 3 "~" H 7900 12000 50  0001 C CNN
	1    7900 12000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 60E9A752
P 8300 12000
F 0 "R11" H 8370 12046 50  0000 L CNN
F 1 "220" H 8370 11955 50  0000 L CNN
F 2 "" V 8230 12000 50  0001 C CNN
F 3 "~" H 8300 12000 50  0001 C CNN
	1    8300 12000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 12350 8300 12150
Wire Wire Line
	7900 12350 7900 12150
Wire Wire Line
	7900 12350 8300 12350
$Comp
L power:+5V #PWR0101
U 1 1 60EA21D5
P 7000 11050
F 0 "#PWR0101" H 7000 10900 50  0001 C CNN
F 1 "+5V" H 7015 11223 50  0000 C CNN
F 2 "" H 7000 11050 50  0001 C CNN
F 3 "" H 7000 11050 50  0001 C CNN
	1    7000 11050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 60EA2B0D
P 7900 10950
F 0 "#PWR0102" H 7900 10800 50  0001 C CNN
F 1 "+5V" H 7915 11123 50  0000 C CNN
F 2 "" H 7900 10950 50  0001 C CNN
F 3 "" H 7900 10950 50  0001 C CNN
	1    7900 10950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 11250 6950 11250
Wire Wire Line
	7900 11150 7850 11150
Wire Wire Line
	7850 11650 7900 11650
Wire Wire Line
	7900 11650 7900 11850
Wire Wire Line
	7250 11150 7200 11150
Wire Wire Line
	7000 11050 7000 11250
Wire Wire Line
	7900 10950 7900 11150
Wire Wire Line
	6950 11550 7250 11550
Wire Wire Line
	6350 11250 6300 11250
Wire Wire Line
	6300 11250 6300 11050
Wire Wire Line
	2800 9100 5700 9100
Wire Wire Line
	7850 11450 8300 11450
Wire Wire Line
	8300 11450 8300 11850
Wire Wire Line
	6250 12350 7900 12350
Wire Wire Line
	3450 9300 5500 9300
Connection ~ 7900 12350
$Comp
L power:+5V #PWR0103
U 1 1 60ED3F5C
P 7900 12700
F 0 "#PWR0103" H 7900 12550 50  0001 C CNN
F 1 "+5V" H 7915 12873 50  0000 C CNN
F 2 "" H 7900 12700 50  0001 C CNN
F 3 "" H 7900 12700 50  0001 C CNN
	1    7900 12700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 12900 7850 12900
Wire Wire Line
	7900 12700 7900 12900
Wire Wire Line
	7250 12900 7200 12900
Wire Wire Line
	7200 12900 7200 12700
Text GLabel 7200 12700 0    50   Input ~ 0
C_SW1
Wire Wire Line
	7200 10750 7200 11150
Text GLabel 7200 10750 0    50   Input ~ 0
C_SW-Pr_K2
Text GLabel 6300 11050 0    50   Input ~ 0
C_SW-Pr_K1
Wire Wire Line
	6250 12350 6250 13300
Wire Wire Line
	6250 13300 7250 13300
Text Label 7850 13200 0    50   ~ 0
.2
$Comp
L Relay:FINDER-40.41 SW1
U 1 1 60ED3F55
P 7550 13100
F 0 "SW1" V 7075 13100 50  0000 C CNN
F 1 "." V 7074 13100 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_40.41" H 8690 13060 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 7550 13100 50  0001 C CNN
	1    7550 13100
	0    1    1    0   
$EndComp
Text Label 7850 13400 0    50   ~ 0
.1
Text Label 6950 11750 0    50   ~ 0
.1
$Comp
L Device:C Cv1
U 1 1 60EFB9A0
P 9400 10150
F 0 "Cv1" H 9515 10196 50  0000 L CNN
F 1 "1,4n" H 9515 10105 50  0000 L CNN
F 2 "" H 9438 10000 50  0001 C CNN
F 3 "~" H 9400 10150 50  0001 C CNN
	1    9400 10150
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 60EFC11B
P 9050 8900
F 0 "L1" V 9122 8946 50  0000 L CNN
F 1 "1mH" V 9123 8736 50  0000 L CNN
F 2 "" H 9050 8900 50  0001 C CNN
F 3 "~" H 9050 8900 50  0001 C CNN
	1    9050 8900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 60F1F2F9
P 9050 8600
F 0 "R12" V 9120 8646 50  0000 L TNN
F 1 "1k" V 9120 8555 50  0000 R TNN
F 2 "" V 8980 8600 50  0001 C CNN
F 3 "~" H 9050 8600 50  0001 C CNN
	1    9050 8600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9200 8600 9400 8600
Wire Wire Line
	9400 8600 9400 8900
Wire Wire Line
	9200 8900 9400 8900
Connection ~ 9400 8900
Wire Wire Line
	9400 8900 9400 10000
Wire Wire Line
	8900 8600 8700 8600
Wire Wire Line
	8700 8600 8700 8900
Wire Wire Line
	8700 8900 8900 8900
Connection ~ 8700 8900
$Comp
L Device:R R13
U 1 1 60F5927B
P 11100 10150
F 0 "R13" H 11170 10196 50  0000 L CNN
F 1 "120" H 11170 10105 50  0000 L CNN
F 2 "" V 11030 10150 50  0001 C CNN
F 3 "~" H 11100 10150 50  0001 C CNN
	1    11100 10150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R30
U 1 1 60F5B5E4
P 14050 9650
F 0 "R30" H 14120 9696 50  0000 L CNN
F 1 "1870" H 14120 9605 50  0000 L CNN
F 2 "" V 13980 9650 50  0001 C CNN
F 3 "~" H 14050 9650 50  0001 C CNN
	1    14050 9650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R32
U 1 1 60F5D35E
P 14050 11050
F 0 "R32" H 14120 11096 50  0000 L CNN
F 1 "1820" H 14120 11005 50  0000 L CNN
F 2 "" V 13980 11050 50  0001 C CNN
F 3 "~" H 14050 11050 50  0001 C CNN
	1    14050 11050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R31
U 1 1 60F5F100
P 14050 10350
F 0 "R31" H 14120 10396 50  0000 L CNN
F 1 "920" H 14120 10305 50  0000 L CNN
F 2 "" V 13980 10350 50  0001 C CNN
F 3 "~" H 14050 10350 50  0001 C CNN
	1    14050 10350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R42
U 1 1 60F60F90
P 15950 12850
F 0 "R42" H 16020 12896 50  0000 L CNN
F 1 "909" H 16020 12805 50  0000 L CNN
F 2 "" V 15880 12850 50  0001 C CNN
F 3 "~" H 15950 12850 50  0001 C CNN
	1    15950 12850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R41
U 1 1 60F64E95
P 14900 11050
F 0 "R41" H 14970 11096 50  0000 L CNN
F 1 "392" H 14970 11005 50  0000 L CNN
F 2 "" V 14830 11050 50  0001 C CNN
F 3 "~" H 14900 11050 50  0001 C CNN
	1    14900 11050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R40
U 1 1 60F66DC6
P 14900 10350
F 0 "R40" H 14970 10396 50  0000 L CNN
F 1 "422" H 14970 10305 50  0000 L CNN
F 2 "" V 14830 10350 50  0001 C CNN
F 3 "~" H 14900 10350 50  0001 C CNN
	1    14900 10350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 60F7517F
P 10850 9300
F 0 "#PWR0104" H 10850 9150 50  0001 C CNN
F 1 "+5V" H 10865 9473 50  0000 C CNN
F 2 "" H 10850 9300 50  0001 C CNN
F 3 "" H 10850 9300 50  0001 C CNN
	1    10850 9300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 9500 10800 9500
Wire Wire Line
	10850 9300 10850 9500
Wire Wire Line
	10200 9500 10150 9500
Wire Wire Line
	10150 9500 10150 9300
Text GLabel 10150 9300 0    50   Input ~ 0
C_SW-Sh
Text Label 10800 9800 0    50   ~ 0
.2
Wire Wire Line
	10800 9800 11100 9800
$Comp
L Relay:FINDER-40.41 SW-Sh1
U 1 1 60F7518C
P 10500 9700
F 0 "SW-Sh1" V 10025 9700 50  0000 C CNN
F 1 "." V 10024 9700 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_40.41" H 11640 9660 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 10500 9700 50  0001 C CNN
	1    10500 9700
	0    1    1    0   
$EndComp
Text Label 10800 10000 0    50   ~ 0
.1
Wire Wire Line
	11100 9800 11100 10000
Wire Wire Line
	9400 8900 9700 8900
Wire Wire Line
	9700 8900 9700 9900
$Comp
L Device:D D1
U 1 1 60F9C498
P 11250 8900
F 0 "D1" H 11250 9117 50  0000 C CNN
F 1 "1N4934" H 11250 9026 50  0000 C CNN
F 2 "" H 11250 8900 50  0001 C CNN
F 3 "~" H 11250 8900 50  0001 C CNN
	1    11250 8900
	-1   0    0    -1  
$EndComp
$Comp
L Relay:FINDER-40.41 SW3_K1
U 1 1 60FB02DC
P 12450 9800
F 0 "SW3_K1" V 11975 9800 50  0000 C CNN
F 1 "." V 11974 9800 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_40.41" H 13590 9760 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 12450 9800 50  0001 C CNN
	1    12450 9800
	0    1    1    0   
$EndComp
$Comp
L Relay:FINDER-40.41 SW3_2
U 1 1 60FB02E2
P 13350 9700
F 0 "SW3_2" V 12875 9700 50  0000 C CNN
F 1 "." V 12874 9700 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_40.41" H 14490 9660 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 13350 9700 50  0001 C CNN
	1    13350 9700
	0    1    1    0   
$EndComp
Text Label 13650 9800 0    50   ~ 0
.3
Text Label 13650 10000 0    50   ~ 0
.2
Text Label 12750 10100 0    50   ~ 0
.1
$Comp
L power:+5V #PWR0105
U 1 1 60FB02EB
P 12800 9400
F 0 "#PWR0105" H 12800 9250 50  0001 C CNN
F 1 "+5V" H 12815 9573 50  0000 C CNN
F 2 "" H 12800 9400 50  0001 C CNN
F 3 "" H 12800 9400 50  0001 C CNN
	1    12800 9400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 60FB02F1
P 13700 9300
F 0 "#PWR0106" H 13700 9150 50  0001 C CNN
F 1 "+5V" H 13715 9473 50  0000 C CNN
F 2 "" H 13700 9300 50  0001 C CNN
F 3 "" H 13700 9300 50  0001 C CNN
	1    13700 9300
	1    0    0    -1  
$EndComp
Wire Wire Line
	12800 9600 12750 9600
Wire Wire Line
	13700 9500 13650 9500
Wire Wire Line
	12750 10100 12800 10100
Wire Wire Line
	13050 9500 13000 9500
Wire Wire Line
	12800 9400 12800 9600
Wire Wire Line
	13700 9300 13700 9500
Wire Wire Line
	12750 9900 13050 9900
Wire Wire Line
	12150 9600 12100 9600
Wire Wire Line
	12100 9600 12100 9400
Wire Wire Line
	13000 9100 13000 9500
Text GLabel 13000 9100 0    50   Input ~ 0
C_SW3_K2
Text GLabel 12100 9400 0    50   Input ~ 0
C_SW3_K1
Wire Wire Line
	11600 8900 11600 10000
Wire Wire Line
	14050 9800 14050 10000
Wire Wire Line
	14050 10500 14050 10700
Wire Wire Line
	13650 10000 14050 10000
Connection ~ 14050 10000
Wire Wire Line
	14050 10000 14050 10200
Wire Wire Line
	12800 10100 12800 10700
Wire Wire Line
	12800 10700 14050 10700
Connection ~ 14050 10700
Wire Wire Line
	14050 10700 14050 10900
Wire Wire Line
	14050 9500 14050 8900
$Comp
L Relay:FINDER-40.41 SW2_K1
U 1 1 6107604F
P 14550 8700
F 0 "SW2_K1" V 14075 8700 50  0000 C CNN
F 1 "." V 14074 8700 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_40.41" H 15690 8660 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 14550 8700 50  0001 C CNN
	1    14550 8700
	0    1    1    0   
$EndComp
$Comp
L Relay:FINDER-40.41 SW2_K2
U 1 1 61076055
P 15450 8600
F 0 "SW2_K2" V 14975 8600 50  0000 C CNN
F 1 "." V 14974 8600 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_40.41" H 16590 8560 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 15450 8600 50  0001 C CNN
	1    15450 8600
	0    1    1    0   
$EndComp
Text Label 15750 8700 0    50   ~ 0
.3
Text Label 14850 9000 0    50   ~ 0
.1
$Comp
L power:+5V #PWR0107
U 1 1 6107605E
P 14900 8300
F 0 "#PWR0107" H 14900 8150 50  0001 C CNN
F 1 "+5V" H 14915 8473 50  0000 C CNN
F 2 "" H 14900 8300 50  0001 C CNN
F 3 "" H 14900 8300 50  0001 C CNN
	1    14900 8300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 61076064
P 15800 8200
F 0 "#PWR0108" H 15800 8050 50  0001 C CNN
F 1 "+5V" H 15815 8373 50  0000 C CNN
F 2 "" H 15800 8200 50  0001 C CNN
F 3 "" H 15800 8200 50  0001 C CNN
	1    15800 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	14900 8500 14850 8500
Wire Wire Line
	15800 8400 15750 8400
Wire Wire Line
	14850 9000 14900 9000
Wire Wire Line
	15150 8400 15100 8400
Wire Wire Line
	14900 8300 14900 8500
Wire Wire Line
	15800 8200 15800 8400
Wire Wire Line
	14850 8800 15150 8800
Wire Wire Line
	14250 8500 14200 8500
Wire Wire Line
	14200 8500 14200 8300
Wire Wire Line
	15100 8000 15100 8400
Text GLabel 15100 8000 0    50   Input ~ 0
C_SW2_K2
Text GLabel 14200 8300 0    50   Input ~ 0
C_SW2_K1
Text Label 15750 8900 0    50   ~ 0
.2
$Comp
L Relay:FINDER-40.41 SW4_K1
U 1 1 610A3D4C
P 15750 9750
F 0 "SW4_K1" V 15275 9750 50  0000 C CNN
F 1 "." V 15274 9750 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_40.41" H 16890 9710 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 15750 9750 50  0001 C CNN
	1    15750 9750
	0    1    1    0   
$EndComp
$Comp
L Relay:FINDER-40.41 SW4_K2
U 1 1 610A3D52
P 16650 9650
F 0 "SW4_K2" V 16175 9650 50  0000 C CNN
F 1 "." V 16174 9650 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_40.41" H 17790 9610 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 16650 9650 50  0001 C CNN
	1    16650 9650
	0    1    1    0   
$EndComp
Text Label 16950 9750 0    50   ~ 0
.3
Text Label 16950 9950 0    50   ~ 0
.2
Text Label 16050 10050 0    50   ~ 0
.1
$Comp
L power:+5V #PWR0109
U 1 1 610A3D5B
P 16100 9350
F 0 "#PWR0109" H 16100 9200 50  0001 C CNN
F 1 "+5V" H 16115 9523 50  0000 C CNN
F 2 "" H 16100 9350 50  0001 C CNN
F 3 "" H 16100 9350 50  0001 C CNN
	1    16100 9350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 610A3D61
P 17000 9250
F 0 "#PWR0110" H 17000 9100 50  0001 C CNN
F 1 "+5V" H 17015 9423 50  0000 C CNN
F 2 "" H 17000 9250 50  0001 C CNN
F 3 "" H 17000 9250 50  0001 C CNN
	1    17000 9250
	1    0    0    -1  
$EndComp
Wire Wire Line
	16100 9550 16050 9550
Wire Wire Line
	17000 9450 16950 9450
Wire Wire Line
	16050 10050 16100 10050
Wire Wire Line
	16950 9950 17000 9950
Wire Wire Line
	16350 9450 16300 9450
Wire Wire Line
	16100 9350 16100 9550
Wire Wire Line
	17000 9250 17000 9450
Wire Wire Line
	16050 9850 16350 9850
Wire Wire Line
	15450 9550 15400 9550
Wire Wire Line
	15400 9550 15400 9350
Wire Wire Line
	16300 9050 16300 9450
Text GLabel 16300 9050 0    50   Input ~ 0
C_SW4_K2
Text GLabel 15400 9350 0    50   Input ~ 0
C_SW4_K1
Wire Wire Line
	17000 9950 17000 10700
$Comp
L power:+5V #PWR0111
U 1 1 6110C340
P 15950 11800
F 0 "#PWR0111" H 15950 11650 50  0001 C CNN
F 1 "+5V" H 15965 11973 50  0000 C CNN
F 2 "" H 15950 11800 50  0001 C CNN
F 3 "" H 15950 11800 50  0001 C CNN
	1    15950 11800
	1    0    0    -1  
$EndComp
Wire Wire Line
	15950 12000 15900 12000
Wire Wire Line
	15950 11800 15950 12000
Wire Wire Line
	15300 12000 15250 12000
Wire Wire Line
	15250 12000 15250 11800
Text GLabel 15250 11800 0    50   Input ~ 0
C_SW6
Text Label 15900 12300 0    50   ~ 0
.2
$Comp
L Relay:FINDER-40.41 SW6
U 1 1 6110C34D
P 15600 12200
F 0 "SW6" V 15125 12200 50  0000 C CNN
F 1 "." V 15124 12200 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_40.41" H 16740 12160 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 15600 12200 50  0001 C CNN
	1    15600 12200
	0    1    1    0   
$EndComp
Text Label 15900 12500 0    50   ~ 0
.1
$Comp
L Device:R_POT P1
U 1 1 6111D61B
P 16750 12850
F 0 "P1" H 16680 12896 50  0000 R CNN
F 1 "270-1,3k" H 16680 12805 50  0000 R CNN
F 2 "" H 16750 12850 50  0001 C CNN
F 3 "~" H 16750 12850 50  0001 C CNN
	1    16750 12850
	1    0    0    -1  
$EndComp
Wire Wire Line
	15900 12500 15950 12500
Wire Wire Line
	15950 12500 15950 12700
Wire Wire Line
	16750 12300 16750 12700
Wire Wire Line
	16750 13000 16750 13200
Wire Wire Line
	16900 12850 16950 12850
Wire Wire Line
	16950 12850 16950 13200
Wire Wire Line
	15950 13000 15950 13200
Wire Wire Line
	14050 11200 14050 13200
Wire Wire Line
	11100 10300 11100 13200
Wire Wire Line
	9400 10300 9400 13200
Wire Wire Line
	14050 8900 14250 8900
Connection ~ 14050 8900
Wire Wire Line
	15900 12300 16750 12300
$Comp
L Relay:FINDER-40.41 SW5_K1
U 1 1 6118A1EA
P 18300 9800
F 0 "SW5_K1" V 17825 9800 50  0000 C CNN
F 1 "." V 17824 9800 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_40.41" H 19440 9760 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 18300 9800 50  0001 C CNN
	1    18300 9800
	0    1    1    0   
$EndComp
$Comp
L Relay:FINDER-40.41 SW5_K2
U 1 1 6118A1F0
P 19200 9700
F 0 "SW5_K2" V 18725 9700 50  0000 C CNN
F 1 "." V 18724 9700 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_40.41" H 20340 9660 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 19200 9700 50  0001 C CNN
	1    19200 9700
	0    1    1    0   
$EndComp
Text Label 19500 9800 0    50   ~ 0
.3
Text Label 19500 10000 0    50   ~ 0
.2
Text Label 18600 10100 0    50   ~ 0
.1
$Comp
L power:+5V #PWR0112
U 1 1 6118A1F9
P 18650 9400
F 0 "#PWR0112" H 18650 9250 50  0001 C CNN
F 1 "+5V" H 18665 9573 50  0000 C CNN
F 2 "" H 18650 9400 50  0001 C CNN
F 3 "" H 18650 9400 50  0001 C CNN
	1    18650 9400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 6118A1FF
P 19550 9300
F 0 "#PWR0113" H 19550 9150 50  0001 C CNN
F 1 "+5V" H 19565 9473 50  0000 C CNN
F 2 "" H 19550 9300 50  0001 C CNN
F 3 "" H 19550 9300 50  0001 C CNN
	1    19550 9300
	1    0    0    -1  
$EndComp
Wire Wire Line
	18650 9600 18600 9600
Wire Wire Line
	19550 9500 19500 9500
Wire Wire Line
	18600 10100 18650 10100
Wire Wire Line
	18900 9500 18850 9500
Wire Wire Line
	18650 9400 18650 9600
Wire Wire Line
	19550 9300 19550 9500
Wire Wire Line
	18600 9900 18900 9900
Wire Wire Line
	18000 9600 17950 9600
Wire Wire Line
	17950 9600 17950 9400
Wire Wire Line
	18850 9100 18850 9500
Text GLabel 18850 9100 0    50   Input ~ 0
C_SW5_K2
Text GLabel 17950 9400 0    50   Input ~ 0
C_SW5_K1
Wire Wire Line
	19900 10700 19900 10900
Connection ~ 19900 10700
Wire Wire Line
	19900 10500 19900 10700
Wire Wire Line
	19900 10000 19900 10200
Connection ~ 19900 10000
Wire Wire Line
	19900 9800 19900 10000
$Comp
L Device:R R50
U 1 1 60F6CA7E
P 19900 9650
F 0 "R50" H 19970 9696 50  0000 L CNN
F 1 "178" H 19970 9605 50  0000 L CNN
F 2 "" V 19830 9650 50  0001 C CNN
F 3 "~" H 19900 9650 50  0001 C CNN
	1    19900 9650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R51
U 1 1 60F6AB6D
P 19900 10350
F 0 "R51" H 19970 10396 50  0000 L CNN
F 1 "130" H 19970 10305 50  0000 L CNN
F 2 "" V 19830 10350 50  0001 C CNN
F 3 "~" H 19900 10350 50  0001 C CNN
	1    19900 10350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R52
U 1 1 60F68C44
P 19900 11050
F 0 "R52" H 19970 11096 50  0000 L CNN
F 1 "140" H 19970 11005 50  0000 L CNN
F 2 "" V 19830 11050 50  0001 C CNN
F 3 "~" H 19900 11050 50  0001 C CNN
	1    19900 11050
	1    0    0    -1  
$EndComp
Wire Wire Line
	19500 10000 19900 10000
Wire Wire Line
	18650 10100 18650 10700
Wire Wire Line
	18650 10700 19900 10700
Wire Wire Line
	19900 8700 19900 9500
Wire Wire Line
	17450 10000 17450 8700
Wire Wire Line
	19900 11200 19900 13200
Connection ~ 9400 13200
Wire Wire Line
	9400 13200 11100 13200
Connection ~ 11100 13200
Wire Wire Line
	11100 13200 14050 13200
Connection ~ 3650 8900
Wire Wire Line
	6350 11650 5700 11650
Wire Wire Line
	5700 11650 5700 9100
Wire Wire Line
	6250 13300 5500 13300
Wire Wire Line
	5500 13300 5500 9300
Connection ~ 6250 13300
$Comp
L Device:R Rf1
U 1 1 6136FB77
P 7000 8250
F 0 "Rf1" H 7070 8296 50  0000 L CNN
F 1 "1M" H 7070 8205 50  0000 L CNN
F 2 "" V 6930 8250 50  0001 C CNN
F 3 "~" H 7000 8250 50  0001 C CNN
	1    7000 8250
	1    0    0    -1  
$EndComp
$Comp
L Device:C Cf1
U 1 1 61371383
P 7400 8250
F 0 "Cf1" H 7515 8296 50  0000 L CNN
F 1 "47n" H 7515 8205 50  0000 L CNN
F 2 "" H 7438 8100 50  0001 C CNN
F 3 "~" H 7400 8250 50  0001 C CNN
	1    7400 8250
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rf2
U 1 1 613A787F
P 7850 8250
F 0 "Rf2" H 7920 8296 50  0000 L CNN
F 1 "1M" H 7920 8205 50  0000 L CNN
F 2 "" V 7780 8250 50  0001 C CNN
F 3 "~" H 7850 8250 50  0001 C CNN
	1    7850 8250
	1    0    0    -1  
$EndComp
$Comp
L Device:C Cf2
U 1 1 613A7885
P 8250 8250
F 0 "Cf2" H 8365 8296 50  0000 L CNN
F 1 "47n" H 8365 8205 50  0000 L CNN
F 2 "" H 8288 8100 50  0001 C CNN
F 3 "~" H 8250 8250 50  0001 C CNN
	1    8250 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 8400 8250 8600
Wire Wire Line
	8250 8600 7850 8600
Wire Wire Line
	7400 8400 7400 8600
Connection ~ 7400 8600
Wire Wire Line
	7400 8600 7000 8600
Wire Wire Line
	7850 8400 7850 8600
Connection ~ 7850 8600
Wire Wire Line
	7850 8600 7400 8600
Wire Wire Line
	7400 8100 7400 7900
Wire Wire Line
	7400 7900 7000 7900
Wire Wire Line
	7000 7900 7000 8100
Wire Wire Line
	7850 8100 7850 7700
Wire Wire Line
	7850 7700 8250 7700
Wire Wire Line
	8250 7700 8250 8100
Connection ~ 7000 8600
Wire Wire Line
	7000 8600 7000 10500
Wire Wire Line
	7000 8400 7000 8600
Wire Wire Line
	6800 8700 6800 7900
Wire Wire Line
	6800 7900 7000 7900
Connection ~ 7000 7900
Wire Wire Line
	2800 8700 6800 8700
Wire Wire Line
	6600 8500 6600 7700
Wire Wire Line
	6600 7700 7850 7700
Wire Wire Line
	2800 8500 6600 8500
Connection ~ 7850 7700
Connection ~ 7400 7900
Connection ~ 8250 7700
$Comp
L Connector:Conn_01x01_Female RL_Ph1
U 1 1 614345A9
P 8950 7700
F 0 "RL_Ph1" H 8978 7680 50  0000 L CNN
F 1 "Ph" H 8978 7635 50  0001 L CNN
F 2 "" H 8950 7700 50  0001 C CNN
F 3 "~" H 8950 7700 50  0001 C CNN
	1    8950 7700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female RL_N1
U 1 1 614352E2
P 8950 7900
F 0 "RL_N1" H 8978 7880 50  0000 L CNN
F 1 "N" H 8978 7835 50  0001 L CNN
F 2 "" H 8950 7900 50  0001 C CNN
F 3 "~" H 8950 7900 50  0001 C CNN
	1    8950 7900
	1    0    0    -1  
$EndComp
Connection ~ 9700 8900
Wire Wire Line
	9700 8900 11100 8900
Wire Wire Line
	8850 13200 9400 13200
Connection ~ 8850 13200
Wire Wire Line
	7850 13200 8850 13200
Wire Wire Line
	8850 10500 8850 13200
Connection ~ 8850 10500
Wire Wire Line
	7400 8900 8700 8900
Connection ~ 7400 8900
Wire Wire Line
	7000 10500 8850 10500
Wire Wire Line
	3650 8900 7400 8900
Wire Wire Line
	8850 10300 8850 10500
Wire Wire Line
	7400 9900 7950 9900
Wire Wire Line
	7400 9900 7400 8900
Wire Wire Line
	8850 9800 8850 10000
Text Label 8550 10000 0    50   ~ 0
.1
$Comp
L Relay:FINDER-40.41 SW-Cc1
U 1 1 60F0A545
P 8250 9700
F 0 "SW-Cc1" V 7775 9700 50  0000 C CNN
F 1 "." V 7774 9700 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_40.41" H 9390 9660 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 8250 9700 50  0001 C CNN
	1    8250 9700
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 9800 8850 9800
Text Label 8550 9800 0    50   ~ 0
.2
Text GLabel 7900 9300 0    50   Input ~ 0
C_SW-Cc
Wire Wire Line
	7900 9500 7900 9300
Wire Wire Line
	7950 9500 7900 9500
Wire Wire Line
	8600 9300 8600 9500
Wire Wire Line
	8600 9500 8550 9500
$Comp
L power:+5V #PWR0114
U 1 1 60F0A538
P 8600 9300
F 0 "#PWR0114" H 8600 9150 50  0001 C CNN
F 1 "+5V" H 8615 9473 50  0000 C CNN
F 2 "" H 8600 9300 50  0001 C CNN
F 3 "" H 8600 9300 50  0001 C CNN
	1    8600 9300
	1    0    0    -1  
$EndComp
$Comp
L Device:C Cc1
U 1 1 60EFB63B
P 8850 10150
F 0 "Cc1" H 8965 10196 50  0000 L CNN
F 1 "1,5n" H 8965 10105 50  0000 L CNN
F 2 "" H 8888 10000 50  0001 C CNN
F 3 "~" H 8850 10150 50  0001 C CNN
	1    8850 10150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 9900 10200 9900
Wire Wire Line
	11600 10000 12150 10000
Connection ~ 14050 13200
Wire Wire Line
	11600 8900 14050 8900
Wire Wire Line
	11400 8900 11600 8900
Connection ~ 11600 8900
Wire Wire Line
	14050 13200 15950 13200
Wire Wire Line
	14900 12400 15300 12400
Connection ~ 15950 13200
Connection ~ 16750 13200
Connection ~ 16950 13200
Wire Wire Line
	15950 13200 16750 13200
Wire Wire Line
	16750 13200 16950 13200
Wire Wire Line
	16950 13200 19900 13200
Wire Wire Line
	14900 9000 14900 9950
Wire Wire Line
	14900 11200 14900 11350
Wire Wire Line
	15450 9950 14900 9950
Connection ~ 14900 9950
Wire Wire Line
	14900 9950 14900 10200
Connection ~ 14900 11350
Wire Wire Line
	14900 11350 14900 12400
Wire Wire Line
	17450 10000 18000 10000
Wire Wire Line
	17450 8700 19900 8700
Wire Wire Line
	17450 8700 15750 8700
Connection ~ 17450 8700
$Comp
L Relay:FINDER-40.41 SW-Rc_K1
U 1 1 615DE2ED
P 4700 4700
F 0 "SW-Rc_K1" V 4225 4700 50  0000 C CNN
F 1 "." V 4224 4700 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_40.41" H 5840 4660 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 4700 4700 50  0001 C CNN
	1    4700 4700
	0    1    1    0   
$EndComp
$Comp
L Relay:FINDER-40.41 SW-Rc_K2
U 1 1 615DE2F3
P 5600 4600
F 0 "SW-Rc_K2" V 5125 4600 50  0000 C CNN
F 1 "." V 5124 4600 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_40.41" H 6740 4560 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 5600 4600 50  0001 C CNN
	1    5600 4600
	0    1    1    0   
$EndComp
Text Label 5900 4900 0    50   ~ 0
.2
Text Label 5000 5000 0    50   ~ 0
.1
$Comp
L power:+5V #PWR0115
U 1 1 615DE2FC
P 5050 4300
F 0 "#PWR0115" H 5050 4150 50  0001 C CNN
F 1 "+5V" H 5065 4473 50  0000 C CNN
F 2 "" H 5050 4300 50  0001 C CNN
F 3 "" H 5050 4300 50  0001 C CNN
	1    5050 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 615DE302
P 5950 4200
F 0 "#PWR0116" H 5950 4050 50  0001 C CNN
F 1 "+5V" H 5965 4373 50  0000 C CNN
F 2 "" H 5950 4200 50  0001 C CNN
F 3 "" H 5950 4200 50  0001 C CNN
	1    5950 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4500 5000 4500
Wire Wire Line
	5950 4400 5900 4400
Wire Wire Line
	5000 5000 5050 5000
Wire Wire Line
	5050 5000 5050 5200
Wire Wire Line
	5900 4900 5950 4900
Wire Wire Line
	5300 4400 5250 4400
Wire Wire Line
	5050 4300 5050 4500
Wire Wire Line
	5950 4200 5950 4400
Wire Wire Line
	5000 4800 5300 4800
Wire Wire Line
	4400 4500 4350 4500
Wire Wire Line
	4350 4500 4350 4300
Wire Wire Line
	5250 4000 5250 4400
Text GLabel 5250 4000 0    50   Input ~ 0
C_SW-Rc_K2
Text GLabel 4350 4300 0    50   Input ~ 0
C_SW-Rc_K1
$Comp
L Relay:FINDER-40.41 SW-Rc_K3
U 1 1 615FD23F
P 6500 4500
F 0 "SW-Rc_K3" V 6025 4500 50  0000 C CNN
F 1 "." V 6024 4500 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_40.41" H 7640 4460 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 6500 4500 50  0001 C CNN
	1    6500 4500
	0    1    1    0   
$EndComp
Text Label 6800 4800 0    50   ~ 0
.3
$Comp
L power:+5V #PWR0117
U 1 1 615FD247
P 6850 4100
F 0 "#PWR0117" H 6850 3950 50  0001 C CNN
F 1 "+5V" H 6865 4273 50  0000 C CNN
F 2 "" H 6850 4100 50  0001 C CNN
F 3 "" H 6850 4100 50  0001 C CNN
	1    6850 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4300 6800 4300
Wire Wire Line
	6800 4800 6850 4800
Wire Wire Line
	6200 4300 6150 4300
Wire Wire Line
	6850 4100 6850 4300
Wire Wire Line
	5900 4700 6200 4700
Wire Wire Line
	6150 3900 6150 4300
Text GLabel 6150 3900 0    50   Input ~ 0
C_SW-Rc_K3
Text Label 7700 4700 0    50   ~ 0
.4
Wire Wire Line
	7750 4200 7700 4200
Wire Wire Line
	7700 4700 7750 4700
Wire Wire Line
	7100 4200 7050 4200
Wire Wire Line
	6800 4600 7100 4600
Wire Wire Line
	7050 3800 7050 4200
Text GLabel 7050 3800 0    50   Input ~ 0
C_SW-Rc_K4
$Comp
L Connector:Conn_01x01_Female Banana1
U 1 1 616B27FF
P 2400 2000
F 0 "Banana1" H 2428 2026 50  0001 L CNN
F 1 "PE" H 2292 2093 50  0000 C CNN
F 2 "" H 2400 2000 50  0001 C CNN
F 3 "~" H 2400 2000 50  0001 C CNN
	1    2400 2000
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female Banana2
U 1 1 616B320A
P 9100 2000
F 0 "Banana2" H 9128 2026 50  0001 L CNN
F 1 "gr" H 9128 1980 50  0000 L CNN
F 2 "" H 9100 2000 50  0001 C CNN
F 3 "~" H 9100 2000 50  0001 C CNN
	1    9100 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 6193E1B5
P 3450 2350
F 0 "R7" H 3520 2396 50  0000 L CNN
F 1 "330" H 3520 2305 50  0000 L CNN
F 2 "" V 3380 2350 50  0001 C CNN
F 3 "~" H 3450 2350 50  0001 C CNN
	1    3450 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 6193F350
P 3450 3050
F 0 "R6" H 3520 3096 50  0000 L CNN
F 1 "150" H 3520 3005 50  0000 L CNN
F 2 "" V 3380 3050 50  0001 C CNN
F 3 "~" H 3450 3050 50  0001 C CNN
	1    3450 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rc1
U 1 1 6194F8A7
P 5950 5350
F 0 "Rc1" H 6020 5396 50  0000 L CNN
F 1 "1.5k" H 6020 5305 50  0000 L CNN
F 2 "" V 5880 5350 50  0001 C CNN
F 3 "~" H 5950 5350 50  0001 C CNN
	1    5950 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rc2
U 1 1 6195FE2B
P 6850 5350
F 0 "Rc2" H 6920 5396 50  0000 L CNN
F 1 "680" H 6920 5305 50  0000 L CNN
F 2 "" V 6780 5350 50  0001 C CNN
F 3 "~" H 6850 5350 50  0001 C CNN
	1    6850 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rc3
U 1 1 6196FBBA
P 7750 5350
F 0 "Rc3" H 7820 5396 50  0000 L CNN
F 1 "220" H 7820 5305 50  0000 L CNN
F 2 "" V 7680 5350 50  0001 C CNN
F 3 "~" H 7750 5350 50  0001 C CNN
	1    7750 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rc4
U 1 1 6197F7F6
P 8650 5350
F 0 "Rc4" H 8720 5396 50  0000 L CNN
F 1 "100" H 8720 5305 50  0000 L CNN
F 2 "" V 8580 5350 50  0001 C CNN
F 3 "~" H 8650 5350 50  0001 C CNN
	1    8650 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 6198F87A
P 6150 2650
F 0 "R5" H 6220 2696 50  0000 L CNN
F 1 "2.7k" H 6220 2605 50  0000 L CNN
F 2 "" V 6080 2650 50  0001 C CNN
F 3 "~" H 6150 2650 50  0001 C CNN
	1    6150 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 6199F733
P 6550 2650
F 0 "R4" H 6620 2696 50  0000 L CNN
F 1 "330" H 6620 2605 50  0000 L CNN
F 2 "" V 6480 2650 50  0001 C CNN
F 3 "~" H 6550 2650 50  0001 C CNN
	1    6550 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3400 3450 3200
Wire Wire Line
	3450 2500 3450 2700
Connection ~ 3450 2700
Wire Wire Line
	3450 2700 3450 2900
$Comp
L Device:R Rc5
U 1 1 61B5F6E1
P 9550 5350
F 0 "Rc5" H 9620 5396 50  0000 L CNN
F 1 "51" H 9620 5305 50  0000 L CNN
F 2 "" V 9480 5350 50  0001 C CNN
F 3 "~" H 9550 5350 50  0001 C CNN
	1    9550 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4900 5950 5200
Wire Wire Line
	6850 4800 6850 5200
Wire Wire Line
	7750 4700 7750 5200
Wire Wire Line
	9550 5500 9550 5700
Wire Wire Line
	8650 5500 8650 5700
Connection ~ 7750 5700
Wire Wire Line
	7750 5500 7750 5700
Connection ~ 6850 5700
Wire Wire Line
	6850 5700 7750 5700
Wire Wire Line
	6850 5500 6850 5700
Connection ~ 5950 5700
Wire Wire Line
	5950 5700 6850 5700
Wire Wire Line
	5950 5500 5950 5700
Wire Wire Line
	2900 2000 2900 5700
$Comp
L Connector:Conn_01x01_Female Banana3
U 1 1 61D38B6B
P 9100 2200
F 0 "Banana3" H 9128 2226 50  0001 L CNN
F 1 "+V DC" H 9128 2180 50  0000 L CNN
F 2 "" H 9100 2200 50  0001 C CNN
F 3 "~" H 9100 2200 50  0001 C CNN
	1    9100 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female Banana4
U 1 1 61D390F3
P 9100 2400
F 0 "Banana4" H 9128 2426 50  0001 L CNN
F 1 "h" H 9128 2380 50  0000 L CNN
F 2 "" H 9100 2400 50  0001 C CNN
F 3 "~" H 9100 2400 50  0001 C CNN
	1    9100 2400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Open switch1
U 1 1 61D41192
P 3150 2350
F 0 "switch1" H 3150 2565 50  0001 C CNN
F 1 "S3" V 3150 2474 50  0000 C CNN
F 2 "" H 3150 2550 50  0001 C CNN
F 3 "~" H 3150 2550 50  0001 C CNN
	1    3150 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 2700 3150 2550
Wire Wire Line
	3150 2150 3150 2000
Wire Wire Line
	3150 2000 3450 2000
Wire Wire Line
	3150 2700 3450 2700
Wire Wire Line
	6550 2200 8900 2200
Wire Wire Line
	6950 2400 8900 2400
Wire Wire Line
	2600 2000 2900 2000
Wire Wire Line
	8250 7700 8750 7700
Wire Wire Line
	7400 7900 8750 7900
Text Notes 2400 1450 0    236  ~ 47
[Scheme B - PP]
Text Notes 2450 7200 0    236  ~ 47
[Scheme A - CP]
Wire Wire Line
	14900 10500 14900 10700
Wire Wire Line
	16100 10050 16100 11350
Wire Wire Line
	16100 11350 14900 11350
Wire Wire Line
	14900 10700 17000 10700
Connection ~ 14900 10700
Wire Wire Line
	14900 10700 14900 10900
$Comp
L Relay:FINDER-40.41 SW-Rc_K5
U 1 1 621245F3
P 8300 4300
F 0 "SW-Rc_K5" V 7825 4300 50  0000 C CNN
F 1 "." V 7824 4300 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_40.41" H 9440 4260 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 8300 4300 50  0001 C CNN
	1    8300 4300
	0    1    1    0   
$EndComp
Text Label 8600 4600 0    50   ~ 0
.5
$Comp
L power:+5V #PWR?
U 1 1 621245FB
P 7750 4000
F 0 "#PWR?" H 7750 3850 50  0001 C CNN
F 1 "+5V" H 7765 4173 50  0000 C CNN
F 2 "" H 7750 4000 50  0001 C CNN
F 3 "" H 7750 4000 50  0001 C CNN
	1    7750 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 4100 8600 4100
Wire Wire Line
	8600 4600 8650 4600
Wire Wire Line
	8000 4100 7950 4100
Wire Wire Line
	8650 3900 8650 4100
Wire Wire Line
	7700 4500 8000 4500
Wire Wire Line
	7950 3700 7950 4100
Text GLabel 7950 3700 0    50   Input ~ 0
C_SW-Rc_K5
$Comp
L Relay:FINDER-40.41 SW-Rc_K4
U 1 1 6161CA1B
P 7400 4400
F 0 "SW-Rc_K4" V 6925 4400 50  0000 C CNN
F 1 "." V 6924 4400 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_40.41" H 8540 4360 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 7400 4400 50  0001 C CNN
	1    7400 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 4000 7750 4200
Wire Wire Line
	7750 5700 8650 5700
Wire Wire Line
	8650 4600 8650 5200
Wire Wire Line
	2900 5700 5050 5700
Wire Wire Line
	9550 4400 9550 5200
Wire Wire Line
	8600 4400 9550 4400
Wire Wire Line
	9550 5700 8650 5700
Connection ~ 8650 5700
$Comp
L Device:R Rc0
U 1 1 623126EB
P 5050 5350
F 0 "Rc0" H 5120 5396 50  0000 L CNN
F 1 "4.8k" H 5120 5305 50  0000 L CNN
F 2 "" V 4980 5350 50  0001 C CNN
F 3 "~" H 5050 5350 50  0001 C CNN
	1    5050 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 5500 5050 5700
Connection ~ 5050 5700
Wire Wire Line
	5050 5700 5950 5700
$Comp
L power:+5V #PWR?
U 1 1 62367C98
P 8650 3900
F 0 "#PWR?" H 8650 3750 50  0001 C CNN
F 1 "+5V" H 8665 4073 50  0000 C CNN
F 2 "" H 8650 3900 50  0001 C CNN
F 3 "" H 8650 3900 50  0001 C CNN
	1    8650 3900
	1    0    0    -1  
$EndComp
Text Label 8600 4400 0    50   ~ 0
.6
$Comp
L Switch:SW_Push_DPDT SW?
U 1 1 624B9644
P 4950 2900
F 0 "SW?" H 4950 3385 50  0001 C CNN
F 1 "SW_M" H 4950 3293 50  0000 C CNN
F 2 "" H 4950 3100 50  0001 C CNN
F 3 "~" H 4950 3100 50  0001 C CNN
	1    4950 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2700 4750 3100
Wire Wire Line
	4750 3100 4750 3400
Connection ~ 4750 3100
Wire Wire Line
	6550 2500 6550 2200
Wire Wire Line
	6150 2500 6150 2000
Connection ~ 6150 2000
Wire Wire Line
	5150 2600 5150 2350
Wire Wire Line
	3950 2350 3950 3400
Wire Wire Line
	5150 2800 5350 2800
Wire Wire Line
	5350 2800 5350 2150
Wire Wire Line
	3450 3400 3950 3400
Wire Wire Line
	3750 2150 3750 4900
Wire Wire Line
	3750 2150 5350 2150
Wire Wire Line
	3950 2350 5150 2350
Wire Wire Line
	6150 2000 8900 2000
Wire Wire Line
	6550 2800 6550 3400
Wire Wire Line
	6150 2800 6150 3000
Wire Wire Line
	6950 3400 6950 2400
Connection ~ 6550 3400
Wire Wire Line
	6550 3400 6950 3400
Text GLabel 8600 3200 2    50   Input ~ 0
SW_M_State
Wire Wire Line
	3750 4900 4400 4900
Wire Wire Line
	3450 2200 3450 2000
$Comp
L Device:R R3
U 1 1 628BFEFA
P 5750 2650
F 0 "R3" H 5820 2696 50  0000 L CNN
F 1 "100k" H 5820 2605 50  0000 L CNN
F 2 "" V 5680 2650 50  0001 C CNN
F 3 "~" H 5750 2650 50  0001 C CNN
	1    5750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3400 6550 3400
Wire Wire Line
	5750 3200 5750 2800
Wire Wire Line
	5150 3200 5750 3200
Wire Wire Line
	5150 3000 6150 3000
Wire Wire Line
	5750 2500 5750 2000
Connection ~ 5750 2000
Wire Wire Line
	5750 2000 6150 2000
Connection ~ 5750 3200
Wire Wire Line
	5750 3200 8600 3200
Wire Wire Line
	3450 2000 5750 2000
Connection ~ 3450 2000
Wire Wire Line
	3150 2000 2900 2000
Connection ~ 3150 2000
Connection ~ 2900 2000
$EndSCHEMATC
