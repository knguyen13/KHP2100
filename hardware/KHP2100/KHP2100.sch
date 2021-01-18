EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "KHP2100"
Date "2021-01-01"
Rev "NC"
Comp ""
Comment1 ""
Comment2 "Mode switch to change event that occurs upon interaction."
Comment3 "Description: Interact with RGB through 3 user switches."
Comment4 "Author: Kevin Nguyen"
$EndDescr
$Comp
L KHP2100:ATMEGA328P U2
U 1 1 5FF086FA
P 5900 3500
F 0 "U2" H 5350 4300 50  0000 L CNN
F 1 "ATMEGA328P" H 6100 2650 50  0000 L CNN
F 2 "KHP2100:ATMEGA328P" H 6150 2700 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/ATMEGA328P-AU/ATMEGA328P-AU-ND/1832260?itemSeq=350628990" H 6150 2700 50  0001 C CNN
	1    5900 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_RGBA D2
U 1 1 5FF0A62A
P 8550 2300
F 0 "D2" H 8450 2700 50  0000 C CNN
F 1 "LED_RGBA" H 8650 1950 50  0000 C CNN
F 2 "KHP2100:RGB_LED_0606_1616METRIC" H 8550 2250 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/LTST-C19HE1WT/160-2162-1-ND/4866310?itemSeq=350628998" H 8550 2250 50  0001 C CNN
	1    8550 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5FF0C600
P 2200 5950
F 0 "C2" H 2318 5996 50  0000 L CNN
F 1 "2.2u" H 2318 5905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2238 5800 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/samsung-electro-mechanics/CL10A225KQ8NNNC/3889269" H 2200 5950 50  0001 C CNN
	1    2200 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 5FF0DA35
P 3750 5900
F 0 "C3" H 3868 5946 50  0000 L CNN
F 1 "4.7u" H 3868 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3788 5750 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/GRM185R60J475ME15D/490-3892-1-ND/965934?itemSeq=350628974" H 3750 5900 50  0001 C CNN
	1    3750 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5FF0E173
P 7900 2600
F 0 "R4" V 7800 2600 50  0000 C CNN
F 1 "110" V 8000 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7830 2600 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/RC0805FR-07110RL/311-110CRCT-ND/730506?itemSeq=350628980" H 7900 2600 50  0001 C CNN
	1    7900 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5FF0F2A4
P 7900 2000
F 0 "R2" V 7800 2000 50  0000 C CNN
F 1 "107" V 8000 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7830 2000 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/ERJ-8ENF1070V/P107FCT-ND/89296?itemSeq=350628976" H 7900 2000 50  0001 C CNN
	1    7900 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5FF0F61F
P 7900 2300
F 0 "R3" V 7800 2300 50  0000 C CNN
F 1 "110" V 8000 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7830 2300 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/RC0805FR-07110RL/311-110CRCT-ND/730506?itemSeq=350628980" H 7900 2300 50  0001 C CNN
	1    7900 2300
	0    1    1    0   
$EndComp
Text GLabel 2050 4250 0    50   Input ~ 0
SCK
Text GLabel 2050 4350 0    50   Input ~ 0
RST
Text GLabel 2550 4250 2    50   Input ~ 0
MOSI
Text GLabel 5250 3950 0    50   Input ~ 0
MISO
Text GLabel 5250 3850 0    50   Input ~ 0
MOSI
Text GLabel 5250 4050 0    50   Input ~ 0
SCK
Text GLabel 6550 3400 2    50   Input ~ 0
RST
$Comp
L Switch:SW_SPST SW4
U 1 1 5FF2041F
P 4600 3550
F 0 "SW4" H 4600 3700 50  0000 C CNN
F 1 "HP2" H 4600 3450 50  0000 C CNN
F 2 "KHP2100:MX_SWITCH" H 4600 3550 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Cherry%20PDFs/MX%20Series.pdf" H 4600 3550 50  0001 C CNN
	1    4600 3550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW5
U 1 1 5FF2087B
P 4600 3900
F 0 "SW5" H 4600 4050 50  0000 C CNN
F 1 "HP3" H 4600 3800 50  0000 C CNN
F 2 "KHP2100:MX_SWITCH" H 4600 3900 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Cherry%20PDFs/MX%20Series.pdf" H 4600 3900 50  0001 C CNN
	1    4600 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2650 5800 2600
Wire Wire Line
	5800 2600 5900 2600
Wire Wire Line
	6000 2600 6000 2650
Wire Wire Line
	5900 2650 5900 2600
Connection ~ 5900 2600
Wire Wire Line
	5900 2600 6000 2600
$Comp
L power:+5V #PWR010
U 1 1 5FF2894F
P 5900 2500
F 0 "#PWR010" H 5900 2350 50  0001 C CNN
F 1 "+5V" H 5915 2673 50  0000 C CNN
F 2 "" H 5900 2500 50  0001 C CNN
F 3 "" H 5900 2500 50  0001 C CNN
	1    5900 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2600 5900 2500
Wire Wire Line
	5800 4400 5800 4450
Wire Wire Line
	5800 4450 5900 4450
Wire Wire Line
	6000 4450 6000 4400
Wire Wire Line
	5900 4400 5900 4450
Connection ~ 5900 4450
Wire Wire Line
	5900 4450 6000 4450
Wire Wire Line
	5900 4450 5900 4500
$Comp
L power:GND #PWR011
U 1 1 5FF2AB8B
P 5900 4500
F 0 "#PWR011" H 5900 4250 50  0001 C CNN
F 1 "GND" H 5905 4327 50  0000 C CNN
F 2 "" H 5900 4500 50  0001 C CNN
F 3 "" H 5900 4500 50  0001 C CNN
	1    5900 4500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J1
U 1 1 5FF2C7B7
P 2250 4250
F 0 "J1" H 2250 4450 50  0000 C CNN
F 1 "ICSP" H 2300 4050 50  0000 C CNN
F 2 "KHP2100:ICSP" H 2250 4250 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/NPPC032KFMS-RC/S5712-ND/776171?itemSeq=350628971" H 2250 4250 50  0001 C CNN
	1    2250 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 5800 3350 5800
NoConn ~ 2650 5900
Wire Wire Line
	3300 5900 3350 5900
Wire Wire Line
	3350 5900 3350 5800
Connection ~ 3350 5800
$Comp
L power:GND #PWR08
U 1 1 5FF36D4A
P 3750 6150
F 0 "#PWR08" H 3750 5900 50  0001 C CNN
F 1 "GND" H 3755 5977 50  0000 C CNN
F 2 "" H 3750 6150 50  0001 C CNN
F 3 "" H 3750 6150 50  0001 C CNN
	1    3750 6150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 5FF373E7
P 3750 5650
F 0 "#PWR07" H 3750 5500 50  0001 C CNN
F 1 "+5V" H 3765 5823 50  0000 C CNN
F 2 "" H 3750 5650 50  0001 C CNN
F 3 "" H 3750 5650 50  0001 C CNN
	1    3750 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 6000 3500 6000
Wire Wire Line
	3750 6050 3750 6100
Wire Wire Line
	3350 5800 3500 5800
Wire Wire Line
	3750 5750 3750 5700
$Comp
L KHP2100:RP132S501D U1
U 1 1 5FF07B98
P 2950 5900
F 0 "U1" H 3100 6100 50  0000 C CNN
F 1 "RP132S501D" H 2750 5700 50  0000 C CNN
F 2 "KHP2100:RP132S501D" H 2200 6750 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/RP132S501D-E2-FE/2129-RP132S501D-E2-FECT-ND/11569747?itemSeq=350628986" H 2200 6750 50  0001 C CNN
	1    2950 5900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3500 5800 3500 5700
Wire Wire Line
	3500 5700 3750 5700
Connection ~ 3750 5700
Wire Wire Line
	3750 5700 3750 5650
Wire Wire Line
	3500 6000 3500 6100
Wire Wire Line
	3500 6100 3750 6100
Connection ~ 3750 6100
Wire Wire Line
	3750 6100 3750 6150
Wire Wire Line
	2200 5800 2200 5700
Connection ~ 2200 5800
$Comp
L power:GND #PWR04
U 1 1 5FF3F912
P 2200 6150
F 0 "#PWR04" H 2200 5900 50  0001 C CNN
F 1 "GND" H 2205 5977 50  0000 C CNN
F 2 "" H 2200 6150 50  0001 C CNN
F 3 "" H 2200 6150 50  0001 C CNN
	1    2200 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6150 2200 6100
$Comp
L Switch:SW_SPDT SW1
U 1 1 5FF40B06
P 1200 5900
F 0 "SW1" V 1050 5750 50  0000 C CNN
F 1 "ON/OFF" V 1200 6150 50  0000 C CNN
F 2 "KHP2100:CJS1200A" H 1200 5900 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/CJS-1200TA/563-1021-1-ND/948401?itemSeq=350628973" H 1200 5900 50  0001 C CNN
	1    1200 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 5800 2600 5800
Wire Wire Line
	2650 6000 2600 6000
Wire Wire Line
	2600 6000 2600 5800
Connection ~ 2600 5800
Wire Wire Line
	2600 5800 2200 5800
Wire Wire Line
	8350 2300 8050 2300
Wire Wire Line
	8350 2100 8200 2100
Wire Wire Line
	8200 2100 8200 2000
Wire Wire Line
	8200 2000 8050 2000
Wire Wire Line
	8350 2500 8200 2500
Wire Wire Line
	8200 2500 8200 2600
Wire Wire Line
	8200 2600 8050 2600
$Comp
L power:+5V #PWR012
U 1 1 5FF99733
P 8900 2150
F 0 "#PWR012" H 8900 2000 50  0001 C CNN
F 1 "+5V" H 8915 2323 50  0000 C CNN
F 2 "" H 8900 2150 50  0001 C CNN
F 3 "" H 8900 2150 50  0001 C CNN
	1    8900 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 2300 8900 2300
Wire Wire Line
	8900 2300 8900 2150
$Comp
L Device:LED_RGBA D3
U 1 1 5FFD457F
P 8550 3200
F 0 "D3" H 8450 3600 50  0000 C CNN
F 1 "LED_RGBA" H 8650 2850 50  0000 C CNN
F 2 "KHP2100:RGB_LED_0606_1616METRIC" H 8550 3150 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/LTST-C19HE1WT/160-2162-1-ND/4866310?itemSeq=350628998" H 8550 3150 50  0001 C CNN
	1    8550 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5FFD4585
P 7900 3500
F 0 "R7" V 7800 3500 50  0000 C CNN
F 1 "110" V 8000 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7830 3500 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/RC0805FR-07110RL/311-110CRCT-ND/730506?itemSeq=350628980" H 7900 3500 50  0001 C CNN
	1    7900 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5FFD458B
P 7900 2900
F 0 "R5" V 7800 2900 50  0000 C CNN
F 1 "107" V 8000 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7830 2900 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/ERJ-8ENF1070V/P107FCT-ND/89296?itemSeq=350628976" H 7900 2900 50  0001 C CNN
	1    7900 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5FFD4591
P 7900 3200
F 0 "R6" V 7800 3200 50  0000 C CNN
F 1 "110" V 8000 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7830 3200 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/RC0805FR-07110RL/311-110CRCT-ND/730506?itemSeq=350628980" H 7900 3200 50  0001 C CNN
	1    7900 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 3200 8050 3200
Wire Wire Line
	8350 3000 8200 3000
Wire Wire Line
	8200 3000 8200 2900
Wire Wire Line
	8200 2900 8050 2900
Wire Wire Line
	8350 3400 8200 3400
Wire Wire Line
	8200 3400 8200 3500
Wire Wire Line
	8200 3500 8050 3500
$Comp
L power:+5V #PWR013
U 1 1 5FFD459E
P 8900 3050
F 0 "#PWR013" H 8900 2900 50  0001 C CNN
F 1 "+5V" H 8915 3223 50  0000 C CNN
F 2 "" H 8900 3050 50  0001 C CNN
F 3 "" H 8900 3050 50  0001 C CNN
	1    8900 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3200 8900 3200
Wire Wire Line
	8900 3200 8900 3050
$Comp
L Device:LED_RGBA D4
U 1 1 5FFD71FD
P 8550 4100
F 0 "D4" H 8450 4500 50  0000 C CNN
F 1 "LED_RGBA" H 8650 3750 50  0000 C CNN
F 2 "KHP2100:RGB_LED_0606_1616METRIC" H 8550 4050 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/LTST-C19HE1WT/160-2162-1-ND/4866310?itemSeq=350628998" H 8550 4050 50  0001 C CNN
	1    8550 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5FFD7203
P 7900 4400
F 0 "R10" V 7800 4400 50  0000 C CNN
F 1 "110" V 8000 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7830 4400 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/RC0805FR-07110RL/311-110CRCT-ND/730506?itemSeq=350628980" H 7900 4400 50  0001 C CNN
	1    7900 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5FFD7209
P 7900 3800
F 0 "R8" V 7800 3800 50  0000 C CNN
F 1 "107" V 8000 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7830 3800 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/ERJ-8ENF1070V/P107FCT-ND/89296?itemSeq=350628976" H 7900 3800 50  0001 C CNN
	1    7900 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5FFD720F
P 7900 4100
F 0 "R9" V 7800 4100 50  0000 C CNN
F 1 "110" V 8000 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7830 4100 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/RC0805FR-07110RL/311-110CRCT-ND/730506?itemSeq=350628980" H 7900 4100 50  0001 C CNN
	1    7900 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 4100 8050 4100
Wire Wire Line
	8350 3900 8200 3900
Wire Wire Line
	8200 3900 8200 3800
Wire Wire Line
	8200 3800 8050 3800
Wire Wire Line
	8350 4300 8200 4300
Wire Wire Line
	8200 4300 8200 4400
Wire Wire Line
	8200 4400 8050 4400
$Comp
L power:+5V #PWR014
U 1 1 5FFD721C
P 8900 3950
F 0 "#PWR014" H 8900 3800 50  0001 C CNN
F 1 "+5V" H 8915 4123 50  0000 C CNN
F 2 "" H 8900 3950 50  0001 C CNN
F 3 "" H 8900 3950 50  0001 C CNN
	1    8900 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4100 8900 4100
Wire Wire Line
	8900 4100 8900 3950
$Comp
L Device:LED_RGBA D5
U 1 1 6002957E
P 8550 5000
F 0 "D5" H 8450 5400 50  0000 C CNN
F 1 "LED_RGBA" H 8650 4650 50  0000 C CNN
F 2 "KHP2100:RGB_LED_0606_1616METRIC" H 8550 4950 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/LTST-C19HE1WT/160-2162-1-ND/4866310?itemSeq=350628998" H 8550 4950 50  0001 C CNN
	1    8550 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 60029584
P 7900 5300
F 0 "R13" V 7800 5300 50  0000 C CNN
F 1 "110" V 8000 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7830 5300 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/RC0805FR-07110RL/311-110CRCT-ND/730506?itemSeq=350628980" H 7900 5300 50  0001 C CNN
	1    7900 5300
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 6002958A
P 7900 4700
F 0 "R11" V 7800 4700 50  0000 C CNN
F 1 "107" V 8000 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7830 4700 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/ERJ-8ENF1070V/P107FCT-ND/89296?itemSeq=350628976" H 7900 4700 50  0001 C CNN
	1    7900 4700
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 60029590
P 7900 5000
F 0 "R12" V 7800 5000 50  0000 C CNN
F 1 "110" V 8000 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7830 5000 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/RC0805FR-07110RL/311-110CRCT-ND/730506?itemSeq=350628980" H 7900 5000 50  0001 C CNN
	1    7900 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 5000 8050 5000
Wire Wire Line
	8350 4800 8200 4800
Wire Wire Line
	8200 4800 8200 4700
Wire Wire Line
	8200 4700 8050 4700
Wire Wire Line
	8350 5200 8200 5200
Wire Wire Line
	8200 5200 8200 5300
Wire Wire Line
	8200 5300 8050 5300
$Comp
L power:+5V #PWR015
U 1 1 6002959D
P 8900 4850
F 0 "#PWR015" H 8900 4700 50  0001 C CNN
F 1 "+5V" H 8915 5023 50  0000 C CNN
F 2 "" H 8900 4850 50  0001 C CNN
F 3 "" H 8900 4850 50  0001 C CNN
	1    8900 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 5000 8900 5000
Wire Wire Line
	8900 5000 8900 4850
Wire Wire Line
	4400 3550 4200 3550
Wire Wire Line
	4200 3550 4200 3900
Wire Wire Line
	4400 3900 4200 3900
$Comp
L power:GND #PWR09
U 1 1 6006C9B3
P 4200 4600
F 0 "#PWR09" H 4200 4350 50  0001 C CNN
F 1 "GND" H 4205 4427 50  0000 C CNN
F 2 "" H 4200 4600 50  0001 C CNN
F 3 "" H 4200 4600 50  0001 C CNN
	1    4200 4600
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW6
U 1 1 600B2190
P 4600 4250
F 0 "SW6" H 4600 4400 50  0000 C CNN
F 1 "MODE" H 4600 4150 50  0000 C CNN
F 2 "KHP2100:EVQ-Q2Y03W" H 4600 4250 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/EVQ-Q2Y03W/P12961SCT-ND/762951?itemSeq=350628977" H 4600 4250 50  0001 C CNN
	1    4600 4250
	1    0    0    -1  
$EndComp
Connection ~ 4200 3900
$Comp
L Device:Battery BT1
U 1 1 600C9BF9
P 1300 6300
F 0 "BT1" H 1408 6346 50  0000 L CNN
F 1 "Battery" H 1408 6255 50  0000 L CNN
F 2 "KHP2100:BH800S" V 1300 6360 50  0001 C CNN
F 3 "~" V 1300 6360 50  0001 C CNN
	1    1300 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR01
U 1 1 600D2B30
P 1200 5700
F 0 "#PWR01" H 1200 5550 50  0001 C CNN
F 1 "+BATT" H 1215 5873 50  0000 C CNN
F 2 "" H 1200 5700 50  0001 C CNN
F 3 "" H 1200 5700 50  0001 C CNN
	1    1200 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3550 5100 3550
Wire Wire Line
	5250 3750 4950 3750
Wire Wire Line
	4950 3750 4950 3900
Wire Wire Line
	5250 3650 4950 3650
Wire Wire Line
	4950 3650 4950 3550
Wire Wire Line
	4950 3900 4800 3900
Wire Wire Line
	4800 3550 4950 3550
Wire Wire Line
	4800 3200 5100 3200
Wire Wire Line
	5100 3200 5100 3550
Wire Wire Line
	4800 4250 5250 4250
Wire Wire Line
	6550 2800 6700 2800
Wire Wire Line
	6550 2900 6850 2900
Wire Wire Line
	6700 2000 6700 2800
Wire Wire Line
	6850 2900 6850 2300
Wire Wire Line
	6550 3000 7000 3000
Wire Wire Line
	7000 3000 7000 2600
Wire Wire Line
	6550 3100 7150 3100
Wire Wire Line
	7150 3100 7150 2900
Wire Wire Line
	6550 4050 6700 4050
Wire Wire Line
	6700 4050 6700 5300
Wire Wire Line
	6550 3950 6850 3950
Wire Wire Line
	6850 3950 6850 5000
Wire Wire Line
	6550 3850 7000 3850
Wire Wire Line
	7000 3850 7000 4700
Wire Wire Line
	6550 3750 7150 3750
Wire Wire Line
	7150 3750 7150 4400
Wire Wire Line
	6550 3650 7300 3650
Wire Wire Line
	6550 3550 7450 3550
Wire Wire Line
	7600 3300 7600 3500
Wire Wire Line
	7600 3500 7750 3500
Wire Wire Line
	6550 3300 7600 3300
Wire Wire Line
	6550 3200 7750 3200
Wire Wire Line
	7450 3800 7750 3800
Wire Wire Line
	7450 3550 7450 3800
Wire Wire Line
	7300 4100 7750 4100
Wire Wire Line
	7300 3650 7300 4100
Wire Wire Line
	7150 4400 7750 4400
Wire Wire Line
	7000 4700 7750 4700
Wire Wire Line
	6850 5000 7750 5000
Wire Wire Line
	6700 5300 7750 5300
Wire Wire Line
	7150 2900 7750 2900
Wire Wire Line
	7000 2600 7750 2600
Wire Wire Line
	6850 2300 7750 2300
Wire Wire Line
	6700 2000 7750 2000
Connection ~ 4200 3550
Wire Wire Line
	4200 3200 4200 3550
Wire Wire Line
	4400 3200 4200 3200
Wire Wire Line
	2300 1400 2550 1400
Connection ~ 2300 1400
Wire Wire Line
	2300 2550 2550 2550
Connection ~ 2300 2550
Wire Wire Line
	2300 2550 2300 2650
Wire Wire Line
	2050 2550 2300 2550
Wire Wire Line
	2050 2450 2050 2550
Connection ~ 2050 1850
Wire Wire Line
	2050 2150 2050 1850
Wire Wire Line
	2550 1850 2550 2100
Wire Wire Line
	2050 1850 2550 1850
Wire Wire Line
	2050 1400 2300 1400
Wire Wire Line
	2300 1400 2300 1350
Wire Wire Line
	2550 1450 2550 1400
$Comp
L Switch:SW_SPST SW2
U 1 1 5FF108AB
P 2550 2300
F 0 "SW2" H 2550 2450 50  0000 C CNN
F 1 "RESET" H 2550 2200 50  0000 C CNN
F 2 "KHP2100:EVQ-Q2Y03W" H 2550 2300 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/EVQ-Q2Y03W/P12961SCT-ND/762951?itemSeq=350628977" H 2550 2300 50  0001 C CNN
	1    2550 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 1850 2750 1850
Text GLabel 2750 1850 2    50   Input ~ 0
RST
Wire Wire Line
	2550 1850 2550 1750
Connection ~ 2550 1850
Wire Wire Line
	2050 1750 2050 1850
Wire Wire Line
	2050 1450 2050 1400
$Comp
L power:+5V #PWR05
U 1 1 5FF59656
P 2300 1350
F 0 "#PWR05" H 2300 1200 50  0001 C CNN
F 1 "+5V" H 2315 1523 50  0000 C CNN
F 2 "" H 2300 1350 50  0001 C CNN
F 3 "" H 2300 1350 50  0001 C CNN
	1    2300 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FF588AA
P 2550 1600
F 0 "R1" V 2450 1600 50  0000 C CNN
F 1 "10k" V 2650 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2480 1600 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/RC0603FR-0710KL/311-10.0KHRCT-ND/729827?itemSeq=350628984" H 2550 1600 50  0001 C CNN
	1    2550 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 2500 2550 2550
$Comp
L power:GND #PWR06
U 1 1 5FF5311F
P 2300 2650
F 0 "#PWR06" H 2300 2400 50  0001 C CNN
F 1 "GND" H 2305 2477 50  0000 C CNN
F 2 "" H 2300 2650 50  0001 C CNN
F 3 "" H 2300 2650 50  0001 C CNN
	1    2300 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5FF50259
P 2050 1600
F 0 "D1" V 2004 1679 50  0000 L CNN
F 1 "1N414" V 2095 1679 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 2050 1600 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/1N4148W-7-F/1N4148W-FDICT-ND/815280?itemSeq=350628985" H 2050 1600 50  0001 C CNN
	1    2050 1600
	0    1    1    0   
$EndComp
$Comp
L Device:CP C1
U 1 1 5FF4DD20
P 2050 2300
F 0 "C1" H 2168 2346 50  0000 L CNN
F 1 "100n" H 2168 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2088 2150 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/avx-corporation/06036C104KAT4A/11584243" H 2050 2300 50  0001 C CNN
	1    2050 2300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW3
U 1 1 5FF1F490
P 4600 3200
F 0 "SW3" H 4600 3350 50  0000 C CNN
F 1 "HP1" H 4600 3100 50  0000 C CNN
F 2 "KHP2100:MX_SWITCH" H 4600 3200 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Cherry%20PDFs/MX%20Series.pdf" H 4600 3200 50  0001 C CNN
	1    4600 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3900 4200 4250
Text GLabel 2050 4150 0    50   Input ~ 0
MISO
Wire Wire Line
	4400 4250 4200 4250
Connection ~ 4200 4250
Wire Wire Line
	4200 4250 4200 4600
$Comp
L power:GND #PWR02
U 1 1 60005043
P 1300 6500
F 0 "#PWR02" H 1300 6250 50  0001 C CNN
F 1 "GND" H 1305 6327 50  0000 C CNN
F 2 "" H 1300 6500 50  0001 C CNN
F 3 "" H 1300 6500 50  0001 C CNN
	1    1300 6500
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR03
U 1 1 6000C5FD
P 2200 5700
F 0 "#PWR03" H 2200 5550 50  0001 C CNN
F 1 "+BATT" H 2215 5873 50  0000 C CNN
F 2 "" H 2200 5700 50  0001 C CNN
F 3 "" H 2200 5700 50  0001 C CNN
	1    2200 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6014FFD5
P 2650 4050
F 0 "#PWR?" H 2650 3900 50  0001 C CNN
F 1 "+5V" H 2665 4223 50  0000 C CNN
F 2 "" H 2650 4050 50  0001 C CNN
F 3 "" H 2650 4050 50  0001 C CNN
	1    2650 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60150BB8
P 2650 4450
F 0 "#PWR?" H 2650 4200 50  0001 C CNN
F 1 "GND" H 2655 4277 50  0000 C CNN
F 2 "" H 2650 4450 50  0001 C CNN
F 3 "" H 2650 4450 50  0001 C CNN
	1    2650 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4150 2650 4150
Wire Wire Line
	2650 4150 2650 4050
Wire Wire Line
	2550 4350 2650 4350
Wire Wire Line
	2650 4350 2650 4450
$EndSCHEMATC
