#ifndef _EFFECT_H
#define _EFFECT_H

extern void moving_point_in_sequence(void);
/******************************************
void moving_point_in_sequence(void)

Function: Light up 1 LED at one time in sequence through out the LED Cube.

**The moving effect can be adjusted by turning the potentiometer installed.

Arguments: No arguments
******************************************/

extern void plane_left_to_right (void);
/******************************************
void plane_left_to_right(void)

Function: 
Moving LED layer at XZ plane by lighting up one LED layer at a time in sequence, 
giving the effect that the LED layer is moving from left to right end and right to left when see from front side.

**The moving effect can be adjusted by turning the potentiometer installed.

Arguments: No arguments
******************************************/

extern void plane_bottom_to_top (void);
/******************************************
void plane_bottom_to_top(void)

Function: 
Moving LED layer at XY plane by lighting up one LED layer at a time in sequence, 
giving the effect that the LED layer is moving from bottom to top  and from top to bottom when see from front side.

**The moving effect can be adjusted by turning the potentiometer installed.

Arguments: No arguments
******************************************/

extern void plane_forward_to_back(void);
/******************************************
void plane_forward_to_back(void)

Function: 
Moving LED layer at YZ plane by lighting up one LED layer at a time in sequence, 
giving the effect that the LED layer is moving from forward to back  and from top to bottom when see from front side.

**The moving effect can be adjusted by turning the potentiometer installed.

Arguments: No arguments
******************************************/

extern void flying_alphabet(unsigned char alphabet,unsigned char plane);
/****************************************** 
void flying_alphabet(unsigned char alphabet,unsigned char plane)

Function: Moving an alphabet pattern LED layer

		  a)from right to left at XZ plane of LED Cube 
		  or
		  b)from back to forward at YZ plane of LED  Cube
		  or
		  c)from bottom to top at XY plane of LED Cube
		  
          that giving the alphabet flying effect.

**The alphabet flying effect can be adjusted by turning the potentiometer installed.

Arguments:
alphabet -> assign any of alphabet (A-Z) pattern in capital form to show.
plane -> assign any plane of the LED Cube showing the flying alphabet effect.

Example code:
flying_alphabet('A', XY);

Meaning:
Assign alphabet 'A' pattern to be show flying effect (moving from bottom to top) 
at the XY plane of the LED Cube.
******************************************/

extern void choose_alphabet(unsigned char alphabet,unsigned char alphabet_array[8]);
/******************************************
void choose_alphabet(unsigned char alphabet,unsigned char alphabet_array[8])

Function: 
Determine which alphabet pattern is choosen and store it in an array assigned. This subfunction contains 
a alphabet pattern array library of (A to Z) in capital letter.

Arguments:
alphabet -> assign any of alphabet (A-Z).
alphabet_array[8] -> The assigned alphabet pattern will store in the array assigned to this argument.

Example code:
unsigned char pattern[8] = {{0}};
choose_alphabet('A',pattern);

Meaning: Choose the alphabet 'A' pattern and store it  in "pattern" array.
******************************************/

extern void flying_character_of_a_word(char* word);
/******************************************
void flying_character_of_a_string(char* string)

Function: 
Flying effect of each of alphabet pattern of a word in sequence from bottom to top at XY plane of LED Cube.

Arguments: No arguments

Example code:
flying_character_of_a_word("FLOWER");

Meaning: 
Flying effect starting with 'F' pattern, followed by 'L','O','W','E', ends with 'R' patterns from bottom to top at XY plane of LED Cube. 
******************************************/

extern void contraction_expansion_square_ring(void);
/******************************************
void contraction_expansion_square_ring(void)

Function: 
Expansion and contraction of a square ring pattern moving at the XY plane of LED Cube.

Arguments: No arguments
******************************************/

extern void dice(void);
/******************************************
void dice(void)

Function: 
Works as a dice that will show number of dots (1-6) on the top layer at XY plane of LED Cube. Initially, 
fast running LED layer will light up from layer 1 to layer 6 repeatedly untill button SW1 is pressed.
As button SW1 is pressed, the choosen dice value (one of number of dots (1-6)) will be shown top layer at XY plane of LED Cube.
When the button SW1 is pressed again, the running LED layer will execute again and wait for the SW1 button to be pressed to
show the corresponding number of dots again.

Arguments: No arguments
****************************************/

extern void choose_dice(unsigned char number);
/******************************************
void choose_dice(unsigned char number)

Function: 
Choose the dice dots pattern to be shown in void dice(void) subfunction. 
This function is called in void dice(void) subfunction.

Arguments:
number -> assign the number of dots to be shown in void dice(void) subfunction.

Example code
choose_dice(1);

Meaning: choose the dice "1 dot" pattern to be shown in void dice(void) subfunction.
******************************************/

extern void expansion_box(void);
/******************************************
void expansion_box(void)

Function: 
Display the expansion of the 3D box at the middle of the LED Cube

Arguments: No arguments
******************************************/

extern void rotate_plane(void);
/******************************************
void rotate_plane(void)

Function: 
Display rotation of a vertiacl square plane

Arguments: No arguments
******************************************/
#endif