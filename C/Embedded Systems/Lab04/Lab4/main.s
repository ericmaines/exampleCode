

	AREA    |.text|, CODE, READONLY, ALIGN=2
	THUMB
	EXPORT Start
	IMPORT PortF_Init
	IMPORT LEDs_on
	IMPORT red_on
	IMPORT red_toggle
	IMPORT blue_on
	IMPORT blue_toggle
	IMPORT green_on
	IMPORT green_toggle
	IMPORT delay
	IMPORT all_off
	IMPORT buttons
	
	
	;Be sure to import your created I/O functions


		
Start
	BL PortF_Init
loop
	;Used by Part 1 to prove PortF_Init is correct
	;BL LEDs_on ;Comment out for later parts
;	BL red_toggle
;	BL delay
;	BL buttons
;	BL blue_toggle
;	BL delay
;	BL buttons
;	BL green_toggle
;	BL delay
;	BL buttons
;	BL all_off
;	BL delay
;	
;	BL red_on
;	BL delay
;	BL buttons
;	BL blue_on
;	BL delay
;	BL buttons
;	
;	BL all_off
;	BL delay
;	BL buttons

	; Part 3
	; Call delay
	; Read the state of the buttons
	BL buttons
	
	; None -> Call toggle
	CMP R0, #0x11
	BEQ green_toggle
	BL delay
	
	; SW1 -> Call blue_on
	BL buttons
	CMP R0, #0x01
	BEQ blue_toggle
	BL delay
	
	; SW2 -> Call red_on
	BL buttons
	CMP R0, #0x10
	BEQ red_toggle
	BL delay
	
	; Both -> Call toggle, blue_on, red_on
	BL buttons
	CMP R0, #0x00
	BEQ both
	BL delay

	B loop
	ALIGN

both

	BL buttons
	CMP R0, #0x00
	BNE loop

	BL delay
	BL all_off
	BL delay
	
	BL buttons
	CMP R0, #0x00
	BNE loop
	
	BL delay
	BL LEDs_on
	BL delay
	
	BL buttons
	CMP R0, #0x00
	BNE loop
	
	BL delay
	BL red_toggle
	BL blue_toggle
	BL delay

	BL buttons
	CMP R0, #0x00
	BNE loop
	
	BL delay
	BL green_toggle
	BL delay
	
	BL loop
	ALIGN
	END