
GPIO_PORTF_DATA_R  EQU 0x400253FC

	AREA    |.text|, CODE, READONLY, ALIGN=2
	THUMB
	EXPORT  Start
	EXPORT 	Example_Function
	EXPORT 	Part3_Function
	EXPORT	Part4_Function
	EXPORT	Part5_Function
	IMPORT	delay
	IMPORT	leds_off
	IMPORT  PortF_Init
	IMPORT	Example
	IMPORT	Part3
	IMPORT  Part4
	IMPORT	Part5
		
Start
	BL PortF_Init 	; Initialize the LEDs and Pushbuttons
	BL debug		; Useful for parts 2 and 3
loop
	LDR R1, =GPIO_PORTF_DATA_R
	LDR R0, [R1]
	AND R0, #0x11	;Get just the pushbutton values
	CMP R0, #0x11	;No buttons pressed?
	BNE checkSW1
	BL Example
	B loop
checkSW1
	CMP R0, #0x01 	;SW1 pressed?
	BNE checkSW2
	BL Part3
	B blink
checkSW2
	CMP R0, #0x10 	;SW2 pressed?
	BNE both
	BL Part4
	B blink
both
	BL Part5		;Both must be pressed
	
	;Create blinking effect
blink
	BL delay
	BL leds_off
	BL delay

	B loop



debug
	;Place parts 1 and 2 here
	
	;Part 1
	MOV	r1,#0x00000008
	MOV r2,#0xFFFFFFFD
	MOV r3,#0x7FFFFFFF
	ADDS r4, r1, r2 ;Add X and Y - store in r4
	SUBS r5, r1, r1 ;Sub X and X - store in r5
	ADDS r6, r1, r3 ;Add X and Z - store in r6
	SUBS r7, r2, r3 ;Sub Y and Z - store in r7
	ADDS r8, r2, r3 ;Add Y and Z - store in r8
	
	;Part 2
	
	MOV R7, #0x20000000
	ADD r7, #2
	
	LDR r6, [r7]
	
	LDRH r6, [r7]
	
	LDRB r6, [r7]
	
	LDRSH r6, [r7]
	
	LDRSB r6, [r7]
	
	
	BX LR ;Returns to main function



; Returns Z = A+B
; A and B are in R0 and R1, respectively
; Z should be placed in R0
Example_Function
	ADD R0, R0, R1 ;Comment out this instruction to see the Example fail
	BX LR


; Should return Z = (A << 2)|(B & 15)
; Assume A and B are in R0 and R1, respectively
; The value of Z should be placed in R0 at the end
Part3_Function
	
	LSL r3, r0, #2
	AND r4, r1, #15
	ORR r0, r3, r4

	BX LR
	
	
; Should return Z = ((A + B) + (A - B)) | (A << B)
; Assume A and B are in R0 and R1, respectively
; The value of Z should be placed in R0 at the end
Part4_Function

	ADD r3, r0, r1 ; A+B and store in r3
	SUB r4, r0, r1 ; A-B and store in r4
	ADD r5, r3, r4 ; (A+B) + (A-B) store in r5
	LSL r3, r0, r1 ; LSL A by B store in r3
	ORR r0, r5, r3


	BX LR


; Should return Z = X + Y
; Where X = ((A*8)|(B*4)|(C*2))
; and Y = ((B xor 2)|(C xor 4)
; Assume A, B, and C are in R0, R1, and R2, respectively
; The value of Z should be placed in R0 at the end
Part5_Function

	;A = r0
	;B = r1
	;C = r2
	
	MOV r8, #8
	MOV r9, #4
	MOV r7, #2
	
	MUL r3, r0, r8
	MUL r4, r1, r9
	MUL r5, r2, r7
	
	ORR r3, r3, r4
	ORR r3, r3, r5 ; X = r3
	
	EOR r4, r1, #2
	EOR r5, r2, #4
	ORR r4, r4, r5 ; Y = r4
	
	ADD r0, r3, r4
	
	BX LR



	ALIGN        ; make sure the end of this section is aligned
	END          ; end of file