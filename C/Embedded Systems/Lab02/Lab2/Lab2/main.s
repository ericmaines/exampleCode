



	AREA    |.text|, CODE, READONLY, ALIGN=2
	THUMB
	EXPORT  Start
	IMPORT  PortF_Init;
	IMPORT  delay
	IMPORT	delay_dim
	IMPORT  blue_led_on
	IMPORT  blue_led_off
	IMPORT  red_led_on
	IMPORT  red_led_off
	IMPORT  green_led_on
	IMPORT  green_led_off

Start
	BL PortF_Init; ; Initialize the LEDs and Pushbuttons

loop

	B parts34 ;Uncomment this line to skip the toggling routine used in Parts 1 and 2

	BL red_led_on
	BL delay
	BL red_led_off
	BL delay
	B loop


RedVal		EQU 4
GreenVal 	EQU 2
BlueVal		EQU 3
part4		EQU 3
parts34
	LDR R3, =RedVal
REDLoop
	BL red_led_on
	BL delay
	BL red_led_off
	BL delay
	SUBS R3, R3, #1
	BNE REDLoop
	
	LDR R4, =part4
part4Loop
	LDR R3, =BlueVal
BLUELoop
	BL blue_led_on
	BL delay
	BL blue_led_off
	BL delay
	SUBS R3, R3, #1
	BNE BLUELoop
	
	LDR R3, =GreenVal
GREENLoop
	BL green_led_on
	BL delay
	BL green_led_off
	BL delay
	SUBS R3, R3, #1
	BNE GREENLoop

	SUBS R4, R4, #1
	BNE part4Loop

	B parts34
	
	ALIGN        ; make sure the end of this section is aligned
	END          ; end of file