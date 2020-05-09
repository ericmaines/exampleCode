; Credit: Based on software by Valvano

	AREA    |.text|, CODE, READONLY, ALIGN=2
	THUMB
	EXPORT   delay
	EXPORT	 delay_dim



;------------delay------------
; Delay function for testing
; Input: none
; Output: none	
DELAYVAL		EQU 3	;Change to calculated value
NEWVAL			EQU 1333333
REDVAL 			EQU 4
BLUEVAL			EQU 3
GREENVAL		EQU 2
delay
		;Add Part 2 code here
	LDR R0, =NEWVAL
newDelay_dim_loop
	SUBS R0, R0, #1
	BNE newDelay_dim_loop
    BX  LR   
	ALIGN
		

DIMSEC			EQU 16000 		; delay_dim_loop will run this many time to create a delay

delay_dim
	LDR R0, =DIMSEC 			; put the value of DIMSEC into R0
delay_dim_loop
	SUBS R0, R0, #1				; R0 = R0 - 1
	BNE delay_dim_loop 			; repeat until R0 == 0
	BX LR						; return
	
	ALIGN                       ; make sure the end of this section is aligned
    END                         ; end of file
