#ifndef _LIGHTUP_H
#define _LIGHTUP_H

extern void set_a_point(int x, int y, int z);
/********************************************
set_a_point(int x, int y, int z)

Function: 
Light up a LED of LED cube at coordinate (x,y,z)

Arguments:
x -> assign x-coordinates
y -> assign y-coordinates
z -> assign z-coordinates

Example code:
set_a_point(7,7,7)

Meaning: 
Light up the LED at coordinate (7,7,7) of LED Cube
********************************************/

extern void set_a_plane(unsigned char layer, unsigned char plane);
/********************************************
set_a_plane(unsigned char row, unsigned char axis)

Function: 
Light up a plane of LEDs of LED Cube

Arguments:
layer -> determine which LEDs layer of XY, XZ,YZ-plane is turn on
plane -> determine LEDs layer will light up on which plane (XY,XZ,or YZ-plane), to be assigned with predefined (XZ,YZ , or XY)
where,
		XZ -> XZ-plane
		YZ -> YZ-plane
		XY -> XY-plane

Example code:
set_a_plane(7,XY)

Meaning: 
Light up the whole LEDs of 7th layer at XY plane of LED Cube		
********************************************/

extern void show_pattern_on_a_plane(unsigned char layer,unsigned char plane,unsigned char pattern_array[8]);
/*********************************************
show_pattern_on_a_plane(unsigned char layer,unsigned char axis,unsigned char pattern_array[8])

Function: 
Show a pattern on a plane of LEDS of LED Cube 

Arguments:
layer -> assign which LEDs layer of XY, XZ,YZ-plane is turn on
plane -> assign pattern LEDs layer will light up on which plane (XY,XZ,or YZ-plane), to be assigned with predefined (AXIS_X, AXIS_Y, or AXIS_Z)
pattern_array[8] -> store the pattern to be display

For example:
Alphabet 'A'
- - o o o o - -  -> represented by 0x3c
- o o o o o o -  -> represented by 0x7e
o o o - - o o o  -> represented by 0xe7
o o - - - - o o  -> represented by 0xc3
o o o o o o o o  -> represented by 0xff
o o o o o o o o  -> represented by 0xff
o o - - - - o o  -> represented by 0xc3
o o - - - - o o	 -> represented by 0xc3 

Explanation:
Let 'o' symbolizes 'ON' LED or logic '1' and '-' symbolizes 'OFF' LED or logic '0'
Let's take a look at the most bottonmline
o o - - - - o o -> 1 1 0 0 0 0 1 1 -> read it start from right side -> 1 1 0 0 0 0 1 1 ->represented as 0xc3 in hex

Somehow the code of filling the array to be put into "pattern_array[8]" should be typed as below, 
since it is need to shift in the data start from the bottom line into the shift register 
		  
		  unsigned char array[8] = {0xc3,0xc3,0xff,0xff,0xc3,0xe7,0x7e,0x3c};

		  or

		  unsigned char array[8] = {{0}};		
		  array[0] = 0xc3;
		  array[1] = 0xc3;
		  array[2] = 0xff;
		  array[3] = 0xff;
          array[4] = 0xc3;
		  array[5] = 0xe7;
		  array[6] = 0x7e;
		  array[7] = 0x3c;

Example code:
unsigned char array[8] = {0xc3,0xc3,0xff,0xff,0xc3,0xe7,0x7e,0x3c};
show_a_pattern_on_a_plane(7,XY,array)

Meaning: Alphabet 'A' pattern will be shown on 7th layer LEDs at XY plane of LED Cube

**Note:
While loop is need for the pattern to shown at XZ plane and YZ plane but not need for case at XY plane due to different shifthing data 
algorithm into shift register

For example:
while(1)
{
	show_a_pattern_on_a_plane(7,XZ,array);	
}

while(1)
{
	show_a_pattern_on_a_plane(7,YZ,array);
}
********************************************/
#endif
