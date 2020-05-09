#include "Inits.h"
#include "tm4c123gh6pm.h" // Hardware register definitions
#include "stdint.h"

// Initialize PD1 and PD0 as inputs
// Leave everything else unchanged
// Button Bois
void PortD_Init(void){
	volatile unsigned long delay;
	SYSCTL_RCGC2_R |= 0x00000008;	//Activate the clock on port D
	delay = SYSCTL_RCGC2_R;	//allow time for the clock to start
	GPIO_PORTD_AMSEL_R &= ~0x03;        // 3) disable analog on PD0-1
  GPIO_PORTD_PCTL_R &= ~0xF0000000;   // 4) PCTL GPIO on PD4-0
  GPIO_PORTD_DIR_R |= ~0x03;          // 5) PD1,PD0 in
  GPIO_PORTD_AFSEL_R &= ~0x03;        // 6) disable alt funct on PF7-0
  GPIO_PORTD_DEN_R |= 0x03;          // 7) enable digital I/O on PF4-0
	
}

// Initialize PE5, PE4, and PE3 as outputs
// Leave everything else unchanged
// LED bois
void PortE_Init(void){
	volatile unsigned long delay;
	SYSCTL_RCGC2_R |= 0x00000010;	//Activate the clock on port E
	delay = SYSCTL_RCGC2_R;	//allow time for the clock to start
	GPIO_PORTE_AMSEL_R &= ~0x38;        // 3) disable analog on PE
  GPIO_PORTE_PCTL_R &= ~0xF0000000;   // 4) PCTL GPIO 
  GPIO_PORTE_DIR_R |= 0x38;          // 5) PE3-PE5 out
  GPIO_PORTE_AFSEL_R &= ~0x38;        // 6) disable alt funct on PE7-0
  GPIO_PORTE_DEN_R |= 0x38;          // 7) enable digital I/O on PE5-0
	
}
