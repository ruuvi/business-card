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
LIBS:ntag_nt3h1x01
LIBS:credit_card
LIBS:businesscard_a1-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Business Card"
Date "2016-01-26"
Rev "A1"
Comp "Ruuvi Innovations Ltd."
Comment1 "License: https://creativecommons.org/licenses/by-sa/4.0/"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L NTAG_NT3H1X01 U1
U 1 1 558F2E4E
P 5800 3950
F 0 "U1" H 5300 3600 60  0000 C CNN
F 1 "NTAG_NT3H1X01" H 6000 3600 60  0000 C CNN
F 2 "business-card:SOT902-3" H 5800 3550 60  0001 C CNN
F 3 "" H 5800 3550 60  0000 C CNN
	1    5800 3950
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 558F2F4F
P 4750 3850
F 0 "D1" H 4750 3950 50  0000 C CNN
F 1 "LED" H 4750 3750 50  0000 C CNN
F 2 "business-card:0402_LED" H 4750 3850 60  0001 C CNN
F 3 "" H 4750 3850 60  0000 C CNN
	1    4750 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 558F303C
P 5050 4150
F 0 "#PWR01" H 5050 3900 50  0001 C CNN
F 1 "GND" V 5050 3950 50  0000 C CNN
F 2 "" H 5050 4150 60  0000 C CNN
F 3 "" H 5050 4150 60  0000 C CNN
	1    5050 4150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 558F3054
P 4150 3850
F 0 "#PWR02" H 4150 3600 50  0001 C CNN
F 1 "GND" V 4150 3650 50  0000 C CNN
F 2 "" H 4150 3850 60  0000 C CNN
F 3 "" H 4150 3850 60  0000 C CNN
	1    4150 3850
	0    1    1    0   
$EndComp
Text Notes 3700 2500 0    394  Italic 79
Business Card
$Comp
L R R1
U 1 1 56A5CD45
P 4400 3850
F 0 "R1" V 4480 3850 50  0000 C CNN
F 1 "470" V 4400 3850 50  0000 C CNN
F 2 "business-card:0402_RES" V 4330 3850 50  0001 C CNN
F 3 "" H 4400 3850 50  0000 C CNN
	1    4400 3850
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 56A5CDC9
P 6950 3800
F 0 "P1" H 6950 3950 50  0000 C CNN
F 1 "NFC" H 7100 3800 50  0000 C CNN
F 2 "business-card:BUSINESS_NFC_ANTENNA_4X5CM_NEW" H 6950 3800 50  0001 C CNN
F 3 "" H 6950 3800 50  0000 C CNN
	1    6950 3800
	1    0    0    1   
$EndComp
NoConn ~ 7300 3750
NoConn ~ 7300 3850
$Comp
L PWR_FLAG #FLG03
U 1 1 56A5D12D
P 5050 4150
F 0 "#FLG03" H 5050 4245 50  0001 C CNN
F 1 "PWR_FLAG" H 5175 4350 50  0000 C CNN
F 2 "" H 5050 4150 50  0000 C CNN
F 3 "" H 5050 4150 50  0000 C CNN
	1    5050 4150
	-1   0    0    1   
$EndComp
$Comp
L CREDIT_CARD P2
U 1 1 56A5D479
P 2875 3975
F 0 "P2" H 2875 4275 60  0000 C CNN
F 1 "CREDIT_CARD" H 2875 3675 60  0000 C CNN
F 2 "business-card:CREDIT_CARD_CHIP_EMPTY" H 2875 3975 60  0001 C CNN
F 3 "" H 2875 3975 60  0000 C CNN
	1    2875 3975
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 56A6012D
P 4200 3600
F 0 "C1" H 4225 3700 50  0000 L CNN
F 1 "220n" H 4225 3500 50  0000 L CNN
F 2 "business-card:0402_CAP" H 4238 3450 50  0001 C CNN
F 3 "" H 4200 3600 50  0000 C CNN
	1    4200 3600
	1    0    0    -1  
$EndComp
Text Notes 1400 5700 0    40   Italic 0
The NTAG I2C provides the capability to supply external low power devices with energy generated from the RF field of a NFC device. \nThe voltage and current from the energy harvesting depend on various parameters, such as the strength of the RF field, the tag antenna size, or the distance from the NFC device. At room temperature, NTAG I2C could provide typically 5 mA at 2 V on the VOUT pin with an NFC Phone. \nOperating NTAG I2C in energy harvesting mode requires a number of precautions: \n	•	A significant capacitor is needed to guarantee operation during RF communication. The total capacitor between VOUT and GND shall be in the range of 150nF to 200 nF.  \n	•	If NTAG I2C also powers the I2C bus, then VCC must be connected to VOUT, and pull-up resistors on the SCL and SDA pins must be sized to control SCL and SDA sink current when those lines are pulled low by NTAG I2C or the I2C host \n
Wire Wire Line
	7300 3750 10250 3750
Wire Wire Line
	10250 3750 10250 1350
Wire Wire Line
	10250 1350 1400 1350
Wire Wire Line
	1400 1350 1400 5300
Wire Wire Line
	1400 5300 10150 5300
Wire Wire Line
	10150 5300 10150 1450
Wire Wire Line
	10150 1450 1500 1450
Wire Wire Line
	1500 1450 1500 5200
Wire Wire Line
	1500 5200 10050 5200
Wire Wire Line
	10050 5200 10050 1550
Wire Wire Line
	10050 1550 1600 1550
Wire Wire Line
	1600 1550 1600 5100
Wire Wire Line
	1600 5100 9950 5100
Wire Wire Line
	9950 5100 9950 3850
Wire Wire Line
	9950 3850 7300 3850
Wire Wire Line
	5000 3750 5050 3750
Wire Wire Line
	5000 3250 5000 3850
Wire Wire Line
	4950 3850 5050 3850
Connection ~ 5000 3750
Connection ~ 5000 3850
$Comp
L GND #PWR04
U 1 1 56A65239
P 2375 4125
F 0 "#PWR04" H 2375 3875 50  0001 C CNN
F 1 "GND" V 2375 3925 50  0000 C CNN
F 2 "" H 2375 4125 60  0000 C CNN
F 3 "" H 2375 4125 60  0000 C CNN
	1    2375 4125
	0    1    1    0   
$EndComp
Text Label 5050 4050 2    60   ~ 0
FIELD
Text Label 2375 3925 2    60   ~ 0
FIELD
Text Label 6550 4050 0    60   ~ 0
SCL
Text Label 6550 4150 0    60   ~ 0
SDA
Text Label 2375 3825 2    60   ~ 0
SCL
Text Label 2375 4025 2    60   ~ 0
SDA
$Comp
L VDD #PWR05
U 1 1 56A6541F
P 5000 3250
F 0 "#PWR05" H 5000 3100 50  0001 C CNN
F 1 "VDD" H 5000 3400 50  0000 C CNN
F 2 "" H 5000 3250 50  0000 C CNN
F 3 "" H 5000 3250 50  0000 C CNN
	1    5000 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3850 4250 3850
Wire Wire Line
	4200 3750 4200 3850
Connection ~ 4200 3850
Wire Wire Line
	4200 3450 4200 3350
Wire Wire Line
	4200 3350 5000 3350
Connection ~ 5000 3350
$Comp
L VDD #PWR06
U 1 1 56A65699
P 3375 4025
F 0 "#PWR06" H 3375 3875 50  0001 C CNN
F 1 "VDD" V 3375 4225 50  0000 C CNN
F 2 "" H 3375 4025 50  0000 C CNN
F 3 "" H 3375 4025 50  0000 C CNN
	1    3375 4025
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 3750 6550 3750
Wire Wire Line
	6550 3850 6750 3850
Text Label 6550 3750 0    60   ~ 0
LA
Text Label 6550 3850 0    60   ~ 0
LB
Text Label 3375 3825 0    60   ~ 0
LA
Text Label 3375 3925 0    60   ~ 0
LB
NoConn ~ 3375 4125
$EndSCHEMATC
