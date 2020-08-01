EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 7
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
L Regulator_Linear:LM7805_TO220 U501
U 1 1 5A007B62
P 5900 3950
AR Path="/5AACFFEF/5A007B62" Ref="U501"  Part="1" 
AR Path="/5F24EEA3/5F2500B1/5A007B62" Ref="U?"  Part="1" 
AR Path="/5F24EEA3/5F253E20/5A007B62" Ref="U?"  Part="1" 
F 0 "U501" H 5750 4075 50  0000 C CNN
F 1 "LM7805" H 5900 4100 50  0000 L CNN
F 2 "KicadZeniteSolarLibrary18:TO-220-3_Horizontal_TabDown_SMD" H 5900 4175 50  0001 C CIN
F 3 "https://www.sparkfun.com/datasheets/Components/LM7805.pdf" H 5900 3900 50  0001 C CNN
	1    5900 3950
	1    0    0    -1  
$EndComp
Text HLabel 2300 5950 0    60   Output ~ 0
GND
Text HLabel 6650 3750 2    60   Input ~ 0
+5V_OUT
$Comp
L Device:CP1_Small C501
U 1 1 5A008895
P 3250 5550
AR Path="/5AACFFEF/5A008895" Ref="C501"  Part="1" 
AR Path="/5F24EEA3/5F2500B1/5A008895" Ref="C?"  Part="1" 
AR Path="/5F24EEA3/5F253E20/5A008895" Ref="C?"  Part="1" 
F 0 "C501" H 3260 5620 50  0000 L CNN
F 1 "1uF" H 3260 5470 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-6032-20_AVX-F_Pad2.25x2.35mm_HandSolder" H 3250 5550 50  0001 C CNN
F 3 "" H 3250 5550 50  0001 C CNN
	1    3250 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C502
U 1 1 5A00899A
P 5200 4400
AR Path="/5AACFFEF/5A00899A" Ref="C502"  Part="1" 
AR Path="/5F24EEA3/5F2500B1/5A00899A" Ref="C?"  Part="1" 
AR Path="/5F24EEA3/5F253E20/5A00899A" Ref="C?"  Part="1" 
F 0 "C502" H 5210 4470 50  0000 L CNN
F 1 "100nF" H 5210 4320 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5200 4400 50  0001 C CNN
F 3 "" H 5200 4400 50  0001 C CNN
	1    5200 4400
	1    0    0    -1  
$EndComp
$Comp
L Diode:LL4148 D501
U 1 1 5A009BD5
P 2800 5100
AR Path="/5AACFFEF/5A009BD5" Ref="D501"  Part="1" 
AR Path="/5F24EEA3/5F2500B1/5A009BD5" Ref="D?"  Part="1" 
AR Path="/5F24EEA3/5F253E20/5A009BD5" Ref="D?"  Part="1" 
F 0 "D501" H 2800 5200 50  0000 C CNN
F 1 "LL4148" H 2800 5000 50  0000 C CNN
F 2 "Diode_SMD:D_MiniMELF_Handsoldering" H 2800 4925 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85557/ll4148.pdf" H 2800 5100 50  0001 C CNN
	1    2800 5100
	-1   0    0    1   
$EndComp
Text HLabel 2300 5100 0    60   Input ~ 0
+18V_IN
$Comp
L Device:C_Small C503
U 1 1 5A00B18A
P 6500 4400
AR Path="/5AACFFEF/5A00B18A" Ref="C503"  Part="1" 
AR Path="/5F24EEA3/5F2500B1/5A00B18A" Ref="C?"  Part="1" 
AR Path="/5F24EEA3/5F253E20/5A00B18A" Ref="C?"  Part="1" 
F 0 "C503" H 6510 4470 50  0000 L CNN
F 1 "100nF" H 6510 4320 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6500 4400 50  0001 C CNN
F 3 "" H 6500 4400 50  0001 C CNN
	1    6500 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C504
U 1 1 5AAD0D5C
P 6850 4400
AR Path="/5AACFFEF/5AAD0D5C" Ref="C504"  Part="1" 
AR Path="/5F24EEA3/5F2500B1/5AAD0D5C" Ref="C?"  Part="1" 
AR Path="/5F24EEA3/5F253E20/5AAD0D5C" Ref="C?"  Part="1" 
F 0 "C504" H 6860 4470 50  0000 L CNN
F 1 "1uF" H 6860 4320 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-6032-20_AVX-F_Pad2.25x2.35mm_HandSolder" H 6850 4400 50  0001 C CNN
F 3 "" H 6850 4400 50  0001 C CNN
	1    6850 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse_Small F501
U 1 1 5AB12173
P 3100 5100
AR Path="/5AACFFEF/5AB12173" Ref="F501"  Part="1" 
AR Path="/5F24EEA3/5F2500B1/5AB12173" Ref="F?"  Part="1" 
AR Path="/5F24EEA3/5F253E20/5AB12173" Ref="F?"  Part="1" 
F 0 "F501" H 3100 5040 50  0000 C CNN
F 1 "500mA" H 3100 5160 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3100 5100 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/643/0ZCJ_Nov2016-1132002.pdf" H 3100 5100 50  0001 C CNN
	1    3100 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5950 3250 5650
Connection ~ 3250 5100
Wire Wire Line
	5200 4500 5200 4800
Connection ~ 3250 5950
Connection ~ 5200 3950
Wire Wire Line
	2650 5100 2300 5100
Wire Wire Line
	6200 3950 6500 3950
Wire Wire Line
	6500 3750 6500 3950
Connection ~ 5200 4800
Wire Wire Line
	5900 4800 5900 4250
Wire Wire Line
	6500 4800 6500 4500
Connection ~ 5900 4800
Connection ~ 6500 3950
Wire Wire Line
	2300 5950 3250 5950
Wire Wire Line
	6850 3950 6850 4300
Wire Wire Line
	6850 4800 6850 4500
Connection ~ 6500 4800
Wire Wire Line
	3250 5100 3250 5450
Wire Wire Line
	3200 5100 3250 5100
Wire Wire Line
	6650 3750 6500 3750
Wire Wire Line
	3250 5950 3550 5950
Wire Wire Line
	5200 3950 5200 4300
Wire Wire Line
	5200 4800 5200 4900
Wire Wire Line
	5200 4800 5900 4800
Wire Wire Line
	5900 4800 6500 4800
Wire Wire Line
	6500 3950 6850 3950
Wire Wire Line
	6500 3950 6500 4300
Wire Wire Line
	6500 4800 6850 4800
Wire Wire Line
	2950 5100 3000 5100
Text HLabel 6650 3550 2    60   Input ~ 0
+18V_OUT
Wire Wire Line
	5200 3550 5200 3950
Wire Wire Line
	5200 3550 6650 3550
Connection ~ 5200 3550
Wire Wire Line
	5200 3450 5200 3550
$Comp
L power:PWR_FLAG #FLG0501
U 1 1 5BE75359
P 5200 3450
AR Path="/5AACFFEF/5BE75359" Ref="#FLG0501"  Part="1" 
AR Path="/5F24EEA3/5F2500B1/5BE75359" Ref="#FLG0101"  Part="1" 
AR Path="/5F24EEA3/5F253E20/5BE75359" Ref="#FLG0101"  Part="1" 
F 0 "#FLG0501" H 5200 3525 50  0001 C CNN
F 1 "PWR_FLAG" H 5200 3650 50  0000 C CNN
F 2 "" H 5200 3450 50  0001 C CNN
F 3 "~" H 5200 3450 50  0001 C CNN
	1    5200 3450
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0502
U 1 1 5BE753AF
P 5200 4900
AR Path="/5AACFFEF/5BE753AF" Ref="#FLG0502"  Part="1" 
AR Path="/5F24EEA3/5F2500B1/5BE753AF" Ref="#FLG0102"  Part="1" 
AR Path="/5F24EEA3/5F253E20/5BE753AF" Ref="#FLG0102"  Part="1" 
F 0 "#FLG0502" H 5200 4975 50  0001 C CNN
F 1 "PWR_FLAG" H 5200 5100 50  0000 C CNN
F 2 "" H 5200 4900 50  0001 C CNN
F 3 "~" H 5200 4900 50  0001 C CNN
	1    5200 4900
	-1   0    0    1   
$EndComp
$Comp
L Regulator_Linear:LM7812_TO220 U?
U 1 1 5F2DA6AE
P 6000 6000
F 0 "U?" H 6000 6242 50  0000 C CNN
F 1 "LM7812_TO220" H 6000 6151 50  0000 C CNN
F 2 "MCCplaca:TO-220-3_Horizontal_TabDown_SMD" H 6000 6225 50  0001 C CIN
F 3 "" H 6000 5950 50  0001 C CNN
	1    6000 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F2DA6B5
P 6000 6550
AR Path="/5F261197/5F2DA6B5" Ref="#PWR?"  Part="1" 
AR Path="/5AACFFEF/5F2DA6B5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6000 6300 50  0001 C CNN
F 1 "GND" H 6005 6377 50  0000 C CNN
F 2 "" H 6000 6550 50  0001 C CNN
F 3 "" H 6000 6550 50  0001 C CNN
	1    6000 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 6300 6000 6450
$Comp
L Device:C_Small C?
U 1 1 5F2DA6BC
P 6350 6250
F 0 "C?" H 6442 6296 50  0000 L CNN
F 1 "100nF" H 6442 6205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6350 6250 50  0001 C CNN
F 3 "" H 6350 6250 50  0001 C CNN
	1    6350 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 5F2DA6C2
P 6800 6250
F 0 "C?" H 6891 6296 50  0000 L CNN
F 1 "10uF" H 6891 6205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6800 6250 50  0001 C CNN
F 3 "" H 6800 6250 50  0001 C CNN
	1    6800 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 5F2DA6C8
P 5250 6250
F 0 "C?" H 5341 6296 50  0000 L CNN
F 1 "10uF" H 5341 6205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5250 6250 50  0001 C CNN
F 3 "" H 5250 6250 50  0001 C CNN
	1    5250 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F2DA6CE
P 5550 6250
F 0 "C?" H 5642 6296 50  0000 L CNN
F 1 "100nF" H 5642 6205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5550 6250 50  0001 C CNN
F 3 "" H 5550 6250 50  0001 C CNN
	1    5550 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 6000 5250 6150
Wire Wire Line
	5550 6000 5550 6150
Connection ~ 5550 6000
Wire Wire Line
	5550 6000 5700 6000
Wire Wire Line
	5250 6350 5250 6450
Wire Wire Line
	5250 6450 5550 6450
Connection ~ 6000 6450
Wire Wire Line
	6000 6450 6000 6550
Wire Wire Line
	5550 6350 5550 6450
Connection ~ 5550 6450
Wire Wire Line
	5550 6450 6000 6450
Wire Wire Line
	6350 6150 6350 6000
Connection ~ 6350 6000
Wire Wire Line
	6350 6000 6300 6000
Wire Wire Line
	6800 6150 6800 6000
Connection ~ 6800 6000
Wire Wire Line
	6800 6350 6800 6450
Wire Wire Line
	6800 6450 6350 6450
Wire Wire Line
	6350 6350 6350 6450
Connection ~ 6350 6450
Wire Wire Line
	6350 6450 6000 6450
Wire Wire Line
	6350 6000 6800 6000
Wire Wire Line
	3250 5100 3550 5100
$Comp
L power:GND #PWR?
U 1 1 5F2E9AAB
P 3550 6100
AR Path="/5F261197/5F2E9AAB" Ref="#PWR?"  Part="1" 
AR Path="/5AACFFEF/5F2E9AAB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3550 5850 50  0001 C CNN
F 1 "GND" H 3555 5927 50  0000 C CNN
F 2 "" H 3550 6100 50  0001 C CNN
F 3 "" H 3550 6100 50  0001 C CNN
	1    3550 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5950 3550 6100
$Comp
L power:GND #PWR?
U 1 1 5F2EBAB0
P 5900 4950
AR Path="/5F261197/5F2EBAB0" Ref="#PWR?"  Part="1" 
AR Path="/5AACFFEF/5F2EBAB0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5900 4700 50  0001 C CNN
F 1 "GND" H 5905 4777 50  0000 C CNN
F 2 "" H 5900 4950 50  0001 C CNN
F 3 "" H 5900 4950 50  0001 C CNN
	1    5900 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4950 5900 4800
Text Label 3550 5100 0    50   ~ 0
18V_fused
Text Label 4650 6000 0    50   ~ 0
18V_fused
Wire Wire Line
	4650 6000 5250 6000
Connection ~ 5250 6000
Wire Wire Line
	5250 6000 5550 6000
Text Label 4750 3950 0    50   ~ 0
18V_fused
Wire Wire Line
	5200 3950 4750 3950
Text HLabel 7050 5900 2    60   Input ~ 0
+12V_OUT
Wire Wire Line
	5200 3950 5600 3950
Wire Wire Line
	6800 5900 6800 6000
Wire Wire Line
	6800 5900 7050 5900
$EndSCHEMATC
