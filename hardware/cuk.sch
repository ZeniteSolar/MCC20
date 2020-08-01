EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
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
L Mechanical:Heatsink HS?
U 1 1 5B021206
P 4750 1050
F 0 "HS?" H 4892 1171 50  0000 L CNN
F 1 "Heatsink" H 4892 1080 50  0000 L CNN
F 2 "MCCplaca:hs10425" H 4762 1050 50  0001 C CNN
F 3 "" H 4762 1050 50  0001 C CNN
	1    4750 1050
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF540N Q?
U 1 1 5B021474
P 6350 2700
F 0 "Q?" H 6200 2800 50  0000 L CNN
F 1 "IRFP4321PbF" H 5850 2900 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-247-3_Horizontal_TabUp" H 6600 2625 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irfp4321pbf.pdf?fileId=5546d462533600a40153562c4f802011" H 6350 2700 50  0001 L CNN
	1    6350 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	6700 2700 6600 2700
Wire Wire Line
	6600 2700 6600 2650
Connection ~ 6600 2700
Wire Wire Line
	6600 2700 6550 2700
Wire Wire Line
	6600 2450 6600 2400
Wire Wire Line
	6600 2400 6650 2400
Connection ~ 6600 2400
$Comp
L Mechanical:MountingHole_Pad Screw?
U 1 1 5B0387A2
P 8000 4650
F 0 "Screw?" H 8350 4600 50  0000 R CNN
F 1 "-P" H 8200 4700 50  0000 R CNN
F 2 "MountingHole:MountingHole_5mm_Pad" H 8000 4650 50  0001 C CNN
F 3 "" H 8000 4650 50  0001 C CNN
	1    8000 4650
	-1   0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole_Pad Screw?
U 1 1 5B0388E1
P 6300 4450
F 0 "Screw?" H 6200 4408 50  0000 R CNN
F 1 "+P" H 6200 4499 50  0000 R CNN
F 2 "MountingHole:MountingHole_5mm_Pad" H 6300 4450 50  0001 C CNN
F 3 "" H 6300 4450 50  0001 C CNN
	1    6300 4450
	-1   0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole_Pad Screw?
U 1 1 5B03A93B
P 4050 4450
F 0 "Screw?" H 4000 4400 50  0000 R CNN
F 1 "-B" H 3950 4499 50  0000 R CNN
F 2 "MountingHole:MountingHole_5mm_Pad" H 4050 4450 50  0001 C CNN
F 3 "" H 4050 4450 50  0001 C CNN
	1    4050 4450
	-1   0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole_Pad Screw?
U 1 1 5B03AB19
P 2300 4450
F 0 "Screw?" H 2200 4408 50  0000 R CNN
F 1 "+B" H 2200 4499 50  0000 R CNN
F 2 "MountingHole:MountingHole_5mm_Pad" H 2300 4450 50  0001 C CNN
F 3 "" H 2300 4450 50  0001 C CNN
	1    2300 4450
	-1   0    0    1   
$EndComp
Connection ~ 6300 3500
Wire Wire Line
	10150 3825 10400 3825
$Comp
L Device:Fuse F?
U 1 1 5B141241
P 8000 4350
F 0 "F?" H 8060 4396 50  0000 L CNN
F 1 "Fuse" H 8060 4305 50  0000 L CNN
F 2 "MCCplaca:Porta_Fusivel" V 7930 4350 50  0001 C CNN
F 3 "" H 8000 4350 50  0001 C CNN
	1    8000 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3500 6300 4350
Connection ~ 6250 3500
Wire Wire Line
	6250 3500 6300 3500
Connection ~ 4100 3500
$Comp
L Device:D_Schottky_AKA D?
U 1 1 5B2B235B
P 4100 2650
F 0 "D?" V 3950 2700 50  0000 L CNN
F 1 "80CPQ150PbF" V 4100 2700 50  0000 L CNN
F 2 "MCCplaca:TO-247-3_Horizontal_TabUp" H 4100 2650 50  0001 C CNN
F 3 "https://www.vishay.com/docs/94257/vs-80cpq150.pdf" H 4100 2650 50  0001 C CNN
	1    4100 2650
	0    -1   1    0   
$EndComp
Connection ~ 4100 2850
Connection ~ 6250 2400
$Comp
L Device:L_Small L?
U 1 1 5B5E2923
P 9200 3725
F 0 "L?" V 9300 3725 39  0000 C CNN
F 1 "L_Small" V 9250 3725 39  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9200 3725 50  0001 C CNN
F 3 "~" H 9200 3725 50  0001 C CNN
	1    9200 3725
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5B5F6659
P 9000 3925
F 0 "C?" H 9100 3950 39  0000 L CNN
F 1 "100nF" H 9100 3900 39  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9000 3925 50  0001 C CNN
F 3 "" H 9000 3925 50  0001 C CNN
	1    9000 3925
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5B5F6773
P 9400 3925
F 0 "C?" H 9500 3950 39  0000 L CNN
F 1 "100nF" H 9500 3900 39  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9400 3925 50  0001 C CNN
F 3 "" H 9400 3925 50  0001 C CNN
	1    9400 3925
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9100 3725 9000 3725
Wire Wire Line
	9000 3725 9000 3825
Wire Wire Line
	9300 3725 9400 3725
Wire Wire Line
	9400 3725 9400 3825
Wire Wire Line
	9000 4025 9000 4125
Wire Wire Line
	9000 4125 9400 4125
$Comp
L power:GND #PWR?
U 1 1 5B63B918
P 9600 4125
F 0 "#PWR?" H 9600 3875 50  0001 C CNN
F 1 "GND" H 9605 3952 50  0000 C CNN
F 2 "" H 9600 4125 50  0001 C CNN
F 3 "" H 9600 4125 50  0001 C CNN
	1    9600 4125
	1    0    0    -1  
$EndComp
Connection ~ 9000 3725
Connection ~ 9400 3725
Wire Wire Line
	9400 3725 9600 3725
$Comp
L Device:CP1_Small C?
U 1 1 5B687683
P 9600 3925
F 0 "C?" H 9691 3971 50  0000 L CNN
F 1 "10uF" H 9691 3880 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9600 3925 50  0001 C CNN
F 3 "" H 9600 3925 50  0001 C CNN
	1    9600 3925
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3825 9600 3725
Connection ~ 9600 3725
Wire Wire Line
	9600 3725 10400 3725
Wire Wire Line
	9600 4025 9600 4125
Wire Wire Line
	9400 4025 9400 4125
Wire Wire Line
	10250 3925 10400 3925
Wire Wire Line
	10250 4125 10250 3925
Wire Wire Line
	6250 2400 6250 2500
Connection ~ 9600 4125
Connection ~ 9400 4125
Wire Wire Line
	9400 4125 9600 4125
Wire Wire Line
	9600 4125 10250 4125
Text Label 7950 4550 1    25   ~ 0
-P_unfused
Text Label 7850 3500 1    50   ~ 0
-Vp
Text Label 6525 3500 1    50   ~ 0
+Vp
Text Label 3900 3500 1    50   ~ 0
-B
Text Label 2675 3500 1    50   ~ 0
+B
Text Label 10150 3825 0    47   ~ 0
PWM
Text Label 10150 3425 0    50   ~ 0
HS
Text Label 10150 3325 0    50   ~ 0
HG
Text Label 6650 2400 2    50   ~ 0
HS
Text Label 6700 2700 2    50   ~ 0
HG
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5B48F3D7
P 9600 3550
F 0 "#FLG?" H 9600 3625 50  0001 C CNN
F 1 "PWR_FLAG" H 9600 3724 50  0000 C CNN
F 2 "" H 9600 3550 50  0001 C CNN
F 3 "~" H 9600 3550 50  0001 C CNN
	1    9600 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3550 9600 3725
$Comp
L Device:R Rshunt?
U 1 1 5B4A6175
P 8000 3900
F 0 "Rshunt?" H 8070 3946 50  0000 L CNN
F 1 "1500uR" H 8070 3855 50  0000 L CNN
F 2 "MCCplaca Shunt:PML100HZPJV0L5" V 7930 3900 50  0001 C CNN
F 3 "~" H 8000 3900 50  0001 C CNN
	1    8000 3900
	1    0    0    -1  
$EndComp
Text Label 8500 3750 2    39   ~ 0
PanelShunt+
Text Label 8475 4050 2    39   ~ 0
PanelShunt-
Wire Wire Line
	8100 4050 8100 4150
$Comp
L Mechanical:MountingHole MK?
U 1 1 5B14A5CB
P 1150 4025
F 0 "MK?" H 1250 4071 50  0000 L CNN
F 1 "Mounting_Hole" H 1250 3980 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad" H 1150 4025 50  0001 C CNN
F 3 "" H 1150 4025 50  0001 C CNN
	1    1150 4025
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4050 8000 4150
Wire Notes Line
	6150 2300 4200 2300
Wire Notes Line
	6150 3100 4200 3100
Wire Notes Line
	4200 2300 4200 3100
Wire Notes Line
	6150 2300 6150 3100
Wire Wire Line
	4100 2850 4100 3125
$Comp
L Device:R_Small Rs?
U 1 1 5B89B59F
P 6000 2550
F 0 "Rs?" H 6059 2596 50  0000 L CNN
F 1 "100" H 6059 2505 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" H 6000 2550 50  0001 C CNN
F 3 "" H 6000 2550 50  0001 C CNN
	1    6000 2550
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small Cs?
U 1 1 5B89B65E
P 6000 2900
F 0 "Cs?" H 6100 2925 39  0000 L CNN
F 1 "100nF" H 6100 2875 39  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6000 2900 50  0001 C CNN
F 3 "" H 6000 2900 50  0001 C CNN
	1    6000 2900
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small Cs?
U 1 1 5B89B76E
P 4450 2550
F 0 "Cs?" H 4550 2575 39  0000 L CNN
F 1 "100nF" H 4550 2525 39  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4450 2550 50  0001 C CNN
F 3 "" H 4450 2550 50  0001 C CNN
	1    4450 2550
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small Rs?
U 1 1 5B89B82D
P 4450 2800
F 0 "Rs?" H 4509 2846 50  0000 L CNN
F 1 "100" H 4509 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" H 4450 2800 50  0001 C CNN
F 3 "" H 4450 2800 50  0001 C CNN
	1    4450 2800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4450 2450 4450 2350
Wire Wire Line
	4450 2350 4100 2350
Connection ~ 4100 2350
Wire Wire Line
	4100 2350 4100 2500
Wire Wire Line
	4450 3200 4100 3200
Connection ~ 4100 3200
Wire Wire Line
	4100 3200 4100 3500
Wire Wire Line
	6000 2450 6000 2350
Wire Wire Line
	6000 2350 6250 2350
Wire Wire Line
	6250 2350 6250 2400
Wire Wire Line
	6000 3000 6000 3200
Wire Wire Line
	6000 3200 6250 3200
Connection ~ 6250 3200
Wire Wire Line
	6250 3200 6250 3500
Wire Wire Line
	6000 2800 6000 2650
$Comp
L Device:D_Small Ds?
U 1 1 5B90FDA0
P 5000 2550
F 0 "Ds?" V 4975 2500 39  0000 R CNN
F 1 "BYD77" V 5025 2500 39  0000 R CNN
F 2 "Diode_SMD:D_MELF_Handsoldering" V 5000 2550 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/NXP%20PDFs/BYD77.pdf" V 5000 2550 50  0001 C CNN
	1    5000 2550
	0    1    -1   0   
$EndComp
Wire Wire Line
	4450 2650 4450 2700
Wire Wire Line
	5000 2950 5000 3000
$Comp
L Device:R_Small Rs?
U 1 1 5B95DB0B
P 5150 2550
F 0 "Rs?" H 5209 2596 50  0000 L CNN
F 1 "100" H 5209 2505 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" H 5150 2550 50  0001 C CNN
F 3 "" H 5150 2550 50  0001 C CNN
	1    5150 2550
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small Cs?
U 1 1 5B97E964
P 5750 2350
F 0 "Cs?" H 5850 2375 39  0000 L CNN
F 1 "100nF" H 5850 2325 39  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5750 2350 50  0001 C CNN
F 3 "" H 5750 2350 50  0001 C CNN
	1    5750 2350
	0    1    -1   0   
$EndComp
Wire Wire Line
	6000 2350 5850 2350
Connection ~ 6000 2350
Wire Wire Line
	5650 2350 5600 2350
$Comp
L Device:D_Small Ds?
U 1 1 5B9A0B35
P 5600 2750
F 0 "Ds?" V 5575 2700 39  0000 R CNN
F 1 "BYD77" V 5625 2700 39  0000 R CNN
F 2 "Diode_SMD:D_MELF_Handsoldering" V 5600 2750 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/NXP%20PDFs/BYD77.pdf" V 5600 2750 50  0001 C CNN
	1    5600 2750
	0    -1   1    0   
$EndComp
Wire Wire Line
	5600 2850 5600 2900
Wire Wire Line
	5600 3000 6000 3000
Wire Wire Line
	5600 2650 5600 2600
$Comp
L Device:R_Small Rs?
U 1 1 5B9C38B4
P 5450 2750
F 0 "Rs?" H 5509 2796 50  0000 L CNN
F 1 "100" H 5509 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" H 5450 2750 50  0001 C CNN
F 3 "" H 5450 2750 50  0001 C CNN
	1    5450 2750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5450 2850 5450 2900
Wire Wire Line
	5450 2900 5600 2900
Connection ~ 5600 2900
Wire Wire Line
	5600 2900 5600 3000
Wire Wire Line
	5450 2650 5450 2600
Wire Wire Line
	5450 2600 5600 2600
Connection ~ 5600 2600
Wire Wire Line
	5600 2600 5600 2350
Connection ~ 5600 3000
Wire Wire Line
	5000 3000 5600 3000
Wire Wire Line
	5000 2650 5000 2700
Wire Wire Line
	5150 2650 5150 2700
Wire Wire Line
	5150 2700 5000 2700
Connection ~ 5000 2700
Wire Wire Line
	5000 2700 5000 2750
Wire Wire Line
	5000 2450 5000 2350
Wire Wire Line
	5000 2350 5150 2350
Wire Wire Line
	5150 2450 5150 2350
Wire Wire Line
	5000 2350 4450 2350
Connection ~ 5000 2350
Connection ~ 4450 2350
Wire Wire Line
	5300 3050 5300 2350
Wire Wire Line
	5300 2350 5600 2350
Connection ~ 5600 2350
$Comp
L Device:C_Small Cs?
U 1 1 5BB3C27C
P 4650 2800
F 0 "Cs?" H 4750 2825 39  0000 L CNN
F 1 "100nF" H 4750 2750 39  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4650 2800 50  0001 C CNN
F 3 "" H 4650 2800 50  0001 C CNN
	1    4650 2800
	1    0    0    1   
$EndComp
Wire Wire Line
	4450 2900 4450 3050
Wire Wire Line
	4650 2900 4650 3050
Wire Wire Line
	4650 3050 4750 3050
Wire Wire Line
	4650 3050 4450 3050
Connection ~ 4650 3050
Connection ~ 4450 3050
Wire Wire Line
	4450 3050 4450 3200
Wire Wire Line
	4650 2700 5000 2700
Wire Wire Line
	4950 3050 5300 3050
Wire Wire Line
	8000 4550 8000 4500
Wire Wire Line
	8000 4200 8000 4150
Connection ~ 8000 4150
Wire Wire Line
	8000 1400 8000 3500
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5B7E5A76
P 6650 2400
F 0 "TP?" H 6803 2456 50  0000 L CNN
F 1 "TestPoint_Probe" H 6803 2411 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6850 2400 50  0001 C CNN
F 3 "~" H 6850 2400 50  0001 C CNN
	1    6650 2400
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5B7E6E10
P 6250 3200
F 0 "TP?" H 6403 3256 50  0000 L CNN
F 1 "TestPoint_Probe" H 6403 3211 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6450 3200 50  0001 C CNN
F 3 "~" H 6450 3200 50  0001 C CNN
	1    6250 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5B7E6F8A
P 6700 2700
F 0 "TP?" H 6853 2756 50  0000 L CNN
F 1 "TestPoint_Probe" H 6853 2711 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6900 2700 50  0001 C CNN
F 3 "~" H 6900 2700 50  0001 C CNN
	1    6700 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2900 6250 3200
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5B7E7BA0
P 4100 2350
F 0 "TP?" H 3950 2400 50  0000 L CNN
F 1 "TestPoint_Probe" H 4253 2361 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4300 2350 50  0001 C CNN
F 3 "~" H 4300 2350 50  0001 C CNN
	1    4100 2350
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5B7E7CB5
P 4100 2850
F 0 "TP?" H 4200 3050 50  0000 R CNN
F 1 "TestPoint_Probe" H 4059 2951 50  0001 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4300 2850 50  0001 C CNN
F 3 "~" H 4300 2850 50  0001 C CNN
	1    4100 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	6250 2400 6600 2400
$Comp
L Device:L_Core_Iron_Small L1/?
U 1 1 5B8A3F75
P 5050 1650
F 0 "L1/?" H 5150 1650 50  0000 L CNN
F 1 "L_Core_Iron_Small" H 5118 1605 50  0001 L CNN
F 2 "MCCplaca:Inductor_Nocoupled" H 5050 1650 50  0001 C CNN
F 3 "~" H 5050 1650 50  0001 C CNN
	1    5050 1650
	-1   0    0    1   
$EndComp
$Comp
L Device:L_Core_Iron_Small L2/?
U 1 1 5B8A41FB
P 5350 1650
F 0 "L2/?" H 5600 1650 50  0000 R CNN
F 1 "L_Core_Iron_Small" H 5309 1695 50  0001 R CNN
F 2 "MCCplaca:Inductor_Nocoupled" H 5350 1650 50  0001 C CNN
F 3 "~" H 5350 1650 50  0001 C CNN
	1    5350 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1550 5050 1400
Wire Wire Line
	5050 1400 2300 1400
Wire Wire Line
	5050 1750 5050 1950
Wire Wire Line
	5350 1750 5350 1950
Wire Wire Line
	5050 1950 5200 1950
Wire Wire Line
	4100 2350 4100 2050
Wire Wire Line
	4100 2050 5200 2050
Wire Wire Line
	6250 2050 6250 2350
Connection ~ 6250 2350
Wire Wire Line
	5200 1950 5200 2050
Connection ~ 5200 1950
Wire Wire Line
	5200 1950 5350 1950
Connection ~ 5200 2050
Wire Wire Line
	5200 2050 6250 2050
Wire Wire Line
	5350 1550 5350 1400
Wire Wire Line
	5350 1400 8000 1400
$Comp
L Device:D_Small Ds?
U 1 1 5B93DFF5
P 5000 2850
F 0 "Ds?" V 4950 3000 39  0000 R CNN
F 1 "BYD77" V 5100 3050 39  0000 R CNN
F 2 "Diode_SMD:D_MELF_Handsoldering" V 5000 2850 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/NXP%20PDFs/BYD77.pdf" V 5000 2850 50  0001 C CNN
	1    5000 2850
	0    1    -1   0   
$EndComp
$Comp
L Device:D_Small Ds?
U 1 1 5B900770
P 4850 3050
F 0 "Ds?" H 4800 2950 39  0000 R CNN
F 1 "BYD77" H 4800 3000 39  0000 R CNN
F 2 "Diode_SMD:D_MELF_Handsoldering" V 4850 3050 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/NXP%20PDFs/BYD77.pdf" V 4850 3050 50  0001 C CNN
	1    4850 3050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2300 3500 3100 3500
$Comp
L Device:C_Small Co?
U 1 1 5B8018E8
P 3200 3625
F 0 "Co?" V 3175 3825 39  0000 C CNN
F 1 "2.2uF 100V" V 3250 3900 39  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3200 3625 50  0001 C CNN
F 3 "~" H 3200 3625 50  0001 C CNN
	1    3200 3625
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small Cc?
U 1 1 5B830FC5
P 5150 3500
F 0 "Cc?" V 5100 3700 39  0000 C CNN
F 1 "1uF 100V" V 5175 3775 39  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5150 3500 50  0001 C CNN
F 3 "~" H 5150 3500 50  0001 C CNN
	1    5150 3500
	0    1    1    0   
$EndComp
Connection ~ 5050 3500
Connection ~ 5250 3500
Wire Wire Line
	5250 3500 6250 3500
Wire Wire Line
	4100 3500 5050 3500
Wire Wire Line
	5250 3500 5250 3625
Wire Wire Line
	5050 3500 5050 3625
$Comp
L Device:C_Small Cc?
U 1 1 5B7E3F12
P 5150 3625
F 0 "Cc?" V 5125 3825 39  0000 C CNN
F 1 "1uF 100V" V 5175 3925 39  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5150 3625 50  0001 C CNN
F 3 "~" H 5150 3625 50  0001 C CNN
	1    5150 3625
	0    1    1    0   
$EndComp
Connection ~ 5250 3625
Wire Wire Line
	5250 3625 5250 3750
Connection ~ 5050 3625
Wire Wire Line
	5050 3625 5050 3750
$Comp
L Device:C_Small Cc?
U 1 1 5B7E6C29
P 5150 3750
F 0 "Cc?" V 5125 3950 39  0000 C CNN
F 1 "1uF 100V" V 5175 4050 39  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5150 3750 50  0001 C CNN
F 3 "~" H 5150 3750 50  0001 C CNN
	1    5150 3750
	0    1    1    0   
$EndComp
Connection ~ 5250 3750
Wire Wire Line
	5250 3750 5250 3875
Connection ~ 5050 3750
Wire Wire Line
	5050 3750 5050 3875
$Comp
L Device:C_Small Cc?
U 1 1 5B7E6CED
P 5150 3875
F 0 "Cc?" V 5125 4075 39  0000 C CNN
F 1 "1uF 100V" V 5175 4175 39  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5150 3875 50  0001 C CNN
F 3 "~" H 5150 3875 50  0001 C CNN
	1    5150 3875
	0    1    1    0   
$EndComp
Connection ~ 5250 3875
Wire Wire Line
	5250 3875 5250 4000
Connection ~ 5050 3875
Wire Wire Line
	5050 3875 5050 4000
$Comp
L Device:C_Small Cc?
U 1 1 5B7E6DB1
P 5150 4000
F 0 "Cc?" V 5125 4200 39  0000 C CNN
F 1 "1uF 100V" V 5175 4300 39  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5150 4000 50  0001 C CNN
F 3 "~" H 5150 4000 50  0001 C CNN
	1    5150 4000
	0    1    1    0   
$EndComp
Connection ~ 5250 4000
Wire Wire Line
	5250 4000 5250 4125
Connection ~ 5050 4000
Wire Wire Line
	5050 4000 5050 4125
$Comp
L Device:C_Small Cc?
U 1 1 5B7E6E71
P 5150 4125
F 0 "Cc?" V 5125 4325 39  0000 C CNN
F 1 "1uF 100V" V 5175 4425 39  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5150 4125 50  0001 C CNN
F 3 "~" H 5150 4125 50  0001 C CNN
	1    5150 4125
	0    1    1    0   
$EndComp
Connection ~ 5250 4125
Wire Wire Line
	5250 4125 5250 4250
Connection ~ 5050 4125
Wire Wire Line
	5050 4125 5050 4250
$Comp
L Device:C_Small Cc?
U 1 1 5B7E6F33
P 5150 4250
F 0 "Cc?" V 5125 4450 39  0000 C CNN
F 1 "1uF 100V" V 5175 4550 39  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5150 4250 50  0001 C CNN
F 3 "~" H 5150 4250 50  0001 C CNN
	1    5150 4250
	0    1    1    0   
$EndComp
Connection ~ 5250 4250
Wire Wire Line
	5250 4250 5250 4375
Connection ~ 5050 4250
Wire Wire Line
	5050 4250 5050 4375
$Comp
L Device:C_Small Cc?
U 1 1 5B7E6FF7
P 5150 4375
F 0 "Cc?" V 5125 4575 39  0000 C CNN
F 1 "1uF 100V" V 5175 4675 39  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5150 4375 50  0001 C CNN
F 3 "~" H 5150 4375 50  0001 C CNN
	1    5150 4375
	0    1    1    0   
$EndComp
Connection ~ 5250 4375
Wire Wire Line
	5250 4375 5250 4500
Connection ~ 5050 4375
Wire Wire Line
	5050 4375 5050 4500
$Comp
L Device:C_Small Cc?
U 1 1 5B7E70BF
P 5150 4500
F 0 "Cc?" V 5125 4700 39  0000 C CNN
F 1 "1uF 100V" V 5175 4800 39  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5150 4500 50  0001 C CNN
F 3 "~" H 5150 4500 50  0001 C CNN
	1    5150 4500
	0    1    1    0   
$EndComp
Connection ~ 5250 4500
Wire Wire Line
	5250 4500 5250 4625
Connection ~ 5050 4500
Wire Wire Line
	5050 4500 5050 4625
$Comp
L Device:C_Small Cc?
U 1 1 5B7E7187
P 5150 4625
F 0 "Cc?" V 5125 4825 39  0000 C CNN
F 1 "1uF 100V" V 5175 4925 39  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5150 4625 50  0001 C CNN
F 3 "~" H 5150 4625 50  0001 C CNN
	1    5150 4625
	0    1    1    0   
$EndComp
Connection ~ 5250 4625
Wire Wire Line
	5250 4625 5250 4750
Connection ~ 5050 4625
Wire Wire Line
	5050 4625 5050 4750
$Comp
L Device:C_Small Cc?
U 1 1 5B7E7253
P 5150 4750
F 0 "Cc?" V 5125 4950 39  0000 C CNN
F 1 "1uF 100V" V 5175 5050 39  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5150 4750 50  0001 C CNN
F 3 "~" H 5150 4750 50  0001 C CNN
	1    5150 4750
	0    1    1    0   
$EndComp
Connection ~ 5250 4750
Wire Wire Line
	5250 4750 5250 4875
Connection ~ 5050 4750
Wire Wire Line
	5050 4750 5050 4875
$Comp
L Device:C_Small Cc?
U 1 1 5B7E758E
P 5150 4875
F 0 "Cc?" V 5125 5075 39  0000 C CNN
F 1 "1uF 100V" V 5175 5175 39  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5150 4875 50  0001 C CNN
F 3 "~" H 5150 4875 50  0001 C CNN
	1    5150 4875
	0    1    1    0   
$EndComp
Wire Notes Line
	5675 3350 5675 4950
Wire Notes Line
	5675 4950 4725 4950
Wire Notes Line
	4725 4950 4725 3350
Wire Notes Line
	4725 3350 5675 3350
Text Notes 4775 5025 0    39   ~ 0
Capacitor Bank 12uF 100V 
$Comp
L Device:C_Small Co?
U 1 1 5B8037C8
P 3200 3500
F 0 "Co?" V 3175 3700 39  0000 C CNN
F 1 "2.2uF 100V" V 3250 3775 39  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3200 3500 50  0001 C CNN
F 3 "~" H 3200 3500 50  0001 C CNN
	1    3200 3500
	0    1    1    0   
$EndComp
Connection ~ 3300 3500
Connection ~ 3100 3500
Connection ~ 3300 3625
Wire Wire Line
	3300 3625 3300 3500
Connection ~ 3100 3625
Wire Wire Line
	3100 3625 3100 3500
Wire Wire Line
	3300 3625 3300 3750
Wire Wire Line
	3100 3625 3100 3750
$Comp
L Device:C_Small Co?
U 1 1 5B803B1F
P 3200 3750
F 0 "Co?" V 3175 3950 39  0000 C CNN
F 1 "2.2uF 100V" V 3250 4025 39  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3200 3750 50  0001 C CNN
F 3 "~" H 3200 3750 50  0001 C CNN
	1    3200 3750
	0    1    1    0   
$EndComp
Connection ~ 3300 3750
Wire Wire Line
	3300 3750 3300 3875
Connection ~ 3100 3750
Wire Wire Line
	3100 3750 3100 3875
$Comp
L Device:C_Small Co?
U 1 1 5B803BEB
P 3200 3875
F 0 "Co?" V 3175 4075 39  0000 C CNN
F 1 "2.2uF 100V" V 3250 4150 39  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3200 3875 50  0001 C CNN
F 3 "~" H 3200 3875 50  0001 C CNN
	1    3200 3875
	0    1    1    0   
$EndComp
Connection ~ 3300 3875
Wire Wire Line
	3300 3875 3300 4000
Connection ~ 3100 3875
Wire Wire Line
	3100 3875 3100 4000
$Comp
L Device:C_Small Co?
U 1 1 5B803CBB
P 3200 4000
F 0 "Co?" V 3175 4200 39  0000 C CNN
F 1 "2.2uF 100V" V 3250 4275 39  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3200 4000 50  0001 C CNN
F 3 "~" H 3200 4000 50  0001 C CNN
	1    3200 4000
	0    1    1    0   
$EndComp
Wire Notes Line
	2875 4200 3725 4200
Wire Notes Line
	3725 4200 3725 3225
Wire Notes Line
	3725 3225 2875 3225
Wire Notes Line
	2875 3225 2875 4200
Text Notes 2875 4275 0    39   ~ 0
Capacitor Bank 11uF 100V\n
$Comp
L Device:C_Small Ci?
U 1 1 5B81F313
P 7175 3500
F 0 "Ci?" V 7125 3700 39  0000 C CNN
F 1 "4,7uF 50V" V 7200 3775 39  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7175 3500 50  0001 C CNN
F 3 "~" H 7175 3500 50  0001 C CNN
	1    7175 3500
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small Ci?
U 1 1 5B8515A3
P 7175 3625
F 0 "Ci?" V 7125 3825 39  0000 C CNN
F 1 "4,7uF 50V" V 7200 3900 39  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7175 3625 50  0001 C CNN
F 3 "~" H 7175 3625 50  0001 C CNN
	1    7175 3625
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small Ci?
U 1 1 5B851677
P 7175 3750
F 0 "Ci?" V 7125 3950 39  0000 C CNN
F 1 "4,7uF 50V" V 7200 4025 39  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7175 3750 50  0001 C CNN
F 3 "~" H 7175 3750 50  0001 C CNN
	1    7175 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	7075 3750 7075 3625
Connection ~ 7075 3500
Connection ~ 7075 3625
Wire Wire Line
	7075 3625 7075 3500
Wire Wire Line
	7275 3750 7275 3625
Connection ~ 7275 3500
Connection ~ 7275 3625
Wire Wire Line
	7275 3625 7275 3500
Wire Wire Line
	7275 3500 8000 3500
Wire Wire Line
	6300 3500 7075 3500
Wire Notes Line
	6825 3375 6825 3925
Wire Notes Line
	6825 3925 7700 3925
Wire Notes Line
	7700 3925 7700 3375
Wire Notes Line
	7700 3375 6825 3375
Text Label 4100 2950 0    39   ~ 0
LS
$Comp
L Device:Jumper_NC_Small JP?
U 1 1 5BA70A29
P 4000 3125
F 0 "JP?" H 4000 3000 39  0000 C CNN
F 1 "Diode On" H 3800 2925 39  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 4000 3125 50  0001 C CNN
F 3 "~" H 4000 3125 50  0001 C CNN
	1    4000 3125
	1    0    0    -1  
$EndComp
Connection ~ 4100 3125
Wire Wire Line
	4100 3125 4100 3200
Text Label 3650 2850 2    39   ~ 0
LG
Wire Wire Line
	3900 3125 3900 2850
Wire Wire Line
	3900 2850 4000 2850
$Comp
L Device:Jumper_NC_Small JP?
U 1 1 5BA89FBB
P 3800 2850
F 0 "JP?" H 3550 2700 50  0000 C CNN
F 1 "MosfetOn" H 3550 2775 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 3800 2850 50  0001 C CNN
F 3 "~" H 3800 2850 50  0001 C CNN
	1    3800 2850
	1    0    0    -1  
$EndComp
Connection ~ 3900 2850
Wire Wire Line
	3650 2850 3700 2850
$Comp
L Device:Jumper_NC_Small JP?
U 1 1 5BAA4D53
P 4000 3200
F 0 "JP?" H 4000 3075 39  0000 C CNN
F 1 "Diode On" H 3800 3150 39  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 4000 3200 50  0001 C CNN
F 3 "~" H 4000 3200 50  0001 C CNN
	1    4000 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3200 3900 3125
Connection ~ 3900 3125
Text Label 10150 3525 0    50   ~ 0
LG
Text Label 10150 3625 0    50   ~ 0
LS
Text Notes 4400 2300 0    39   ~ 0
Arrumar footprint snubber\n
$Comp
L Device:R_Small Rg?
U 1 1 5B7F82B4
P 10000 3575
F 0 "Rg?" H 10059 3621 50  0000 L CNN
F 1 "10k" H 10059 3530 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10000 3575 50  0001 C CNN
F 3 "" H 10000 3575 50  0001 C CNN
	1    10000 3575
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10000 3475 10100 3475
Wire Wire Line
	10100 3475 10100 3525
Wire Wire Line
	10100 3525 10400 3525
Wire Wire Line
	10000 3675 10100 3675
Wire Wire Line
	10100 3675 10100 3625
Wire Wire Line
	10100 3625 10400 3625
$Comp
L Device:R_Small Rg?
U 1 1 5B82B53F
P 10000 3350
F 0 "Rg?" H 10059 3396 50  0000 L CNN
F 1 "10k" H 10059 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10000 3350 50  0001 C CNN
F 3 "" H 10000 3350 50  0001 C CNN
	1    10000 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10000 3450 10100 3450
Wire Wire Line
	10100 3450 10100 3425
Wire Wire Line
	10100 3425 10400 3425
Wire Wire Line
	10000 3250 10125 3250
Wire Wire Line
	10125 3250 10125 3325
Wire Wire Line
	10125 3325 10400 3325
Wire Wire Line
	8000 4150 8100 4150
Connection ~ 8000 3500
Wire Wire Line
	8000 3500 8000 3650
Wire Wire Line
	8000 3650 8000 3750
Connection ~ 8000 3650
Wire Wire Line
	8000 3650 8100 3650
Wire Wire Line
	8100 3750 8100 3650
Text HLabel 9000 3425 1    50   Input ~ 0
12V
Wire Wire Line
	9000 3425 9000 3725
$Comp
L Connector_Generic:Conn_01x07 J?
U 1 1 5F3077B2
P 10600 3625
F 0 "J?" H 10680 3667 50  0000 L CNN
F 1 "Driver_INEP" H 10680 3576 50  0000 L CNN
F 2 "" H 10600 3625 50  0001 C CNN
F 3 "~" H 10600 3625 50  0001 C CNN
	1    10600 3625
	1    0    0    -1  
$EndComp
Text Label 10175 3725 0    50   ~ 0
Vcc
Text Label 10250 3925 0    50   ~ 0
GND
$Comp
L KicadZeniteSolarLibrary:INA826 U?
U 1 1 5F257727
P 2100 6625
F 0 "U?" H 2375 6575 50  0000 L CNN
F 1 "INA826" H 2350 6475 50  0000 L CNN
F 2 "" H 2200 6625 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina826.pdf" H 2200 6625 50  0001 C CNN
	1    2100 6625
	1    0    0    -1  
$EndComp
Text HLabel 2725 6625 2    50   Output ~ 0
V_Vpanel
Wire Wire Line
	2500 6625 2725 6625
$Comp
L Device:R_US R?
U 1 1 5F26DEA2
P 1500 6625
F 0 "R?" H 1568 6671 50  0000 L CNN
F 1 "G=1+(49.4k/Rg)" V 1375 6300 50  0000 L CNN
F 2 "" V 1540 6615 50  0001 C CNN
F 3 "~" H 1500 6625 50  0001 C CNN
	1    1500 6625
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6475 1600 6475
Wire Wire Line
	1600 6475 1600 6525
Wire Wire Line
	1600 6525 1800 6525
Wire Wire Line
	1500 6775 1600 6775
Wire Wire Line
	1600 6775 1600 6725
Wire Wire Line
	1600 6725 1800 6725
Text Label 800  6275 1    50   ~ 0
+Vp
Text Label 800  6950 1    50   ~ 0
+Vp
$Comp
L Device:R_US R?
U 1 1 5F281D55
P 1025 6275
F 0 "R?" H 1093 6321 50  0000 L CNN
F 1 "?" H 1100 6400 50  0000 L CNN
F 2 "" V 1065 6265 50  0001 C CNN
F 3 "~" H 1025 6275 50  0001 C CNN
	1    1025 6275
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5F28563E
P 1025 6950
F 0 "R?" H 1093 6996 50  0000 L CNN
F 1 "?" H 1100 7075 50  0000 L CNN
F 2 "" V 1065 6940 50  0001 C CNN
F 3 "~" H 1025 6950 50  0001 C CNN
	1    1025 6950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5F285DAB
P 1275 7100
F 0 "R?" H 1343 7146 50  0000 L CNN
F 1 "?" H 1350 7225 50  0000 L CNN
F 2 "" V 1315 7090 50  0001 C CNN
F 3 "~" H 1275 7100 50  0001 C CNN
	1    1275 7100
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5F286A10
P 1275 6125
F 0 "R?" H 1343 6171 50  0000 L CNN
F 1 "?" H 1350 6250 50  0000 L CNN
F 2 "" V 1315 6115 50  0001 C CNN
F 3 "~" H 1275 6125 50  0001 C CNN
	1    1275 6125
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5F299C61
P 1275 6625
F 0 "R?" H 1125 6675 50  0000 L CNN
F 1 "?" H 1150 6600 50  0000 L CNN
F 2 "" V 1315 6615 50  0001 C CNN
F 3 "~" H 1275 6625 50  0001 C CNN
	1    1275 6625
	1    0    0    -1  
$EndComp
Wire Wire Line
	1175 6950 1275 6950
Wire Wire Line
	1275 6950 1275 6775
Connection ~ 1275 6950
Wire Wire Line
	1275 6950 1475 6950
Wire Wire Line
	1475 6950 1475 6825
Wire Wire Line
	1475 6825 1800 6825
Wire Wire Line
	1175 6275 1275 6275
Wire Wire Line
	1275 6275 1275 6475
Connection ~ 1275 6275
Wire Wire Line
	1275 6275 1500 6275
Wire Wire Line
	1500 6275 1500 6425
Wire Wire Line
	1500 6425 1800 6425
$Comp
L power:GND #PWR?
U 1 1 5F2E1A19
P 1275 7275
F 0 "#PWR?" H 1275 7025 50  0001 C CNN
F 1 "GND" H 1280 7102 50  0000 C CNN
F 2 "" H 1275 7275 50  0001 C CNN
F 3 "" H 1275 7275 50  0001 C CNN
	1    1275 7275
	1    0    0    -1  
$EndComp
Wire Wire Line
	1275 7275 1275 7250
$Comp
L power:GND #PWR?
U 1 1 5F2EC804
P 1275 5950
F 0 "#PWR?" H 1275 5700 50  0001 C CNN
F 1 "GND" H 1280 5777 50  0000 C CNN
F 2 "" H 1275 5950 50  0001 C CNN
F 3 "" H 1275 5950 50  0001 C CNN
	1    1275 5950
	-1   0    0    1   
$EndComp
Wire Wire Line
	1275 5950 1275 5975
Wire Wire Line
	800  6275 875  6275
Wire Wire Line
	800  6950 875  6950
$Comp
L power:+5VA #PWR?
U 1 1 5B575A82
P 3800 5975
F 0 "#PWR?" H 3800 5825 50  0001 C CNN
F 1 "+5VA" H 3815 6148 50  0000 C CNN
F 2 "" H 3800 5975 50  0001 C CNN
F 3 "" H 3800 5975 50  0001 C CNN
	1    3800 5975
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small Tvs?
U 1 1 5BDBC408
P 3350 6125
F 0 "Tvs?" V 3325 6075 39  0000 R CNN
F 1 "Tvs" V 3375 6075 39  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric_Castellated" V 3350 6125 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/NXP%20PDFs/BYD77.pdf" V 3350 6125 50  0001 C CNN
	1    3350 6125
	0    -1   1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5B48C252
P 3600 6125
F 0 "C?" H 3600 6050 39  0000 L CNN
F 1 "100nF" H 3600 6200 39  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3600 6125 50  0001 C CNN
F 3 "" H 3600 6125 50  0001 C CNN
	1    3600 6125
	1    0    0    1   
$EndComp
Wire Wire Line
	3600 6025 3600 5975
Wire Wire Line
	3600 5975 3800 5975
Wire Wire Line
	3600 6225 3600 6275
Wire Wire Line
	3600 5975 3350 5975
Wire Wire Line
	3350 5975 3350 6025
Connection ~ 3600 5975
Wire Wire Line
	3350 6275 3350 6225
Wire Wire Line
	3600 6275 3350 6275
$Comp
L power:GND #PWR?
U 1 1 5B8BA1C6
P 3600 6275
F 0 "#PWR?" H 3600 6025 50  0001 C CNN
F 1 "GND" H 3605 6102 50  0000 C CNN
F 2 "" H 3600 6275 50  0001 C CNN
F 3 "" H 3600 6275 50  0001 C CNN
	1    3600 6275
	1    0    0    -1  
$EndComp
Connection ~ 3600 6275
Wire Wire Line
	3800 5975 3800 6350
Text Label 3300 6550 2    39   ~ 0
PanelShunt+
$Comp
L Amplifier_Current:INA240A4D U?
U 1 1 5F309A34
P 3900 6650
F 0 "U?" H 3875 6900 50  0000 L CNN
F 1 "INA240A4D" H 3875 6825 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3900 6000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina240.pdf" H 4050 6800 50  0001 C CNN
	1    3900 6650
	1    0    0    -1  
$EndComp
Connection ~ 3800 5975
Text HLabel 4275 6650 2    50   Output ~ 0
V_Ipanel
Wire Wire Line
	3800 6975 3800 7050
$Comp
L power:GND #PWR?
U 1 1 5F3FBA43
P 3800 7050
F 0 "#PWR?" H 3800 6800 50  0001 C CNN
F 1 "GND" H 3805 6877 50  0000 C CNN
F 2 "" H 3800 7050 50  0001 C CNN
F 3 "" H 3800 7050 50  0001 C CNN
	1    3800 7050
	1    0    0    -1  
$EndComp
Connection ~ 3900 6975
Wire Wire Line
	4000 6975 3900 6975
Wire Wire Line
	4000 6950 4000 6975
Wire Wire Line
	3800 6975 3800 6950
Connection ~ 3800 6975
Wire Wire Line
	3900 6975 3900 6950
Wire Wire Line
	3800 6975 3900 6975
Wire Wire Line
	3600 6750 3300 6750
Text Label 3300 6750 2    39   ~ 0
PanelShunt-
Wire Wire Line
	3300 6550 3600 6550
Wire Wire Line
	4200 6650 4275 6650
$Comp
L power:+5VA #PWR?
U 1 1 5F389FBC
P 5400 5975
F 0 "#PWR?" H 5400 5825 50  0001 C CNN
F 1 "+5VA" H 5415 6148 50  0000 C CNN
F 2 "" H 5400 5975 50  0001 C CNN
F 3 "" H 5400 5975 50  0001 C CNN
	1    5400 5975
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small Tvs?
U 1 1 5F389FC2
P 4950 6125
F 0 "Tvs?" V 4925 6075 39  0000 R CNN
F 1 "Tvs" V 4975 6075 39  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric_Castellated" V 4950 6125 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/NXP%20PDFs/BYD77.pdf" V 4950 6125 50  0001 C CNN
	1    4950 6125
	0    -1   1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F389FC8
P 5200 6125
F 0 "C?" H 5200 6050 39  0000 L CNN
F 1 "100nF" H 5200 6200 39  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5200 6125 50  0001 C CNN
F 3 "" H 5200 6125 50  0001 C CNN
	1    5200 6125
	1    0    0    1   
$EndComp
Wire Wire Line
	5200 6025 5200 5975
Wire Wire Line
	5200 5975 5400 5975
Wire Wire Line
	5200 6225 5200 6275
Wire Wire Line
	5200 5975 4950 5975
Wire Wire Line
	4950 5975 4950 6025
Connection ~ 5200 5975
Wire Wire Line
	4950 6275 4950 6225
Wire Wire Line
	5200 6275 4950 6275
$Comp
L power:GND #PWR?
U 1 1 5F389FD6
P 5200 6275
F 0 "#PWR?" H 5200 6025 50  0001 C CNN
F 1 "GND" H 5205 6102 50  0000 C CNN
F 2 "" H 5200 6275 50  0001 C CNN
F 3 "" H 5200 6275 50  0001 C CNN
	1    5200 6275
	1    0    0    -1  
$EndComp
Connection ~ 5200 6275
Wire Wire Line
	5400 5975 5400 6350
Text Label 4900 6550 2    39   ~ 0
BatShunt+
$Comp
L Amplifier_Current:INA240A4D U?
U 1 1 5F389FDF
P 5500 6650
F 0 "U?" H 5475 6900 50  0000 L CNN
F 1 "INA240A4D" H 5475 6825 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5500 6000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina240.pdf" H 5650 6800 50  0001 C CNN
	1    5500 6650
	1    0    0    -1  
$EndComp
Connection ~ 5400 5975
Text HLabel 5875 6650 2    50   Output ~ 0
V_Ibat
Wire Wire Line
	5400 6975 5400 7050
$Comp
L power:GND #PWR?
U 1 1 5F389FE8
P 5400 7050
F 0 "#PWR?" H 5400 6800 50  0001 C CNN
F 1 "GND" H 5405 6877 50  0000 C CNN
F 2 "" H 5400 7050 50  0001 C CNN
F 3 "" H 5400 7050 50  0001 C CNN
	1    5400 7050
	1    0    0    -1  
$EndComp
Connection ~ 5500 6975
Wire Wire Line
	5600 6975 5500 6975
Wire Wire Line
	5600 6950 5600 6975
Wire Wire Line
	5400 6975 5400 6950
Connection ~ 5400 6975
Wire Wire Line
	5500 6975 5500 6950
Wire Wire Line
	5400 6975 5500 6975
Wire Wire Line
	5200 6750 4900 6750
Text Label 4900 6750 2    39   ~ 0
BatShunt-
Wire Wire Line
	4900 6550 5200 6550
Wire Wire Line
	5800 6650 5875 6650
Wire Wire Line
	8100 3750 8500 3750
Wire Wire Line
	8100 4050 8475 4050
Wire Wire Line
	4050 3700 4050 3500
Wire Wire Line
	4150 3800 4525 3800
Wire Wire Line
	4150 4100 4550 4100
Wire Wire Line
	4150 4100 4150 4200
Wire Wire Line
	4050 4200 4150 4200
Connection ~ 4050 4200
Wire Wire Line
	4050 4200 4050 4100
Wire Wire Line
	4050 4350 4050 4200
Wire Wire Line
	4050 3700 4150 3700
Connection ~ 4050 3700
Wire Wire Line
	4050 3800 4050 3700
Wire Wire Line
	4150 3800 4150 3700
Text Label 4525 3800 2    39   ~ 0
BatShunt-
Text Label 4550 4100 2    39   ~ 0
BatShunt+
$Comp
L Device:R Rshunt?
U 1 1 5F3F9945
P 4050 3950
F 0 "Rshunt?" H 4120 3996 50  0000 L CNN
F 1 "1500uR" H 4120 3905 50  0000 L CNN
F 2 "MCCplaca Shunt:PML100HZPJV0L5" V 3980 3950 50  0001 C CNN
F 3 "~" H 4050 3950 50  0001 C CNN
	1    4050 3950
	1    0    0    1   
$EndComp
Wire Wire Line
	3300 3500 4050 3500
Connection ~ 4050 3500
Wire Wire Line
	4050 3500 4100 3500
Wire Wire Line
	2300 1400 2300 3500
Connection ~ 2300 3500
Wire Wire Line
	2300 3500 2300 4350
$EndSCHEMATC
