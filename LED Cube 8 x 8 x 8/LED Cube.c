/************************************************************************************************************
The MPLAB IDE version 8 and HI-TECH Compiler for PIC 10/12/16 MCUs version 9.82 are used for this sample code
************************************************************************************************************/

/*****Include header******/
#include <htc.h>
#include "LED Cube.h"
#include "Lightup.h"
#include "Effect.h"

/*****PIC16F877A configurations****/
__CONFIG(FOSC_HS &			// High Speed Crystal.
		 WDTE_OFF &			// Disable Watchdog Timer.
		 PWRTE_ON &			// Enable Power Up Timer.
		 BOREN_OFF &		// Disable Brown Out Reset.
		 LVP_OFF);			// Disable Low Voltage Programming.

//Main function
void main(void)
{	
	char mode = 0; 
	io_init();				//IO initialization
	mode = choose_mode();	//Getting choosen mode
	while(1)
	{
		switch(mode)		//Detect mode decided and perform conrresponding effect
		{
			case 1: moving_point_in_sequence(); 
					break;

			case 2: plane_left_to_right();
					plane_forward_to_back();
					plane_bottom_to_top();
					break;

			case 3: flying_character_of_a_word("CYTRON");
					break;

			case 4: contraction_expansion_square_ring();
					break;

			case 5: expansion_box();
					break;

			case 6: dice();
					break;

			case 7: rotate_plane();
					break;

			default: break;
		}
	}	
}

//IO initialization subfunction
void io_init(void)
{
	/*****TRIS setting*****/
	TRISA = 0b00000001; //RA0 as input, rest of pins of PORT A are outputs
	TRISB = 0b00000011; //RB0 and RB1 as inputs initially, rest of pins of PORTB are outputs
	TRISC = 0;			//All pins of PORTC as outputs
	TRISD = 0;			//All pins of PORTD as outputs
	TRISE = 0;			//All pins of PORTE as outputs

	PORTA = PORTB = PORTC = PORTD = PORTE = 0; //outputs all ports with logic '0' at the starting

	/*****adc setting*****/
	ADCS1 = 0;	//adc conversion clock = FOSC/2
	ADCS0 = 0;

	CHS2 = 0;	//adc channel 0 is selected for sampling
	CHS1 = 0;
	CHS0 = 0;
	
	ADFM = 1;	//converted adc value stored in ADRESH and ADRESL in right-justified way
	
	PCFG3 = 1;	//RA0 as analog pin mode, while rest of pins of PORTA as normal digital pin mode
	PCFG2 = 1;
	PCFG1 = 1;
	PCFG0 = 0;

	ADON = 1;	//On the ADC module
}

//Get ADC value subfunction
unsigned int get_adc_value(void)
{
	int local_adc_value = 0;		//local variable to store ADC value read
	GO = 1;							//Start conversion
	while(GO == 1);					//Wait for the conversion to be completed
	ADIF = 0;						//Clear the ADC interrupt flag bit
	
	local_adc_value = ADRESH;		//Obtain the 10 bit ADC value and store it in variable "local_adc_value", then return the value
	local_adc_value = local_adc_value << 8;
	local_adc_value = local_adc_value | ADRESL;
	return local_adc_value;			
}

//Delay using ADC value subfunction
void delay_using_adc(unsigned char scale)
{
	if(scale>=0 && scale<=50)
	{
		unsigned int adc_delay = 0;
		adc_delay = get_adc_value();	//Obtain ADC value 
		delay(adc_delay*scale);			//Times it with a scale ranges from (0-50)
	}
}

//Typical delay subfunction
void delay (unsigned long time)
{
	while(time--);
}

//Choose LED Cube effect mode subfunction
char choose_mode(void)
{
	char temp_mode = 0;
	while(temp_mode == 0) // while the button SW1 is still not pressed for the first time, no mode chosen 
	{
		while(SW2 == 1)		//As button SW2 is not pressed
		{
			if(temp_mode == 0)	//if temp_mode equals 0 (means button SW1 is still not pressed for the 1st time ,no mode chosen)
			{
				for(int i = 0; i<8; i ++)	//Light up the whole LED Cube (1 layer LEDs at XY plane each time for layer 0 to layer 7)
				{	
					set_a_plane(i,XY);
				}	
			}

			if(SW1 == 0) //As button SW1 is pressed
			{
				while(SW1 == 0) continue;	//Wait for button SW1 to be released

				if (temp_mode<7)		//Maximum mode of LED Cube is 7. If temp_mode < 7, a '1' is plus to it.Else,change back to value 1
				{	
					temp_mode++;
				}

				else
				{	
					temp_mode = 1;
				}
				show_mode(temp_mode);	//Show the selected mode on the top layer of XY plane of LED Cube
			}
		}
		while(SW2 == 0) continue;	//If button SW2 is pressed, waits for the button SW2 to be released
	}
	return temp_mode;	//return the decided mode
}

//Show the selected mode subfunction
void show_mode(char mode)
{
	unsigned char mode_pattern[8] = {{0}};
	switch(mode)
	{
		case 1: choose_alphabet('A',mode_pattern);	//if mode 1 is selected, show 'A' on the top layer of XY plane of LED Cube
				show_pattern_on_a_plane(7,XY,mode_pattern);
				break;

		case 2: choose_alphabet('B',mode_pattern);	//if mode 2 is selected, show 'B' on the top layer of XY plane of LED Cube
				show_pattern_on_a_plane(7,XY,mode_pattern);
				break;
		
		case 3: choose_alphabet('C',mode_pattern);	//if mode 3 is selected, show 'C' on the top layer of XY plane of LED Cube
				show_pattern_on_a_plane(7,XY,mode_pattern);
				break;

		case 4: choose_alphabet('D',mode_pattern);	//if mode 4 is selected, show 'D' on the top layer of XY plane of LED Cube
				show_pattern_on_a_plane(7,XY,mode_pattern);
				break;

		case 5: choose_alphabet('E',mode_pattern);	//if mode 5 is selected, show 'E' on the top layer of XY plane of LED Cube
				show_pattern_on_a_plane(7,XY,mode_pattern);
				break;

		case 6: choose_alphabet('F',mode_pattern);	//if mode 6 is selected, show 'F' on the top layer of XY plane of LED Cube
				show_pattern_on_a_plane(7,XY,mode_pattern);
				break;

		case 7: choose_alphabet('G',mode_pattern);	//if mode 7 is selected, show 'G' on the top layer of XY plane of LED Cube
				show_pattern_on_a_plane(7,XY,mode_pattern);
				break;

		default: break;
	}
}
