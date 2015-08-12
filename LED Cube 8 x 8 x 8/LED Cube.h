#ifndef _MAIN_H
#define _MAIN_H
/*****Define*****/
#define XZ 1	//define XY symbolize XY plane
#define YZ 2	//define YZ symbolize YZ plane
#define XY 3	//define XY symbolize XY plane
#define shift_clock RA1		//define shift_clock symbolize pin RA1 since it is connected to each of shift register clock pin
#define shift_data PORTC	//define shift_data symbolize PORTC since each pin of PORTB is connected to each shift register serial data pin
#define uln_ground PORTD	//define shift_data symbolize PORTD since each pin of PORTD is connected to each activating pin of ULN2803
#define _XTAL_FREQ 20000000 //define crystal frequency, useful in using delay function "__delay_ms()".This line must be typed exactly the same
							//as shown except the digit part can change according to the frequency of crystal installed for SK40C
#define SW1 RB0				//define SW1 as RB0 since button SW1 is connected to it
#define SW2 RB1				//define SW2 as RB1 since button SW2 is connected to it

/****LED Cube.c function prototype*****/
extern void io_init(void);	
extern char choose_mode(void);	
extern void show_mode(char mode);	
extern unsigned int get_adc_value(void);
extern void delay (unsigned long time);
extern void delay_using_adc(unsigned char scale);
#endif
