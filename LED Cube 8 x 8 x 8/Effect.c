#include <htc.h>
#include "LED Cube.h"
#include "Lightup.h"
#include "Effect.h"

void moving_point_in_sequence(void)
{
	for(int i = 0; i<8; i++)
	{
		for(int j = 0; j<8; j++)
		{
			for(int k = 0; k<8; k++)
			{	
				set_a_point(k,j,i);
				delay_using_adc(10);
			}
		}
	}
}

void plane_left_to_right (void)
{
	for(int i = 0; i<8; i++)
	{
		set_a_plane(i,XZ);
		delay_using_adc(10);
	}

	for(int i = 7; i>0; i--)
	{
		set_a_plane(i,XZ);
		delay_using_adc(10);
	}	
}

void plane_bottom_to_top (void)
{
	for(int i = 0; i<8; i++)
	{
		set_a_plane(i,XY);
		delay_using_adc(10);
	}

	for(int i = 7; i>0; i--)
	{
		set_a_plane(i,XY);
		delay_using_adc(10);
	}		
}

void plane_forward_to_back(void)
{
	for(int i = 0; i<8; i++)
	{
		set_a_plane(i,YZ);
		delay_using_adc(10);
	}

	for(int i = 7; i>0; i--)
	{
		set_a_plane(i,YZ);
		delay_using_adc(10);
	}
}

void flying_alphabet(unsigned char alphabet,unsigned char plane)
{
	unsigned char temp_alphabet_array[8]= {{0}};
	choose_alphabet(alphabet,temp_alphabet_array);
	if(plane == XZ || plane == YZ)
	{	
		for(int i = 7; i>=0; i--)
		{
			show_pattern_on_a_plane(i,plane,temp_alphabet_array);
			delay_using_adc(20);
		}
	}
	
	else if (plane == XY)
	{
		for(int i=0; i<8; i++)
		{
			show_pattern_on_a_plane(i,plane,temp_alphabet_array);
			delay_using_adc(20);
		}	
	}
}

void choose_alphabet(unsigned char alphabet, unsigned char alphabet_array[8])
{
	switch(alphabet)
	{
		case 'A': alphabet_array[0] = 0xc3;
				  alphabet_array[1] = 0xc3;
				  alphabet_array[2] = 0xff;
				  alphabet_array[3] = 0xff;
                  alphabet_array[4] = 0xc3;
				  alphabet_array[5] = 0xe7;
				  alphabet_array[6] = 0x7e;
				  alphabet_array[7] = 0x3c;
				  break;

		case 'B': alphabet_array[0] = 0x3f;
				  alphabet_array[1] = 0xff;
				  alphabet_array[2] = 0xc3;
				  alphabet_array[3] = 0xff;
                  alphabet_array[4] = 0xff;
				  alphabet_array[5] = 0xc3;
				  alphabet_array[6] = 0xff;
				  alphabet_array[7] = 0x3f;
				  break;

		case 'C': alphabet_array[0] = 0xff;
				  alphabet_array[1] = 0xff;
				  alphabet_array[2] = 0x03;
				  alphabet_array[3] = 0x03;
                  alphabet_array[4] = 0x03;
				  alphabet_array[5] = 0x03;
				  alphabet_array[6] = 0xff;
				  alphabet_array[7] = 0xff;
				  break;

		case 'D': alphabet_array[0] = 0x3f;
				  alphabet_array[1] = 0x7f;
				  alphabet_array[2] = 0xc3;
				  alphabet_array[3] = 0xc3;
                  alphabet_array[4] = 0xc3;
				  alphabet_array[5] = 0xc3;
				  alphabet_array[6] = 0x7f;
				  alphabet_array[7] = 0x3f;
				  break;

		case 'E': alphabet_array[0] = 0xff;
				  alphabet_array[1] = 0xff;
				  alphabet_array[2] = 0x03;
				  alphabet_array[3] = 0xff;
                  alphabet_array[4] = 0xff;
				  alphabet_array[5] = 0x03;
				  alphabet_array[6] = 0xff;
				  alphabet_array[7] = 0xff;
				  break;

		case 'F': alphabet_array[0] = 0x03;
				  alphabet_array[1] = 0x03;
				  alphabet_array[2] = 0x03;
				  alphabet_array[3] = 0xff;
                  alphabet_array[4] = 0xff;
				  alphabet_array[5] = 0x03;
				  alphabet_array[6] = 0xff;
				  alphabet_array[7] = 0xff;
				  break;

		case 'G': alphabet_array[0] = 0xfe;
				  alphabet_array[1] = 0xff;
				  alphabet_array[2] = 0xc3;
				  alphabet_array[3] = 0xf3;
                  alphabet_array[4] = 0xf3;
				  alphabet_array[5] = 0x03;
				  alphabet_array[6] = 0xfe;
				  alphabet_array[7] = 0xfc;
				  break;
					
		case 'H': alphabet_array[0] = 0xc3;
				  alphabet_array[1] = 0xc3;
				  alphabet_array[2] = 0xc3;
				  alphabet_array[3] = 0xff;
                  alphabet_array[4] = 0xff;
				  alphabet_array[5] = 0xc3;
				  alphabet_array[6] = 0xc3;
				  alphabet_array[7] = 0xc3;
				  break;

		case 'I': alphabet_array[0] = 0xff;
				  alphabet_array[1] = 0xff;
				  alphabet_array[2] = 0x18;
				  alphabet_array[3] = 0x18;
                  alphabet_array[4] = 0x18;
				  alphabet_array[5] = 0x18;
				  alphabet_array[6] = 0xff;
				  alphabet_array[7] = 0xff;
				  break;
		case 'J': alphabet_array[0] = 0x1e;
				  alphabet_array[1] = 0x3f;
				  alphabet_array[2] = 0x33;
				  alphabet_array[3] = 0x33;
                  alphabet_array[4] = 0x30;
				  alphabet_array[5] = 0x30;
				  alphabet_array[6] = 0xff;
				  alphabet_array[7] = 0xff;
				  break;
		case 'K': alphabet_array[0] = 0xc3;
				  alphabet_array[1] = 0x63;
				  alphabet_array[2] = 0x33;
				  alphabet_array[3] = 0x1f;
                  alphabet_array[4] = 0x1f;
				  alphabet_array[5] = 0x33;
				  alphabet_array[6] = 0x63;
				  alphabet_array[7] = 0xc3;
				  break;
		case 'L': alphabet_array[0] = 0xff;
				  alphabet_array[1] = 0xff;
				  alphabet_array[2] = 0x03;
				  alphabet_array[3] = 0x03;
                  alphabet_array[4] = 0x03;
				  alphabet_array[5] = 0x03;
				  alphabet_array[6] = 0x03;
				  alphabet_array[7] = 0x03;
				  break;
		case 'M': alphabet_array[0] = 0xc3;
				  alphabet_array[1] = 0xc3;
				  alphabet_array[2] = 0xc3;
				  alphabet_array[3] = 0xc3;
                  alphabet_array[4] = 0xdb;
				  alphabet_array[5] = 0xff;
				  alphabet_array[6] = 0xe7;
				  alphabet_array[7] = 0xc3;
				  break;

		case 'N': alphabet_array[0] = 0xc3;
				  alphabet_array[1] = 0xe3;
				  alphabet_array[2] = 0xf3;
				  alphabet_array[3] = 0xfb;
                  alphabet_array[4] = 0xdf;
				  alphabet_array[5] = 0xcf;
				  alphabet_array[6] = 0xc7;
				  alphabet_array[7] = 0xc3;
				  break;

		case 'O': alphabet_array[0] = 0x3c;
				  alphabet_array[1] = 0x7e;
				  alphabet_array[2] = 0xc3;
				  alphabet_array[3] = 0xc3;
                  alphabet_array[4] = 0xc3;
				  alphabet_array[5] = 0xc3;
				  alphabet_array[6] = 0x7e;
				  alphabet_array[7] = 0x3c;
				  break;

		case 'P': alphabet_array[0] = 0x03;
				  alphabet_array[1] = 0x03;
				  alphabet_array[2] = 0x7f;
				  alphabet_array[3] = 0xff;
                  alphabet_array[4] = 0xc3;
				  alphabet_array[5] = 0xc3;
				  alphabet_array[6] = 0xff;
				  alphabet_array[7] = 0x7e;
				  break;

		case 'Q': alphabet_array[0] = 0xde;
				  alphabet_array[1] = 0x7f;
				  alphabet_array[2] = 0xf3;
				  alphabet_array[3] = 0xdb;
                  alphabet_array[4] = 0xc3;
				  alphabet_array[5] = 0xc3;
				  alphabet_array[6] = 0x7e;
				  alphabet_array[7] = 0x3c;
				  break;

		case 'R': alphabet_array[0] = 0xc3;
				  alphabet_array[1] = 0xe3;
				  alphabet_array[2] = 0x73;
				  alphabet_array[3] = 0x7f;
                  alphabet_array[4] = 0xff;
				  alphabet_array[5] = 0xc3;
				  alphabet_array[6] = 0xff;
				  alphabet_array[7] = 0x7f;
				  break;

		case 'S': alphabet_array[0] = 0xff;
				  alphabet_array[1] = 0xff;
				  alphabet_array[2] = 0xc0;
				  alphabet_array[3] = 0xff;
                  alphabet_array[4] = 0xff;
				  alphabet_array[5] = 0x03;
				  alphabet_array[6] = 0xff;
				  alphabet_array[7] = 0xff;
				  break;

		case 'T': alphabet_array[0] = 0x18;
				  alphabet_array[1] = 0x18;
				  alphabet_array[2] = 0x18;
				  alphabet_array[3] = 0x18;
                  alphabet_array[4] = 0x18;
				  alphabet_array[5] = 0x18;
				  alphabet_array[6] = 0xff;
				  alphabet_array[7] = 0xff;
				  break;
		case 'U': alphabet_array[0] = 0x7e;
				  alphabet_array[1] = 0xff;
				  alphabet_array[2] = 0xc3;
				  alphabet_array[3] = 0xc3;
                  alphabet_array[4] = 0xc3;
				  alphabet_array[5] = 0xc3;
				  alphabet_array[6] = 0xc3;
				  alphabet_array[7] = 0xc3;
				  break;

		case 'V': alphabet_array[0] = 0x18;
				  alphabet_array[1] = 0x3c;
				  alphabet_array[2] = 0x66;
				  alphabet_array[3] = 0xe7;
                  alphabet_array[4] = 0xc3;
				  alphabet_array[5] = 0xc3;
				  alphabet_array[6] = 0xc3;
				  alphabet_array[7] = 0xc3;
				  break;

		case 'W': alphabet_array[0] = 0xc3;
				  alphabet_array[1] = 0xe7;
				  alphabet_array[2] = 0xff;
				  alphabet_array[3] = 0xdb;
                  alphabet_array[4] = 0xc3;
				  alphabet_array[5] = 0xc3;
				  alphabet_array[6] = 0xc3;
				  alphabet_array[7] = 0xc3;
				  break;

		case 'X': alphabet_array[0] = 0xc3;
				  alphabet_array[1] = 0xc3;
				  alphabet_array[2] = 0x66;
				  alphabet_array[3] = 0x3c;
                  alphabet_array[4] = 0x3c;
				  alphabet_array[5] = 0x66;
				  alphabet_array[6] = 0xc3;
				  alphabet_array[7] = 0xc3;
				  break;

		case 'Y': alphabet_array[0] = 0x18;
				  alphabet_array[1] = 0x18;
				  alphabet_array[2] = 0x18;
				  alphabet_array[3] = 0x18;
                  alphabet_array[4] = 0x3c;
				  alphabet_array[5] = 0x66;
				  alphabet_array[6] = 0xc3;
				  alphabet_array[7] = 0xc3;
				  break;
		case 'Z': alphabet_array[0] = 0xff;
				  alphabet_array[1] = 0xff;
				  alphabet_array[2] = 0x0e;
				  alphabet_array[3] = 0x1c;
                  alphabet_array[4] = 0x28;
				  alphabet_array[5] = 0x70;
				  alphabet_array[6] = 0xff;
				  alphabet_array[7] = 0xff;				  
	}
}

void flying_character_of_a_word(char* word)
{
	unsigned char alphabet_pattern[8] = {{0}};
	for(int i = 0; word[i] != '\0'; i++)
	{
		choose_alphabet(word[i],alphabet_pattern);
		for(int j = 0; j<8; j++)
		{
			show_pattern_on_a_plane(j,XY,alphabet_pattern);
			__delay_ms(100);
		}
	}
}

void contraction_expansion_square_ring(void)
{
	unsigned char square_ring_pattern[8] = {{0}};
	square_ring_pattern[0] = 0xff;
	square_ring_pattern[1] = 0x81;
	square_ring_pattern[2] = 0x81;
	square_ring_pattern[3] = 0x81;
	square_ring_pattern[4] = 0x81;
	square_ring_pattern[5] = 0x81;
	square_ring_pattern[6] = 0x81;
	square_ring_pattern[7] = 0xff;

	show_pattern_on_a_plane(0,XY,square_ring_pattern);
	__delay_ms(500);

	square_ring_pattern[0] = 0x00;
	square_ring_pattern[1] = 0x7e;
	square_ring_pattern[2] = 0x42;
	square_ring_pattern[3] = 0x42;
	square_ring_pattern[4] = 0x42;
	square_ring_pattern[5] = 0x42;
	square_ring_pattern[6] = 0x7e;
	square_ring_pattern[7] = 0x00;

	show_pattern_on_a_plane(1,XY,square_ring_pattern);
	__delay_ms(500);



	square_ring_pattern[0] = 0x00;
	square_ring_pattern[1] = 0x00;
	square_ring_pattern[2] = 0x3c;
	square_ring_pattern[3] = 0x24;
	square_ring_pattern[4] = 0x24;
	square_ring_pattern[5] = 0x3c;
	square_ring_pattern[6] = 0x00;
	square_ring_pattern[7] = 0x00;
	
	show_pattern_on_a_plane(2,XY,square_ring_pattern);
	__delay_ms(500);



	square_ring_pattern[0] = 0x00;
	square_ring_pattern[1] = 0x00;
	square_ring_pattern[2] = 0x00;
	square_ring_pattern[3] = 0x18;
	square_ring_pattern[4] = 0x18;
	square_ring_pattern[5] = 0x00;
	square_ring_pattern[6] = 0x00;
	square_ring_pattern[7] = 0x00;
	
	show_pattern_on_a_plane(3,XY,square_ring_pattern);
	__delay_ms(500);


	
	square_ring_pattern[0] = 0x00;
	square_ring_pattern[1] = 0x00;
	square_ring_pattern[2] = 0x00;
	square_ring_pattern[3] = 0x18;
	square_ring_pattern[4] = 0x18;
	square_ring_pattern[5] = 0x00;
	square_ring_pattern[6] = 0x00;
	square_ring_pattern[7] = 0x00;

	show_pattern_on_a_plane(4,XY,square_ring_pattern);
	__delay_ms(500);


	square_ring_pattern[0] = 0x00;
	square_ring_pattern[1] = 0x00;
	square_ring_pattern[2] = 0x3c;
	square_ring_pattern[3] = 0x24;
	square_ring_pattern[4] = 0x24;
	square_ring_pattern[5] = 0x3c;
	square_ring_pattern[6] = 0x00;
	square_ring_pattern[7] = 0x00;

	show_pattern_on_a_plane(5,XY,square_ring_pattern);
	__delay_ms(500);



	square_ring_pattern[0] = 0x00;
	square_ring_pattern[1] = 0x7e;
	square_ring_pattern[2] = 0x42;
	square_ring_pattern[3] = 0x42;
	square_ring_pattern[4] = 0x42;
	square_ring_pattern[5] = 0x42;
	square_ring_pattern[6] = 0x7e;
	square_ring_pattern[7] = 0x00;
	
	show_pattern_on_a_plane(6,XY,square_ring_pattern);
	__delay_ms(500);



	square_ring_pattern[0] = 0xff;
	square_ring_pattern[1] = 0x81;
	square_ring_pattern[2] = 0x81;
	square_ring_pattern[3] = 0x81;
	square_ring_pattern[4] = 0x81;
	square_ring_pattern[5] = 0x81;
	square_ring_pattern[6] = 0x81;
	square_ring_pattern[7] = 0xff;
	
	for(int i = 7; i>=1; i--)
	{
		show_pattern_on_a_plane(i,XY,square_ring_pattern);
		__delay_ms(500);
	}
}	

void dice(void)
{
	for(int i = 1; i < 7; i++)
	{
		if(SW1 == 0)
		{
			while(SW1 == 0);
			choose_dice(i);
		}
		set_a_plane(i,XY);
		__delay_ms(40);
	}	
}

void choose_dice(unsigned char number)
{
	unsigned char dice_pattern[8] = {{0}};
	unsigned char temp_switch = 0;
	switch(number)
	{
		case 1: dice_pattern[0] = 0xff;
				dice_pattern[1] = 0x81;
				dice_pattern[2] = 0x81;
				dice_pattern[3] = 0x99;
				dice_pattern[4] = 0x99;
				dice_pattern[5] = 0x81;
				dice_pattern[6] = 0x81;
				dice_pattern[7] = 0xff;
				show_pattern_on_a_plane(7,XY,dice_pattern);
				break;

		case 2: dice_pattern[0] = 0xff;
				dice_pattern[1] = 0x81;
				dice_pattern[2] = 0x81;
				dice_pattern[3] = 0xe7;
				dice_pattern[4] = 0xe7;
				dice_pattern[5] = 0x81;
				dice_pattern[6] = 0x81;
				dice_pattern[7] = 0xff;
				show_pattern_on_a_plane(7,XY,dice_pattern);
				break;

		case 3: dice_pattern[0] = 0xff;
				dice_pattern[1] = 0x87;
				dice_pattern[2] = 0x87;
				dice_pattern[3] = 0x99;
				dice_pattern[4] = 0x99;
				dice_pattern[5] = 0xe1;
				dice_pattern[6] = 0xe1;
				dice_pattern[7] = 0xff;
				show_pattern_on_a_plane(7,XY,dice_pattern);
				break;

		case 4: dice_pattern[0] = 0xff;
				dice_pattern[1] = 0xe7;
				dice_pattern[2] = 0xe7;
				dice_pattern[3] = 0x81;
				dice_pattern[4] = 0x81;
				dice_pattern[5] = 0xe7;
				dice_pattern[6] = 0xe7;
				dice_pattern[7] = 0xff;
				show_pattern_on_a_plane(7,XY,dice_pattern);
				break; 
		
		case 5: dice_pattern[0] = 0xff;
				dice_pattern[1] = 0xe7;
				dice_pattern[2] = 0xe7;
				dice_pattern[3] = 0x99;
				dice_pattern[4] = 0x99;
				dice_pattern[5] = 0xe7;
				dice_pattern[6] = 0xe7;
				dice_pattern[7] = 0xff;
				show_pattern_on_a_plane(7,XY,dice_pattern);
				break;

		case 6: dice_pattern[0] = 0xff;
				dice_pattern[1] = 0xe7;
				dice_pattern[2] = 0xe7;
				dice_pattern[3] = 0xe7;
				dice_pattern[4] = 0xe7;
				dice_pattern[5] = 0xe7;
				dice_pattern[6] = 0xe7;
				dice_pattern[7] = 0xff;
				show_pattern_on_a_plane(7,XY,dice_pattern);
				break;
	}
	while(SW1 == 1);
	while(SW1 == 0);
}

void expansion_box(void)
{
	int time = 80;
	unsigned char box_pattern[8] = {{0}};
	box_pattern[0] = 0x00;
	box_pattern[1] = 0x00;
	box_pattern[2] = 0x00;
	box_pattern[3] = 0x18;
	box_pattern[4] = 0x18;
	box_pattern[5] = 0x00;
	box_pattern[6] = 0x00;
	box_pattern[7] = 0x00;
	
	for(int i = 0; i<time; i++)
	{
		__delay_ms(1);
		for(int j = 3; j<5; j++)
		{
			show_pattern_on_a_plane(j,XY,box_pattern);
		}
	}
	
	box_pattern[0] = 0x00;
	box_pattern[1] = 0x00;
	box_pattern[2] = 0x3c;
	box_pattern[3] = 0x3c;
	box_pattern[4] = 0x3c;
	box_pattern[5] = 0x3c;
	box_pattern[6] = 0x00;
	box_pattern[7] = 0x00;

	for(int i = 0; i<(time-10); i++)
	{
		__delay_ms(1);
		for(int j = 2; j<6; j++)
		{
			show_pattern_on_a_plane(j,XY,box_pattern);
		}
	}

	box_pattern[0] = 0x00;
	box_pattern[1] = 0x7e;
	box_pattern[2] = 0x7e;
	box_pattern[3] = 0x7e;
	box_pattern[4] = 0x7e;
	box_pattern[5] = 0x7e;
	box_pattern[6] = 0x7e;
	box_pattern[7] = 0x00;

	for(int i = 0; i<(time-20); i++)
	{
		__delay_ms(1);
		for(int j = 1; j<7; j++)
		{
			show_pattern_on_a_plane(j,XY,box_pattern);
		}
	}

	box_pattern[0] = 0xff;
	box_pattern[1] = 0xff;
	box_pattern[2] = 0xff;
	box_pattern[3] = 0xff;
	box_pattern[4] = 0xff;
	box_pattern[5] = 0xff;
	box_pattern[6] = 0xff;
	box_pattern[7] = 0xff;

	for(int i = 0; i<(time-30); i++)
	{
		__delay_ms(1);
		for(int j = 0; j<8; j++)
		{
			show_pattern_on_a_plane(j,XY,box_pattern);
		}
	}
}

void rotate_plane(void)
{
	int time = 5;
	unsigned char rotate_pattern[8] = {{0}};
	rotate_pattern[0] = 0x80;
	rotate_pattern[1] = 0x40;
	rotate_pattern[2] = 0x20;
	rotate_pattern[3] = 0x10;
	rotate_pattern[4] = 0x08;
	rotate_pattern[5] = 0x04;
	rotate_pattern[6] = 0x02;
	rotate_pattern[7] = 0x01;
	for(int i = 0; i<time; i++)
	{
		__delay_ms(1);
		for(int j = 0; j<8; j++)
		{
			show_pattern_on_a_plane(j,XY,rotate_pattern);
		}
	}
	
	rotate_pattern[0] = 0x00;
	rotate_pattern[1] = 0x80;
	rotate_pattern[2] = 0x40;
	rotate_pattern[3] = 0x30;
	rotate_pattern[4] = 0x0c;
	rotate_pattern[5] = 0x02;
	rotate_pattern[6] = 0x01;
	rotate_pattern[7] = 0x00;
	for(int i = 0; i<time; i++)
	{
		__delay_ms(1);
		for(int j = 0; j<8; j++)
		{
			show_pattern_on_a_plane(j,XY,rotate_pattern);
		}
	}
	

	rotate_pattern[0] = 0x00;
	rotate_pattern[1] = 0x00;
	rotate_pattern[2] = 0xc0;
	rotate_pattern[3] = 0x30;
	rotate_pattern[4] = 0x0c;
	rotate_pattern[5] = 0x03;
	rotate_pattern[6] = 0x00;
	rotate_pattern[7] = 0x00;
	for(int i = 0; i<time; i++)
	{
		__delay_ms(1);
		for(int j = 0; j<8; j++)
		{
			show_pattern_on_a_plane(j,XY,rotate_pattern);
		}
	}
	
	rotate_pattern[0] = 0x00;
	rotate_pattern[1] = 0x00;
	rotate_pattern[2] = 0x00;
	rotate_pattern[3] = 0xf0;
	rotate_pattern[4] = 0x0f;
	rotate_pattern[5] = 0x00;
	rotate_pattern[6] = 0x00;
	rotate_pattern[7] = 0x00;
	for(int i = 0; i<time; i++)
	{
		__delay_ms(1);
		for(int j = 0; j<8; j++)
		{
			show_pattern_on_a_plane(j,XY,rotate_pattern);
		}
	}
	

	rotate_pattern[0] = 0x00;
	rotate_pattern[1] = 0x00;
	rotate_pattern[2] = 0x00;
	rotate_pattern[3] = 0x0f;
	rotate_pattern[4] = 0xf0;
	rotate_pattern[5] = 0x00;
	rotate_pattern[6] = 0x00;
	rotate_pattern[7] = 0x00;
	for(int i = 0; i<time; i++)
	{
		__delay_ms(1);
		for(int j = 0; j<8; j++)
		{
			show_pattern_on_a_plane(j,XY,rotate_pattern);
		}
	}
	

	rotate_pattern[0] = 0x00;
	rotate_pattern[1] = 0x00;
	rotate_pattern[2] = 0x03;
	rotate_pattern[3] = 0x0c;
	rotate_pattern[4] = 0x30;
	rotate_pattern[5] = 0xc0;
	rotate_pattern[6] = 0x00;
	rotate_pattern[7] = 0x00;
	for(int i = 0; i<time; i++)
	{
		__delay_ms(1);
		for(int j = 0; j<8; j++)
		{
			show_pattern_on_a_plane(j,XY,rotate_pattern);
		}
	}
	

	rotate_pattern[0] = 0x00;
	rotate_pattern[1] = 0x01;
	rotate_pattern[2] = 0x02;
	rotate_pattern[3] = 0x0c;
	rotate_pattern[4] = 0x30;
	rotate_pattern[5] = 0x40;
	rotate_pattern[6] = 0x80;
	rotate_pattern[7] = 0x00;
	for(int i = 0; i<time; i++)
	{
		__delay_ms(1);
		for(int j = 0; j<8; j++)
		{
			show_pattern_on_a_plane(j,XY,rotate_pattern);
		}
	}
	

	rotate_pattern[0] = 0x01;
	rotate_pattern[1] = 0x02;
	rotate_pattern[2] = 0x04;
	rotate_pattern[3] = 0x08;
	rotate_pattern[4] = 0x10;
	rotate_pattern[5] = 0x20;
	rotate_pattern[6] = 0x40;
	rotate_pattern[7] = 0x80;
	for(int i = 0; i<time; i++)
	{
		__delay_ms(1);
		for(int j = 0; j<8; j++)
		{
			show_pattern_on_a_plane(j,XY,rotate_pattern);
		}
	}
	

	rotate_pattern[0] = 0x02;
	rotate_pattern[1] = 0x04;
	rotate_pattern[2] = 0x08;
	rotate_pattern[3] = 0x08;
	rotate_pattern[4] = 0x10;
	rotate_pattern[5] = 0x10;
	rotate_pattern[6] = 0x20;
	rotate_pattern[7] = 0x40;
	for(int i = 0; i<time; i++)
	{
		__delay_ms(1);
		for(int j = 0; j<8; j++)
		{
			show_pattern_on_a_plane(j,XY,rotate_pattern);
		}
	}
	
	
	rotate_pattern[0] = 0x04;
	rotate_pattern[1] = 0x04;
	rotate_pattern[2] = 0x08;
	rotate_pattern[3] = 0x08;
	rotate_pattern[4] = 0x10;
	rotate_pattern[5] = 0x10;
	rotate_pattern[6] = 0x20;
	rotate_pattern[7] = 0x20;
	for(int i = 0; i<time; i++)
	{
		__delay_ms(1);
		for(int j = 0; j<8; j++)
		{
			show_pattern_on_a_plane(j,XY,rotate_pattern);
		}
	}
		

	rotate_pattern[0] = 0x08;
	rotate_pattern[1] = 0x08;
	rotate_pattern[2] = 0x08;
	rotate_pattern[3] = 0x08;
	rotate_pattern[4] = 0x10;
	rotate_pattern[5] = 0x10;
	rotate_pattern[6] = 0x10;
	rotate_pattern[7] = 0x10;
	for(int i = 0; i<time; i++)
	{
		__delay_ms(1);
		for(int j = 0; j<8; j++)
		{
			show_pattern_on_a_plane(j,XY,rotate_pattern);
		}
	}
	

	rotate_pattern[0] = 0x10;
	rotate_pattern[1] = 0x10;
	rotate_pattern[2] = 0x10;
	rotate_pattern[3] = 0x10;
	rotate_pattern[4] = 0x08;
	rotate_pattern[5] = 0x08;
	rotate_pattern[6] = 0x08;
	rotate_pattern[7] = 0x08;
	for(int i = 0; i<time; i++)
	{
		__delay_ms(1);
		for(int j = 0; j<8; j++)
		{
			show_pattern_on_a_plane(j,XY,rotate_pattern);
		}
	}
	

	rotate_pattern[0] = 0x20;
	rotate_pattern[1] = 0x20;
	rotate_pattern[2] = 0x10;
	rotate_pattern[3] = 0x10;
	rotate_pattern[4] = 0x08;
	rotate_pattern[5] = 0x08;
	rotate_pattern[6] = 0x04;
	rotate_pattern[7] = 0x04;
	for(int i = 0; i<time; i++)
	{
		__delay_ms(1);
		for(int j = 0; j<8; j++)
		{
			show_pattern_on_a_plane(j,XY,rotate_pattern);
		}
	}
	

	rotate_pattern[0] = 0x40;
	rotate_pattern[1] = 0x20;
	rotate_pattern[2] = 0x10;
	rotate_pattern[3] = 0x10;
	rotate_pattern[4] = 0x08;
	rotate_pattern[5] = 0x08;
	rotate_pattern[6] = 0x04;
	rotate_pattern[7] = 0x02;
	for(int i = 0; i<time; i++)
	{
		__delay_ms(1);
		for(int j = 0; j<8; j++)
		{
			show_pattern_on_a_plane(j,XY,rotate_pattern);
		}
	}
	

	rotate_pattern[0] = 0x80;
	rotate_pattern[1] = 0x40;
	rotate_pattern[2] = 0x20;
	rotate_pattern[3] = 0x10;
	rotate_pattern[4] = 0x08;
	rotate_pattern[5] = 0x04;
	rotate_pattern[6] = 0x02;
	rotate_pattern[7] = 0x01;
	for(int i = 0; i<time; i++)
	{
		__delay_ms(1);
		for(int j = 0; j<8; j++)
		{
			show_pattern_on_a_plane(j,XY,rotate_pattern);
		}
	}	
}