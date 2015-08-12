#include <htc.h>
#include "LED Cube.h"
#include "Lightup.h"
void set_a_point( int x, int y, int z)
{
	uln_ground = 0;
	for(int j = 0; j< 8; j++)
	{
		if( j == x)
		{
			shift_data = 1<<y;
		}
		else
		{
			shift_data = 0;	
		}
		shift_clock = 1;
		shift_clock = 0;			
	}
	uln_ground = 1<<z;
	__delay_ms(1);
}

void set_a_plane(unsigned char layer, unsigned char plane)
{
	if(plane == XZ)
	{
		for(int j = 0; j< 8; j++)
		{
		
			shift_data = 1<<layer;
			shift_clock = 1;
			shift_clock = 0;			
		}
		uln_ground = 0b11111111;
		__delay_ms(1);
	}

	else if(plane == YZ)
	{	
		for(int j = layer; j>0; j--)
		{
			shift_data = 0;
			shift_clock = 1;
			shift_clock = 0;
		}
			shift_data = 0xff;
			shift_clock = 1;
			shift_clock = 0;
		for(int j =7-layer; j>0; j--)
		{
			shift_data = 0;
			shift_clock = 1;
			shift_clock = 0;
		}
		uln_ground = 0b111111111;
		__delay_ms(1);	
	}	
	
	else if(plane == XY)
	{
		for(int j = 0; j< 8; j++)
		{
			shift_data = 0b11111111;
			shift_clock = 1;
			shift_clock = 0;			
		}
		uln_ground = 1<<layer;	
		__delay_ms(1);
	}
}

void show_pattern_on_a_plane(unsigned char layer,unsigned char plane,unsigned char pattern_array[8])
{		
	int adc_delay = 0;
	unsigned char scale = 10;
	if(plane == XZ)
	{
		for(int i = 0; i<8; i++)
		{
			for(int j = 0; j< 8; j++)
			{
				shift_data =   (0x01 & (pattern_array[i] >> (7-j))) << layer;
				shift_clock = 1;
				shift_clock = 0;			
			}
			uln_ground = 1<<i;
			__delay_ms(5);
			uln_ground = 0;
		}
	}

	else if (plane == YZ)
	{
		for(int i = 0; i<8; i++)
		{
	
		for(int j = layer; j>0; j--)
		{
			shift_data = 0;
			shift_clock = 1;
			shift_clock = 0;
		}
			shift_data = pattern_array[i];
			shift_clock = 1;
			shift_clock = 0;
		for(int j =7-layer; j>0; j--)
		{
			shift_data = 0;
			shift_clock = 1;
			shift_clock = 0;
		}
		uln_ground = 1<<i;
		__delay_ms(5);	
		uln_ground = 0;
		}
	}

	else if(plane == XY)
	{
		for(int j = 0; j< 8; j++)
		{
			shift_data = pattern_array[j];
			shift_clock = 1;
			shift_clock = 0;			
		}
		uln_ground = 1<<layer;	
		__delay_ms(1);
	}
}
