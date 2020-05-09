
	AREA    |.text|, CODE, READONLY, ALIGN=2
	THUMB
	EXPORT   delay
	EXPORT	 delay_dim



;------------delay------------
; Delay function for testing
; Input: none
; Output: none	
DELAYVAL		EQU 3	;Change to calculated value
NEWVAL			EQU 4000
DELAYMULT		EQU 20

		
DIMSEC			EQU 133333 		; delay_dim_loop will run this many time to create a delay

delay
		;Add Part 2 code here
	PUSH {LR}
var_delay_loop
	BL delay_dim
	SUBS R0, R0, #1
	BNE var_delay_loop
	
	POP {LR}
	BX LR
	
	ALIGN

delay_dim
	LDR R1, =DIMSEC	; put the value of DIMSEC into R0
delay_dim_loop
	SUBS R1, R1, #1				; R0 = R0 - 1
	BNE delay_dim_loop 			; repeat until R0 == 0
	BX LR						; return
	
	ALIGN                       ; make sure the end of this section is aligned

	END