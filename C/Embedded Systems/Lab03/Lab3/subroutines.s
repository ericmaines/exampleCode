

	AREA    |.text|, CODE, READONLY, ALIGN=2
	THUMB
	export exp
	EXPORT mulsum4
	IMPORT green_led_on
	IMPORT red_led_on
	IMPORT leds_off
	;Be sure to export created functions
	
	
	

		

;Should perform the operation (R0+R1)^R0
;Takes the sum of R0 and R1 and multiplies it by itself R0 times (i.e. raises R0+R1 to the power of R0)
;Assume R0 is greater than 0
;Should return the result in R0
;Inputs: R0 and R1
;Outputs: R0
exp
	MOV R2, R0		;store r0 in r2
	CMP R2, #0 ;compare r2 and 0
	BEQ done		;if it is zero, jump to done
	
	;SUBS R2, R2, #1
	ADDS R1, R1, R0	;add r0 to r1 and store in r1... r1 =(r0+r1)
	MOV R3, #1		;move the value of 1 into r3
power
	MUL R3, R1, R3	;multiply r1 by r3
	SUBS R2, R2, #1
	BGT power
	
	MOV R0, R3
	BX LR
	
done
	MOV R0, #1
	BX LR


;Should perform the operation (A+B+C)*(B+C+D)*2	
;A, B, C, and D are passed in order in R0-R3
;Should return the result in R0
;Inputs: R0, R1, R2, and R3
;Outputs: R0
mulsum4
	PUSH{LR}	;store the link register in the stack
	PUSH{r1-r3}	;store B, C, D on the stack
	; Should make calls to both sum3 and mul3
	BL sum3
	PUSH{r0}	;store (A+B+C) on the stack
	POP{r3}		;store the value into r3 temporarily
	POP{r0-r2}	;put D, C, B into r0-r2
	PUSH{r3}	;put (A+B+C) back onto the stack
	
	BL sum3		;add B, C, D together
				;(B+C+D) is in r0
	POP{r1}		;pop (A+B+C) into r1
	MOV R2, #2	;move #2 into r2
	BL mul3		;multiply r0*r1*r2
	
	POP{LR}		;put the return address back into LR
	
 	BX LR
	
	
	
	
;Performs the operation R0+R1+R2
;Returns the sum in R0
;Inputs: R0, R1, and R2
;Outputs: R0
sum3
	ADD R3, R0, R1
	ADD R0, R2, R3
	BX LR

;Should perform the operation R0*R1*R2
;Should return the product in R0
;Inputs: R0, R1, and R2
;Outputs: R0
mul3
	
	;Your code here
	MUL R3, R0, R1
	MUL R0, R2, R3
	BX LR


	ALIGN
	END