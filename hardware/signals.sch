EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
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
L power:GNDA #PWR?
U 1 1 5F2A172E
P 7000 3300
F 0 "#PWR?" H 7000 3050 39  0001 C CNN
F 1 "GNDA" V 7005 3172 50  0000 R CNN
F 2 "" H 7000 3300 50  0001 C CNN
F 3 "" H 7000 3300 50  0001 C CNN
	1    7000 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6550 2850 6625 2850
Wire Wire Line
	6550 2950 6625 2950
Wire Wire Line
	6550 3300 7000 3300
Wire Wire Line
	6550 3950 6625 3950
Wire Wire Line
	6550 3850 6625 3850
Wire Wire Line
	6550 4300 7125 4300
Wire Wire Line
	6550 4400 6925 4400
Wire Wire Line
	6550 4600 7400 4600
$Comp
L power:GNDA #PWR?
U 1 1 5F2A173C
P 7000 4500
F 0 "#PWR?" H 7000 4250 39  0001 C CNN
F 1 "GNDA" H 7100 4325 50  0000 R CNN
F 2 "" H 7000 4500 50  0001 C CNN
F 3 "" H 7000 4500 50  0001 C CNN
	1    7000 4500
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5F2A1742
P 7400 4475
F 0 "#FLG?" H 7400 4550 50  0001 C CNN
F 1 "PWR_FLAG" H 7400 4649 50  0000 C CNN
F 2 "" H 7400 4475 50  0001 C CNN
F 3 "~" H 7400 4475 50  0001 C CNN
	1    7400 4475
	1    0    0    -1  
$EndComp
Text Label 7725 2850 2    39   ~ 0
-Vp
Text Label 7725 2950 2    39   ~ 0
+Vp
Text Label 7375 3050 2    39   ~ 0
Vpanel_adc-
Text Label 7375 3150 2    39   ~ 0
Vpanel_adc+
Text Label 8425 3750 2    39   ~ 0
+B
Text Label 8425 4050 2    39   ~ 0
-B
Text Label 7375 4050 2    39   ~ 0
Vbat_adc-
Text Label 7375 4150 2    39   ~ 0
Vbat_adc+
Text Label 7125 4300 2    39   ~ 0
BatOVInterrupt
Text Label 6925 4400 2    39   ~ 0
PWM
Wire Wire Line
	6550 4500 7000 4500
Wire Wire Line
	7400 4475 7400 4600
$Comp
L Device:R_Small R?
U 1 1 5F2A1755
P 7300 2850
F 0 "R?" V 7250 2625 39  0000 L CNN
F 1 "330KR" V 7250 2925 39  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7300 2850 50  0001 C CNN
F 3 "" H 7300 2850 50  0001 C CNN
F 4 "1%" V 7375 2900 39  0001 C CNN "Tolerance"
	1    7300 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F2A175C
P 7300 2950
F 0 "R?" V 7250 2725 39  0000 L CNN
F 1 "330KR" V 7250 3050 39  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7300 2950 50  0001 C CNN
F 3 "" H 7300 2950 50  0001 C CNN
F 4 "1%" V 7375 3000 39  0001 C CNN "Tolerance"
	1    7300 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F2A1763
P 8025 3750
F 0 "R?" V 7975 3525 39  0000 L CNN
F 1 "100" V 7975 3850 39  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8025 3750 50  0001 C CNN
F 3 "" H 8025 3750 50  0001 C CNN
F 4 "1%" V 8100 3800 39  0001 C CNN "Tolerance"
	1    8025 3750
	0    1    1    0   
$EndComp
Text Label 6925 2950 2    39   ~ 0
Vp_sen+
Text Label 6925 3850 2    39   ~ 0
Vb_sen+
Text Label 6920 2850 2    39   ~ 0
Vp_sen-
Wire Wire Line
	7575 4050 7575 3950
Wire Wire Line
	7625 3750 7625 3850
$Comp
L Device:R_Small R?
U 1 1 5F2A176F
P 7775 3900
F 0 "R?" H 7575 3850 39  0000 L CNN
F 1 "47R" H 7575 3950 39  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7775 3900 50  0001 C CNN
F 3 "" H 7775 3900 50  0001 C CNN
F 4 "1%" V 7850 3950 39  0001 C CNN "Tolerance"
	1    7775 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	6550 4050 7375 4050
Wire Wire Line
	6550 4150 7375 4150
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F2A1777
P 6625 3850
F 0 "TP?" H 6775 4000 50  0000 L CNN
F 1 "TestPoint_Probe" H 6778 3861 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6825 3850 50  0001 C CNN
F 3 "~" H 6825 3850 50  0001 C CNN
	1    6625 3850
	1    0    0    -1  
$EndComp
Connection ~ 6625 3850
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F2A177E
P 6625 3950
F 0 "TP?" H 6775 3900 50  0000 L CNN
F 1 "TestPoint_Probe" H 6925 4250 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6825 3950 50  0001 C CNN
F 3 "~" H 6825 3950 50  0001 C CNN
	1    6625 3950
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F2A1784
P 6625 2850
F 0 "TP?" H 6775 2950 50  0000 L CNN
F 1 "TestPoint_Probe" H 6778 2861 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6825 2850 50  0001 C CNN
F 3 "~" H 6825 2850 50  0001 C CNN
	1    6625 2850
	1    0    0    -1  
$EndComp
Connection ~ 6625 2850
Wire Wire Line
	6625 2850 7200 2850
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5F2A178C
P 6625 2950
F 0 "TP?" H 6675 2900 50  0000 L CNN
F 1 "TestPoint_Probe" H 6778 2961 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6825 2950 50  0001 C CNN
F 3 "~" H 6825 2950 50  0001 C CNN
	1    6625 2950
	1    0    0    -1  
$EndComp
Connection ~ 6625 2950
Wire Wire Line
	6625 2950 7200 2950
Connection ~ 6625 3950
Text Label 6925 3950 2    39   ~ 0
Vb_sen-
$Comp
L Device:D_TVS_ALT Tvs?
U 1 1 5F2A1796
P 8075 3100
F 0 "Tvs?" V 8075 3179 50  0000 L CNN
F 1 "D_TVS_ALT" V 8120 3179 50  0001 L CNN
F 2 "Diode_SMD:D_0805_2012Metric_Castellated" H 8075 3100 50  0001 C CNN
F 3 "~" H 8075 3100 50  0001 C CNN
	1    8075 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	7875 2950 8075 2950
Wire Wire Line
	7875 3250 8075 3250
Wire Wire Line
	6625 3950 7575 3950
Wire Wire Line
	8125 3750 8425 3750
Wire Wire Line
	6625 3850 7625 3850
Wire Wire Line
	7625 3750 7775 3750
Wire Wire Line
	7775 4000 7775 4050
Wire Wire Line
	7775 4050 7850 4050
Wire Wire Line
	7775 3800 7775 3750
Connection ~ 7775 3750
Wire Wire Line
	7775 3750 7925 3750
Wire Wire Line
	7875 3050 7875 2950
Wire Wire Line
	6550 3050 7875 3050
Wire Wire Line
	7875 3150 7875 3250
Wire Wire Line
	6550 3150 7875 3150
Wire Wire Line
	7400 2950 7725 2950
Wire Wire Line
	7400 2850 7725 2850
$Comp
L power:GND #PWR?
U 1 1 5F2A17AD
P 8150 5050
F 0 "#PWR?" H 8150 4800 50  0001 C CNN
F 1 "GND" H 8155 4877 50  0000 C CNN
F 2 "" H 8150 5050 50  0001 C CNN
F 3 "" H 8150 5050 50  0001 C CNN
	1    8150 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F2A17B3
P 7750 5050
F 0 "#PWR?" H 7750 4800 50  0001 C CNN
F 1 "GND" H 7755 4877 50  0000 C CNN
F 2 "" H 7750 5050 50  0001 C CNN
F 3 "" H 7750 5050 50  0001 C CNN
	1    7750 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 4600 8250 4500
$Comp
L Device:C_Small C?
U 1 1 5F2A17BA
P 8150 4800
F 0 "C?" H 8250 4825 39  0000 L CNN
F 1 "100nF" H 8250 4775 39  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8150 4800 50  0001 C CNN
F 3 "" H 8150 4800 50  0001 C CNN
	1    8150 4800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8150 4900 8150 5050
$Comp
L Device:L_Small L?
U 1 1 5F2A17C1
P 7950 4600
F 0 "L?" V 8050 4600 39  0000 C CNN
F 1 "L_Small" V 8000 4600 39  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7950 4600 50  0001 C CNN
F 3 "~" H 7950 4600 50  0001 C CNN
	1    7950 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7750 4900 7750 5050
Wire Wire Line
	7650 4600 7750 4600
Wire Wire Line
	7650 4475 7650 4600
$Comp
L power:+5V #PWR?
U 1 1 5F2A17CA
P 8250 4500
F 0 "#PWR?" H 8250 4350 50  0001 C CNN
F 1 "+5V" H 8265 4673 50  0000 C CNN
F 2 "" H 8250 4500 50  0001 C CNN
F 3 "" H 8250 4500 50  0001 C CNN
	1    8250 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR?
U 1 1 5F2A17D0
P 7650 4475
F 0 "#PWR?" H 7650 4325 50  0001 C CNN
F 1 "+5VA" H 7665 4603 50  0000 L CNN
F 2 "" H 7650 4475 50  0001 C CNN
F 3 "" H 7650 4475 50  0001 C CNN
	1    7650 4475
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 4600 8250 4600
Wire Wire Line
	8050 4600 8150 4600
Connection ~ 8150 4600
Wire Wire Line
	8150 4600 8150 4700
Wire Wire Line
	7750 4600 7750 4700
Connection ~ 7750 4600
Wire Wire Line
	7850 4600 7750 4600
$Comp
L Device:C_Small C?
U 1 1 5F2A17DD
P 7750 4800
F 0 "C?" H 7850 4825 39  0000 L CNN
F 1 "100nF" H 7850 4775 39  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7750 4800 50  0001 C CNN
F 3 "" H 7750 4800 50  0001 C CNN
	1    7750 4800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7400 4600 7650 4600
Connection ~ 7400 4600
Connection ~ 7650 4600
$Comp
L Device:Jumper_NC_Small JP?
U 1 1 5F2A17E6
P 7950 4050
F 0 "JP?" H 7950 3925 39  0000 C CNN
F 1 "VBat-Sen" H 7925 3975 39  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 7950 4050 50  0001 C CNN
F 3 "~" H 7950 4050 50  0001 C CNN
	1    7950 4050
	1    0    0    -1  
$EndComp
Connection ~ 7775 4050
Wire Wire Line
	8050 4050 8425 4050
Wire Wire Line
	7575 4050 7775 4050
$EndSCHEMATC
