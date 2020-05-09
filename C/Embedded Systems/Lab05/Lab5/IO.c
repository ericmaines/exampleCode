#include "IO.h"
#include "tm4c123gh6pm.h"

//Place the definition for bit specific addressing here.  
//The below example is for PortA pin 5

//Buttons
#define BTN (*((volatile uint32_t *)0x4000700C))

//LEDS
#define LEDS (*((volatile uint32_t *)0x400240E0))


//Turns off all LEDs
void LEDs_off(void){
	LEDS = 0x00;
}

//Should return the button states
uint32_t pushbuttons(void){
	volatile uint32_t data;
	data = BTN;
	if (data == 0x02)
		return 1;
	if(data == 0x01)
		return 2;
	if(data == 0x00)
		return 3;
	else
		return 4;
	
	
	// Set to 42 because the compiler expects a return value.  
	// Your function only needs to return a value denoting the button states
	// rather than the answer to life, the universe, and everything...
	return 42;
}


// All on = 38
// 8, 10, 20
void step1(void)
{
	LEDS = 0x08;
}

void step2(void)
{
	LEDS = 0x10;
}

void step3(void)
{
	LEDS = 0x18;
}

void step4(void)
{
	LEDS = 0x20;
}

void step5(void)
{
	LEDS = 0x28;
}

void step6(void)
{
	LEDS = 0x30;
}

void step7(void)
{
	LEDS = 0x38;
}

void step8(void)
{
	LEDs_off();
}


void delay(int val)
{
	int i;
	for (i=0; i <= val; i++)
	{
	}
}

void stage1(void)
{
	uint32_t button;
	while (1)
	{
		delay(100000);
		button = pushbuttons();
		if (button == 1)
			return;
		step8();
		delay(1000000);
		step1();
		delay(1000000);
		step2();
		delay(1000000);
		step3();
		delay(1000000);
		step4();
		delay(1000000);
		step5();
		delay(1000000);
		step6();
		delay(1000000);
		step7();
		delay(1000000);
	}
}

void stage2(void)
{
	uint32_t button;
	while(1)
	{
		button = pushbuttons();
			if (button == 2)
				return;
		step2();
		delay(1000000);
		step5();
		delay(1000000);
			
	}
}
