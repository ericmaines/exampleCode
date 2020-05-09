GPIO_PORTF_DATA_R  EQU 0x400253FC
GPIO_PORTF_DIR_R   EQU 0x40025400
GPIO_PORTF_AFSEL_R EQU 0x40025420
GPIO_PORTF_PUR_R   EQU 0x40025510
GPIO_PORTF_DEN_R   EQU 0x4002551C
GPIO_PORTF_LOCK_R  EQU 0x40025520
GPIO_PORTF_CR_R    EQU 0x40025524
GPIO_PORTF_AMSEL_R EQU 0x40025528
GPIO_PORTF_PCTL_R  EQU 0x4002552C
GPIO_LOCK_KEY      EQU 0x4C4F434B  ; Unlocks the GPIO_CR register
SYSCTL_RCGC2_R     EQU 0x400FE108
SYSCTL_RCGC2_GPIOF EQU 0x00000020  ; port F Clock Gating Control
LEDS			   EQU 0x40025038
	
	

	AREA    |.text|, CODE, READONLY, ALIGN=2
	THUMB
	EXPORT PortF_Init
	EXPORT LEDs_on
	EXPORT red_on
	EXPORT red_toggle
	EXPORT blue_on
	EXPORT blue_toggle
	EXPORT green_on
	EXPORT green_toggle
	EXPORT delay
	EXPORT all_off
	EXPORT buttons
	
	;Be sure to export your created I/O functions


		
PortF_Init
	;Do not use MOV in the code you write

	; 1) activate clock for Port F
	LDR R1, =SYSCTL_RCGC2_R
	LDR R0, [R1]
	ORR R0, R0, #0x00000020
	STR R0, [R1]
    ; allow time for clock to finish
	NOP		
	NOP
							 
    LDR R1, =GPIO_PORTF_LOCK_R      ; 2) unlock the lock register
    LDR R0, =0x4C4F434B             ; unlock GPIO Port F Commit Register
    STR R0, [R1]     
    LDR R1, =GPIO_PORTF_CR_R        ; enable commit for Port F
    MOV R0, #0xFF                   ; 1 means allow access
    STR R0, [R1]    
	
	; 3) disable analog functionality
    ; 0 means analog is off
	LDR R1, =GPIO_PORTF_AMSEL_R
	LDR R0, [R1]
	BIC R0, R0, #0x1F
	STR R0, [R1]
	
    
	
    LDR R1, =GPIO_PORTF_PCTL_R      ; 4) configure as GPIO
    MOV R0, #0x00000000             ; 0 means configure Port F as GPIO
    STR R0, [R1]                  

	; 5) set direction register
	LDR R1, =GPIO_PORTF_DIR_R
	ORR R0, R0, #0x0E
	BIC R0, R0, #0x11
	STR R0, [R1]

	LDR R1, =GPIO_PORTF_AFSEL_R     ; 6) regular port function
    MOV R0, #0                      ; 0 means disable alternate function 
    STR R0, [R1]                    
	LDR R1, =GPIO_PORTF_PUR_R       ; enable pull-up resistors for pushbuttons
	MOV R0, #0x11
    STR R0, [R1] 
	
    ; 7) enable Port F digital port
	LDR R1, =GPIO_PORTF_DEN_R
	ORR R0,R0, #0x1F
	STR R0, [R1]


	BX LR


; Used to test init function
; Format should not be copied for later parts of the lab, instead use GPIO_PORTF_DATA_R
LEDs_on
	LDR R0, =LEDS
	MOV R1, #0xFF
	STR R1, [R0]
	BX LR


;Add your functions here

red_on
	LDR R1, =GPIO_PORTF_DATA_R
	LDR R0, [R1]
	ORR R0, R0, #0x02
	STR R0, [R1]
	BX LR
	

red_toggle
	LDR R1, =GPIO_PORTF_DATA_R
	LDR R0, [R1]
	EOR R0, R0, #0x02
	STR R0, [R1]
	BX LR


blue_on
	LDR R1, =GPIO_PORTF_DATA_R
	LDR R0, [R1]
	ORR R0, R0, #0x04
	STR R0, [R1]
	BX LR

blue_toggle
	LDR R1, =GPIO_PORTF_DATA_R
	LDR R0, [R1]
	EOR R0, R0, #0x04
	STR R0, [R1]
	BX LR

green_on
	LDR R1, =GPIO_PORTF_DATA_R
	LDR R0, [R1]
	ORR R0, R0, #0x08
	STR R0, [R1]
	BX LR

green_toggle
	LDR R1, =GPIO_PORTF_DATA_R
	LDR R0, [R1]
	EOR R0, R0, #0x08
	STR R0, [R1]
	BX LR

all_off
	LDR R1, =GPIO_PORTF_DATA_R
	LDR R0, [R1]
	BIC R0, R0, #0x1F
	STR R0, [R1]
	BX LR
	

buttons
	LDR R1, =GPIO_PORTF_DATA_R
	LDR R0, [R1]
	AND R0, R0, #0x11
	STR R0, [R1]

	BX LR
	
delayVal EQU 1333333
	
delay
	LDR R0, =delayVal
newDelay_dim_loop
	SUBS R0, R0, #1
	BNE newDelay_dim_loop
    BX  LR   
	ALIGN
	END