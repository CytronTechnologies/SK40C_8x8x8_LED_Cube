opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 9453"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 12 "C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\LED Cube.c"
	psect config,class=CONFIG,delta=2 ;#
# 12 "C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\LED Cube.c"
	dw 0xFFFE & 0xFFFB & 0xFFF7 & 0xFFBF & 0xFF7F ;#
	FNCALL	_main,_io_init
	FNCALL	_main,_choose_mode
	FNCALL	_main,_moving_point_in_sequence
	FNCALL	_main,_plane_left_to_right
	FNCALL	_main,_plane_forward_to_back
	FNCALL	_main,_plane_bottom_to_top
	FNCALL	_main,_flying_character_of_a_word
	FNCALL	_main,_contraction_expansion_square_ri
	FNCALL	_main,_expansion_box
	FNCALL	_main,_dice
	FNCALL	_main,_rotate_plane
	FNCALL	_dice,_choose_dice
	FNCALL	_dice,_set_a_plane
	FNCALL	_choose_mode,_set_a_plane
	FNCALL	_choose_mode,_show_mode
	FNCALL	_choose_dice,_show_pattern_on_a_plane
	FNCALL	_show_mode,_choose_alphabet
	FNCALL	_show_mode,_show_pattern_on_a_plane
	FNCALL	_rotate_plane,_show_pattern_on_a_plane
	FNCALL	_expansion_box,_show_pattern_on_a_plane
	FNCALL	_contraction_expansion_square_ri,_show_pattern_on_a_plane
	FNCALL	_flying_character_of_a_word,_choose_alphabet
	FNCALL	_flying_character_of_a_word,_show_pattern_on_a_plane
	FNCALL	_plane_bottom_to_top,_set_a_plane
	FNCALL	_plane_bottom_to_top,_delay_using_adc
	FNCALL	_plane_forward_to_back,_set_a_plane
	FNCALL	_plane_forward_to_back,_delay_using_adc
	FNCALL	_plane_left_to_right,_set_a_plane
	FNCALL	_plane_left_to_right,_delay_using_adc
	FNCALL	_moving_point_in_sequence,_set_a_point
	FNCALL	_moving_point_in_sequence,_delay_using_adc
	FNCALL	_delay_using_adc,_get_adc_value
	FNCALL	_delay_using_adc,___wmul
	FNCALL	_delay_using_adc,_delay
	FNROOT	_main
	global	contraction_expansion_square_ri@F1168
	global	flying_alphabet@F1155
	global	flying_character_of_a_word@F1162
	global	show_mode@F1153
	global	expansion_box@F1188
	global	rotate_plane@F1204
	global	choose_dice@F1183
	global	_ADRESH
psect	text540,local,class=CODE,delta=2
global __ptext540
__ptext540:
_ADRESH	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_ADCS0
_ADCS0	set	254
	global	_ADCS1
_ADCS1	set	255
	global	_ADIF
_ADIF	set	102
	global	_ADON
_ADON	set	248
	global	_CARRY
_CARRY	set	24
	global	_CHS0
_CHS0	set	251
	global	_CHS1
_CHS1	set	252
	global	_CHS2
_CHS2	set	253
	global	_GIE
_GIE	set	95
	global	_GO
_GO	set	250
	global	_RA1
_RA1	set	41
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_ADRESL
_ADRESL	set	158
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_ADFM
_ADFM	set	1279
	global	_PCFG0
_PCFG0	set	1272
	global	_PCFG1
_PCFG1	set	1273
	global	_PCFG2
_PCFG2	set	1274
	global	_PCFG3
_PCFG3	set	1275
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	67	;'C'
	retlw	89	;'Y'
	retlw	84	;'T'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	0
psect	strings
	file	"LED Cube.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
contraction_expansion_square_ri@F1168:
       ds      8

flying_alphabet@F1155:
       ds      8

flying_character_of_a_word@F1162:
       ds      8

show_mode@F1153:
       ds      8

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
choose_dice@F1183:
       ds      8

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
expansion_box@F1188:
       ds      8

rotate_plane@F1204:
       ds      8

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+020h)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+08h)
	fcall	clear_ram
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+010h)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	rotate_plane@i
rotate_plane@i:	; 2 bytes @ 0x0
	ds	2
	global	rotate_plane@i_3064
rotate_plane@i_3064:	; 2 bytes @ 0x2
	ds	2
	global	rotate_plane@i_3066
rotate_plane@i_3066:	; 2 bytes @ 0x4
	ds	2
	global	rotate_plane@i_3068
rotate_plane@i_3068:	; 2 bytes @ 0x6
	ds	2
	global	rotate_plane@i_3070
rotate_plane@i_3070:	; 2 bytes @ 0x8
	ds	2
	global	rotate_plane@i_3072
rotate_plane@i_3072:	; 2 bytes @ 0xA
	ds	2
	global	rotate_plane@i_3074
rotate_plane@i_3074:	; 2 bytes @ 0xC
	ds	2
	global	rotate_plane@i_3076
rotate_plane@i_3076:	; 2 bytes @ 0xE
	ds	2
	global	rotate_plane@i_3078
rotate_plane@i_3078:	; 2 bytes @ 0x10
	ds	2
	global	rotate_plane@i_3080
rotate_plane@i_3080:	; 2 bytes @ 0x12
	ds	2
	global	rotate_plane@i_3082
rotate_plane@i_3082:	; 2 bytes @ 0x14
	ds	2
	global	rotate_plane@i_3084
rotate_plane@i_3084:	; 2 bytes @ 0x16
	ds	2
	global	rotate_plane@i_3086
rotate_plane@i_3086:	; 2 bytes @ 0x18
	ds	2
	global	rotate_plane@i_3088
rotate_plane@i_3088:	; 2 bytes @ 0x1A
	ds	2
	global	rotate_plane@i_3090
rotate_plane@i_3090:	; 2 bytes @ 0x1C
	ds	2
	global	rotate_plane@j
rotate_plane@j:	; 2 bytes @ 0x1E
	ds	2
	global	rotate_plane@j_3065
rotate_plane@j_3065:	; 2 bytes @ 0x20
	ds	2
	global	rotate_plane@j_3067
rotate_plane@j_3067:	; 2 bytes @ 0x22
	ds	2
	global	rotate_plane@j_3069
rotate_plane@j_3069:	; 2 bytes @ 0x24
	ds	2
	global	rotate_plane@j_3071
rotate_plane@j_3071:	; 2 bytes @ 0x26
	ds	2
	global	rotate_plane@j_3073
rotate_plane@j_3073:	; 2 bytes @ 0x28
	ds	2
	global	rotate_plane@j_3075
rotate_plane@j_3075:	; 2 bytes @ 0x2A
	ds	2
	global	rotate_plane@j_3077
rotate_plane@j_3077:	; 2 bytes @ 0x2C
	ds	2
	global	rotate_plane@j_3079
rotate_plane@j_3079:	; 2 bytes @ 0x2E
	ds	2
	global	rotate_plane@j_3081
rotate_plane@j_3081:	; 2 bytes @ 0x30
	ds	2
	global	rotate_plane@j_3083
rotate_plane@j_3083:	; 2 bytes @ 0x32
	ds	2
	global	rotate_plane@j_3085
rotate_plane@j_3085:	; 2 bytes @ 0x34
	ds	2
	global	rotate_plane@j_3087
rotate_plane@j_3087:	; 2 bytes @ 0x36
	ds	2
	global	rotate_plane@j_3089
rotate_plane@j_3089:	; 2 bytes @ 0x38
	ds	2
	global	rotate_plane@j_3091
rotate_plane@j_3091:	; 2 bytes @ 0x3A
	ds	2
	global	rotate_plane@time
rotate_plane@time:	; 2 bytes @ 0x3C
	ds	2
	global	rotate_plane@rotate_pattern
rotate_plane@rotate_pattern:	; 8 bytes @ 0x3E
	ds	8
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_io_init
?_io_init:	; 0 bytes @ 0x0
	global	??_io_init
??_io_init:	; 0 bytes @ 0x0
	global	?_moving_point_in_sequence
?_moving_point_in_sequence:	; 0 bytes @ 0x0
	global	?_plane_left_to_right
?_plane_left_to_right:	; 0 bytes @ 0x0
	global	?_plane_forward_to_back
?_plane_forward_to_back:	; 0 bytes @ 0x0
	global	?_plane_bottom_to_top
?_plane_bottom_to_top:	; 0 bytes @ 0x0
	global	?_flying_character_of_a_word
?_flying_character_of_a_word:	; 0 bytes @ 0x0
	global	?_contraction_expansion_square_ri
?_contraction_expansion_square_ri:	; 0 bytes @ 0x0
	global	?_expansion_box
?_expansion_box:	; 0 bytes @ 0x0
	global	?_dice
?_dice:	; 0 bytes @ 0x0
	global	?_rotate_plane
?_rotate_plane:	; 0 bytes @ 0x0
	global	?_set_a_plane
?_set_a_plane:	; 0 bytes @ 0x0
	global	?_show_mode
?_show_mode:	; 0 bytes @ 0x0
	global	?_choose_alphabet
?_choose_alphabet:	; 0 bytes @ 0x0
	global	?_show_pattern_on_a_plane
?_show_pattern_on_a_plane:	; 0 bytes @ 0x0
	global	?_choose_dice
?_choose_dice:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_delay_using_adc
?_delay_using_adc:	; 0 bytes @ 0x0
	global	?_set_a_point
?_set_a_point:	; 0 bytes @ 0x0
	global	?_choose_mode
?_choose_mode:	; 1 bytes @ 0x0
	global	?_get_adc_value
?_get_adc_value:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	set_a_plane@plane
set_a_plane@plane:	; 1 bytes @ 0x0
	global	show_pattern_on_a_plane@plane
show_pattern_on_a_plane@plane:	; 1 bytes @ 0x0
	global	choose_alphabet@alphabet_array
choose_alphabet@alphabet_array:	; 1 bytes @ 0x0
	global	set_a_point@x
set_a_point@x:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	ds	1
	global	??_set_a_plane
??_set_a_plane:	; 0 bytes @ 0x1
	global	??_choose_alphabet
??_choose_alphabet:	; 0 bytes @ 0x1
	global	show_pattern_on_a_plane@pattern_array
show_pattern_on_a_plane@pattern_array:	; 1 bytes @ 0x1
	ds	1
	global	??_show_pattern_on_a_plane
??_show_pattern_on_a_plane:	; 0 bytes @ 0x2
	global	??_get_adc_value
??_get_adc_value:	; 0 bytes @ 0x2
	global	choose_alphabet@alphabet
choose_alphabet@alphabet:	; 1 bytes @ 0x2
	global	set_a_point@y
set_a_point@y:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	1
	global	set_a_plane@j
set_a_plane@j:	; 2 bytes @ 0x3
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	get_adc_value@local_adc_value
get_adc_value@local_adc_value:	; 2 bytes @ 0x4
	global	set_a_point@z
set_a_point@z:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	??_flying_character_of_a_word
??_flying_character_of_a_word:	; 0 bytes @ 0x5
	global	??_contraction_expansion_square_ri
??_contraction_expansion_square_ri:	; 0 bytes @ 0x5
	global	??_expansion_box
??_expansion_box:	; 0 bytes @ 0x5
	global	??_rotate_plane
??_rotate_plane:	; 0 bytes @ 0x5
	global	??_show_mode
??_show_mode:	; 0 bytes @ 0x5
	global	??_choose_dice
??_choose_dice:	; 0 bytes @ 0x5
	global	set_a_plane@j_2156
set_a_plane@j_2156:	; 2 bytes @ 0x5
	ds	1
	global	?_delay
?_delay:	; 0 bytes @ 0x6
	global	??_set_a_point
??_set_a_point:	; 0 bytes @ 0x6
	global	delay@time
delay@time:	; 4 bytes @ 0x6
	ds	1
	global	set_a_plane@j_2157
set_a_plane@j_2157:	; 2 bytes @ 0x7
	ds	1
	global	set_a_point@j
set_a_point@j:	; 2 bytes @ 0x8
	ds	1
	global	set_a_plane@j_2158
set_a_plane@j_2158:	; 2 bytes @ 0x9
	ds	1
	global	??_delay
??_delay:	; 0 bytes @ 0xA
	ds	1
	global	set_a_plane@layer
set_a_plane@layer:	; 1 bytes @ 0xB
	ds	1
	global	??_choose_mode
??_choose_mode:	; 0 bytes @ 0xC
	global	dice@i
dice@i:	; 2 bytes @ 0xC
	ds	2
	global	??_moving_point_in_sequence
??_moving_point_in_sequence:	; 0 bytes @ 0xE
	global	??_plane_left_to_right
??_plane_left_to_right:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_delay_using_adc
??_delay_using_adc:	; 0 bytes @ 0x0
	global	show_pattern_on_a_plane@adc_delay
show_pattern_on_a_plane@adc_delay:	; 2 bytes @ 0x0
	ds	2
	global	show_pattern_on_a_plane@scale
show_pattern_on_a_plane@scale:	; 1 bytes @ 0x2
	global	delay_using_adc@adc_delay
delay_using_adc@adc_delay:	; 2 bytes @ 0x2
	ds	1
	global	show_pattern_on_a_plane@j_2168
show_pattern_on_a_plane@j_2168:	; 2 bytes @ 0x3
	ds	1
	global	delay_using_adc@scale
delay_using_adc@scale:	; 1 bytes @ 0x4
	ds	1
	global	??_plane_forward_to_back
??_plane_forward_to_back:	; 0 bytes @ 0x5
	global	??_plane_bottom_to_top
??_plane_bottom_to_top:	; 0 bytes @ 0x5
	global	show_pattern_on_a_plane@j_2169
show_pattern_on_a_plane@j_2169:	; 2 bytes @ 0x5
	global	moving_point_in_sequence@i
moving_point_in_sequence@i:	; 2 bytes @ 0x5
	global	plane_left_to_right@i
plane_left_to_right@i:	; 2 bytes @ 0x5
	ds	1
	global	plane_bottom_to_top@i
plane_bottom_to_top@i:	; 2 bytes @ 0x6
	global	plane_forward_to_back@i
plane_forward_to_back@i:	; 2 bytes @ 0x6
	ds	1
	global	show_pattern_on_a_plane@j
show_pattern_on_a_plane@j:	; 2 bytes @ 0x7
	global	moving_point_in_sequence@j
moving_point_in_sequence@j:	; 2 bytes @ 0x7
	global	plane_left_to_right@i_3012
plane_left_to_right@i_3012:	; 2 bytes @ 0x7
	ds	1
	global	plane_bottom_to_top@i_3015
plane_bottom_to_top@i_3015:	; 2 bytes @ 0x8
	global	plane_forward_to_back@i_3018
plane_forward_to_back@i_3018:	; 2 bytes @ 0x8
	ds	1
	global	show_pattern_on_a_plane@j_2170
show_pattern_on_a_plane@j_2170:	; 2 bytes @ 0x9
	global	moving_point_in_sequence@k
moving_point_in_sequence@k:	; 2 bytes @ 0x9
	ds	2
	global	show_pattern_on_a_plane@layer
show_pattern_on_a_plane@layer:	; 1 bytes @ 0xB
	ds	1
	global	show_pattern_on_a_plane@i
show_pattern_on_a_plane@i:	; 2 bytes @ 0xC
	ds	2
	global	show_pattern_on_a_plane@i_2167
show_pattern_on_a_plane@i_2167:	; 2 bytes @ 0xE
	ds	2
	global	show_mode@mode
show_mode@mode:	; 1 bytes @ 0x10
	global	flying_character_of_a_word@word
flying_character_of_a_word@word:	; 1 bytes @ 0x10
	global	choose_dice@temp_switch
choose_dice@temp_switch:	; 1 bytes @ 0x10
	global	contraction_expansion_square_ri@i
contraction_expansion_square_ri@i:	; 2 bytes @ 0x10
	global	expansion_box@i
expansion_box@i:	; 2 bytes @ 0x10
	ds	1
	global	choose_dice@number
choose_dice@number:	; 1 bytes @ 0x11
	global	flying_character_of_a_word@i
flying_character_of_a_word@i:	; 2 bytes @ 0x11
	global	show_mode@mode_pattern
show_mode@mode_pattern:	; 8 bytes @ 0x11
	ds	1
	global	expansion_box@i_3052
expansion_box@i_3052:	; 2 bytes @ 0x12
	global	contraction_expansion_square_ri@square_ring_pattern
contraction_expansion_square_ri@square_ring_pattern:	; 8 bytes @ 0x12
	global	choose_dice@dice_pattern
choose_dice@dice_pattern:	; 8 bytes @ 0x12
	ds	1
	global	flying_character_of_a_word@j
flying_character_of_a_word@j:	; 2 bytes @ 0x13
	ds	1
	global	expansion_box@i_3054
expansion_box@i_3054:	; 2 bytes @ 0x14
	ds	1
	global	flying_character_of_a_word@alphabet_pattern
flying_character_of_a_word@alphabet_pattern:	; 8 bytes @ 0x15
	ds	1
	global	expansion_box@i_3056
expansion_box@i_3056:	; 2 bytes @ 0x16
	ds	2
	global	expansion_box@j
expansion_box@j:	; 2 bytes @ 0x18
	ds	1
	global	choose_mode@i
choose_mode@i:	; 2 bytes @ 0x19
	ds	1
	global	??_dice
??_dice:	; 0 bytes @ 0x1A
	global	expansion_box@j_3053
expansion_box@j_3053:	; 2 bytes @ 0x1A
	ds	1
	global	choose_mode@temp_mode
choose_mode@temp_mode:	; 1 bytes @ 0x1B
	ds	1
	global	expansion_box@j_3055
expansion_box@j_3055:	; 2 bytes @ 0x1C
	ds	2
	global	expansion_box@j_3057
expansion_box@j_3057:	; 2 bytes @ 0x1E
	ds	2
	global	expansion_box@time
expansion_box@time:	; 2 bytes @ 0x20
	ds	2
	global	expansion_box@box_pattern
expansion_box@box_pattern:	; 8 bytes @ 0x22
	ds	8
	global	??_main
??_main:	; 0 bytes @ 0x2A
	ds	1
	global	main@mode
main@mode:	; 1 bytes @ 0x2B
	ds	1
;;Data sizes: Strings 7, constant 0, data 0, bss 56, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     44      76
;; BANK1           80     70      78
;; BANK3           96      0      16
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?_get_adc_value	unsigned int  size(1) Largest target is 0
;;
;; flying_character_of_a_word@word	PTR unsigned char  size(1) Largest target is 7
;;		 -> STR_1(CODE[7]), 
;;
;; choose_alphabet@alphabet_array	PTR unsigned char  size(1) Largest target is 8
;;		 -> flying_character_of_a_word@alphabet_pattern(BANK0[8]), flying_alphabet@temp_alphabet_array(COMMON[8]), show_mode@mode_pattern(BANK0[8]), 
;;
;; show_pattern_on_a_plane@pattern_array	PTR unsigned char  size(1) Largest target is 8
;;		 -> rotate_plane@rotate_pattern(BANK1[8]), expansion_box@box_pattern(BANK0[8]), choose_dice@dice_pattern(BANK0[8]), contraction_expansion_square_ri@square_ring_pattern(BANK0[8]), 
;;		 -> flying_character_of_a_word@alphabet_pattern(BANK0[8]), flying_alphabet@temp_alphabet_array(COMMON[8]), show_mode@mode_pattern(BANK0[8]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_dice
;;   _dice->_set_a_plane
;;   _choose_mode->_set_a_plane
;;   _choose_dice->_show_pattern_on_a_plane
;;   _show_mode->_show_pattern_on_a_plane
;;   _rotate_plane->_show_pattern_on_a_plane
;;   _expansion_box->_show_pattern_on_a_plane
;;   _contraction_expansion_square_ri->_show_pattern_on_a_plane
;;   _flying_character_of_a_word->_show_pattern_on_a_plane
;;   _delay_using_adc->_delay
;;   _delay->___wmul
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_expansion_box
;;   _dice->_choose_dice
;;   _choose_mode->_show_mode
;;   _choose_dice->_show_pattern_on_a_plane
;;   _show_mode->_show_pattern_on_a_plane
;;   _rotate_plane->_show_pattern_on_a_plane
;;   _expansion_box->_show_pattern_on_a_plane
;;   _contraction_expansion_square_ri->_show_pattern_on_a_plane
;;   _flying_character_of_a_word->_show_pattern_on_a_plane
;;   _plane_bottom_to_top->_delay_using_adc
;;   _plane_forward_to_back->_delay_using_adc
;;   _plane_left_to_right->_delay_using_adc
;;   _moving_point_in_sequence->_delay_using_adc
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_rotate_plane
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0   26665
;;                                             42 BANK0      2     2      0
;;                            _io_init
;;                        _choose_mode
;;           _moving_point_in_sequence
;;                _plane_left_to_right
;;              _plane_forward_to_back
;;                _plane_bottom_to_top
;;         _flying_character_of_a_word
;;    _contraction_expansion_square_ri
;;                      _expansion_box
;;                               _dice
;;                       _rotate_plane
;; ---------------------------------------------------------------------------------
;; (1) _dice                                                 5     5      0    2231
;;                                             12 COMMON     2     2      0
;;                                             26 BANK0      3     3      0
;;                        _choose_dice
;;                        _set_a_plane
;; ---------------------------------------------------------------------------------
;; (1) _choose_mode                                          4     4      0    6497
;;                                             12 COMMON     1     1      0
;;                                             25 BANK0      3     3      0
;;                        _set_a_plane
;;                          _show_mode
;; ---------------------------------------------------------------------------------
;; (2) _choose_dice                                         14    14      0    1803
;;                                              5 COMMON     4     4      0
;;                                             16 BANK0     10    10      0
;;            _show_pattern_on_a_plane
;; ---------------------------------------------------------------------------------
;; (2) _show_mode                                           13    13      0    5978
;;                                              5 COMMON     4     4      0
;;                                             16 BANK0      9     9      0
;;                    _choose_alphabet
;;            _show_pattern_on_a_plane
;; ---------------------------------------------------------------------------------
;; (1) _rotate_plane                                        74    74      0    5210
;;                                              5 COMMON     4     4      0
;;                                              0 BANK1     70    70      0
;;            _show_pattern_on_a_plane
;; ---------------------------------------------------------------------------------
;; (1) _expansion_box                                       30    30      0    1855
;;                                              5 COMMON     4     4      0
;;                                             16 BANK0     26    26      0
;;            _show_pattern_on_a_plane
;; ---------------------------------------------------------------------------------
;; (1) _contraction_expansion_square_ri                     14    14      0    2230
;;                                              5 COMMON     4     4      0
;;                                             16 BANK0     10    10      0
;;            _show_pattern_on_a_plane
;; ---------------------------------------------------------------------------------
;; (1) _flying_character_of_a_word                          17    17      0    5850
;;                                              5 COMMON     4     4      0
;;                                             16 BANK0     13    13      0
;;                    _choose_alphabet
;;            _show_pattern_on_a_plane
;; ---------------------------------------------------------------------------------
;; (1) _plane_bottom_to_top                                  5     5      0     726
;;                                              5 BANK0      5     5      0
;;                        _set_a_plane
;;                    _delay_using_adc
;; ---------------------------------------------------------------------------------
;; (1) _plane_forward_to_back                                5     5      0     726
;;                                              5 BANK0      5     5      0
;;                        _set_a_plane
;;                    _delay_using_adc
;; ---------------------------------------------------------------------------------
;; (1) _plane_left_to_right                                  4     4      0     726
;;                                              5 BANK0      4     4      0
;;                        _set_a_plane
;;                    _delay_using_adc
;; ---------------------------------------------------------------------------------
;; (1) _moving_point_in_sequence                             6     6      0     590
;;                                              5 BANK0      6     6      0
;;                        _set_a_point
;;                    _delay_using_adc
;; ---------------------------------------------------------------------------------
;; (2) _set_a_point                                         10     4      6     134
;;                                              0 COMMON    10     4      6
;; ---------------------------------------------------------------------------------
;; (2) _show_pattern_on_a_plane                             21    19      2     630
;;                                              0 COMMON     5     3      2
;;                                              0 BANK0     16    16      0
;; ---------------------------------------------------------------------------------
;; (2) _set_a_plane                                         12    11      1     338
;;                                              0 COMMON    12    11      1
;; ---------------------------------------------------------------------------------
;; (2) _delay_using_adc                                      5     5      0     252
;;                                              0 BANK0      5     5      0
;;                      _get_adc_value
;;                             ___wmul
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (3) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) _choose_alphabet                                      3     2      1    4598
;;                                              0 COMMON     3     2      1
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                8     4      4      22
;;                                              6 COMMON     8     4      4
;;                             ___wmul (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _get_adc_value                                        6     4      2      70
;;                                              0 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; (1) _io_init                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _io_init
;;   _choose_mode
;;     _set_a_plane
;;     _show_mode
;;       _choose_alphabet
;;       _show_pattern_on_a_plane
;;   _moving_point_in_sequence
;;     _set_a_point
;;     _delay_using_adc
;;       _get_adc_value
;;       ___wmul
;;       _delay
;;         ___wmul (ARG)
;;   _plane_left_to_right
;;     _set_a_plane
;;     _delay_using_adc
;;       _get_adc_value
;;       ___wmul
;;       _delay
;;         ___wmul (ARG)
;;   _plane_forward_to_back
;;     _set_a_plane
;;     _delay_using_adc
;;       _get_adc_value
;;       ___wmul
;;       _delay
;;         ___wmul (ARG)
;;   _plane_bottom_to_top
;;     _set_a_plane
;;     _delay_using_adc
;;       _get_adc_value
;;       ___wmul
;;       _delay
;;         ___wmul (ARG)
;;   _flying_character_of_a_word
;;     _choose_alphabet
;;     _show_pattern_on_a_plane
;;   _contraction_expansion_square_ri
;;     _show_pattern_on_a_plane
;;   _expansion_box
;;     _show_pattern_on_a_plane
;;   _dice
;;     _choose_dice
;;       _show_pattern_on_a_plane
;;     _set_a_plane
;;   _rotate_plane
;;     _show_pattern_on_a_plane
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      B8       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     2C      4C       5       95.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     46      4E       7       97.5%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0      10       9       16.7%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      BB      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 20 in file "C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\LED Cube.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  mode            1   43[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_io_init
;;		_choose_mode
;;		_moving_point_in_sequence
;;		_plane_left_to_right
;;		_plane_forward_to_back
;;		_plane_bottom_to_top
;;		_flying_character_of_a_word
;;		_contraction_expansion_square_ri
;;		_expansion_box
;;		_dice
;;		_rotate_plane
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\LED Cube.c"
	line	20
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	21
	
l6950:	
;LED Cube.c: 21: char mode = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@mode)
	line	22
	
l6952:	
;LED Cube.c: 22: io_init();
	fcall	_io_init
	line	23
	
l6954:	
;LED Cube.c: 23: mode = choose_mode();
	fcall	_choose_mode
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@mode)
	goto	l6972
	line	24
;LED Cube.c: 24: while(1)
	
l717:	
	line	26
;LED Cube.c: 25: {
;LED Cube.c: 26: switch(mode)
	goto	l6972
	line	28
;LED Cube.c: 27: {
;LED Cube.c: 28: case 1: moving_point_in_sequence();
	
l719:	
	
l6956:	
	fcall	_moving_point_in_sequence
	line	29
;LED Cube.c: 29: break;
	goto	l6972
	line	31
;LED Cube.c: 31: case 2: plane_left_to_right();
	
l721:	
	
l6958:	
	fcall	_plane_left_to_right
	line	32
;LED Cube.c: 32: plane_forward_to_back();
	fcall	_plane_forward_to_back
	line	33
;LED Cube.c: 33: plane_bottom_to_top();
	fcall	_plane_bottom_to_top
	line	34
;LED Cube.c: 34: break;
	goto	l6972
	line	36
;LED Cube.c: 36: case 3: flying_character_of_a_word("CYTRON");
	
l722:	
	
l6960:	
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_flying_character_of_a_word
	line	37
;LED Cube.c: 37: break;
	goto	l6972
	line	39
;LED Cube.c: 39: case 4: contraction_expansion_square_ri();
	
l723:	
	
l6962:	
	fcall	_contraction_expansion_square_ri
	line	40
;LED Cube.c: 40: break;
	goto	l6972
	line	42
;LED Cube.c: 42: case 5: expansion_box();
	
l724:	
	
l6964:	
	fcall	_expansion_box
	line	43
;LED Cube.c: 43: break;
	goto	l6972
	line	45
;LED Cube.c: 45: case 6: dice();
	
l725:	
	
l6966:	
	fcall	_dice
	line	46
;LED Cube.c: 46: break;
	goto	l6972
	line	48
;LED Cube.c: 48: case 7: rotate_plane();
	
l726:	
	
l6968:	
	fcall	_rotate_plane
	line	49
;LED Cube.c: 49: break;
	goto	l6972
	line	51
;LED Cube.c: 51: default: break;
	
l727:	
	goto	l6972
	line	52
	
l6970:	
;LED Cube.c: 52: }
	goto	l6972
	line	26
	
l718:	
	
l6972:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@mode),w
	; Switch size 1, requested type "space"
; Number of cases is 7, Range of values is 1 to 7
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           22    12 (average)
; direct_byte           32    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l6956
	xorlw	2^1	; case 2
	skipnz
	goto	l6958
	xorlw	3^2	; case 3
	skipnz
	goto	l6960
	xorlw	4^3	; case 4
	skipnz
	goto	l6962
	xorlw	5^4	; case 5
	skipnz
	goto	l6964
	xorlw	6^5	; case 6
	skipnz
	goto	l6966
	xorlw	7^6	; case 7
	skipnz
	goto	l6968
	goto	l6972
	opt asmopt_on

	line	52
	
l720:	
	goto	l6972
	line	53
	
l728:	
	line	24
	goto	l6972
	
l729:	
	line	54
	
l730:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_dice
psect	text541,local,class=CODE,delta=2
global __ptext541
__ptext541:

;; *************** function _dice *****************
;; Defined at:
;;		line 477 in file "C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Effect.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   12[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         2       3       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_choose_dice
;;		_set_a_plane
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text541
	file	"C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Effect.c"
	line	477
	global	__size_of_dice
	__size_of_dice	equ	__end_of_dice-_dice
	
_dice:	
	opt	stack 5
; Regs used in _dice: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	478
	
l6932:	
;Effect.c: 478: for(int i = 1; i < 7; i++)
	movlw	low(01h)
	movwf	(dice@i)
	movlw	high(01h)
	movwf	((dice@i))+1
	
l6934:	
	movf	(dice@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5245
	movlw	low(07h)
	subwf	(dice@i),w
u5245:

	skipc
	goto	u5241
	goto	u5240
u5241:
	goto	l2303
u5240:
	goto	l2309
	
l6936:	
	goto	l2309
	line	479
	
l2303:	
	line	480
;Effect.c: 479: {
;Effect.c: 480: if(RB0 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u5251
	goto	u5250
u5251:
	goto	l6942
u5250:
	goto	l2306
	line	482
	
l6938:	
;Effect.c: 481: {
;Effect.c: 482: while(RB0 == 0);
	goto	l2306
	
l2307:	
	
l2306:	
	btfss	(48/8),(48)&7
	goto	u5261
	goto	u5260
u5261:
	goto	l2306
u5260:
	goto	l6940
	
l2308:	
	line	483
	
l6940:	
;Effect.c: 483: choose_dice(i);
	movf	(dice@i),w
	fcall	_choose_dice
	goto	l6942
	line	484
	
l2305:	
	line	485
	
l6942:	
;Effect.c: 484: }
;Effect.c: 485: set_a_plane(i,3);
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_dice+0)+0
	movf	(??_dice+0)+0,w
	movwf	(?_set_a_plane)
	movf	(dice@i),w
	fcall	_set_a_plane
	line	486
	
l6944:	
;Effect.c: 486: _delay((unsigned long)((40)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_dice+0)+0+2),f
movlw	4
movwf	((??_dice+0)+0+1),f
	movlw	186
movwf	((??_dice+0)+0),f
u5287:
	decfsz	((??_dice+0)+0),f
	goto	u5287
	decfsz	((??_dice+0)+0+1),f
	goto	u5287
	decfsz	((??_dice+0)+0+2),f
	goto	u5287
	clrwdt
opt asmopt_on

	line	478
	
l6946:	
	movlw	low(01h)
	addwf	(dice@i),f
	skipnc
	incf	(dice@i+1),f
	movlw	high(01h)
	addwf	(dice@i+1),f
	
l6948:	
	movf	(dice@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5275
	movlw	low(07h)
	subwf	(dice@i),w
u5275:

	skipc
	goto	u5271
	goto	u5270
u5271:
	goto	l2303
u5270:
	goto	l2309
	
l2304:	
	line	488
	
l2309:	
	return
	opt stack 0
GLOBAL	__end_of_dice
	__end_of_dice:
;; =============== function _dice ends ============

	signat	_dice,88
	global	_choose_mode
psect	text542,local,class=CODE,delta=2
global __ptext542
__ptext542:

;; *************** function _choose_mode *****************
;; Defined at:
;;		line 119 in file "C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\LED Cube.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   25[BANK0 ] int 
;;  temp_mode       1   27[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_set_a_plane
;;		_show_mode
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text542
	file	"C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\LED Cube.c"
	line	119
	global	__size_of_choose_mode
	__size_of_choose_mode	equ	__end_of_choose_mode-_choose_mode
	
_choose_mode:	
	opt	stack 5
; Regs used in _choose_mode: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	120
	
l6898:	
;LED Cube.c: 120: char temp_mode = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(choose_mode@temp_mode)
	line	121
;LED Cube.c: 121: while(temp_mode == 0)
	goto	l6926
	
l753:	
	line	123
;LED Cube.c: 122: {
;LED Cube.c: 123: while(RB1 == 1)
	goto	l6924
	
l755:	
	line	125
	
l6900:	
;LED Cube.c: 124: {
;LED Cube.c: 125: if(temp_mode == 0)
	movf	(choose_mode@temp_mode),f
	skipz
	goto	u5151
	goto	u5150
u5151:
	goto	l756
u5150:
	line	127
	
l6902:	
;LED Cube.c: 126: {
;LED Cube.c: 127: for(int i = 0; i<8; i ++)
	clrf	(choose_mode@i)
	clrf	(choose_mode@i+1)
	
l6904:	
	movf	(choose_mode@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5165
	movlw	low(08h)
	subwf	(choose_mode@i),w
u5165:

	skipc
	goto	u5161
	goto	u5160
u5161:
	goto	l6908
u5160:
	goto	l756
	
l6906:	
	goto	l756
	line	128
	
l757:	
	line	129
	
l6908:	
;LED Cube.c: 128: {
;LED Cube.c: 129: set_a_plane(i,3);
	movlw	(03h)
	movwf	(??_choose_mode+0)+0
	movf	(??_choose_mode+0)+0,w
	movwf	(?_set_a_plane)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(choose_mode@i),w
	fcall	_set_a_plane
	line	127
	
l6910:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(choose_mode@i),f
	skipnc
	incf	(choose_mode@i+1),f
	movlw	high(01h)
	addwf	(choose_mode@i+1),f
	
l6912:	
	movf	(choose_mode@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5175
	movlw	low(08h)
	subwf	(choose_mode@i),w
u5175:

	skipc
	goto	u5171
	goto	u5170
u5171:
	goto	l6908
u5170:
	goto	l756
	
l758:	
	line	131
	
l756:	
	line	133
;LED Cube.c: 130: }
;LED Cube.c: 131: }
;LED Cube.c: 133: if(RB0 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u5181
	goto	u5180
u5181:
	goto	l6924
u5180:
	goto	l760
	line	135
	
l6914:	
;LED Cube.c: 134: {
;LED Cube.c: 135: while(RB0 == 0) continue;
	goto	l760
	
l761:	
	
l760:	
	btfss	(48/8),(48)&7
	goto	u5191
	goto	u5190
u5191:
	goto	l760
u5190:
	goto	l6916
	
l762:	
	line	137
	
l6916:	
;LED Cube.c: 137: if (temp_mode<7)
	movlw	(07h)
	subwf	(choose_mode@temp_mode),w
	skipnc
	goto	u5201
	goto	u5200
u5201:
	goto	l6920
u5200:
	line	139
	
l6918:	
;LED Cube.c: 138: {
;LED Cube.c: 139: temp_mode++;
	movlw	(01h)
	movwf	(??_choose_mode+0)+0
	movf	(??_choose_mode+0)+0,w
	addwf	(choose_mode@temp_mode),f
	line	140
;LED Cube.c: 140: }
	goto	l6922
	line	142
	
l763:	
	line	144
	
l6920:	
;LED Cube.c: 142: else
;LED Cube.c: 143: {
;LED Cube.c: 144: temp_mode = 1;
	clrf	(choose_mode@temp_mode)
	bsf	status,0
	rlf	(choose_mode@temp_mode),f
	goto	l6922
	line	145
	
l764:	
	line	146
	
l6922:	
;LED Cube.c: 145: }
;LED Cube.c: 146: show_mode(temp_mode);
	movf	(choose_mode@temp_mode),w
	fcall	_show_mode
	goto	l6924
	line	147
	
l759:	
	goto	l6924
	line	148
	
l754:	
	line	123
	
l6924:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u5211
	goto	u5210
u5211:
	goto	l6900
u5210:
	goto	l766
	
l765:	
	line	149
;LED Cube.c: 147: }
;LED Cube.c: 148: }
;LED Cube.c: 149: while(RB1 == 0) continue;
	goto	l766
	
l767:	
	
l766:	
	btfss	(49/8),(49)&7
	goto	u5221
	goto	u5220
u5221:
	goto	l766
u5220:
	goto	l6926
	
l768:	
	goto	l6926
	line	150
	
l752:	
	line	121
	
l6926:	
	movf	(choose_mode@temp_mode),w
	skipz
	goto	u5230
	goto	l6924
u5230:
	goto	l6928
	
l769:	
	line	151
	
l6928:	
;LED Cube.c: 150: }
;LED Cube.c: 151: return temp_mode;
	movf	(choose_mode@temp_mode),w
	goto	l770
	
l6930:	
	line	152
	
l770:	
	return
	opt stack 0
GLOBAL	__end_of_choose_mode
	__end_of_choose_mode:
;; =============== function _choose_mode ends ============

	signat	_choose_mode,89
	global	_choose_dice
psect	text543,local,class=CODE,delta=2
global __ptext543
__ptext543:

;; *************** function _choose_dice *****************
;; Defined at:
;;		line 491 in file "C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Effect.c"
;; Parameters:    Size  Location     Type
;;  number          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  number          1   17[BANK0 ] unsigned char 
;;  dice_pattern    8   18[BANK0 ] unsigned char [8]
;;  temp_switch     1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      10       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      10       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_show_pattern_on_a_plane
;; This function is called by:
;;		_dice
;; This function uses a non-reentrant model
;;
psect	text543
	file	"C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Effect.c"
	line	491
	global	__size_of_choose_dice
	__size_of_choose_dice	equ	__end_of_choose_dice-_choose_dice
	
_choose_dice:	
	opt	stack 5
; Regs used in _choose_dice: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;choose_dice@number stored from wreg
	line	492
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(choose_dice@number)
	
l6866:	
;Effect.c: 492: unsigned char dice_pattern[8] = {{0}};
	movlw	(choose_dice@dice_pattern)&0ffh
	movwf	fsr0
	movlw	low(choose_dice@F1183)
	movwf	(??_choose_dice+0)+0
	movf	fsr0,w
	movwf	((??_choose_dice+0)+0+1)
	movlw	8
	movwf	((??_choose_dice+0)+0+2)
u5120:
	movf	(??_choose_dice+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	
	movf	indf,w
	movwf	((??_choose_dice+0)+0+3)
	incf	(??_choose_dice+0)+0,f
	movf	((??_choose_dice+0)+0+1),w
	movwf	fsr0
	
	movf	((??_choose_dice+0)+0+3),w
	movwf	indf
	incf	((??_choose_dice+0)+0+1),f
	decfsz	((??_choose_dice+0)+0+2),f
	goto	u5120
	line	493
	
l6868:	
;Effect.c: 493: unsigned char temp_switch = 0;
	clrf	(choose_dice@temp_switch)
	line	494
;Effect.c: 494: switch(number)
	goto	l6896
	line	496
;Effect.c: 495: {
;Effect.c: 496: case 1: dice_pattern[0] = 0xff;
	
l2315:	
	
l6870:	
	movlw	(0FFh)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	(choose_dice@dice_pattern)
	line	497
;Effect.c: 497: dice_pattern[1] = 0x81;
	movlw	(081h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+01h
	line	498
;Effect.c: 498: dice_pattern[2] = 0x81;
	movlw	(081h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+02h
	line	499
;Effect.c: 499: dice_pattern[3] = 0x99;
	movlw	(099h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+03h
	line	500
;Effect.c: 500: dice_pattern[4] = 0x99;
	movlw	(099h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+04h
	line	501
;Effect.c: 501: dice_pattern[5] = 0x81;
	movlw	(081h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+05h
	line	502
;Effect.c: 502: dice_pattern[6] = 0x81;
	movlw	(081h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+06h
	line	503
;Effect.c: 503: dice_pattern[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+07h
	line	504
	
l6872:	
;Effect.c: 504: show_pattern_on_a_plane(7,3,dice_pattern);
	movlw	(03h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(choose_dice@dice_pattern)&0ffh
	movwf	(??_choose_dice+1)+0
	movf	(??_choose_dice+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	movlw	(07h)
	fcall	_show_pattern_on_a_plane
	line	505
;Effect.c: 505: break;
	goto	l2322
	line	507
;Effect.c: 507: case 2: dice_pattern[0] = 0xff;
	
l2317:	
	
l6874:	
	movlw	(0FFh)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(choose_dice@dice_pattern)
	line	508
;Effect.c: 508: dice_pattern[1] = 0x81;
	movlw	(081h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+01h
	line	509
;Effect.c: 509: dice_pattern[2] = 0x81;
	movlw	(081h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+02h
	line	510
;Effect.c: 510: dice_pattern[3] = 0xe7;
	movlw	(0E7h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+03h
	line	511
;Effect.c: 511: dice_pattern[4] = 0xe7;
	movlw	(0E7h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+04h
	line	512
;Effect.c: 512: dice_pattern[5] = 0x81;
	movlw	(081h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+05h
	line	513
;Effect.c: 513: dice_pattern[6] = 0x81;
	movlw	(081h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+06h
	line	514
;Effect.c: 514: dice_pattern[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+07h
	line	515
	
l6876:	
;Effect.c: 515: show_pattern_on_a_plane(7,3,dice_pattern);
	movlw	(03h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(choose_dice@dice_pattern)&0ffh
	movwf	(??_choose_dice+1)+0
	movf	(??_choose_dice+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	movlw	(07h)
	fcall	_show_pattern_on_a_plane
	line	516
;Effect.c: 516: break;
	goto	l2322
	line	518
;Effect.c: 518: case 3: dice_pattern[0] = 0xff;
	
l2318:	
	
l6878:	
	movlw	(0FFh)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(choose_dice@dice_pattern)
	line	519
;Effect.c: 519: dice_pattern[1] = 0x87;
	movlw	(087h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+01h
	line	520
;Effect.c: 520: dice_pattern[2] = 0x87;
	movlw	(087h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+02h
	line	521
;Effect.c: 521: dice_pattern[3] = 0x99;
	movlw	(099h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+03h
	line	522
;Effect.c: 522: dice_pattern[4] = 0x99;
	movlw	(099h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+04h
	line	523
;Effect.c: 523: dice_pattern[5] = 0xe1;
	movlw	(0E1h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+05h
	line	524
;Effect.c: 524: dice_pattern[6] = 0xe1;
	movlw	(0E1h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+06h
	line	525
;Effect.c: 525: dice_pattern[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+07h
	line	526
	
l6880:	
;Effect.c: 526: show_pattern_on_a_plane(7,3,dice_pattern);
	movlw	(03h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(choose_dice@dice_pattern)&0ffh
	movwf	(??_choose_dice+1)+0
	movf	(??_choose_dice+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	movlw	(07h)
	fcall	_show_pattern_on_a_plane
	line	527
;Effect.c: 527: break;
	goto	l2322
	line	529
;Effect.c: 529: case 4: dice_pattern[0] = 0xff;
	
l2319:	
	
l6882:	
	movlw	(0FFh)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(choose_dice@dice_pattern)
	line	530
;Effect.c: 530: dice_pattern[1] = 0xe7;
	movlw	(0E7h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+01h
	line	531
;Effect.c: 531: dice_pattern[2] = 0xe7;
	movlw	(0E7h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+02h
	line	532
;Effect.c: 532: dice_pattern[3] = 0x81;
	movlw	(081h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+03h
	line	533
;Effect.c: 533: dice_pattern[4] = 0x81;
	movlw	(081h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+04h
	line	534
;Effect.c: 534: dice_pattern[5] = 0xe7;
	movlw	(0E7h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+05h
	line	535
;Effect.c: 535: dice_pattern[6] = 0xe7;
	movlw	(0E7h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+06h
	line	536
;Effect.c: 536: dice_pattern[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+07h
	line	537
	
l6884:	
;Effect.c: 537: show_pattern_on_a_plane(7,3,dice_pattern);
	movlw	(03h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(choose_dice@dice_pattern)&0ffh
	movwf	(??_choose_dice+1)+0
	movf	(??_choose_dice+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	movlw	(07h)
	fcall	_show_pattern_on_a_plane
	line	538
;Effect.c: 538: break;
	goto	l2322
	line	540
;Effect.c: 540: case 5: dice_pattern[0] = 0xff;
	
l2320:	
	
l6886:	
	movlw	(0FFh)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(choose_dice@dice_pattern)
	line	541
;Effect.c: 541: dice_pattern[1] = 0xe7;
	movlw	(0E7h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+01h
	line	542
;Effect.c: 542: dice_pattern[2] = 0xe7;
	movlw	(0E7h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+02h
	line	543
;Effect.c: 543: dice_pattern[3] = 0x99;
	movlw	(099h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+03h
	line	544
;Effect.c: 544: dice_pattern[4] = 0x99;
	movlw	(099h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+04h
	line	545
;Effect.c: 545: dice_pattern[5] = 0xe7;
	movlw	(0E7h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+05h
	line	546
;Effect.c: 546: dice_pattern[6] = 0xe7;
	movlw	(0E7h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+06h
	line	547
;Effect.c: 547: dice_pattern[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+07h
	line	548
	
l6888:	
;Effect.c: 548: show_pattern_on_a_plane(7,3,dice_pattern);
	movlw	(03h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(choose_dice@dice_pattern)&0ffh
	movwf	(??_choose_dice+1)+0
	movf	(??_choose_dice+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	movlw	(07h)
	fcall	_show_pattern_on_a_plane
	line	549
;Effect.c: 549: break;
	goto	l2322
	line	551
;Effect.c: 551: case 6: dice_pattern[0] = 0xff;
	
l2321:	
	
l6890:	
	movlw	(0FFh)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(choose_dice@dice_pattern)
	line	552
;Effect.c: 552: dice_pattern[1] = 0xe7;
	movlw	(0E7h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+01h
	line	553
;Effect.c: 553: dice_pattern[2] = 0xe7;
	movlw	(0E7h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+02h
	line	554
;Effect.c: 554: dice_pattern[3] = 0xe7;
	movlw	(0E7h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+03h
	line	555
;Effect.c: 555: dice_pattern[4] = 0xe7;
	movlw	(0E7h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+04h
	line	556
;Effect.c: 556: dice_pattern[5] = 0xe7;
	movlw	(0E7h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+05h
	line	557
;Effect.c: 557: dice_pattern[6] = 0xe7;
	movlw	(0E7h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+06h
	line	558
;Effect.c: 558: dice_pattern[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	0+(choose_dice@dice_pattern)+07h
	line	559
	
l6892:	
;Effect.c: 559: show_pattern_on_a_plane(7,3,dice_pattern);
	movlw	(03h)
	movwf	(??_choose_dice+0)+0
	movf	(??_choose_dice+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(choose_dice@dice_pattern)&0ffh
	movwf	(??_choose_dice+1)+0
	movf	(??_choose_dice+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	movlw	(07h)
	fcall	_show_pattern_on_a_plane
	line	560
;Effect.c: 560: break;
	goto	l2322
	line	561
	
l6894:	
;Effect.c: 561: }
	goto	l2322
	line	494
	
l2314:	
	
l6896:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(choose_dice@number),w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 1 to 6
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
; direct_byte           29    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l6870
	xorlw	2^1	; case 2
	skipnz
	goto	l6874
	xorlw	3^2	; case 3
	skipnz
	goto	l6878
	xorlw	4^3	; case 4
	skipnz
	goto	l6882
	xorlw	5^4	; case 5
	skipnz
	goto	l6886
	xorlw	6^5	; case 6
	skipnz
	goto	l6890
	goto	l2322
	opt asmopt_on

	line	561
	
l2316:	
	line	562
;Effect.c: 562: while(RB0 == 1);
	goto	l2322
	
l2323:	
	
l2322:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u5131
	goto	u5130
u5131:
	goto	l2322
u5130:
	goto	l2325
	
l2324:	
	line	563
;Effect.c: 563: while(RB0 == 0);
	goto	l2325
	
l2326:	
	
l2325:	
	btfss	(48/8),(48)&7
	goto	u5141
	goto	u5140
u5141:
	goto	l2325
u5140:
	goto	l2328
	
l2327:	
	line	564
	
l2328:	
	return
	opt stack 0
GLOBAL	__end_of_choose_dice
	__end_of_choose_dice:
;; =============== function _choose_dice ends ============

	signat	_choose_dice,4216
	global	_show_mode
psect	text544,local,class=CODE,delta=2
global __ptext544
__ptext544:

;; *************** function _show_mode *****************
;; Defined at:
;;		line 156 in file "C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\LED Cube.c"
;; Parameters:    Size  Location     Type
;;  mode            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  mode            1   16[BANK0 ] unsigned char 
;;  mode_pattern    8   17[BANK0 ] unsigned char [8]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       9       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_choose_alphabet
;;		_show_pattern_on_a_plane
;; This function is called by:
;;		_choose_mode
;; This function uses a non-reentrant model
;;
psect	text544
	file	"C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\LED Cube.c"
	line	156
	global	__size_of_show_mode
	__size_of_show_mode	equ	__end_of_show_mode-_show_mode
	
_show_mode:	
	opt	stack 5
; Regs used in _show_mode: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;show_mode@mode stored from wreg
	line	157
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(show_mode@mode)
	
l6832:	
;LED Cube.c: 157: unsigned char mode_pattern[8] = {{0}};
	movlw	(show_mode@mode_pattern)&0ffh
	movwf	fsr0
	movlw	low(show_mode@F1153)
	movwf	(??_show_mode+0)+0
	movf	fsr0,w
	movwf	((??_show_mode+0)+0+1)
	movlw	8
	movwf	((??_show_mode+0)+0+2)
u5110:
	movf	(??_show_mode+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_show_mode+0)+0+3)
	incf	(??_show_mode+0)+0,f
	movf	((??_show_mode+0)+0+1),w
	movwf	fsr0
	
	movf	((??_show_mode+0)+0+3),w
	movwf	indf
	incf	((??_show_mode+0)+0+1),f
	decfsz	((??_show_mode+0)+0+2),f
	goto	u5110
	line	158
;LED Cube.c: 158: switch(mode)
	goto	l6864
	line	160
;LED Cube.c: 159: {
;LED Cube.c: 160: case 1: choose_alphabet('A',mode_pattern);
	
l776:	
	
l6834:	
	movlw	(show_mode@mode_pattern)&0ffh
	movwf	(??_show_mode+0)+0
	movf	(??_show_mode+0)+0,w
	movwf	(?_choose_alphabet)
	movlw	(041h)
	fcall	_choose_alphabet
	line	161
	
l6836:	
;LED Cube.c: 161: show_pattern_on_a_plane(7,3,mode_pattern);
	movlw	(03h)
	movwf	(??_show_mode+0)+0
	movf	(??_show_mode+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(show_mode@mode_pattern)&0ffh
	movwf	(??_show_mode+1)+0
	movf	(??_show_mode+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	movlw	(07h)
	fcall	_show_pattern_on_a_plane
	line	162
;LED Cube.c: 162: break;
	goto	l785
	line	164
;LED Cube.c: 164: case 2: choose_alphabet('B',mode_pattern);
	
l778:	
	
l6838:	
	movlw	(show_mode@mode_pattern)&0ffh
	movwf	(??_show_mode+0)+0
	movf	(??_show_mode+0)+0,w
	movwf	(?_choose_alphabet)
	movlw	(042h)
	fcall	_choose_alphabet
	line	165
	
l6840:	
;LED Cube.c: 165: show_pattern_on_a_plane(7,3,mode_pattern);
	movlw	(03h)
	movwf	(??_show_mode+0)+0
	movf	(??_show_mode+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(show_mode@mode_pattern)&0ffh
	movwf	(??_show_mode+1)+0
	movf	(??_show_mode+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	movlw	(07h)
	fcall	_show_pattern_on_a_plane
	line	166
;LED Cube.c: 166: break;
	goto	l785
	line	168
;LED Cube.c: 168: case 3: choose_alphabet('C',mode_pattern);
	
l779:	
	
l6842:	
	movlw	(show_mode@mode_pattern)&0ffh
	movwf	(??_show_mode+0)+0
	movf	(??_show_mode+0)+0,w
	movwf	(?_choose_alphabet)
	movlw	(043h)
	fcall	_choose_alphabet
	line	169
	
l6844:	
;LED Cube.c: 169: show_pattern_on_a_plane(7,3,mode_pattern);
	movlw	(03h)
	movwf	(??_show_mode+0)+0
	movf	(??_show_mode+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(show_mode@mode_pattern)&0ffh
	movwf	(??_show_mode+1)+0
	movf	(??_show_mode+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	movlw	(07h)
	fcall	_show_pattern_on_a_plane
	line	170
;LED Cube.c: 170: break;
	goto	l785
	line	172
;LED Cube.c: 172: case 4: choose_alphabet('D',mode_pattern);
	
l780:	
	
l6846:	
	movlw	(show_mode@mode_pattern)&0ffh
	movwf	(??_show_mode+0)+0
	movf	(??_show_mode+0)+0,w
	movwf	(?_choose_alphabet)
	movlw	(044h)
	fcall	_choose_alphabet
	line	173
	
l6848:	
;LED Cube.c: 173: show_pattern_on_a_plane(7,3,mode_pattern);
	movlw	(03h)
	movwf	(??_show_mode+0)+0
	movf	(??_show_mode+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(show_mode@mode_pattern)&0ffh
	movwf	(??_show_mode+1)+0
	movf	(??_show_mode+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	movlw	(07h)
	fcall	_show_pattern_on_a_plane
	line	174
;LED Cube.c: 174: break;
	goto	l785
	line	176
;LED Cube.c: 176: case 5: choose_alphabet('E',mode_pattern);
	
l781:	
	
l6850:	
	movlw	(show_mode@mode_pattern)&0ffh
	movwf	(??_show_mode+0)+0
	movf	(??_show_mode+0)+0,w
	movwf	(?_choose_alphabet)
	movlw	(045h)
	fcall	_choose_alphabet
	line	177
	
l6852:	
;LED Cube.c: 177: show_pattern_on_a_plane(7,3,mode_pattern);
	movlw	(03h)
	movwf	(??_show_mode+0)+0
	movf	(??_show_mode+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(show_mode@mode_pattern)&0ffh
	movwf	(??_show_mode+1)+0
	movf	(??_show_mode+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	movlw	(07h)
	fcall	_show_pattern_on_a_plane
	line	178
;LED Cube.c: 178: break;
	goto	l785
	line	180
;LED Cube.c: 180: case 6: choose_alphabet('F',mode_pattern);
	
l782:	
	
l6854:	
	movlw	(show_mode@mode_pattern)&0ffh
	movwf	(??_show_mode+0)+0
	movf	(??_show_mode+0)+0,w
	movwf	(?_choose_alphabet)
	movlw	(046h)
	fcall	_choose_alphabet
	line	181
	
l6856:	
;LED Cube.c: 181: show_pattern_on_a_plane(7,3,mode_pattern);
	movlw	(03h)
	movwf	(??_show_mode+0)+0
	movf	(??_show_mode+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(show_mode@mode_pattern)&0ffh
	movwf	(??_show_mode+1)+0
	movf	(??_show_mode+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	movlw	(07h)
	fcall	_show_pattern_on_a_plane
	line	182
;LED Cube.c: 182: break;
	goto	l785
	line	184
;LED Cube.c: 184: case 7: choose_alphabet('G',mode_pattern);
	
l783:	
	
l6858:	
	movlw	(show_mode@mode_pattern)&0ffh
	movwf	(??_show_mode+0)+0
	movf	(??_show_mode+0)+0,w
	movwf	(?_choose_alphabet)
	movlw	(047h)
	fcall	_choose_alphabet
	line	185
	
l6860:	
;LED Cube.c: 185: show_pattern_on_a_plane(7,3,mode_pattern);
	movlw	(03h)
	movwf	(??_show_mode+0)+0
	movf	(??_show_mode+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(show_mode@mode_pattern)&0ffh
	movwf	(??_show_mode+1)+0
	movf	(??_show_mode+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	movlw	(07h)
	fcall	_show_pattern_on_a_plane
	line	186
;LED Cube.c: 186: break;
	goto	l785
	line	188
;LED Cube.c: 188: default: break;
	
l784:	
	goto	l785
	line	189
	
l6862:	
;LED Cube.c: 189: }
	goto	l785
	line	158
	
l775:	
	
l6864:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(show_mode@mode),w
	; Switch size 1, requested type "space"
; Number of cases is 7, Range of values is 1 to 7
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           22    12 (average)
; direct_byte           32    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l6834
	xorlw	2^1	; case 2
	skipnz
	goto	l6838
	xorlw	3^2	; case 3
	skipnz
	goto	l6842
	xorlw	4^3	; case 4
	skipnz
	goto	l6846
	xorlw	5^4	; case 5
	skipnz
	goto	l6850
	xorlw	6^5	; case 6
	skipnz
	goto	l6854
	xorlw	7^6	; case 7
	skipnz
	goto	l6858
	goto	l785
	opt asmopt_on

	line	189
	
l777:	
	line	190
	
l785:	
	return
	opt stack 0
GLOBAL	__end_of_show_mode
	__end_of_show_mode:
;; =============== function _show_mode ends ============

	signat	_show_mode,4216
	global	_rotate_plane
psect	text545,local,class=CODE,delta=2
global __ptext545
__ptext545:

;; *************** function _rotate_plane *****************
;; Defined at:
;;		line 644 in file "C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Effect.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               2   58[BANK1 ] int 
;;  j               2   56[BANK1 ] int 
;;  j               2   54[BANK1 ] int 
;;  j               2   52[BANK1 ] int 
;;  j               2   50[BANK1 ] int 
;;  j               2   48[BANK1 ] int 
;;  j               2   46[BANK1 ] int 
;;  j               2   44[BANK1 ] int 
;;  j               2   42[BANK1 ] int 
;;  j               2   40[BANK1 ] int 
;;  j               2   38[BANK1 ] int 
;;  j               2   36[BANK1 ] int 
;;  j               2   34[BANK1 ] int 
;;  j               2   32[BANK1 ] int 
;;  j               2   30[BANK1 ] int 
;;  i               2   28[BANK1 ] int 
;;  i               2   26[BANK1 ] int 
;;  i               2   24[BANK1 ] int 
;;  i               2   22[BANK1 ] int 
;;  i               2   20[BANK1 ] int 
;;  i               2   18[BANK1 ] int 
;;  i               2   16[BANK1 ] int 
;;  i               2   14[BANK1 ] int 
;;  i               2   12[BANK1 ] int 
;;  i               2   10[BANK1 ] int 
;;  i               2    8[BANK1 ] int 
;;  i               2    6[BANK1 ] int 
;;  i               2    4[BANK1 ] int 
;;  i               2    2[BANK1 ] int 
;;  i               2    0[BANK1 ] int 
;;  rotate_patte    8   62[BANK1 ] unsigned char [8]
;;  time            2   60[BANK1 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      70       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0      70       0       0
;;Total ram usage:       74 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_show_pattern_on_a_plane
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text545
	file	"C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Effect.c"
	line	644
	global	__size_of_rotate_plane
	__size_of_rotate_plane	equ	__end_of_rotate_plane-_rotate_plane
	
_rotate_plane:	
	opt	stack 6
; Regs used in _rotate_plane: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	645
	
l6462:	
;Effect.c: 645: int time = 5;
	movlw	low(05h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(rotate_plane@time)^080h
	movlw	high(05h)
	movwf	((rotate_plane@time)^080h)+1
	line	646
	
l6464:	
;Effect.c: 646: unsigned char rotate_pattern[8] = {{0}};
	movlw	(rotate_plane@rotate_pattern)&0ffh
	movwf	fsr0
	movlw	low(rotate_plane@F1204)
	movwf	(??_rotate_plane+0)+0
	movf	fsr0,w
	movwf	((??_rotate_plane+0)+0+1)
	movlw	8
	movwf	((??_rotate_plane+0)+0+2)
u4650:
	movf	(??_rotate_plane+0)+0,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	
	movf	indf,w
	movwf	((??_rotate_plane+0)+0+3)
	incf	(??_rotate_plane+0)+0,f
	movf	((??_rotate_plane+0)+0+1),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	
	movf	((??_rotate_plane+0)+0+3),w
	movwf	indf
	incf	((??_rotate_plane+0)+0+1),f
	decfsz	((??_rotate_plane+0)+0+2),f
	goto	u4650
	line	647
	
l6466:	
;Effect.c: 647: rotate_pattern[0] = 0x80;
	movlw	(080h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	(rotate_plane@rotate_pattern)^080h
	line	648
	
l6468:	
;Effect.c: 648: rotate_pattern[1] = 0x40;
	movlw	(040h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+01h
	line	649
	
l6470:	
;Effect.c: 649: rotate_pattern[2] = 0x20;
	movlw	(020h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+02h
	line	650
	
l6472:	
;Effect.c: 650: rotate_pattern[3] = 0x10;
	movlw	(010h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+03h
	line	651
	
l6474:	
;Effect.c: 651: rotate_pattern[4] = 0x08;
	movlw	(08h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+04h
	line	652
	
l6476:	
;Effect.c: 652: rotate_pattern[5] = 0x04;
	movlw	(04h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+05h
	line	653
	
l6478:	
;Effect.c: 653: rotate_pattern[6] = 0x02;
	movlw	(02h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+06h
	line	654
	
l6480:	
;Effect.c: 654: rotate_pattern[7] = 0x01;
	clrf	0+(rotate_plane@rotate_pattern)^080h+07h
	bsf	status,0
	rlf	0+(rotate_plane@rotate_pattern)^080h+07h,f
	line	655
	
l6482:	
;Effect.c: 655: for(int i = 0; i<time; i++)
	clrf	(rotate_plane@i)^080h
	clrf	(rotate_plane@i+1)^080h
	goto	l2358
	line	656
	
l2359:	
	line	657
	
l6484:	
;Effect.c: 656: {
;Effect.c: 657: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_rotate_plane+0)+0+1),f
	movlw	125
movwf	((??_rotate_plane+0)+0),f
u5297:
	decfsz	((??_rotate_plane+0)+0),f
	goto	u5297
	decfsz	((??_rotate_plane+0)+0+1),f
	goto	u5297
opt asmopt_on

	line	658
	
l6486:	
;Effect.c: 658: for(int j = 0; j<8; j++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(rotate_plane@j)^080h
	clrf	(rotate_plane@j+1)^080h
	
l6488:	
	movf	(rotate_plane@j+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4665
	movlw	low(08h)
	subwf	(rotate_plane@j)^080h,w
u4665:

	skipc
	goto	u4661
	goto	u4660
u4661:
	goto	l6492
u4660:
	goto	l6498
	
l6490:	
	goto	l6498
	line	659
	
l2360:	
	line	660
	
l6492:	
;Effect.c: 659: {
;Effect.c: 660: show_pattern_on_a_plane(j,3,rotate_pattern);
	movlw	(03h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(rotate_plane@rotate_pattern)&0ffh
	movwf	(??_rotate_plane+1)+0
	movf	(??_rotate_plane+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(rotate_plane@j)^080h,w
	fcall	_show_pattern_on_a_plane
	line	658
	
l6494:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@j)^080h,f
	skipnc
	incf	(rotate_plane@j+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@j+1)^080h,f
	
l6496:	
	movf	(rotate_plane@j+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4675
	movlw	low(08h)
	subwf	(rotate_plane@j)^080h,w
u4675:

	skipc
	goto	u4671
	goto	u4670
u4671:
	goto	l6492
u4670:
	goto	l6498
	
l2361:	
	line	655
	
l6498:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@i)^080h,f
	skipnc
	incf	(rotate_plane@i+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@i+1)^080h,f
	
l2358:	
	movf	(rotate_plane@i+1)^080h,w
	xorlw	80h
	movwf	(??_rotate_plane+0)+0
	movf	(rotate_plane@time+1)^080h,w
	xorlw	80h
	subwf	(??_rotate_plane+0)+0,w
	skipz
	goto	u4685
	movf	(rotate_plane@time)^080h,w
	subwf	(rotate_plane@i)^080h,w
u4685:

	skipc
	goto	u4681
	goto	u4680
u4681:
	goto	l6484
u4680:
	
l2362:	
	line	664
;Effect.c: 661: }
;Effect.c: 662: }
;Effect.c: 664: rotate_pattern[0] = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(rotate_plane@rotate_pattern)^080h
	line	665
	
l6500:	
;Effect.c: 665: rotate_pattern[1] = 0x80;
	movlw	(080h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+01h
	line	666
;Effect.c: 666: rotate_pattern[2] = 0x40;
	movlw	(040h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+02h
	line	667
;Effect.c: 667: rotate_pattern[3] = 0x30;
	movlw	(030h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+03h
	line	668
;Effect.c: 668: rotate_pattern[4] = 0x0c;
	movlw	(0Ch)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+04h
	line	669
;Effect.c: 669: rotate_pattern[5] = 0x02;
	movlw	(02h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+05h
	line	670
	
l6502:	
;Effect.c: 670: rotate_pattern[6] = 0x01;
	clrf	0+(rotate_plane@rotate_pattern)^080h+06h
	bsf	status,0
	rlf	0+(rotate_plane@rotate_pattern)^080h+06h,f
	line	671
	
l6504:	
;Effect.c: 671: rotate_pattern[7] = 0x00;
	clrf	0+(rotate_plane@rotate_pattern)^080h+07h
	line	672
	
l6506:	
;Effect.c: 672: for(int i = 0; i<time; i++)
	clrf	(rotate_plane@i_3064)^080h
	clrf	(rotate_plane@i_3064+1)^080h
	goto	l2363
	line	673
	
l2364:	
	line	674
	
l6508:	
;Effect.c: 673: {
;Effect.c: 674: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_rotate_plane+0)+0+1),f
	movlw	125
movwf	((??_rotate_plane+0)+0),f
u5307:
	decfsz	((??_rotate_plane+0)+0),f
	goto	u5307
	decfsz	((??_rotate_plane+0)+0+1),f
	goto	u5307
opt asmopt_on

	line	675
	
l6510:	
;Effect.c: 675: for(int j = 0; j<8; j++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(rotate_plane@j_3065)^080h
	clrf	(rotate_plane@j_3065+1)^080h
	
l6512:	
	movf	(rotate_plane@j_3065+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4695
	movlw	low(08h)
	subwf	(rotate_plane@j_3065)^080h,w
u4695:

	skipc
	goto	u4691
	goto	u4690
u4691:
	goto	l6516
u4690:
	goto	l6522
	
l6514:	
	goto	l6522
	line	676
	
l2365:	
	line	677
	
l6516:	
;Effect.c: 676: {
;Effect.c: 677: show_pattern_on_a_plane(j,3,rotate_pattern);
	movlw	(03h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(rotate_plane@rotate_pattern)&0ffh
	movwf	(??_rotate_plane+1)+0
	movf	(??_rotate_plane+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(rotate_plane@j_3065)^080h,w
	fcall	_show_pattern_on_a_plane
	line	675
	
l6518:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@j_3065)^080h,f
	skipnc
	incf	(rotate_plane@j_3065+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@j_3065+1)^080h,f
	
l6520:	
	movf	(rotate_plane@j_3065+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4705
	movlw	low(08h)
	subwf	(rotate_plane@j_3065)^080h,w
u4705:

	skipc
	goto	u4701
	goto	u4700
u4701:
	goto	l6516
u4700:
	goto	l6522
	
l2366:	
	line	672
	
l6522:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@i_3064)^080h,f
	skipnc
	incf	(rotate_plane@i_3064+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@i_3064+1)^080h,f
	
l2363:	
	movf	(rotate_plane@i_3064+1)^080h,w
	xorlw	80h
	movwf	(??_rotate_plane+0)+0
	movf	(rotate_plane@time+1)^080h,w
	xorlw	80h
	subwf	(??_rotate_plane+0)+0,w
	skipz
	goto	u4715
	movf	(rotate_plane@time)^080h,w
	subwf	(rotate_plane@i_3064)^080h,w
u4715:

	skipc
	goto	u4711
	goto	u4710
u4711:
	goto	l6508
u4710:
	
l2367:	
	line	682
;Effect.c: 678: }
;Effect.c: 679: }
;Effect.c: 682: rotate_pattern[0] = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(rotate_plane@rotate_pattern)^080h
	line	683
;Effect.c: 683: rotate_pattern[1] = 0x00;
	clrf	0+(rotate_plane@rotate_pattern)^080h+01h
	line	684
	
l6524:	
;Effect.c: 684: rotate_pattern[2] = 0xc0;
	movlw	(0C0h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+02h
	line	685
;Effect.c: 685: rotate_pattern[3] = 0x30;
	movlw	(030h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+03h
	line	686
;Effect.c: 686: rotate_pattern[4] = 0x0c;
	movlw	(0Ch)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+04h
	line	687
;Effect.c: 687: rotate_pattern[5] = 0x03;
	movlw	(03h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+05h
	line	688
	
l6526:	
;Effect.c: 688: rotate_pattern[6] = 0x00;
	clrf	0+(rotate_plane@rotate_pattern)^080h+06h
	line	689
	
l6528:	
;Effect.c: 689: rotate_pattern[7] = 0x00;
	clrf	0+(rotate_plane@rotate_pattern)^080h+07h
	line	690
	
l6530:	
;Effect.c: 690: for(int i = 0; i<time; i++)
	clrf	(rotate_plane@i_3066)^080h
	clrf	(rotate_plane@i_3066+1)^080h
	goto	l2368
	line	691
	
l2369:	
	line	692
	
l6532:	
;Effect.c: 691: {
;Effect.c: 692: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_rotate_plane+0)+0+1),f
	movlw	125
movwf	((??_rotate_plane+0)+0),f
u5317:
	decfsz	((??_rotate_plane+0)+0),f
	goto	u5317
	decfsz	((??_rotate_plane+0)+0+1),f
	goto	u5317
opt asmopt_on

	line	693
	
l6534:	
;Effect.c: 693: for(int j = 0; j<8; j++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(rotate_plane@j_3067)^080h
	clrf	(rotate_plane@j_3067+1)^080h
	
l6536:	
	movf	(rotate_plane@j_3067+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4725
	movlw	low(08h)
	subwf	(rotate_plane@j_3067)^080h,w
u4725:

	skipc
	goto	u4721
	goto	u4720
u4721:
	goto	l6540
u4720:
	goto	l6546
	
l6538:	
	goto	l6546
	line	694
	
l2370:	
	line	695
	
l6540:	
;Effect.c: 694: {
;Effect.c: 695: show_pattern_on_a_plane(j,3,rotate_pattern);
	movlw	(03h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(rotate_plane@rotate_pattern)&0ffh
	movwf	(??_rotate_plane+1)+0
	movf	(??_rotate_plane+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(rotate_plane@j_3067)^080h,w
	fcall	_show_pattern_on_a_plane
	line	693
	
l6542:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@j_3067)^080h,f
	skipnc
	incf	(rotate_plane@j_3067+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@j_3067+1)^080h,f
	
l6544:	
	movf	(rotate_plane@j_3067+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4735
	movlw	low(08h)
	subwf	(rotate_plane@j_3067)^080h,w
u4735:

	skipc
	goto	u4731
	goto	u4730
u4731:
	goto	l6540
u4730:
	goto	l6546
	
l2371:	
	line	690
	
l6546:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@i_3066)^080h,f
	skipnc
	incf	(rotate_plane@i_3066+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@i_3066+1)^080h,f
	
l2368:	
	movf	(rotate_plane@i_3066+1)^080h,w
	xorlw	80h
	movwf	(??_rotate_plane+0)+0
	movf	(rotate_plane@time+1)^080h,w
	xorlw	80h
	subwf	(??_rotate_plane+0)+0,w
	skipz
	goto	u4745
	movf	(rotate_plane@time)^080h,w
	subwf	(rotate_plane@i_3066)^080h,w
u4745:

	skipc
	goto	u4741
	goto	u4740
u4741:
	goto	l6532
u4740:
	
l2372:	
	line	699
;Effect.c: 696: }
;Effect.c: 697: }
;Effect.c: 699: rotate_pattern[0] = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(rotate_plane@rotate_pattern)^080h
	line	700
;Effect.c: 700: rotate_pattern[1] = 0x00;
	clrf	0+(rotate_plane@rotate_pattern)^080h+01h
	line	701
;Effect.c: 701: rotate_pattern[2] = 0x00;
	clrf	0+(rotate_plane@rotate_pattern)^080h+02h
	line	702
	
l6548:	
;Effect.c: 702: rotate_pattern[3] = 0xf0;
	movlw	(0F0h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+03h
	line	703
;Effect.c: 703: rotate_pattern[4] = 0x0f;
	movlw	(0Fh)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+04h
	line	704
	
l6550:	
;Effect.c: 704: rotate_pattern[5] = 0x00;
	clrf	0+(rotate_plane@rotate_pattern)^080h+05h
	line	705
	
l6552:	
;Effect.c: 705: rotate_pattern[6] = 0x00;
	clrf	0+(rotate_plane@rotate_pattern)^080h+06h
	line	706
	
l6554:	
;Effect.c: 706: rotate_pattern[7] = 0x00;
	clrf	0+(rotate_plane@rotate_pattern)^080h+07h
	line	707
	
l6556:	
;Effect.c: 707: for(int i = 0; i<time; i++)
	clrf	(rotate_plane@i_3068)^080h
	clrf	(rotate_plane@i_3068+1)^080h
	goto	l2373
	line	708
	
l2374:	
	line	709
	
l6558:	
;Effect.c: 708: {
;Effect.c: 709: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_rotate_plane+0)+0+1),f
	movlw	125
movwf	((??_rotate_plane+0)+0),f
u5327:
	decfsz	((??_rotate_plane+0)+0),f
	goto	u5327
	decfsz	((??_rotate_plane+0)+0+1),f
	goto	u5327
opt asmopt_on

	line	710
	
l6560:	
;Effect.c: 710: for(int j = 0; j<8; j++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(rotate_plane@j_3069)^080h
	clrf	(rotate_plane@j_3069+1)^080h
	
l6562:	
	movf	(rotate_plane@j_3069+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4755
	movlw	low(08h)
	subwf	(rotate_plane@j_3069)^080h,w
u4755:

	skipc
	goto	u4751
	goto	u4750
u4751:
	goto	l6566
u4750:
	goto	l6572
	
l6564:	
	goto	l6572
	line	711
	
l2375:	
	line	712
	
l6566:	
;Effect.c: 711: {
;Effect.c: 712: show_pattern_on_a_plane(j,3,rotate_pattern);
	movlw	(03h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(rotate_plane@rotate_pattern)&0ffh
	movwf	(??_rotate_plane+1)+0
	movf	(??_rotate_plane+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(rotate_plane@j_3069)^080h,w
	fcall	_show_pattern_on_a_plane
	line	710
	
l6568:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@j_3069)^080h,f
	skipnc
	incf	(rotate_plane@j_3069+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@j_3069+1)^080h,f
	
l6570:	
	movf	(rotate_plane@j_3069+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4765
	movlw	low(08h)
	subwf	(rotate_plane@j_3069)^080h,w
u4765:

	skipc
	goto	u4761
	goto	u4760
u4761:
	goto	l6566
u4760:
	goto	l6572
	
l2376:	
	line	707
	
l6572:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@i_3068)^080h,f
	skipnc
	incf	(rotate_plane@i_3068+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@i_3068+1)^080h,f
	
l2373:	
	movf	(rotate_plane@i_3068+1)^080h,w
	xorlw	80h
	movwf	(??_rotate_plane+0)+0
	movf	(rotate_plane@time+1)^080h,w
	xorlw	80h
	subwf	(??_rotate_plane+0)+0,w
	skipz
	goto	u4775
	movf	(rotate_plane@time)^080h,w
	subwf	(rotate_plane@i_3068)^080h,w
u4775:

	skipc
	goto	u4771
	goto	u4770
u4771:
	goto	l6558
u4770:
	
l2377:	
	line	717
;Effect.c: 713: }
;Effect.c: 714: }
;Effect.c: 717: rotate_pattern[0] = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(rotate_plane@rotate_pattern)^080h
	line	718
;Effect.c: 718: rotate_pattern[1] = 0x00;
	clrf	0+(rotate_plane@rotate_pattern)^080h+01h
	line	719
;Effect.c: 719: rotate_pattern[2] = 0x00;
	clrf	0+(rotate_plane@rotate_pattern)^080h+02h
	line	720
	
l6574:	
;Effect.c: 720: rotate_pattern[3] = 0x0f;
	movlw	(0Fh)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+03h
	line	721
;Effect.c: 721: rotate_pattern[4] = 0xf0;
	movlw	(0F0h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+04h
	line	722
	
l6576:	
;Effect.c: 722: rotate_pattern[5] = 0x00;
	clrf	0+(rotate_plane@rotate_pattern)^080h+05h
	line	723
	
l6578:	
;Effect.c: 723: rotate_pattern[6] = 0x00;
	clrf	0+(rotate_plane@rotate_pattern)^080h+06h
	line	724
	
l6580:	
;Effect.c: 724: rotate_pattern[7] = 0x00;
	clrf	0+(rotate_plane@rotate_pattern)^080h+07h
	line	725
	
l6582:	
;Effect.c: 725: for(int i = 0; i<time; i++)
	clrf	(rotate_plane@i_3070)^080h
	clrf	(rotate_plane@i_3070+1)^080h
	goto	l2378
	line	726
	
l2379:	
	line	727
	
l6584:	
;Effect.c: 726: {
;Effect.c: 727: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_rotate_plane+0)+0+1),f
	movlw	125
movwf	((??_rotate_plane+0)+0),f
u5337:
	decfsz	((??_rotate_plane+0)+0),f
	goto	u5337
	decfsz	((??_rotate_plane+0)+0+1),f
	goto	u5337
opt asmopt_on

	line	728
	
l6586:	
;Effect.c: 728: for(int j = 0; j<8; j++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(rotate_plane@j_3071)^080h
	clrf	(rotate_plane@j_3071+1)^080h
	
l6588:	
	movf	(rotate_plane@j_3071+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4785
	movlw	low(08h)
	subwf	(rotate_plane@j_3071)^080h,w
u4785:

	skipc
	goto	u4781
	goto	u4780
u4781:
	goto	l6592
u4780:
	goto	l6598
	
l6590:	
	goto	l6598
	line	729
	
l2380:	
	line	730
	
l6592:	
;Effect.c: 729: {
;Effect.c: 730: show_pattern_on_a_plane(j,3,rotate_pattern);
	movlw	(03h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(rotate_plane@rotate_pattern)&0ffh
	movwf	(??_rotate_plane+1)+0
	movf	(??_rotate_plane+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(rotate_plane@j_3071)^080h,w
	fcall	_show_pattern_on_a_plane
	line	728
	
l6594:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@j_3071)^080h,f
	skipnc
	incf	(rotate_plane@j_3071+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@j_3071+1)^080h,f
	
l6596:	
	movf	(rotate_plane@j_3071+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4795
	movlw	low(08h)
	subwf	(rotate_plane@j_3071)^080h,w
u4795:

	skipc
	goto	u4791
	goto	u4790
u4791:
	goto	l6592
u4790:
	goto	l6598
	
l2381:	
	line	725
	
l6598:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@i_3070)^080h,f
	skipnc
	incf	(rotate_plane@i_3070+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@i_3070+1)^080h,f
	
l2378:	
	movf	(rotate_plane@i_3070+1)^080h,w
	xorlw	80h
	movwf	(??_rotate_plane+0)+0
	movf	(rotate_plane@time+1)^080h,w
	xorlw	80h
	subwf	(??_rotate_plane+0)+0,w
	skipz
	goto	u4805
	movf	(rotate_plane@time)^080h,w
	subwf	(rotate_plane@i_3070)^080h,w
u4805:

	skipc
	goto	u4801
	goto	u4800
u4801:
	goto	l6584
u4800:
	
l2382:	
	line	735
;Effect.c: 731: }
;Effect.c: 732: }
;Effect.c: 735: rotate_pattern[0] = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(rotate_plane@rotate_pattern)^080h
	line	736
;Effect.c: 736: rotate_pattern[1] = 0x00;
	clrf	0+(rotate_plane@rotate_pattern)^080h+01h
	line	737
	
l6600:	
;Effect.c: 737: rotate_pattern[2] = 0x03;
	movlw	(03h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+02h
	line	738
;Effect.c: 738: rotate_pattern[3] = 0x0c;
	movlw	(0Ch)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+03h
	line	739
;Effect.c: 739: rotate_pattern[4] = 0x30;
	movlw	(030h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+04h
	line	740
;Effect.c: 740: rotate_pattern[5] = 0xc0;
	movlw	(0C0h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+05h
	line	741
	
l6602:	
;Effect.c: 741: rotate_pattern[6] = 0x00;
	clrf	0+(rotate_plane@rotate_pattern)^080h+06h
	line	742
	
l6604:	
;Effect.c: 742: rotate_pattern[7] = 0x00;
	clrf	0+(rotate_plane@rotate_pattern)^080h+07h
	line	743
	
l6606:	
;Effect.c: 743: for(int i = 0; i<time; i++)
	clrf	(rotate_plane@i_3072)^080h
	clrf	(rotate_plane@i_3072+1)^080h
	goto	l2383
	line	744
	
l2384:	
	line	745
	
l6608:	
;Effect.c: 744: {
;Effect.c: 745: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_rotate_plane+0)+0+1),f
	movlw	125
movwf	((??_rotate_plane+0)+0),f
u5347:
	decfsz	((??_rotate_plane+0)+0),f
	goto	u5347
	decfsz	((??_rotate_plane+0)+0+1),f
	goto	u5347
opt asmopt_on

	line	746
	
l6610:	
;Effect.c: 746: for(int j = 0; j<8; j++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(rotate_plane@j_3073)^080h
	clrf	(rotate_plane@j_3073+1)^080h
	
l6612:	
	movf	(rotate_plane@j_3073+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4815
	movlw	low(08h)
	subwf	(rotate_plane@j_3073)^080h,w
u4815:

	skipc
	goto	u4811
	goto	u4810
u4811:
	goto	l6616
u4810:
	goto	l6622
	
l6614:	
	goto	l6622
	line	747
	
l2385:	
	line	748
	
l6616:	
;Effect.c: 747: {
;Effect.c: 748: show_pattern_on_a_plane(j,3,rotate_pattern);
	movlw	(03h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(rotate_plane@rotate_pattern)&0ffh
	movwf	(??_rotate_plane+1)+0
	movf	(??_rotate_plane+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(rotate_plane@j_3073)^080h,w
	fcall	_show_pattern_on_a_plane
	line	746
	
l6618:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@j_3073)^080h,f
	skipnc
	incf	(rotate_plane@j_3073+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@j_3073+1)^080h,f
	
l6620:	
	movf	(rotate_plane@j_3073+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4825
	movlw	low(08h)
	subwf	(rotate_plane@j_3073)^080h,w
u4825:

	skipc
	goto	u4821
	goto	u4820
u4821:
	goto	l6616
u4820:
	goto	l6622
	
l2386:	
	line	743
	
l6622:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@i_3072)^080h,f
	skipnc
	incf	(rotate_plane@i_3072+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@i_3072+1)^080h,f
	
l2383:	
	movf	(rotate_plane@i_3072+1)^080h,w
	xorlw	80h
	movwf	(??_rotate_plane+0)+0
	movf	(rotate_plane@time+1)^080h,w
	xorlw	80h
	subwf	(??_rotate_plane+0)+0,w
	skipz
	goto	u4835
	movf	(rotate_plane@time)^080h,w
	subwf	(rotate_plane@i_3072)^080h,w
u4835:

	skipc
	goto	u4831
	goto	u4830
u4831:
	goto	l6608
u4830:
	
l2387:	
	line	753
;Effect.c: 749: }
;Effect.c: 750: }
;Effect.c: 753: rotate_pattern[0] = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(rotate_plane@rotate_pattern)^080h
	line	754
	
l6624:	
;Effect.c: 754: rotate_pattern[1] = 0x01;
	clrf	0+(rotate_plane@rotate_pattern)^080h+01h
	bsf	status,0
	rlf	0+(rotate_plane@rotate_pattern)^080h+01h,f
	line	755
	
l6626:	
;Effect.c: 755: rotate_pattern[2] = 0x02;
	movlw	(02h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+02h
	line	756
	
l6628:	
;Effect.c: 756: rotate_pattern[3] = 0x0c;
	movlw	(0Ch)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+03h
	line	757
	
l6630:	
;Effect.c: 757: rotate_pattern[4] = 0x30;
	movlw	(030h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+04h
	line	758
	
l6632:	
;Effect.c: 758: rotate_pattern[5] = 0x40;
	movlw	(040h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+05h
	line	759
	
l6634:	
;Effect.c: 759: rotate_pattern[6] = 0x80;
	movlw	(080h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+06h
	line	760
	
l6636:	
;Effect.c: 760: rotate_pattern[7] = 0x00;
	clrf	0+(rotate_plane@rotate_pattern)^080h+07h
	line	761
	
l6638:	
;Effect.c: 761: for(int i = 0; i<time; i++)
	clrf	(rotate_plane@i_3074)^080h
	clrf	(rotate_plane@i_3074+1)^080h
	goto	l2388
	line	762
	
l2389:	
	line	763
	
l6640:	
;Effect.c: 762: {
;Effect.c: 763: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_rotate_plane+0)+0+1),f
	movlw	125
movwf	((??_rotate_plane+0)+0),f
u5357:
	decfsz	((??_rotate_plane+0)+0),f
	goto	u5357
	decfsz	((??_rotate_plane+0)+0+1),f
	goto	u5357
opt asmopt_on

	line	764
	
l6642:	
;Effect.c: 764: for(int j = 0; j<8; j++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(rotate_plane@j_3075)^080h
	clrf	(rotate_plane@j_3075+1)^080h
	
l6644:	
	movf	(rotate_plane@j_3075+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4845
	movlw	low(08h)
	subwf	(rotate_plane@j_3075)^080h,w
u4845:

	skipc
	goto	u4841
	goto	u4840
u4841:
	goto	l6648
u4840:
	goto	l6654
	
l6646:	
	goto	l6654
	line	765
	
l2390:	
	line	766
	
l6648:	
;Effect.c: 765: {
;Effect.c: 766: show_pattern_on_a_plane(j,3,rotate_pattern);
	movlw	(03h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(rotate_plane@rotate_pattern)&0ffh
	movwf	(??_rotate_plane+1)+0
	movf	(??_rotate_plane+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(rotate_plane@j_3075)^080h,w
	fcall	_show_pattern_on_a_plane
	line	764
	
l6650:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@j_3075)^080h,f
	skipnc
	incf	(rotate_plane@j_3075+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@j_3075+1)^080h,f
	
l6652:	
	movf	(rotate_plane@j_3075+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4855
	movlw	low(08h)
	subwf	(rotate_plane@j_3075)^080h,w
u4855:

	skipc
	goto	u4851
	goto	u4850
u4851:
	goto	l6648
u4850:
	goto	l6654
	
l2391:	
	line	761
	
l6654:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@i_3074)^080h,f
	skipnc
	incf	(rotate_plane@i_3074+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@i_3074+1)^080h,f
	
l2388:	
	movf	(rotate_plane@i_3074+1)^080h,w
	xorlw	80h
	movwf	(??_rotate_plane+0)+0
	movf	(rotate_plane@time+1)^080h,w
	xorlw	80h
	subwf	(??_rotate_plane+0)+0,w
	skipz
	goto	u4865
	movf	(rotate_plane@time)^080h,w
	subwf	(rotate_plane@i_3074)^080h,w
u4865:

	skipc
	goto	u4861
	goto	u4860
u4861:
	goto	l6640
u4860:
	goto	l6656
	
l2392:	
	line	771
	
l6656:	
;Effect.c: 767: }
;Effect.c: 768: }
;Effect.c: 771: rotate_pattern[0] = 0x01;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(rotate_plane@rotate_pattern)^080h
	bsf	status,0
	rlf	(rotate_plane@rotate_pattern)^080h,f
	line	772
	
l6658:	
;Effect.c: 772: rotate_pattern[1] = 0x02;
	movlw	(02h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+01h
	line	773
	
l6660:	
;Effect.c: 773: rotate_pattern[2] = 0x04;
	movlw	(04h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+02h
	line	774
	
l6662:	
;Effect.c: 774: rotate_pattern[3] = 0x08;
	movlw	(08h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+03h
	line	775
	
l6664:	
;Effect.c: 775: rotate_pattern[4] = 0x10;
	movlw	(010h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+04h
	line	776
	
l6666:	
;Effect.c: 776: rotate_pattern[5] = 0x20;
	movlw	(020h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+05h
	line	777
	
l6668:	
;Effect.c: 777: rotate_pattern[6] = 0x40;
	movlw	(040h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+06h
	line	778
	
l6670:	
;Effect.c: 778: rotate_pattern[7] = 0x80;
	movlw	(080h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+07h
	line	779
	
l6672:	
;Effect.c: 779: for(int i = 0; i<time; i++)
	clrf	(rotate_plane@i_3076)^080h
	clrf	(rotate_plane@i_3076+1)^080h
	goto	l2393
	line	780
	
l2394:	
	line	781
	
l6674:	
;Effect.c: 780: {
;Effect.c: 781: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_rotate_plane+0)+0+1),f
	movlw	125
movwf	((??_rotate_plane+0)+0),f
u5367:
	decfsz	((??_rotate_plane+0)+0),f
	goto	u5367
	decfsz	((??_rotate_plane+0)+0+1),f
	goto	u5367
opt asmopt_on

	line	782
	
l6676:	
;Effect.c: 782: for(int j = 0; j<8; j++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(rotate_plane@j_3077)^080h
	clrf	(rotate_plane@j_3077+1)^080h
	
l6678:	
	movf	(rotate_plane@j_3077+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4875
	movlw	low(08h)
	subwf	(rotate_plane@j_3077)^080h,w
u4875:

	skipc
	goto	u4871
	goto	u4870
u4871:
	goto	l6682
u4870:
	goto	l6688
	
l6680:	
	goto	l6688
	line	783
	
l2395:	
	line	784
	
l6682:	
;Effect.c: 783: {
;Effect.c: 784: show_pattern_on_a_plane(j,3,rotate_pattern);
	movlw	(03h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(rotate_plane@rotate_pattern)&0ffh
	movwf	(??_rotate_plane+1)+0
	movf	(??_rotate_plane+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(rotate_plane@j_3077)^080h,w
	fcall	_show_pattern_on_a_plane
	line	782
	
l6684:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@j_3077)^080h,f
	skipnc
	incf	(rotate_plane@j_3077+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@j_3077+1)^080h,f
	
l6686:	
	movf	(rotate_plane@j_3077+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4885
	movlw	low(08h)
	subwf	(rotate_plane@j_3077)^080h,w
u4885:

	skipc
	goto	u4881
	goto	u4880
u4881:
	goto	l6682
u4880:
	goto	l6688
	
l2396:	
	line	779
	
l6688:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@i_3076)^080h,f
	skipnc
	incf	(rotate_plane@i_3076+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@i_3076+1)^080h,f
	
l2393:	
	movf	(rotate_plane@i_3076+1)^080h,w
	xorlw	80h
	movwf	(??_rotate_plane+0)+0
	movf	(rotate_plane@time+1)^080h,w
	xorlw	80h
	subwf	(??_rotate_plane+0)+0,w
	skipz
	goto	u4895
	movf	(rotate_plane@time)^080h,w
	subwf	(rotate_plane@i_3076)^080h,w
u4895:

	skipc
	goto	u4891
	goto	u4890
u4891:
	goto	l6674
u4890:
	goto	l6690
	
l2397:	
	line	789
	
l6690:	
;Effect.c: 785: }
;Effect.c: 786: }
;Effect.c: 789: rotate_pattern[0] = 0x02;
	movlw	(02h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(rotate_plane@rotate_pattern)^080h
	line	790
;Effect.c: 790: rotate_pattern[1] = 0x04;
	movlw	(04h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+01h
	line	791
;Effect.c: 791: rotate_pattern[2] = 0x08;
	movlw	(08h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+02h
	line	792
;Effect.c: 792: rotate_pattern[3] = 0x08;
	movlw	(08h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+03h
	line	793
;Effect.c: 793: rotate_pattern[4] = 0x10;
	movlw	(010h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+04h
	line	794
;Effect.c: 794: rotate_pattern[5] = 0x10;
	movlw	(010h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+05h
	line	795
;Effect.c: 795: rotate_pattern[6] = 0x20;
	movlw	(020h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+06h
	line	796
;Effect.c: 796: rotate_pattern[7] = 0x40;
	movlw	(040h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+07h
	line	797
	
l6692:	
;Effect.c: 797: for(int i = 0; i<time; i++)
	clrf	(rotate_plane@i_3078)^080h
	clrf	(rotate_plane@i_3078+1)^080h
	goto	l2398
	line	798
	
l2399:	
	line	799
	
l6694:	
;Effect.c: 798: {
;Effect.c: 799: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_rotate_plane+0)+0+1),f
	movlw	125
movwf	((??_rotate_plane+0)+0),f
u5377:
	decfsz	((??_rotate_plane+0)+0),f
	goto	u5377
	decfsz	((??_rotate_plane+0)+0+1),f
	goto	u5377
opt asmopt_on

	line	800
	
l6696:	
;Effect.c: 800: for(int j = 0; j<8; j++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(rotate_plane@j_3079)^080h
	clrf	(rotate_plane@j_3079+1)^080h
	
l6698:	
	movf	(rotate_plane@j_3079+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4905
	movlw	low(08h)
	subwf	(rotate_plane@j_3079)^080h,w
u4905:

	skipc
	goto	u4901
	goto	u4900
u4901:
	goto	l6702
u4900:
	goto	l6708
	
l6700:	
	goto	l6708
	line	801
	
l2400:	
	line	802
	
l6702:	
;Effect.c: 801: {
;Effect.c: 802: show_pattern_on_a_plane(j,3,rotate_pattern);
	movlw	(03h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(rotate_plane@rotate_pattern)&0ffh
	movwf	(??_rotate_plane+1)+0
	movf	(??_rotate_plane+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(rotate_plane@j_3079)^080h,w
	fcall	_show_pattern_on_a_plane
	line	800
	
l6704:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@j_3079)^080h,f
	skipnc
	incf	(rotate_plane@j_3079+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@j_3079+1)^080h,f
	
l6706:	
	movf	(rotate_plane@j_3079+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4915
	movlw	low(08h)
	subwf	(rotate_plane@j_3079)^080h,w
u4915:

	skipc
	goto	u4911
	goto	u4910
u4911:
	goto	l6702
u4910:
	goto	l6708
	
l2401:	
	line	797
	
l6708:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@i_3078)^080h,f
	skipnc
	incf	(rotate_plane@i_3078+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@i_3078+1)^080h,f
	
l2398:	
	movf	(rotate_plane@i_3078+1)^080h,w
	xorlw	80h
	movwf	(??_rotate_plane+0)+0
	movf	(rotate_plane@time+1)^080h,w
	xorlw	80h
	subwf	(??_rotate_plane+0)+0,w
	skipz
	goto	u4925
	movf	(rotate_plane@time)^080h,w
	subwf	(rotate_plane@i_3078)^080h,w
u4925:

	skipc
	goto	u4921
	goto	u4920
u4921:
	goto	l6694
u4920:
	goto	l6710
	
l2402:	
	line	807
	
l6710:	
;Effect.c: 803: }
;Effect.c: 804: }
;Effect.c: 807: rotate_pattern[0] = 0x04;
	movlw	(04h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(rotate_plane@rotate_pattern)^080h
	line	808
;Effect.c: 808: rotate_pattern[1] = 0x04;
	movlw	(04h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+01h
	line	809
;Effect.c: 809: rotate_pattern[2] = 0x08;
	movlw	(08h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+02h
	line	810
;Effect.c: 810: rotate_pattern[3] = 0x08;
	movlw	(08h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+03h
	line	811
;Effect.c: 811: rotate_pattern[4] = 0x10;
	movlw	(010h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+04h
	line	812
;Effect.c: 812: rotate_pattern[5] = 0x10;
	movlw	(010h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+05h
	line	813
;Effect.c: 813: rotate_pattern[6] = 0x20;
	movlw	(020h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+06h
	line	814
;Effect.c: 814: rotate_pattern[7] = 0x20;
	movlw	(020h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+07h
	line	815
	
l6712:	
;Effect.c: 815: for(int i = 0; i<time; i++)
	clrf	(rotate_plane@i_3080)^080h
	clrf	(rotate_plane@i_3080+1)^080h
	goto	l2403
	line	816
	
l2404:	
	line	817
	
l6714:	
;Effect.c: 816: {
;Effect.c: 817: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_rotate_plane+0)+0+1),f
	movlw	125
movwf	((??_rotate_plane+0)+0),f
u5387:
	decfsz	((??_rotate_plane+0)+0),f
	goto	u5387
	decfsz	((??_rotate_plane+0)+0+1),f
	goto	u5387
opt asmopt_on

	line	818
	
l6716:	
;Effect.c: 818: for(int j = 0; j<8; j++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(rotate_plane@j_3081)^080h
	clrf	(rotate_plane@j_3081+1)^080h
	
l6718:	
	movf	(rotate_plane@j_3081+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4935
	movlw	low(08h)
	subwf	(rotate_plane@j_3081)^080h,w
u4935:

	skipc
	goto	u4931
	goto	u4930
u4931:
	goto	l6722
u4930:
	goto	l6728
	
l6720:	
	goto	l6728
	line	819
	
l2405:	
	line	820
	
l6722:	
;Effect.c: 819: {
;Effect.c: 820: show_pattern_on_a_plane(j,3,rotate_pattern);
	movlw	(03h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(rotate_plane@rotate_pattern)&0ffh
	movwf	(??_rotate_plane+1)+0
	movf	(??_rotate_plane+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(rotate_plane@j_3081)^080h,w
	fcall	_show_pattern_on_a_plane
	line	818
	
l6724:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@j_3081)^080h,f
	skipnc
	incf	(rotate_plane@j_3081+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@j_3081+1)^080h,f
	
l6726:	
	movf	(rotate_plane@j_3081+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4945
	movlw	low(08h)
	subwf	(rotate_plane@j_3081)^080h,w
u4945:

	skipc
	goto	u4941
	goto	u4940
u4941:
	goto	l6722
u4940:
	goto	l6728
	
l2406:	
	line	815
	
l6728:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@i_3080)^080h,f
	skipnc
	incf	(rotate_plane@i_3080+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@i_3080+1)^080h,f
	
l2403:	
	movf	(rotate_plane@i_3080+1)^080h,w
	xorlw	80h
	movwf	(??_rotate_plane+0)+0
	movf	(rotate_plane@time+1)^080h,w
	xorlw	80h
	subwf	(??_rotate_plane+0)+0,w
	skipz
	goto	u4955
	movf	(rotate_plane@time)^080h,w
	subwf	(rotate_plane@i_3080)^080h,w
u4955:

	skipc
	goto	u4951
	goto	u4950
u4951:
	goto	l6714
u4950:
	goto	l6730
	
l2407:	
	line	825
	
l6730:	
;Effect.c: 821: }
;Effect.c: 822: }
;Effect.c: 825: rotate_pattern[0] = 0x08;
	movlw	(08h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(rotate_plane@rotate_pattern)^080h
	line	826
;Effect.c: 826: rotate_pattern[1] = 0x08;
	movlw	(08h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+01h
	line	827
;Effect.c: 827: rotate_pattern[2] = 0x08;
	movlw	(08h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+02h
	line	828
;Effect.c: 828: rotate_pattern[3] = 0x08;
	movlw	(08h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+03h
	line	829
;Effect.c: 829: rotate_pattern[4] = 0x10;
	movlw	(010h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+04h
	line	830
;Effect.c: 830: rotate_pattern[5] = 0x10;
	movlw	(010h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+05h
	line	831
;Effect.c: 831: rotate_pattern[6] = 0x10;
	movlw	(010h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+06h
	line	832
;Effect.c: 832: rotate_pattern[7] = 0x10;
	movlw	(010h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+07h
	line	833
	
l6732:	
;Effect.c: 833: for(int i = 0; i<time; i++)
	clrf	(rotate_plane@i_3082)^080h
	clrf	(rotate_plane@i_3082+1)^080h
	goto	l2408
	line	834
	
l2409:	
	line	835
	
l6734:	
;Effect.c: 834: {
;Effect.c: 835: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_rotate_plane+0)+0+1),f
	movlw	125
movwf	((??_rotate_plane+0)+0),f
u5397:
	decfsz	((??_rotate_plane+0)+0),f
	goto	u5397
	decfsz	((??_rotate_plane+0)+0+1),f
	goto	u5397
opt asmopt_on

	line	836
	
l6736:	
;Effect.c: 836: for(int j = 0; j<8; j++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(rotate_plane@j_3083)^080h
	clrf	(rotate_plane@j_3083+1)^080h
	
l6738:	
	movf	(rotate_plane@j_3083+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4965
	movlw	low(08h)
	subwf	(rotate_plane@j_3083)^080h,w
u4965:

	skipc
	goto	u4961
	goto	u4960
u4961:
	goto	l6742
u4960:
	goto	l6748
	
l6740:	
	goto	l6748
	line	837
	
l2410:	
	line	838
	
l6742:	
;Effect.c: 837: {
;Effect.c: 838: show_pattern_on_a_plane(j,3,rotate_pattern);
	movlw	(03h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(rotate_plane@rotate_pattern)&0ffh
	movwf	(??_rotate_plane+1)+0
	movf	(??_rotate_plane+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(rotate_plane@j_3083)^080h,w
	fcall	_show_pattern_on_a_plane
	line	836
	
l6744:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@j_3083)^080h,f
	skipnc
	incf	(rotate_plane@j_3083+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@j_3083+1)^080h,f
	
l6746:	
	movf	(rotate_plane@j_3083+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4975
	movlw	low(08h)
	subwf	(rotate_plane@j_3083)^080h,w
u4975:

	skipc
	goto	u4971
	goto	u4970
u4971:
	goto	l6742
u4970:
	goto	l6748
	
l2411:	
	line	833
	
l6748:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@i_3082)^080h,f
	skipnc
	incf	(rotate_plane@i_3082+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@i_3082+1)^080h,f
	
l2408:	
	movf	(rotate_plane@i_3082+1)^080h,w
	xorlw	80h
	movwf	(??_rotate_plane+0)+0
	movf	(rotate_plane@time+1)^080h,w
	xorlw	80h
	subwf	(??_rotate_plane+0)+0,w
	skipz
	goto	u4985
	movf	(rotate_plane@time)^080h,w
	subwf	(rotate_plane@i_3082)^080h,w
u4985:

	skipc
	goto	u4981
	goto	u4980
u4981:
	goto	l6734
u4980:
	goto	l6750
	
l2412:	
	line	843
	
l6750:	
;Effect.c: 839: }
;Effect.c: 840: }
;Effect.c: 843: rotate_pattern[0] = 0x10;
	movlw	(010h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(rotate_plane@rotate_pattern)^080h
	line	844
;Effect.c: 844: rotate_pattern[1] = 0x10;
	movlw	(010h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+01h
	line	845
;Effect.c: 845: rotate_pattern[2] = 0x10;
	movlw	(010h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+02h
	line	846
;Effect.c: 846: rotate_pattern[3] = 0x10;
	movlw	(010h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+03h
	line	847
;Effect.c: 847: rotate_pattern[4] = 0x08;
	movlw	(08h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+04h
	line	848
;Effect.c: 848: rotate_pattern[5] = 0x08;
	movlw	(08h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+05h
	line	849
;Effect.c: 849: rotate_pattern[6] = 0x08;
	movlw	(08h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+06h
	line	850
;Effect.c: 850: rotate_pattern[7] = 0x08;
	movlw	(08h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+07h
	line	851
	
l6752:	
;Effect.c: 851: for(int i = 0; i<time; i++)
	clrf	(rotate_plane@i_3084)^080h
	clrf	(rotate_plane@i_3084+1)^080h
	goto	l2413
	line	852
	
l2414:	
	line	853
	
l6754:	
;Effect.c: 852: {
;Effect.c: 853: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_rotate_plane+0)+0+1),f
	movlw	125
movwf	((??_rotate_plane+0)+0),f
u5407:
	decfsz	((??_rotate_plane+0)+0),f
	goto	u5407
	decfsz	((??_rotate_plane+0)+0+1),f
	goto	u5407
opt asmopt_on

	line	854
	
l6756:	
;Effect.c: 854: for(int j = 0; j<8; j++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(rotate_plane@j_3085)^080h
	clrf	(rotate_plane@j_3085+1)^080h
	
l6758:	
	movf	(rotate_plane@j_3085+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4995
	movlw	low(08h)
	subwf	(rotate_plane@j_3085)^080h,w
u4995:

	skipc
	goto	u4991
	goto	u4990
u4991:
	goto	l6762
u4990:
	goto	l6768
	
l6760:	
	goto	l6768
	line	855
	
l2415:	
	line	856
	
l6762:	
;Effect.c: 855: {
;Effect.c: 856: show_pattern_on_a_plane(j,3,rotate_pattern);
	movlw	(03h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(rotate_plane@rotate_pattern)&0ffh
	movwf	(??_rotate_plane+1)+0
	movf	(??_rotate_plane+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(rotate_plane@j_3085)^080h,w
	fcall	_show_pattern_on_a_plane
	line	854
	
l6764:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@j_3085)^080h,f
	skipnc
	incf	(rotate_plane@j_3085+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@j_3085+1)^080h,f
	
l6766:	
	movf	(rotate_plane@j_3085+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5005
	movlw	low(08h)
	subwf	(rotate_plane@j_3085)^080h,w
u5005:

	skipc
	goto	u5001
	goto	u5000
u5001:
	goto	l6762
u5000:
	goto	l6768
	
l2416:	
	line	851
	
l6768:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@i_3084)^080h,f
	skipnc
	incf	(rotate_plane@i_3084+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@i_3084+1)^080h,f
	
l2413:	
	movf	(rotate_plane@i_3084+1)^080h,w
	xorlw	80h
	movwf	(??_rotate_plane+0)+0
	movf	(rotate_plane@time+1)^080h,w
	xorlw	80h
	subwf	(??_rotate_plane+0)+0,w
	skipz
	goto	u5015
	movf	(rotate_plane@time)^080h,w
	subwf	(rotate_plane@i_3084)^080h,w
u5015:

	skipc
	goto	u5011
	goto	u5010
u5011:
	goto	l6754
u5010:
	goto	l6770
	
l2417:	
	line	861
	
l6770:	
;Effect.c: 857: }
;Effect.c: 858: }
;Effect.c: 861: rotate_pattern[0] = 0x20;
	movlw	(020h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(rotate_plane@rotate_pattern)^080h
	line	862
;Effect.c: 862: rotate_pattern[1] = 0x20;
	movlw	(020h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+01h
	line	863
;Effect.c: 863: rotate_pattern[2] = 0x10;
	movlw	(010h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+02h
	line	864
;Effect.c: 864: rotate_pattern[3] = 0x10;
	movlw	(010h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+03h
	line	865
;Effect.c: 865: rotate_pattern[4] = 0x08;
	movlw	(08h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+04h
	line	866
;Effect.c: 866: rotate_pattern[5] = 0x08;
	movlw	(08h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+05h
	line	867
;Effect.c: 867: rotate_pattern[6] = 0x04;
	movlw	(04h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+06h
	line	868
;Effect.c: 868: rotate_pattern[7] = 0x04;
	movlw	(04h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+07h
	line	869
	
l6772:	
;Effect.c: 869: for(int i = 0; i<time; i++)
	clrf	(rotate_plane@i_3086)^080h
	clrf	(rotate_plane@i_3086+1)^080h
	goto	l2418
	line	870
	
l2419:	
	line	871
	
l6774:	
;Effect.c: 870: {
;Effect.c: 871: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_rotate_plane+0)+0+1),f
	movlw	125
movwf	((??_rotate_plane+0)+0),f
u5417:
	decfsz	((??_rotate_plane+0)+0),f
	goto	u5417
	decfsz	((??_rotate_plane+0)+0+1),f
	goto	u5417
opt asmopt_on

	line	872
	
l6776:	
;Effect.c: 872: for(int j = 0; j<8; j++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(rotate_plane@j_3087)^080h
	clrf	(rotate_plane@j_3087+1)^080h
	
l6778:	
	movf	(rotate_plane@j_3087+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5025
	movlw	low(08h)
	subwf	(rotate_plane@j_3087)^080h,w
u5025:

	skipc
	goto	u5021
	goto	u5020
u5021:
	goto	l6782
u5020:
	goto	l6788
	
l6780:	
	goto	l6788
	line	873
	
l2420:	
	line	874
	
l6782:	
;Effect.c: 873: {
;Effect.c: 874: show_pattern_on_a_plane(j,3,rotate_pattern);
	movlw	(03h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(rotate_plane@rotate_pattern)&0ffh
	movwf	(??_rotate_plane+1)+0
	movf	(??_rotate_plane+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(rotate_plane@j_3087)^080h,w
	fcall	_show_pattern_on_a_plane
	line	872
	
l6784:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@j_3087)^080h,f
	skipnc
	incf	(rotate_plane@j_3087+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@j_3087+1)^080h,f
	
l6786:	
	movf	(rotate_plane@j_3087+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5035
	movlw	low(08h)
	subwf	(rotate_plane@j_3087)^080h,w
u5035:

	skipc
	goto	u5031
	goto	u5030
u5031:
	goto	l6782
u5030:
	goto	l6788
	
l2421:	
	line	869
	
l6788:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@i_3086)^080h,f
	skipnc
	incf	(rotate_plane@i_3086+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@i_3086+1)^080h,f
	
l2418:	
	movf	(rotate_plane@i_3086+1)^080h,w
	xorlw	80h
	movwf	(??_rotate_plane+0)+0
	movf	(rotate_plane@time+1)^080h,w
	xorlw	80h
	subwf	(??_rotate_plane+0)+0,w
	skipz
	goto	u5045
	movf	(rotate_plane@time)^080h,w
	subwf	(rotate_plane@i_3086)^080h,w
u5045:

	skipc
	goto	u5041
	goto	u5040
u5041:
	goto	l6774
u5040:
	goto	l6790
	
l2422:	
	line	879
	
l6790:	
;Effect.c: 875: }
;Effect.c: 876: }
;Effect.c: 879: rotate_pattern[0] = 0x40;
	movlw	(040h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(rotate_plane@rotate_pattern)^080h
	line	880
;Effect.c: 880: rotate_pattern[1] = 0x20;
	movlw	(020h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+01h
	line	881
;Effect.c: 881: rotate_pattern[2] = 0x10;
	movlw	(010h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+02h
	line	882
;Effect.c: 882: rotate_pattern[3] = 0x10;
	movlw	(010h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+03h
	line	883
;Effect.c: 883: rotate_pattern[4] = 0x08;
	movlw	(08h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+04h
	line	884
;Effect.c: 884: rotate_pattern[5] = 0x08;
	movlw	(08h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+05h
	line	885
;Effect.c: 885: rotate_pattern[6] = 0x04;
	movlw	(04h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+06h
	line	886
;Effect.c: 886: rotate_pattern[7] = 0x02;
	movlw	(02h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+07h
	line	887
	
l6792:	
;Effect.c: 887: for(int i = 0; i<time; i++)
	clrf	(rotate_plane@i_3088)^080h
	clrf	(rotate_plane@i_3088+1)^080h
	goto	l2423
	line	888
	
l2424:	
	line	889
	
l6794:	
;Effect.c: 888: {
;Effect.c: 889: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_rotate_plane+0)+0+1),f
	movlw	125
movwf	((??_rotate_plane+0)+0),f
u5427:
	decfsz	((??_rotate_plane+0)+0),f
	goto	u5427
	decfsz	((??_rotate_plane+0)+0+1),f
	goto	u5427
opt asmopt_on

	line	890
	
l6796:	
;Effect.c: 890: for(int j = 0; j<8; j++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(rotate_plane@j_3089)^080h
	clrf	(rotate_plane@j_3089+1)^080h
	
l6798:	
	movf	(rotate_plane@j_3089+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5055
	movlw	low(08h)
	subwf	(rotate_plane@j_3089)^080h,w
u5055:

	skipc
	goto	u5051
	goto	u5050
u5051:
	goto	l6802
u5050:
	goto	l6808
	
l6800:	
	goto	l6808
	line	891
	
l2425:	
	line	892
	
l6802:	
;Effect.c: 891: {
;Effect.c: 892: show_pattern_on_a_plane(j,3,rotate_pattern);
	movlw	(03h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(rotate_plane@rotate_pattern)&0ffh
	movwf	(??_rotate_plane+1)+0
	movf	(??_rotate_plane+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(rotate_plane@j_3089)^080h,w
	fcall	_show_pattern_on_a_plane
	line	890
	
l6804:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@j_3089)^080h,f
	skipnc
	incf	(rotate_plane@j_3089+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@j_3089+1)^080h,f
	
l6806:	
	movf	(rotate_plane@j_3089+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5065
	movlw	low(08h)
	subwf	(rotate_plane@j_3089)^080h,w
u5065:

	skipc
	goto	u5061
	goto	u5060
u5061:
	goto	l6802
u5060:
	goto	l6808
	
l2426:	
	line	887
	
l6808:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@i_3088)^080h,f
	skipnc
	incf	(rotate_plane@i_3088+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@i_3088+1)^080h,f
	
l2423:	
	movf	(rotate_plane@i_3088+1)^080h,w
	xorlw	80h
	movwf	(??_rotate_plane+0)+0
	movf	(rotate_plane@time+1)^080h,w
	xorlw	80h
	subwf	(??_rotate_plane+0)+0,w
	skipz
	goto	u5075
	movf	(rotate_plane@time)^080h,w
	subwf	(rotate_plane@i_3088)^080h,w
u5075:

	skipc
	goto	u5071
	goto	u5070
u5071:
	goto	l6794
u5070:
	goto	l6810
	
l2427:	
	line	897
	
l6810:	
;Effect.c: 893: }
;Effect.c: 894: }
;Effect.c: 897: rotate_pattern[0] = 0x80;
	movlw	(080h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(rotate_plane@rotate_pattern)^080h
	line	898
;Effect.c: 898: rotate_pattern[1] = 0x40;
	movlw	(040h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+01h
	line	899
;Effect.c: 899: rotate_pattern[2] = 0x20;
	movlw	(020h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+02h
	line	900
;Effect.c: 900: rotate_pattern[3] = 0x10;
	movlw	(010h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+03h
	line	901
;Effect.c: 901: rotate_pattern[4] = 0x08;
	movlw	(08h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+04h
	line	902
;Effect.c: 902: rotate_pattern[5] = 0x04;
	movlw	(04h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+05h
	line	903
;Effect.c: 903: rotate_pattern[6] = 0x02;
	movlw	(02h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	0+(rotate_plane@rotate_pattern)^080h+06h
	line	904
	
l6812:	
;Effect.c: 904: rotate_pattern[7] = 0x01;
	clrf	0+(rotate_plane@rotate_pattern)^080h+07h
	bsf	status,0
	rlf	0+(rotate_plane@rotate_pattern)^080h+07h,f
	line	905
	
l6814:	
;Effect.c: 905: for(int i = 0; i<time; i++)
	clrf	(rotate_plane@i_3090)^080h
	clrf	(rotate_plane@i_3090+1)^080h
	goto	l2428
	line	906
	
l2429:	
	line	907
	
l6816:	
;Effect.c: 906: {
;Effect.c: 907: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_rotate_plane+0)+0+1),f
	movlw	125
movwf	((??_rotate_plane+0)+0),f
u5437:
	decfsz	((??_rotate_plane+0)+0),f
	goto	u5437
	decfsz	((??_rotate_plane+0)+0+1),f
	goto	u5437
opt asmopt_on

	line	908
	
l6818:	
;Effect.c: 908: for(int j = 0; j<8; j++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(rotate_plane@j_3091)^080h
	clrf	(rotate_plane@j_3091+1)^080h
	
l6820:	
	movf	(rotate_plane@j_3091+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5085
	movlw	low(08h)
	subwf	(rotate_plane@j_3091)^080h,w
u5085:

	skipc
	goto	u5081
	goto	u5080
u5081:
	goto	l6824
u5080:
	goto	l6830
	
l6822:	
	goto	l6830
	line	909
	
l2430:	
	line	910
	
l6824:	
;Effect.c: 909: {
;Effect.c: 910: show_pattern_on_a_plane(j,3,rotate_pattern);
	movlw	(03h)
	movwf	(??_rotate_plane+0)+0
	movf	(??_rotate_plane+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(rotate_plane@rotate_pattern)&0ffh
	movwf	(??_rotate_plane+1)+0
	movf	(??_rotate_plane+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(rotate_plane@j_3091)^080h,w
	fcall	_show_pattern_on_a_plane
	line	908
	
l6826:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@j_3091)^080h,f
	skipnc
	incf	(rotate_plane@j_3091+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@j_3091+1)^080h,f
	
l6828:	
	movf	(rotate_plane@j_3091+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5095
	movlw	low(08h)
	subwf	(rotate_plane@j_3091)^080h,w
u5095:

	skipc
	goto	u5091
	goto	u5090
u5091:
	goto	l6824
u5090:
	goto	l6830
	
l2431:	
	line	905
	
l6830:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(rotate_plane@i_3090)^080h,f
	skipnc
	incf	(rotate_plane@i_3090+1)^080h,f
	movlw	high(01h)
	addwf	(rotate_plane@i_3090+1)^080h,f
	
l2428:	
	movf	(rotate_plane@i_3090+1)^080h,w
	xorlw	80h
	movwf	(??_rotate_plane+0)+0
	movf	(rotate_plane@time+1)^080h,w
	xorlw	80h
	subwf	(??_rotate_plane+0)+0,w
	skipz
	goto	u5105
	movf	(rotate_plane@time)^080h,w
	subwf	(rotate_plane@i_3090)^080h,w
u5105:

	skipc
	goto	u5101
	goto	u5100
u5101:
	goto	l6816
u5100:
	goto	l2433
	
l2432:	
	line	913
	
l2433:	
	return
	opt stack 0
GLOBAL	__end_of_rotate_plane
	__end_of_rotate_plane:
;; =============== function _rotate_plane ends ============

	signat	_rotate_plane,88
	global	_expansion_box
psect	text546,local,class=CODE,delta=2
global __ptext546
__ptext546:

;; *************** function _expansion_box *****************
;; Defined at:
;;		line 567 in file "C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Effect.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               2   30[BANK0 ] int 
;;  j               2   28[BANK0 ] int 
;;  j               2   26[BANK0 ] int 
;;  j               2   24[BANK0 ] int 
;;  i               2   22[BANK0 ] int 
;;  i               2   20[BANK0 ] int 
;;  i               2   18[BANK0 ] int 
;;  i               2   16[BANK0 ] int 
;;  box_pattern     8   34[BANK0 ] unsigned char [8]
;;  time            2   32[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      26       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      26       0       0       0
;;Total ram usage:       30 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_show_pattern_on_a_plane
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text546
	file	"C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Effect.c"
	line	567
	global	__size_of_expansion_box
	__size_of_expansion_box	equ	__end_of_expansion_box-_expansion_box
	
_expansion_box:	
	opt	stack 6
; Regs used in _expansion_box: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	568
	
l6358:	
;Effect.c: 568: int time = 80;
	movlw	low(050h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(expansion_box@time)
	movlw	high(050h)
	movwf	((expansion_box@time))+1
	line	569
	
l6360:	
;Effect.c: 569: unsigned char box_pattern[8] = {{0}};
	movlw	(expansion_box@box_pattern)&0ffh
	movwf	fsr0
	movlw	low(expansion_box@F1188)
	movwf	(??_expansion_box+0)+0
	movf	fsr0,w
	movwf	((??_expansion_box+0)+0+1)
	movlw	8
	movwf	((??_expansion_box+0)+0+2)
u4520:
	movf	(??_expansion_box+0)+0,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	
	movf	indf,w
	movwf	((??_expansion_box+0)+0+3)
	incf	(??_expansion_box+0)+0,f
	movf	((??_expansion_box+0)+0+1),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	((??_expansion_box+0)+0+3),w
	movwf	indf
	incf	((??_expansion_box+0)+0+1),f
	decfsz	((??_expansion_box+0)+0+2),f
	goto	u4520
	line	570
	
l6362:	
;Effect.c: 570: box_pattern[0] = 0x00;
	clrf	(expansion_box@box_pattern)
	line	571
	
l6364:	
;Effect.c: 571: box_pattern[1] = 0x00;
	clrf	0+(expansion_box@box_pattern)+01h
	line	572
	
l6366:	
;Effect.c: 572: box_pattern[2] = 0x00;
	clrf	0+(expansion_box@box_pattern)+02h
	line	573
	
l6368:	
;Effect.c: 573: box_pattern[3] = 0x18;
	movlw	(018h)
	movwf	(??_expansion_box+0)+0
	movf	(??_expansion_box+0)+0,w
	movwf	0+(expansion_box@box_pattern)+03h
	line	574
	
l6370:	
;Effect.c: 574: box_pattern[4] = 0x18;
	movlw	(018h)
	movwf	(??_expansion_box+0)+0
	movf	(??_expansion_box+0)+0,w
	movwf	0+(expansion_box@box_pattern)+04h
	line	575
	
l6372:	
;Effect.c: 575: box_pattern[5] = 0x00;
	clrf	0+(expansion_box@box_pattern)+05h
	line	576
	
l6374:	
;Effect.c: 576: box_pattern[6] = 0x00;
	clrf	0+(expansion_box@box_pattern)+06h
	line	577
	
l6376:	
;Effect.c: 577: box_pattern[7] = 0x00;
	clrf	0+(expansion_box@box_pattern)+07h
	line	579
	
l6378:	
;Effect.c: 579: for(int i = 0; i<time; i++)
	clrf	(expansion_box@i)
	clrf	(expansion_box@i+1)
	goto	l2333
	line	580
	
l2334:	
	line	581
	
l6380:	
;Effect.c: 580: {
;Effect.c: 581: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_expansion_box+0)+0+1),f
	movlw	125
movwf	((??_expansion_box+0)+0),f
u5447:
	decfsz	((??_expansion_box+0)+0),f
	goto	u5447
	decfsz	((??_expansion_box+0)+0+1),f
	goto	u5447
opt asmopt_on

	line	582
;Effect.c: 582: for(int j = 3; j<5; j++)
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(expansion_box@j)
	movlw	high(03h)
	movwf	((expansion_box@j))+1
	
l6382:	
	movf	(expansion_box@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4535
	movlw	low(05h)
	subwf	(expansion_box@j),w
u4535:

	skipc
	goto	u4531
	goto	u4530
u4531:
	goto	l6386
u4530:
	goto	l6392
	
l6384:	
	goto	l6392
	line	583
	
l2335:	
	line	584
	
l6386:	
;Effect.c: 583: {
;Effect.c: 584: show_pattern_on_a_plane(j,3,box_pattern);
	movlw	(03h)
	movwf	(??_expansion_box+0)+0
	movf	(??_expansion_box+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(expansion_box@box_pattern)&0ffh
	movwf	(??_expansion_box+1)+0
	movf	(??_expansion_box+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(expansion_box@j),w
	fcall	_show_pattern_on_a_plane
	line	582
	
l6388:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(expansion_box@j),f
	skipnc
	incf	(expansion_box@j+1),f
	movlw	high(01h)
	addwf	(expansion_box@j+1),f
	
l6390:	
	movf	(expansion_box@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4545
	movlw	low(05h)
	subwf	(expansion_box@j),w
u4545:

	skipc
	goto	u4541
	goto	u4540
u4541:
	goto	l6386
u4540:
	goto	l6392
	
l2336:	
	line	579
	
l6392:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(expansion_box@i),f
	skipnc
	incf	(expansion_box@i+1),f
	movlw	high(01h)
	addwf	(expansion_box@i+1),f
	
l2333:	
	movf	(expansion_box@i+1),w
	xorlw	80h
	movwf	(??_expansion_box+0)+0
	movf	(expansion_box@time+1),w
	xorlw	80h
	subwf	(??_expansion_box+0)+0,w
	skipz
	goto	u4555
	movf	(expansion_box@time),w
	subwf	(expansion_box@i),w
u4555:

	skipc
	goto	u4551
	goto	u4550
u4551:
	goto	l6380
u4550:
	
l2337:	
	line	588
;Effect.c: 585: }
;Effect.c: 586: }
;Effect.c: 588: box_pattern[0] = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(expansion_box@box_pattern)
	line	589
;Effect.c: 589: box_pattern[1] = 0x00;
	clrf	0+(expansion_box@box_pattern)+01h
	line	590
	
l6394:	
;Effect.c: 590: box_pattern[2] = 0x3c;
	movlw	(03Ch)
	movwf	(??_expansion_box+0)+0
	movf	(??_expansion_box+0)+0,w
	movwf	0+(expansion_box@box_pattern)+02h
	line	591
;Effect.c: 591: box_pattern[3] = 0x3c;
	movlw	(03Ch)
	movwf	(??_expansion_box+0)+0
	movf	(??_expansion_box+0)+0,w
	movwf	0+(expansion_box@box_pattern)+03h
	line	592
;Effect.c: 592: box_pattern[4] = 0x3c;
	movlw	(03Ch)
	movwf	(??_expansion_box+0)+0
	movf	(??_expansion_box+0)+0,w
	movwf	0+(expansion_box@box_pattern)+04h
	line	593
;Effect.c: 593: box_pattern[5] = 0x3c;
	movlw	(03Ch)
	movwf	(??_expansion_box+0)+0
	movf	(??_expansion_box+0)+0,w
	movwf	0+(expansion_box@box_pattern)+05h
	line	594
	
l6396:	
;Effect.c: 594: box_pattern[6] = 0x00;
	clrf	0+(expansion_box@box_pattern)+06h
	line	595
	
l6398:	
;Effect.c: 595: box_pattern[7] = 0x00;
	clrf	0+(expansion_box@box_pattern)+07h
	line	597
	
l6400:	
;Effect.c: 597: for(int i = 0; i<(time-10); i++)
	clrf	(expansion_box@i_3052)
	clrf	(expansion_box@i_3052+1)
	goto	l6416
	line	598
	
l2339:	
	line	599
	
l6402:	
;Effect.c: 598: {
;Effect.c: 599: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_expansion_box+0)+0+1),f
	movlw	125
movwf	((??_expansion_box+0)+0),f
u5457:
	decfsz	((??_expansion_box+0)+0),f
	goto	u5457
	decfsz	((??_expansion_box+0)+0+1),f
	goto	u5457
opt asmopt_on

	line	600
;Effect.c: 600: for(int j = 2; j<6; j++)
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(expansion_box@j_3053)
	movlw	high(02h)
	movwf	((expansion_box@j_3053))+1
	
l6404:	
	movf	(expansion_box@j_3053+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4565
	movlw	low(06h)
	subwf	(expansion_box@j_3053),w
u4565:

	skipc
	goto	u4561
	goto	u4560
u4561:
	goto	l6408
u4560:
	goto	l6414
	
l6406:	
	goto	l6414
	line	601
	
l2340:	
	line	602
	
l6408:	
;Effect.c: 601: {
;Effect.c: 602: show_pattern_on_a_plane(j,3,box_pattern);
	movlw	(03h)
	movwf	(??_expansion_box+0)+0
	movf	(??_expansion_box+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(expansion_box@box_pattern)&0ffh
	movwf	(??_expansion_box+1)+0
	movf	(??_expansion_box+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(expansion_box@j_3053),w
	fcall	_show_pattern_on_a_plane
	line	600
	
l6410:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(expansion_box@j_3053),f
	skipnc
	incf	(expansion_box@j_3053+1),f
	movlw	high(01h)
	addwf	(expansion_box@j_3053+1),f
	
l6412:	
	movf	(expansion_box@j_3053+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4575
	movlw	low(06h)
	subwf	(expansion_box@j_3053),w
u4575:

	skipc
	goto	u4571
	goto	u4570
u4571:
	goto	l6408
u4570:
	goto	l6414
	
l2341:	
	line	597
	
l6414:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(expansion_box@i_3052),f
	skipnc
	incf	(expansion_box@i_3052+1),f
	movlw	high(01h)
	addwf	(expansion_box@i_3052+1),f
	goto	l6416
	
l2338:	
	
l6416:	
	movf	(expansion_box@time),w
	addlw	low(-10)
	movwf	(??_expansion_box+0)+0
	movf	(expansion_box@time+1),w
	skipnc
	addlw	1
	addlw	high(-10)
	movwf	1+(??_expansion_box+0)+0
	movf	(expansion_box@i_3052+1),w
	xorlw	80h
	movwf	(??_expansion_box+2)+0
	movf	1+(??_expansion_box+0)+0,w
	xorlw	80h
	subwf	(??_expansion_box+2)+0,w
	skipz
	goto	u4585
	movf	0+(??_expansion_box+0)+0,w
	subwf	(expansion_box@i_3052),w
u4585:

	skipc
	goto	u4581
	goto	u4580
u4581:
	goto	l6402
u4580:
	
l2342:	
	line	606
;Effect.c: 603: }
;Effect.c: 604: }
;Effect.c: 606: box_pattern[0] = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(expansion_box@box_pattern)
	line	607
	
l6418:	
;Effect.c: 607: box_pattern[1] = 0x7e;
	movlw	(07Eh)
	movwf	(??_expansion_box+0)+0
	movf	(??_expansion_box+0)+0,w
	movwf	0+(expansion_box@box_pattern)+01h
	line	608
;Effect.c: 608: box_pattern[2] = 0x7e;
	movlw	(07Eh)
	movwf	(??_expansion_box+0)+0
	movf	(??_expansion_box+0)+0,w
	movwf	0+(expansion_box@box_pattern)+02h
	line	609
;Effect.c: 609: box_pattern[3] = 0x7e;
	movlw	(07Eh)
	movwf	(??_expansion_box+0)+0
	movf	(??_expansion_box+0)+0,w
	movwf	0+(expansion_box@box_pattern)+03h
	line	610
;Effect.c: 610: box_pattern[4] = 0x7e;
	movlw	(07Eh)
	movwf	(??_expansion_box+0)+0
	movf	(??_expansion_box+0)+0,w
	movwf	0+(expansion_box@box_pattern)+04h
	line	611
;Effect.c: 611: box_pattern[5] = 0x7e;
	movlw	(07Eh)
	movwf	(??_expansion_box+0)+0
	movf	(??_expansion_box+0)+0,w
	movwf	0+(expansion_box@box_pattern)+05h
	line	612
;Effect.c: 612: box_pattern[6] = 0x7e;
	movlw	(07Eh)
	movwf	(??_expansion_box+0)+0
	movf	(??_expansion_box+0)+0,w
	movwf	0+(expansion_box@box_pattern)+06h
	line	613
	
l6420:	
;Effect.c: 613: box_pattern[7] = 0x00;
	clrf	0+(expansion_box@box_pattern)+07h
	line	615
	
l6422:	
;Effect.c: 615: for(int i = 0; i<(time-20); i++)
	clrf	(expansion_box@i_3054)
	clrf	(expansion_box@i_3054+1)
	goto	l6438
	line	616
	
l2344:	
	line	617
	
l6424:	
;Effect.c: 616: {
;Effect.c: 617: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_expansion_box+0)+0+1),f
	movlw	125
movwf	((??_expansion_box+0)+0),f
u5467:
	decfsz	((??_expansion_box+0)+0),f
	goto	u5467
	decfsz	((??_expansion_box+0)+0+1),f
	goto	u5467
opt asmopt_on

	line	618
;Effect.c: 618: for(int j = 1; j<7; j++)
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(expansion_box@j_3055)
	movlw	high(01h)
	movwf	((expansion_box@j_3055))+1
	
l6426:	
	movf	(expansion_box@j_3055+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4595
	movlw	low(07h)
	subwf	(expansion_box@j_3055),w
u4595:

	skipc
	goto	u4591
	goto	u4590
u4591:
	goto	l6430
u4590:
	goto	l6436
	
l6428:	
	goto	l6436
	line	619
	
l2345:	
	line	620
	
l6430:	
;Effect.c: 619: {
;Effect.c: 620: show_pattern_on_a_plane(j,3,box_pattern);
	movlw	(03h)
	movwf	(??_expansion_box+0)+0
	movf	(??_expansion_box+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(expansion_box@box_pattern)&0ffh
	movwf	(??_expansion_box+1)+0
	movf	(??_expansion_box+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(expansion_box@j_3055),w
	fcall	_show_pattern_on_a_plane
	line	618
	
l6432:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(expansion_box@j_3055),f
	skipnc
	incf	(expansion_box@j_3055+1),f
	movlw	high(01h)
	addwf	(expansion_box@j_3055+1),f
	
l6434:	
	movf	(expansion_box@j_3055+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4605
	movlw	low(07h)
	subwf	(expansion_box@j_3055),w
u4605:

	skipc
	goto	u4601
	goto	u4600
u4601:
	goto	l6430
u4600:
	goto	l6436
	
l2346:	
	line	615
	
l6436:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(expansion_box@i_3054),f
	skipnc
	incf	(expansion_box@i_3054+1),f
	movlw	high(01h)
	addwf	(expansion_box@i_3054+1),f
	goto	l6438
	
l2343:	
	
l6438:	
	movf	(expansion_box@time),w
	addlw	low(-20)
	movwf	(??_expansion_box+0)+0
	movf	(expansion_box@time+1),w
	skipnc
	addlw	1
	addlw	high(-20)
	movwf	1+(??_expansion_box+0)+0
	movf	(expansion_box@i_3054+1),w
	xorlw	80h
	movwf	(??_expansion_box+2)+0
	movf	1+(??_expansion_box+0)+0,w
	xorlw	80h
	subwf	(??_expansion_box+2)+0,w
	skipz
	goto	u4615
	movf	0+(??_expansion_box+0)+0,w
	subwf	(expansion_box@i_3054),w
u4615:

	skipc
	goto	u4611
	goto	u4610
u4611:
	goto	l6424
u4610:
	goto	l6440
	
l2347:	
	line	624
	
l6440:	
;Effect.c: 621: }
;Effect.c: 622: }
;Effect.c: 624: box_pattern[0] = 0xff;
	movlw	(0FFh)
	movwf	(??_expansion_box+0)+0
	movf	(??_expansion_box+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(expansion_box@box_pattern)
	line	625
;Effect.c: 625: box_pattern[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_expansion_box+0)+0
	movf	(??_expansion_box+0)+0,w
	movwf	0+(expansion_box@box_pattern)+01h
	line	626
;Effect.c: 626: box_pattern[2] = 0xff;
	movlw	(0FFh)
	movwf	(??_expansion_box+0)+0
	movf	(??_expansion_box+0)+0,w
	movwf	0+(expansion_box@box_pattern)+02h
	line	627
;Effect.c: 627: box_pattern[3] = 0xff;
	movlw	(0FFh)
	movwf	(??_expansion_box+0)+0
	movf	(??_expansion_box+0)+0,w
	movwf	0+(expansion_box@box_pattern)+03h
	line	628
;Effect.c: 628: box_pattern[4] = 0xff;
	movlw	(0FFh)
	movwf	(??_expansion_box+0)+0
	movf	(??_expansion_box+0)+0,w
	movwf	0+(expansion_box@box_pattern)+04h
	line	629
;Effect.c: 629: box_pattern[5] = 0xff;
	movlw	(0FFh)
	movwf	(??_expansion_box+0)+0
	movf	(??_expansion_box+0)+0,w
	movwf	0+(expansion_box@box_pattern)+05h
	line	630
;Effect.c: 630: box_pattern[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_expansion_box+0)+0
	movf	(??_expansion_box+0)+0,w
	movwf	0+(expansion_box@box_pattern)+06h
	line	631
;Effect.c: 631: box_pattern[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_expansion_box+0)+0
	movf	(??_expansion_box+0)+0,w
	movwf	0+(expansion_box@box_pattern)+07h
	line	633
	
l6442:	
;Effect.c: 633: for(int i = 0; i<(time-30); i++)
	clrf	(expansion_box@i_3056)
	clrf	(expansion_box@i_3056+1)
	goto	l6460
	line	634
	
l2349:	
	line	635
	
l6444:	
;Effect.c: 634: {
;Effect.c: 635: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_expansion_box+0)+0+1),f
	movlw	125
movwf	((??_expansion_box+0)+0),f
u5477:
	decfsz	((??_expansion_box+0)+0),f
	goto	u5477
	decfsz	((??_expansion_box+0)+0+1),f
	goto	u5477
opt asmopt_on

	line	636
	
l6446:	
;Effect.c: 636: for(int j = 0; j<8; j++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(expansion_box@j_3057)
	clrf	(expansion_box@j_3057+1)
	
l6448:	
	movf	(expansion_box@j_3057+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4625
	movlw	low(08h)
	subwf	(expansion_box@j_3057),w
u4625:

	skipc
	goto	u4621
	goto	u4620
u4621:
	goto	l6452
u4620:
	goto	l6458
	
l6450:	
	goto	l6458
	line	637
	
l2350:	
	line	638
	
l6452:	
;Effect.c: 637: {
;Effect.c: 638: show_pattern_on_a_plane(j,3,box_pattern);
	movlw	(03h)
	movwf	(??_expansion_box+0)+0
	movf	(??_expansion_box+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(expansion_box@box_pattern)&0ffh
	movwf	(??_expansion_box+1)+0
	movf	(??_expansion_box+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(expansion_box@j_3057),w
	fcall	_show_pattern_on_a_plane
	line	636
	
l6454:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(expansion_box@j_3057),f
	skipnc
	incf	(expansion_box@j_3057+1),f
	movlw	high(01h)
	addwf	(expansion_box@j_3057+1),f
	
l6456:	
	movf	(expansion_box@j_3057+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4635
	movlw	low(08h)
	subwf	(expansion_box@j_3057),w
u4635:

	skipc
	goto	u4631
	goto	u4630
u4631:
	goto	l6452
u4630:
	goto	l6458
	
l2351:	
	line	633
	
l6458:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(expansion_box@i_3056),f
	skipnc
	incf	(expansion_box@i_3056+1),f
	movlw	high(01h)
	addwf	(expansion_box@i_3056+1),f
	goto	l6460
	
l2348:	
	
l6460:	
	movf	(expansion_box@time),w
	addlw	low(-30)
	movwf	(??_expansion_box+0)+0
	movf	(expansion_box@time+1),w
	skipnc
	addlw	1
	addlw	high(-30)
	movwf	1+(??_expansion_box+0)+0
	movf	(expansion_box@i_3056+1),w
	xorlw	80h
	movwf	(??_expansion_box+2)+0
	movf	1+(??_expansion_box+0)+0,w
	xorlw	80h
	subwf	(??_expansion_box+2)+0,w
	skipz
	goto	u4645
	movf	0+(??_expansion_box+0)+0,w
	subwf	(expansion_box@i_3056),w
u4645:

	skipc
	goto	u4641
	goto	u4640
u4641:
	goto	l6444
u4640:
	goto	l2353
	
l2352:	
	line	641
	
l2353:	
	return
	opt stack 0
GLOBAL	__end_of_expansion_box
	__end_of_expansion_box:
;; =============== function _expansion_box ends ============

	signat	_expansion_box,88
	global	_contraction_expansion_square_ri
psect	text547,local,class=CODE,delta=2
global __ptext547
__ptext547:

;; *************** function _contraction_expansion_square_ri *****************
;; Defined at:
;;		line 363 in file "C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Effect.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   16[BANK0 ] int 
;;  square_ring_    8   18[BANK0 ] unsigned char [8]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      10       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      10       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_show_pattern_on_a_plane
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text547
	file	"C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Effect.c"
	line	363
	global	__size_of_contraction_expansion_square_ri
	__size_of_contraction_expansion_square_ri	equ	__end_of_contraction_expansion_square_ri-_contraction_expansion_square_ri
	
_contraction_expansion_square_ri:	
	opt	stack 6
; Regs used in _contraction_expansion_square_ri: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	364
	
l6186:	
;Effect.c: 364: unsigned char square_ring_pattern[8] = {{0}};
	movlw	(contraction_expansion_square_ri@square_ring_pattern)&0ffh
	movwf	fsr0
	movlw	low(contraction_expansion_square_ri@F1168)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	fsr0,w
	movwf	((??_contraction_expansion_square_ri+0)+0+1)
	movlw	8
	movwf	((??_contraction_expansion_square_ri+0)+0+2)
u4490:
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_contraction_expansion_square_ri+0)+0+3)
	incf	(??_contraction_expansion_square_ri+0)+0,f
	movf	((??_contraction_expansion_square_ri+0)+0+1),w
	movwf	fsr0
	
	movf	((??_contraction_expansion_square_ri+0)+0+3),w
	movwf	indf
	incf	((??_contraction_expansion_square_ri+0)+0+1),f
	decfsz	((??_contraction_expansion_square_ri+0)+0+2),f
	goto	u4490
	line	365
	
l6188:	
;Effect.c: 365: square_ring_pattern[0] = 0xff;
	movlw	(0FFh)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(contraction_expansion_square_ri@square_ring_pattern)
	line	366
	
l6190:	
;Effect.c: 366: square_ring_pattern[1] = 0x81;
	movlw	(081h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+01h
	line	367
	
l6192:	
;Effect.c: 367: square_ring_pattern[2] = 0x81;
	movlw	(081h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+02h
	line	368
	
l6194:	
;Effect.c: 368: square_ring_pattern[3] = 0x81;
	movlw	(081h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+03h
	line	369
	
l6196:	
;Effect.c: 369: square_ring_pattern[4] = 0x81;
	movlw	(081h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+04h
	line	370
	
l6198:	
;Effect.c: 370: square_ring_pattern[5] = 0x81;
	movlw	(081h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+05h
	line	371
	
l6200:	
;Effect.c: 371: square_ring_pattern[6] = 0x81;
	movlw	(081h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+06h
	line	372
	
l6202:	
;Effect.c: 372: square_ring_pattern[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+07h
	line	374
	
l6204:	
;Effect.c: 374: show_pattern_on_a_plane(0,3,square_ring_pattern);
	movlw	(03h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(contraction_expansion_square_ri@square_ring_pattern)&0ffh
	movwf	(??_contraction_expansion_square_ri+1)+0
	movf	(??_contraction_expansion_square_ri+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	movlw	(0)
	fcall	_show_pattern_on_a_plane
	line	375
	
l6206:	
;Effect.c: 375: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_contraction_expansion_square_ri+0)+0+2),f
movlw	175
movwf	((??_contraction_expansion_square_ri+0)+0+1),f
	movlw	193
movwf	((??_contraction_expansion_square_ri+0)+0),f
u5487:
	decfsz	((??_contraction_expansion_square_ri+0)+0),f
	goto	u5487
	decfsz	((??_contraction_expansion_square_ri+0)+0+1),f
	goto	u5487
	decfsz	((??_contraction_expansion_square_ri+0)+0+2),f
	goto	u5487
	clrwdt
opt asmopt_on

	line	377
	
l6208:	
;Effect.c: 377: square_ring_pattern[0] = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(contraction_expansion_square_ri@square_ring_pattern)
	line	378
	
l6210:	
;Effect.c: 378: square_ring_pattern[1] = 0x7e;
	movlw	(07Eh)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+01h
	line	379
	
l6212:	
;Effect.c: 379: square_ring_pattern[2] = 0x42;
	movlw	(042h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+02h
	line	380
	
l6214:	
;Effect.c: 380: square_ring_pattern[3] = 0x42;
	movlw	(042h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+03h
	line	381
	
l6216:	
;Effect.c: 381: square_ring_pattern[4] = 0x42;
	movlw	(042h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+04h
	line	382
	
l6218:	
;Effect.c: 382: square_ring_pattern[5] = 0x42;
	movlw	(042h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+05h
	line	383
	
l6220:	
;Effect.c: 383: square_ring_pattern[6] = 0x7e;
	movlw	(07Eh)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+06h
	line	384
	
l6222:	
;Effect.c: 384: square_ring_pattern[7] = 0x00;
	clrf	0+(contraction_expansion_square_ri@square_ring_pattern)+07h
	line	386
	
l6224:	
;Effect.c: 386: show_pattern_on_a_plane(1,3,square_ring_pattern);
	movlw	(03h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(contraction_expansion_square_ri@square_ring_pattern)&0ffh
	movwf	(??_contraction_expansion_square_ri+1)+0
	movf	(??_contraction_expansion_square_ri+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	movlw	(01h)
	fcall	_show_pattern_on_a_plane
	line	387
	
l6226:	
;Effect.c: 387: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_contraction_expansion_square_ri+0)+0+2),f
movlw	175
movwf	((??_contraction_expansion_square_ri+0)+0+1),f
	movlw	193
movwf	((??_contraction_expansion_square_ri+0)+0),f
u5497:
	decfsz	((??_contraction_expansion_square_ri+0)+0),f
	goto	u5497
	decfsz	((??_contraction_expansion_square_ri+0)+0+1),f
	goto	u5497
	decfsz	((??_contraction_expansion_square_ri+0)+0+2),f
	goto	u5497
	clrwdt
opt asmopt_on

	line	391
	
l6228:	
;Effect.c: 391: square_ring_pattern[0] = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(contraction_expansion_square_ri@square_ring_pattern)
	line	392
	
l6230:	
;Effect.c: 392: square_ring_pattern[1] = 0x00;
	clrf	0+(contraction_expansion_square_ri@square_ring_pattern)+01h
	line	393
	
l6232:	
;Effect.c: 393: square_ring_pattern[2] = 0x3c;
	movlw	(03Ch)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+02h
	line	394
	
l6234:	
;Effect.c: 394: square_ring_pattern[3] = 0x24;
	movlw	(024h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+03h
	line	395
	
l6236:	
;Effect.c: 395: square_ring_pattern[4] = 0x24;
	movlw	(024h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+04h
	line	396
	
l6238:	
;Effect.c: 396: square_ring_pattern[5] = 0x3c;
	movlw	(03Ch)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+05h
	line	397
	
l6240:	
;Effect.c: 397: square_ring_pattern[6] = 0x00;
	clrf	0+(contraction_expansion_square_ri@square_ring_pattern)+06h
	line	398
	
l6242:	
;Effect.c: 398: square_ring_pattern[7] = 0x00;
	clrf	0+(contraction_expansion_square_ri@square_ring_pattern)+07h
	line	400
	
l6244:	
;Effect.c: 400: show_pattern_on_a_plane(2,3,square_ring_pattern);
	movlw	(03h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(contraction_expansion_square_ri@square_ring_pattern)&0ffh
	movwf	(??_contraction_expansion_square_ri+1)+0
	movf	(??_contraction_expansion_square_ri+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	movlw	(02h)
	fcall	_show_pattern_on_a_plane
	line	401
	
l6246:	
;Effect.c: 401: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_contraction_expansion_square_ri+0)+0+2),f
movlw	175
movwf	((??_contraction_expansion_square_ri+0)+0+1),f
	movlw	193
movwf	((??_contraction_expansion_square_ri+0)+0),f
u5507:
	decfsz	((??_contraction_expansion_square_ri+0)+0),f
	goto	u5507
	decfsz	((??_contraction_expansion_square_ri+0)+0+1),f
	goto	u5507
	decfsz	((??_contraction_expansion_square_ri+0)+0+2),f
	goto	u5507
	clrwdt
opt asmopt_on

	line	405
	
l6248:	
;Effect.c: 405: square_ring_pattern[0] = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(contraction_expansion_square_ri@square_ring_pattern)
	line	406
	
l6250:	
;Effect.c: 406: square_ring_pattern[1] = 0x00;
	clrf	0+(contraction_expansion_square_ri@square_ring_pattern)+01h
	line	407
	
l6252:	
;Effect.c: 407: square_ring_pattern[2] = 0x00;
	clrf	0+(contraction_expansion_square_ri@square_ring_pattern)+02h
	line	408
	
l6254:	
;Effect.c: 408: square_ring_pattern[3] = 0x18;
	movlw	(018h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+03h
	line	409
	
l6256:	
;Effect.c: 409: square_ring_pattern[4] = 0x18;
	movlw	(018h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+04h
	line	410
	
l6258:	
;Effect.c: 410: square_ring_pattern[5] = 0x00;
	clrf	0+(contraction_expansion_square_ri@square_ring_pattern)+05h
	line	411
	
l6260:	
;Effect.c: 411: square_ring_pattern[6] = 0x00;
	clrf	0+(contraction_expansion_square_ri@square_ring_pattern)+06h
	line	412
	
l6262:	
;Effect.c: 412: square_ring_pattern[7] = 0x00;
	clrf	0+(contraction_expansion_square_ri@square_ring_pattern)+07h
	line	414
	
l6264:	
;Effect.c: 414: show_pattern_on_a_plane(3,3,square_ring_pattern);
	movlw	(03h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(contraction_expansion_square_ri@square_ring_pattern)&0ffh
	movwf	(??_contraction_expansion_square_ri+1)+0
	movf	(??_contraction_expansion_square_ri+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	movlw	(03h)
	fcall	_show_pattern_on_a_plane
	line	415
	
l6266:	
;Effect.c: 415: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_contraction_expansion_square_ri+0)+0+2),f
movlw	175
movwf	((??_contraction_expansion_square_ri+0)+0+1),f
	movlw	193
movwf	((??_contraction_expansion_square_ri+0)+0),f
u5517:
	decfsz	((??_contraction_expansion_square_ri+0)+0),f
	goto	u5517
	decfsz	((??_contraction_expansion_square_ri+0)+0+1),f
	goto	u5517
	decfsz	((??_contraction_expansion_square_ri+0)+0+2),f
	goto	u5517
	clrwdt
opt asmopt_on

	line	419
	
l6268:	
;Effect.c: 419: square_ring_pattern[0] = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(contraction_expansion_square_ri@square_ring_pattern)
	line	420
	
l6270:	
;Effect.c: 420: square_ring_pattern[1] = 0x00;
	clrf	0+(contraction_expansion_square_ri@square_ring_pattern)+01h
	line	421
	
l6272:	
;Effect.c: 421: square_ring_pattern[2] = 0x00;
	clrf	0+(contraction_expansion_square_ri@square_ring_pattern)+02h
	line	422
	
l6274:	
;Effect.c: 422: square_ring_pattern[3] = 0x18;
	movlw	(018h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+03h
	line	423
	
l6276:	
;Effect.c: 423: square_ring_pattern[4] = 0x18;
	movlw	(018h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+04h
	line	424
	
l6278:	
;Effect.c: 424: square_ring_pattern[5] = 0x00;
	clrf	0+(contraction_expansion_square_ri@square_ring_pattern)+05h
	line	425
	
l6280:	
;Effect.c: 425: square_ring_pattern[6] = 0x00;
	clrf	0+(contraction_expansion_square_ri@square_ring_pattern)+06h
	line	426
	
l6282:	
;Effect.c: 426: square_ring_pattern[7] = 0x00;
	clrf	0+(contraction_expansion_square_ri@square_ring_pattern)+07h
	line	428
	
l6284:	
;Effect.c: 428: show_pattern_on_a_plane(4,3,square_ring_pattern);
	movlw	(03h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(contraction_expansion_square_ri@square_ring_pattern)&0ffh
	movwf	(??_contraction_expansion_square_ri+1)+0
	movf	(??_contraction_expansion_square_ri+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	movlw	(04h)
	fcall	_show_pattern_on_a_plane
	line	429
	
l6286:	
;Effect.c: 429: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_contraction_expansion_square_ri+0)+0+2),f
movlw	175
movwf	((??_contraction_expansion_square_ri+0)+0+1),f
	movlw	193
movwf	((??_contraction_expansion_square_ri+0)+0),f
u5527:
	decfsz	((??_contraction_expansion_square_ri+0)+0),f
	goto	u5527
	decfsz	((??_contraction_expansion_square_ri+0)+0+1),f
	goto	u5527
	decfsz	((??_contraction_expansion_square_ri+0)+0+2),f
	goto	u5527
	clrwdt
opt asmopt_on

	line	432
	
l6288:	
;Effect.c: 432: square_ring_pattern[0] = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(contraction_expansion_square_ri@square_ring_pattern)
	line	433
	
l6290:	
;Effect.c: 433: square_ring_pattern[1] = 0x00;
	clrf	0+(contraction_expansion_square_ri@square_ring_pattern)+01h
	line	434
	
l6292:	
;Effect.c: 434: square_ring_pattern[2] = 0x3c;
	movlw	(03Ch)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+02h
	line	435
	
l6294:	
;Effect.c: 435: square_ring_pattern[3] = 0x24;
	movlw	(024h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+03h
	line	436
	
l6296:	
;Effect.c: 436: square_ring_pattern[4] = 0x24;
	movlw	(024h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+04h
	line	437
	
l6298:	
;Effect.c: 437: square_ring_pattern[5] = 0x3c;
	movlw	(03Ch)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+05h
	line	438
	
l6300:	
;Effect.c: 438: square_ring_pattern[6] = 0x00;
	clrf	0+(contraction_expansion_square_ri@square_ring_pattern)+06h
	line	439
	
l6302:	
;Effect.c: 439: square_ring_pattern[7] = 0x00;
	clrf	0+(contraction_expansion_square_ri@square_ring_pattern)+07h
	line	441
	
l6304:	
;Effect.c: 441: show_pattern_on_a_plane(5,3,square_ring_pattern);
	movlw	(03h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(contraction_expansion_square_ri@square_ring_pattern)&0ffh
	movwf	(??_contraction_expansion_square_ri+1)+0
	movf	(??_contraction_expansion_square_ri+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	movlw	(05h)
	fcall	_show_pattern_on_a_plane
	line	442
	
l6306:	
;Effect.c: 442: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_contraction_expansion_square_ri+0)+0+2),f
movlw	175
movwf	((??_contraction_expansion_square_ri+0)+0+1),f
	movlw	193
movwf	((??_contraction_expansion_square_ri+0)+0),f
u5537:
	decfsz	((??_contraction_expansion_square_ri+0)+0),f
	goto	u5537
	decfsz	((??_contraction_expansion_square_ri+0)+0+1),f
	goto	u5537
	decfsz	((??_contraction_expansion_square_ri+0)+0+2),f
	goto	u5537
	clrwdt
opt asmopt_on

	line	446
	
l6308:	
;Effect.c: 446: square_ring_pattern[0] = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(contraction_expansion_square_ri@square_ring_pattern)
	line	447
	
l6310:	
;Effect.c: 447: square_ring_pattern[1] = 0x7e;
	movlw	(07Eh)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+01h
	line	448
	
l6312:	
;Effect.c: 448: square_ring_pattern[2] = 0x42;
	movlw	(042h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+02h
	line	449
	
l6314:	
;Effect.c: 449: square_ring_pattern[3] = 0x42;
	movlw	(042h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+03h
	line	450
	
l6316:	
;Effect.c: 450: square_ring_pattern[4] = 0x42;
	movlw	(042h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+04h
	line	451
	
l6318:	
;Effect.c: 451: square_ring_pattern[5] = 0x42;
	movlw	(042h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+05h
	line	452
	
l6320:	
;Effect.c: 452: square_ring_pattern[6] = 0x7e;
	movlw	(07Eh)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+06h
	line	453
	
l6322:	
;Effect.c: 453: square_ring_pattern[7] = 0x00;
	clrf	0+(contraction_expansion_square_ri@square_ring_pattern)+07h
	line	455
	
l6324:	
;Effect.c: 455: show_pattern_on_a_plane(6,3,square_ring_pattern);
	movlw	(03h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(contraction_expansion_square_ri@square_ring_pattern)&0ffh
	movwf	(??_contraction_expansion_square_ri+1)+0
	movf	(??_contraction_expansion_square_ri+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	movlw	(06h)
	fcall	_show_pattern_on_a_plane
	line	456
	
l6326:	
;Effect.c: 456: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_contraction_expansion_square_ri+0)+0+2),f
movlw	175
movwf	((??_contraction_expansion_square_ri+0)+0+1),f
	movlw	193
movwf	((??_contraction_expansion_square_ri+0)+0),f
u5547:
	decfsz	((??_contraction_expansion_square_ri+0)+0),f
	goto	u5547
	decfsz	((??_contraction_expansion_square_ri+0)+0+1),f
	goto	u5547
	decfsz	((??_contraction_expansion_square_ri+0)+0+2),f
	goto	u5547
	clrwdt
opt asmopt_on

	line	460
	
l6328:	
;Effect.c: 460: square_ring_pattern[0] = 0xff;
	movlw	(0FFh)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(contraction_expansion_square_ri@square_ring_pattern)
	line	461
	
l6330:	
;Effect.c: 461: square_ring_pattern[1] = 0x81;
	movlw	(081h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+01h
	line	462
	
l6332:	
;Effect.c: 462: square_ring_pattern[2] = 0x81;
	movlw	(081h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+02h
	line	463
	
l6334:	
;Effect.c: 463: square_ring_pattern[3] = 0x81;
	movlw	(081h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+03h
	line	464
	
l6336:	
;Effect.c: 464: square_ring_pattern[4] = 0x81;
	movlw	(081h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+04h
	line	465
	
l6338:	
;Effect.c: 465: square_ring_pattern[5] = 0x81;
	movlw	(081h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+05h
	line	466
	
l6340:	
;Effect.c: 466: square_ring_pattern[6] = 0x81;
	movlw	(081h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+06h
	line	467
	
l6342:	
;Effect.c: 467: square_ring_pattern[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	0+(contraction_expansion_square_ri@square_ring_pattern)+07h
	line	469
	
l6344:	
;Effect.c: 469: for(int i = 7; i>=1; i--)
	movlw	low(07h)
	movwf	(contraction_expansion_square_ri@i)
	movlw	high(07h)
	movwf	((contraction_expansion_square_ri@i))+1
	
l6346:	
	movf	(contraction_expansion_square_ri@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4505
	movlw	low(01h)
	subwf	(contraction_expansion_square_ri@i),w
u4505:

	skipnc
	goto	u4501
	goto	u4500
u4501:
	goto	l6350
u4500:
	goto	l2300
	
l6348:	
	goto	l2300
	line	470
	
l2298:	
	line	471
	
l6350:	
;Effect.c: 470: {
;Effect.c: 471: show_pattern_on_a_plane(i,3,square_ring_pattern);
	movlw	(03h)
	movwf	(??_contraction_expansion_square_ri+0)+0
	movf	(??_contraction_expansion_square_ri+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(contraction_expansion_square_ri@square_ring_pattern)&0ffh
	movwf	(??_contraction_expansion_square_ri+1)+0
	movf	(??_contraction_expansion_square_ri+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(contraction_expansion_square_ri@i),w
	fcall	_show_pattern_on_a_plane
	line	472
	
l6352:	
;Effect.c: 472: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_contraction_expansion_square_ri+0)+0+2),f
movlw	175
movwf	((??_contraction_expansion_square_ri+0)+0+1),f
	movlw	193
movwf	((??_contraction_expansion_square_ri+0)+0),f
u5557:
	decfsz	((??_contraction_expansion_square_ri+0)+0),f
	goto	u5557
	decfsz	((??_contraction_expansion_square_ri+0)+0+1),f
	goto	u5557
	decfsz	((??_contraction_expansion_square_ri+0)+0+2),f
	goto	u5557
	clrwdt
opt asmopt_on

	line	469
	
l6354:	
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(contraction_expansion_square_ri@i),f
	skipnc
	incf	(contraction_expansion_square_ri@i+1),f
	movlw	high(-1)
	addwf	(contraction_expansion_square_ri@i+1),f
	
l6356:	
	movf	(contraction_expansion_square_ri@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4515
	movlw	low(01h)
	subwf	(contraction_expansion_square_ri@i),w
u4515:

	skipnc
	goto	u4511
	goto	u4510
u4511:
	goto	l6350
u4510:
	goto	l2300
	
l2299:	
	line	474
	
l2300:	
	return
	opt stack 0
GLOBAL	__end_of_contraction_expansion_square_ri
	__end_of_contraction_expansion_square_ri:
;; =============== function _contraction_expansion_square_ri ends ============

	signat	_contraction_expansion_square_ri,88
	global	_flying_character_of_a_word
psect	text548,local,class=CODE,delta=2
global __ptext548
__ptext548:

;; *************** function _flying_character_of_a_word *****************
;; Defined at:
;;		line 349 in file "C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Effect.c"
;; Parameters:    Size  Location     Type
;;  word            1    wreg     PTR unsigned char 
;;		 -> STR_1(7), 
;; Auto vars:     Size  Location     Type
;;  word            1   16[BANK0 ] PTR unsigned char 
;;		 -> STR_1(7), 
;;  j               2   19[BANK0 ] int 
;;  i               2   17[BANK0 ] int 
;;  alphabet_pat    8   21[BANK0 ] unsigned char [8]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      13       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      13       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_choose_alphabet
;;		_show_pattern_on_a_plane
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text548
	file	"C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Effect.c"
	line	349
	global	__size_of_flying_character_of_a_word
	__size_of_flying_character_of_a_word	equ	__end_of_flying_character_of_a_word-_flying_character_of_a_word
	
_flying_character_of_a_word:	
	opt	stack 6
; Regs used in _flying_character_of_a_word: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;flying_character_of_a_word@word stored from wreg
	line	350
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(flying_character_of_a_word@word)
	
l6162:	
;Effect.c: 350: unsigned char alphabet_pattern[8] = {{0}};
	movlw	(flying_character_of_a_word@alphabet_pattern)&0ffh
	movwf	fsr0
	movlw	low(flying_character_of_a_word@F1162)
	movwf	(??_flying_character_of_a_word+0)+0
	movf	fsr0,w
	movwf	((??_flying_character_of_a_word+0)+0+1)
	movlw	8
	movwf	((??_flying_character_of_a_word+0)+0+2)
u4450:
	movf	(??_flying_character_of_a_word+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_flying_character_of_a_word+0)+0+3)
	incf	(??_flying_character_of_a_word+0)+0,f
	movf	((??_flying_character_of_a_word+0)+0+1),w
	movwf	fsr0
	
	movf	((??_flying_character_of_a_word+0)+0+3),w
	movwf	indf
	incf	((??_flying_character_of_a_word+0)+0+1),f
	decfsz	((??_flying_character_of_a_word+0)+0+2),f
	goto	u4450
	line	351
	
l6164:	
;Effect.c: 351: for(int i = 0; word[i] != '\0'; i++)
	clrf	(flying_character_of_a_word@i)
	clrf	(flying_character_of_a_word@i+1)
	goto	l6184
	line	352
	
l2289:	
	line	353
	
l6166:	
;Effect.c: 352: {
;Effect.c: 353: choose_alphabet(word[i],alphabet_pattern);
	movlw	(flying_character_of_a_word@alphabet_pattern)&0ffh
	movwf	(??_flying_character_of_a_word+0)+0
	movf	(??_flying_character_of_a_word+0)+0,w
	movwf	(?_choose_alphabet)
	movf	(flying_character_of_a_word@i),w
	addwf	(flying_character_of_a_word@word),w
	movwf	fsr0
	fcall	stringdir
	fcall	_choose_alphabet
	line	354
	
l6168:	
;Effect.c: 354: for(int j = 0; j<8; j++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(flying_character_of_a_word@j)
	clrf	(flying_character_of_a_word@j+1)
	
l6170:	
	movf	(flying_character_of_a_word@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4465
	movlw	low(08h)
	subwf	(flying_character_of_a_word@j),w
u4465:

	skipc
	goto	u4461
	goto	u4460
u4461:
	goto	l6174
u4460:
	goto	l6182
	
l6172:	
	goto	l6182
	line	355
	
l2290:	
	line	356
	
l6174:	
;Effect.c: 355: {
;Effect.c: 356: show_pattern_on_a_plane(j,3,alphabet_pattern);
	movlw	(03h)
	movwf	(??_flying_character_of_a_word+0)+0
	movf	(??_flying_character_of_a_word+0)+0,w
	movwf	(?_show_pattern_on_a_plane)
	movlw	(flying_character_of_a_word@alphabet_pattern)&0ffh
	movwf	(??_flying_character_of_a_word+1)+0
	movf	(??_flying_character_of_a_word+1)+0,w
	movwf	0+(?_show_pattern_on_a_plane)+01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(flying_character_of_a_word@j),w
	fcall	_show_pattern_on_a_plane
	line	357
	
l6176:	
;Effect.c: 357: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_flying_character_of_a_word+0)+0+2),f
movlw	138
movwf	((??_flying_character_of_a_word+0)+0+1),f
	movlw	86
movwf	((??_flying_character_of_a_word+0)+0),f
u5567:
	decfsz	((??_flying_character_of_a_word+0)+0),f
	goto	u5567
	decfsz	((??_flying_character_of_a_word+0)+0+1),f
	goto	u5567
	decfsz	((??_flying_character_of_a_word+0)+0+2),f
	goto	u5567
	nop2
opt asmopt_on

	line	354
	
l6178:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(flying_character_of_a_word@j),f
	skipnc
	incf	(flying_character_of_a_word@j+1),f
	movlw	high(01h)
	addwf	(flying_character_of_a_word@j+1),f
	
l6180:	
	movf	(flying_character_of_a_word@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4475
	movlw	low(08h)
	subwf	(flying_character_of_a_word@j),w
u4475:

	skipc
	goto	u4471
	goto	u4470
u4471:
	goto	l6174
u4470:
	goto	l6182
	
l2291:	
	line	351
	
l6182:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(flying_character_of_a_word@i),f
	skipnc
	incf	(flying_character_of_a_word@i+1),f
	movlw	high(01h)
	addwf	(flying_character_of_a_word@i+1),f
	goto	l6184
	
l2288:	
	
l6184:	
	movf	(flying_character_of_a_word@i),w
	addwf	(flying_character_of_a_word@word),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u4481
	goto	u4480
u4481:
	goto	l6166
u4480:
	goto	l2293
	
l2292:	
	line	360
	
l2293:	
	return
	opt stack 0
GLOBAL	__end_of_flying_character_of_a_word
	__end_of_flying_character_of_a_word:
;; =============== function _flying_character_of_a_word ends ============

	signat	_flying_character_of_a_word,4216
	global	_plane_bottom_to_top
psect	text549,local,class=CODE,delta=2
global __ptext549
__ptext549:

;; *************** function _plane_bottom_to_top *****************
;; Defined at:
;;		line 37 in file "C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Effect.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    8[BANK0 ] int 
;;  i               2    6[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_set_a_plane
;;		_delay_using_adc
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text549
	file	"C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Effect.c"
	line	37
	global	__size_of_plane_bottom_to_top
	__size_of_plane_bottom_to_top	equ	__end_of_plane_bottom_to_top-_plane_bottom_to_top
	
_plane_bottom_to_top:	
	opt	stack 5
; Regs used in _plane_bottom_to_top: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	38
	
l6138:	
;Effect.c: 38: for(int i = 0; i<8; i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(plane_bottom_to_top@i)
	clrf	(plane_bottom_to_top@i+1)
	
l6140:	
	movf	(plane_bottom_to_top@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4415
	movlw	low(08h)
	subwf	(plane_bottom_to_top@i),w
u4415:

	skipc
	goto	u4411
	goto	u4410
u4411:
	goto	l6144
u4410:
	goto	l6150
	
l6142:	
	goto	l6150
	line	39
	
l2227:	
	line	40
	
l6144:	
;Effect.c: 39: {
;Effect.c: 40: set_a_plane(i,3);
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_plane_bottom_to_top+0)+0
	movf	(??_plane_bottom_to_top+0)+0,w
	movwf	(?_set_a_plane)
	movf	(plane_bottom_to_top@i),w
	fcall	_set_a_plane
	line	41
;Effect.c: 41: delay_using_adc(10);
	movlw	(0Ah)
	fcall	_delay_using_adc
	line	38
	
l6146:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(plane_bottom_to_top@i),f
	skipnc
	incf	(plane_bottom_to_top@i+1),f
	movlw	high(01h)
	addwf	(plane_bottom_to_top@i+1),f
	
l6148:	
	movf	(plane_bottom_to_top@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4425
	movlw	low(08h)
	subwf	(plane_bottom_to_top@i),w
u4425:

	skipc
	goto	u4421
	goto	u4420
u4421:
	goto	l6144
u4420:
	goto	l6150
	
l2228:	
	line	44
	
l6150:	
;Effect.c: 42: }
;Effect.c: 44: for(int i = 7; i>0; i--)
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(plane_bottom_to_top@i_3015)
	movlw	high(07h)
	movwf	((plane_bottom_to_top@i_3015))+1
	
l6152:	
	movf	(plane_bottom_to_top@i_3015+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4435
	movlw	low(01h)
	subwf	(plane_bottom_to_top@i_3015),w
u4435:

	skipnc
	goto	u4431
	goto	u4430
u4431:
	goto	l6156
u4430:
	goto	l2231
	
l6154:	
	goto	l2231
	line	45
	
l2229:	
	line	46
	
l6156:	
;Effect.c: 45: {
;Effect.c: 46: set_a_plane(i,3);
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_plane_bottom_to_top+0)+0
	movf	(??_plane_bottom_to_top+0)+0,w
	movwf	(?_set_a_plane)
	movf	(plane_bottom_to_top@i_3015),w
	fcall	_set_a_plane
	line	47
;Effect.c: 47: delay_using_adc(10);
	movlw	(0Ah)
	fcall	_delay_using_adc
	line	44
	
l6158:	
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(plane_bottom_to_top@i_3015),f
	skipnc
	incf	(plane_bottom_to_top@i_3015+1),f
	movlw	high(-1)
	addwf	(plane_bottom_to_top@i_3015+1),f
	
l6160:	
	movf	(plane_bottom_to_top@i_3015+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4445
	movlw	low(01h)
	subwf	(plane_bottom_to_top@i_3015),w
u4445:

	skipnc
	goto	u4441
	goto	u4440
u4441:
	goto	l6156
u4440:
	goto	l2231
	
l2230:	
	line	49
	
l2231:	
	return
	opt stack 0
GLOBAL	__end_of_plane_bottom_to_top
	__end_of_plane_bottom_to_top:
;; =============== function _plane_bottom_to_top ends ============

	signat	_plane_bottom_to_top,88
	global	_plane_forward_to_back
psect	text550,local,class=CODE,delta=2
global __ptext550
__ptext550:

;; *************** function _plane_forward_to_back *****************
;; Defined at:
;;		line 52 in file "C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Effect.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    8[BANK0 ] int 
;;  i               2    6[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_set_a_plane
;;		_delay_using_adc
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text550
	file	"C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Effect.c"
	line	52
	global	__size_of_plane_forward_to_back
	__size_of_plane_forward_to_back	equ	__end_of_plane_forward_to_back-_plane_forward_to_back
	
_plane_forward_to_back:	
	opt	stack 5
; Regs used in _plane_forward_to_back: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	53
	
l6114:	
;Effect.c: 53: for(int i = 0; i<8; i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(plane_forward_to_back@i)
	clrf	(plane_forward_to_back@i+1)
	
l6116:	
	movf	(plane_forward_to_back@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4375
	movlw	low(08h)
	subwf	(plane_forward_to_back@i),w
u4375:

	skipc
	goto	u4371
	goto	u4370
u4371:
	goto	l6120
u4370:
	goto	l6126
	
l6118:	
	goto	l6126
	line	54
	
l2234:	
	line	55
	
l6120:	
;Effect.c: 54: {
;Effect.c: 55: set_a_plane(i,2);
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_plane_forward_to_back+0)+0
	movf	(??_plane_forward_to_back+0)+0,w
	movwf	(?_set_a_plane)
	movf	(plane_forward_to_back@i),w
	fcall	_set_a_plane
	line	56
;Effect.c: 56: delay_using_adc(10);
	movlw	(0Ah)
	fcall	_delay_using_adc
	line	53
	
l6122:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(plane_forward_to_back@i),f
	skipnc
	incf	(plane_forward_to_back@i+1),f
	movlw	high(01h)
	addwf	(plane_forward_to_back@i+1),f
	
l6124:	
	movf	(plane_forward_to_back@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4385
	movlw	low(08h)
	subwf	(plane_forward_to_back@i),w
u4385:

	skipc
	goto	u4381
	goto	u4380
u4381:
	goto	l6120
u4380:
	goto	l6126
	
l2235:	
	line	59
	
l6126:	
;Effect.c: 57: }
;Effect.c: 59: for(int i = 7; i>0; i--)
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(plane_forward_to_back@i_3018)
	movlw	high(07h)
	movwf	((plane_forward_to_back@i_3018))+1
	
l6128:	
	movf	(plane_forward_to_back@i_3018+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4395
	movlw	low(01h)
	subwf	(plane_forward_to_back@i_3018),w
u4395:

	skipnc
	goto	u4391
	goto	u4390
u4391:
	goto	l6132
u4390:
	goto	l2238
	
l6130:	
	goto	l2238
	line	60
	
l2236:	
	line	61
	
l6132:	
;Effect.c: 60: {
;Effect.c: 61: set_a_plane(i,2);
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_plane_forward_to_back+0)+0
	movf	(??_plane_forward_to_back+0)+0,w
	movwf	(?_set_a_plane)
	movf	(plane_forward_to_back@i_3018),w
	fcall	_set_a_plane
	line	62
;Effect.c: 62: delay_using_adc(10);
	movlw	(0Ah)
	fcall	_delay_using_adc
	line	59
	
l6134:	
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(plane_forward_to_back@i_3018),f
	skipnc
	incf	(plane_forward_to_back@i_3018+1),f
	movlw	high(-1)
	addwf	(plane_forward_to_back@i_3018+1),f
	
l6136:	
	movf	(plane_forward_to_back@i_3018+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4405
	movlw	low(01h)
	subwf	(plane_forward_to_back@i_3018),w
u4405:

	skipnc
	goto	u4401
	goto	u4400
u4401:
	goto	l6132
u4400:
	goto	l2238
	
l2237:	
	line	64
	
l2238:	
	return
	opt stack 0
GLOBAL	__end_of_plane_forward_to_back
	__end_of_plane_forward_to_back:
;; =============== function _plane_forward_to_back ends ============

	signat	_plane_forward_to_back,88
	global	_plane_left_to_right
psect	text551,local,class=CODE,delta=2
global __ptext551
__ptext551:

;; *************** function _plane_left_to_right *****************
;; Defined at:
;;		line 22 in file "C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Effect.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    7[BANK0 ] int 
;;  i               2    5[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_set_a_plane
;;		_delay_using_adc
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text551
	file	"C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Effect.c"
	line	22
	global	__size_of_plane_left_to_right
	__size_of_plane_left_to_right	equ	__end_of_plane_left_to_right-_plane_left_to_right
	
_plane_left_to_right:	
	opt	stack 5
; Regs used in _plane_left_to_right: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	23
	
l6090:	
;Effect.c: 23: for(int i = 0; i<8; i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(plane_left_to_right@i)
	clrf	(plane_left_to_right@i+1)
	
l6092:	
	movf	(plane_left_to_right@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4335
	movlw	low(08h)
	subwf	(plane_left_to_right@i),w
u4335:

	skipc
	goto	u4331
	goto	u4330
u4331:
	goto	l6096
u4330:
	goto	l6102
	
l6094:	
	goto	l6102
	line	24
	
l2220:	
	line	25
	
l6096:	
;Effect.c: 24: {
;Effect.c: 25: set_a_plane(i,1);
	clrf	(?_set_a_plane)
	bsf	status,0
	rlf	(?_set_a_plane),f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(plane_left_to_right@i),w
	fcall	_set_a_plane
	line	26
;Effect.c: 26: delay_using_adc(10);
	movlw	(0Ah)
	fcall	_delay_using_adc
	line	23
	
l6098:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(plane_left_to_right@i),f
	skipnc
	incf	(plane_left_to_right@i+1),f
	movlw	high(01h)
	addwf	(plane_left_to_right@i+1),f
	
l6100:	
	movf	(plane_left_to_right@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4345
	movlw	low(08h)
	subwf	(plane_left_to_right@i),w
u4345:

	skipc
	goto	u4341
	goto	u4340
u4341:
	goto	l6096
u4340:
	goto	l6102
	
l2221:	
	line	29
	
l6102:	
;Effect.c: 27: }
;Effect.c: 29: for(int i = 7; i>0; i--)
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(plane_left_to_right@i_3012)
	movlw	high(07h)
	movwf	((plane_left_to_right@i_3012))+1
	
l6104:	
	movf	(plane_left_to_right@i_3012+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4355
	movlw	low(01h)
	subwf	(plane_left_to_right@i_3012),w
u4355:

	skipnc
	goto	u4351
	goto	u4350
u4351:
	goto	l6108
u4350:
	goto	l2224
	
l6106:	
	goto	l2224
	line	30
	
l2222:	
	line	31
	
l6108:	
;Effect.c: 30: {
;Effect.c: 31: set_a_plane(i,1);
	clrf	(?_set_a_plane)
	bsf	status,0
	rlf	(?_set_a_plane),f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(plane_left_to_right@i_3012),w
	fcall	_set_a_plane
	line	32
;Effect.c: 32: delay_using_adc(10);
	movlw	(0Ah)
	fcall	_delay_using_adc
	line	29
	
l6110:	
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(plane_left_to_right@i_3012),f
	skipnc
	incf	(plane_left_to_right@i_3012+1),f
	movlw	high(-1)
	addwf	(plane_left_to_right@i_3012+1),f
	
l6112:	
	movf	(plane_left_to_right@i_3012+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4365
	movlw	low(01h)
	subwf	(plane_left_to_right@i_3012),w
u4365:

	skipnc
	goto	u4361
	goto	u4360
u4361:
	goto	l6108
u4360:
	goto	l2224
	
l2223:	
	line	34
	
l2224:	
	return
	opt stack 0
GLOBAL	__end_of_plane_left_to_right
	__end_of_plane_left_to_right:
;; =============== function _plane_left_to_right ends ============

	signat	_plane_left_to_right,88
	global	_moving_point_in_sequence
psect	text552,local,class=CODE,delta=2
global __ptext552
__ptext552:

;; *************** function _moving_point_in_sequence *****************
;; Defined at:
;;		line 7 in file "C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Effect.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  k               2    9[BANK0 ] int 
;;  j               2    7[BANK0 ] int 
;;  i               2    5[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_set_a_point
;;		_delay_using_adc
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text552
	file	"C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Effect.c"
	line	7
	global	__size_of_moving_point_in_sequence
	__size_of_moving_point_in_sequence	equ	__end_of_moving_point_in_sequence-_moving_point_in_sequence
	
_moving_point_in_sequence:	
	opt	stack 5
; Regs used in _moving_point_in_sequence: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	8
	
l6058:	
;Effect.c: 8: for(int i = 0; i<8; i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(moving_point_in_sequence@i)
	clrf	(moving_point_in_sequence@i+1)
	
l6060:	
	movf	(moving_point_in_sequence@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4275
	movlw	low(08h)
	subwf	(moving_point_in_sequence@i),w
u4275:

	skipc
	goto	u4271
	goto	u4270
u4271:
	goto	l6064
u4270:
	goto	l2217
	
l6062:	
	goto	l2217
	line	9
	
l2211:	
	line	10
	
l6064:	
;Effect.c: 9: {
;Effect.c: 10: for(int j = 0; j<8; j++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(moving_point_in_sequence@j)
	clrf	(moving_point_in_sequence@j+1)
	
l6066:	
	movf	(moving_point_in_sequence@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4285
	movlw	low(08h)
	subwf	(moving_point_in_sequence@j),w
u4285:

	skipc
	goto	u4281
	goto	u4280
u4281:
	goto	l6070
u4280:
	goto	l6086
	
l6068:	
	goto	l6086
	line	11
	
l2213:	
	line	12
	
l6070:	
;Effect.c: 11: {
;Effect.c: 12: for(int k = 0; k<8; k++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(moving_point_in_sequence@k)
	clrf	(moving_point_in_sequence@k+1)
	
l6072:	
	movf	(moving_point_in_sequence@k+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4295
	movlw	low(08h)
	subwf	(moving_point_in_sequence@k),w
u4295:

	skipc
	goto	u4291
	goto	u4290
u4291:
	goto	l6076
u4290:
	goto	l6082
	
l6074:	
	goto	l6082
	line	13
	
l2215:	
	line	14
	
l6076:	
;Effect.c: 13: {
;Effect.c: 14: set_a_point(k,j,i);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(moving_point_in_sequence@k+1),w
	clrf	(?_set_a_point+1)
	addwf	(?_set_a_point+1)
	movf	(moving_point_in_sequence@k),w
	clrf	(?_set_a_point)
	addwf	(?_set_a_point)

	movf	(moving_point_in_sequence@j+1),w
	clrf	1+(?_set_a_point)+02h
	addwf	1+(?_set_a_point)+02h
	movf	(moving_point_in_sequence@j),w
	clrf	0+(?_set_a_point)+02h
	addwf	0+(?_set_a_point)+02h

	movf	(moving_point_in_sequence@i+1),w
	clrf	1+(?_set_a_point)+04h
	addwf	1+(?_set_a_point)+04h
	movf	(moving_point_in_sequence@i),w
	clrf	0+(?_set_a_point)+04h
	addwf	0+(?_set_a_point)+04h

	fcall	_set_a_point
	line	15
;Effect.c: 15: delay_using_adc(10);
	movlw	(0Ah)
	fcall	_delay_using_adc
	line	12
	
l6078:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(moving_point_in_sequence@k),f
	skipnc
	incf	(moving_point_in_sequence@k+1),f
	movlw	high(01h)
	addwf	(moving_point_in_sequence@k+1),f
	
l6080:	
	movf	(moving_point_in_sequence@k+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4305
	movlw	low(08h)
	subwf	(moving_point_in_sequence@k),w
u4305:

	skipc
	goto	u4301
	goto	u4300
u4301:
	goto	l6076
u4300:
	goto	l6082
	
l2216:	
	line	10
	
l6082:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(moving_point_in_sequence@j),f
	skipnc
	incf	(moving_point_in_sequence@j+1),f
	movlw	high(01h)
	addwf	(moving_point_in_sequence@j+1),f
	
l6084:	
	movf	(moving_point_in_sequence@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4315
	movlw	low(08h)
	subwf	(moving_point_in_sequence@j),w
u4315:

	skipc
	goto	u4311
	goto	u4310
u4311:
	goto	l6070
u4310:
	goto	l6086
	
l2214:	
	line	8
	
l6086:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(moving_point_in_sequence@i),f
	skipnc
	incf	(moving_point_in_sequence@i+1),f
	movlw	high(01h)
	addwf	(moving_point_in_sequence@i+1),f
	
l6088:	
	movf	(moving_point_in_sequence@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4325
	movlw	low(08h)
	subwf	(moving_point_in_sequence@i),w
u4325:

	skipc
	goto	u4321
	goto	u4320
u4321:
	goto	l6064
u4320:
	goto	l2217
	
l2212:	
	line	19
	
l2217:	
	return
	opt stack 0
GLOBAL	__end_of_moving_point_in_sequence
	__end_of_moving_point_in_sequence:
;; =============== function _moving_point_in_sequence ends ============

	signat	_moving_point_in_sequence,88
	global	_set_a_point
psect	text553,local,class=CODE,delta=2
global __ptext553
__ptext553:

;; *************** function _set_a_point *****************
;; Defined at:
;;		line 5 in file "C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Lightup.c"
;; Parameters:    Size  Location     Type
;;  x               2    0[COMMON] int 
;;  y               2    2[COMMON] int 
;;  z               2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  j               2    8[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:        10       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_moving_point_in_sequence
;; This function uses a non-reentrant model
;;
psect	text553
	file	"C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Lightup.c"
	line	5
	global	__size_of_set_a_point
	__size_of_set_a_point	equ	__end_of_set_a_point-_set_a_point
	
_set_a_point:	
	opt	stack 6
; Regs used in _set_a_point: [wreg+status,2+status,0+btemp+1]
	line	6
	
l6034:	
;Lightup.c: 6: PORTD = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	7
;Lightup.c: 7: for(int j = 0; j< 8; j++)
	clrf	(set_a_point@j)
	clrf	(set_a_point@j+1)
	
l6036:	
	movf	(set_a_point@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4225
	movlw	low(08h)
	subwf	(set_a_point@j),w
u4225:

	skipc
	goto	u4221
	goto	u4220
u4221:
	goto	l6040
u4220:
	goto	l6054
	
l6038:	
	goto	l6054
	line	8
	
l1472:	
	line	9
	
l6040:	
;Lightup.c: 8: {
;Lightup.c: 9: if( j == x)
	movf	(set_a_point@x+1),w
	xorwf	(set_a_point@j+1),w
	skipz
	goto	u4235
	movf	(set_a_point@x),w
	xorwf	(set_a_point@j),w
u4235:

	skipz
	goto	u4231
	goto	u4230
u4231:
	goto	l6044
u4230:
	line	11
	
l6042:	
;Lightup.c: 10: {
;Lightup.c: 11: PORTC = 1<<y;
	movlw	(01h)
	movwf	(??_set_a_point+0)+0
	incf	(set_a_point@y),w
	goto	u4244
u4245:
	clrc
	rlf	(??_set_a_point+0)+0,f
u4244:
	addlw	-1
	skipz
	goto	u4245
	movf	0+(??_set_a_point+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	12
;Lightup.c: 12: }
	goto	l6046
	line	13
	
l1474:	
	line	15
	
l6044:	
;Lightup.c: 13: else
;Lightup.c: 14: {
;Lightup.c: 15: PORTC = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	goto	l6046
	line	16
	
l1475:	
	line	17
	
l6046:	
;Lightup.c: 16: }
;Lightup.c: 17: RA1 = 1;
	bsf	(41/8),(41)&7
	line	18
	
l6048:	
;Lightup.c: 18: RA1 = 0;
	bcf	(41/8),(41)&7
	line	7
	
l6050:	
	movlw	low(01h)
	addwf	(set_a_point@j),f
	skipnc
	incf	(set_a_point@j+1),f
	movlw	high(01h)
	addwf	(set_a_point@j+1),f
	
l6052:	
	movf	(set_a_point@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4255
	movlw	low(08h)
	subwf	(set_a_point@j),w
u4255:

	skipc
	goto	u4251
	goto	u4250
u4251:
	goto	l6040
u4250:
	goto	l6054
	
l1473:	
	line	20
	
l6054:	
;Lightup.c: 19: }
;Lightup.c: 20: PORTD = 1<<z;
	movlw	(01h)
	movwf	(??_set_a_point+0)+0
	incf	(set_a_point@z),w
	goto	u4264
u4265:
	clrc
	rlf	(??_set_a_point+0)+0,f
u4264:
	addlw	-1
	skipz
	goto	u4265
	movf	0+(??_set_a_point+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	21
	
l6056:	
;Lightup.c: 21: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_set_a_point+0)+0+1),f
	movlw	125
movwf	((??_set_a_point+0)+0),f
u5577:
	decfsz	((??_set_a_point+0)+0),f
	goto	u5577
	decfsz	((??_set_a_point+0)+0+1),f
	goto	u5577
opt asmopt_on

	line	22
	
l1476:	
	return
	opt stack 0
GLOBAL	__end_of_set_a_point
	__end_of_set_a_point:
;; =============== function _set_a_point ends ============

	signat	_set_a_point,12408
	global	_show_pattern_on_a_plane
psect	text554,local,class=CODE,delta=2
global __ptext554
__ptext554:

;; *************** function _show_pattern_on_a_plane *****************
;; Defined at:
;;		line 74 in file "C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Lightup.c"
;; Parameters:    Size  Location     Type
;;  layer           1    wreg     unsigned char 
;;  plane           1    0[COMMON] unsigned char 
;;  pattern_arra    1    1[COMMON] PTR unsigned char 
;;		 -> rotate_plane@rotate_pattern(8), expansion_box@box_pattern(8), choose_dice@dice_pattern(8), contraction_expansion_square_ri@square_ring_pattern(8), 
;;		 -> flying_character_of_a_word@alphabet_pattern(8), flying_alphabet@temp_alphabet_array(8), show_mode@mode_pattern(8), 
;; Auto vars:     Size  Location     Type
;;  layer           1   11[BANK0 ] unsigned char 
;;  j               2    5[BANK0 ] int 
;;  j               2    3[BANK0 ] int 
;;  j               2    7[BANK0 ] int 
;;  j               2    9[BANK0 ] int 
;;  i               2   14[BANK0 ] int 
;;  i               2   12[BANK0 ] int 
;;  adc_delay       2    0[BANK0 ] int 
;;  scale           1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0      16       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         5      16       0       0       0
;;Total ram usage:       21 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_show_mode
;;		_flying_character_of_a_word
;;		_contraction_expansion_square_ri
;;		_choose_dice
;;		_expansion_box
;;		_rotate_plane
;;		_flying_alphabet
;; This function uses a non-reentrant model
;;
psect	text554
	file	"C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Lightup.c"
	line	74
	global	__size_of_show_pattern_on_a_plane
	__size_of_show_pattern_on_a_plane	equ	__end_of_show_pattern_on_a_plane-_show_pattern_on_a_plane
	
_show_pattern_on_a_plane:	
	opt	stack 6
; Regs used in _show_pattern_on_a_plane: [wreg-fsr0h+status,2+status,0+btemp+1]
;show_pattern_on_a_plane@layer stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(show_pattern_on_a_plane@layer)
	line	75
	
l5918:	
;Lightup.c: 75: int adc_delay = 0;
	clrf	(show_pattern_on_a_plane@adc_delay)
	clrf	(show_pattern_on_a_plane@adc_delay+1)
	line	76
	
l5920:	
;Lightup.c: 76: unsigned char scale = 10;
	movlw	(0Ah)
	movwf	(??_show_pattern_on_a_plane+0)+0
	movf	(??_show_pattern_on_a_plane+0)+0,w
	movwf	(show_pattern_on_a_plane@scale)
	line	77
	
l5922:	
;Lightup.c: 77: if(plane == 1)
	movf	(show_pattern_on_a_plane@plane),w
	xorlw	01h
	skipz
	goto	u4021
	goto	u4020
u4021:
	goto	l5956
u4020:
	line	79
	
l5924:	
;Lightup.c: 78: {
;Lightup.c: 79: for(int i = 0; i<8; i++)
	clrf	(show_pattern_on_a_plane@i)
	clrf	(show_pattern_on_a_plane@i+1)
	
l5926:	
	movf	(show_pattern_on_a_plane@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4035
	movlw	low(08h)
	subwf	(show_pattern_on_a_plane@i),w
u4035:

	skipc
	goto	u4031
	goto	u4030
u4031:
	goto	l5930
u4030:
	goto	l1512
	
l5928:	
	goto	l1512
	line	80
	
l1496:	
	line	81
	
l5930:	
;Lightup.c: 80: {
;Lightup.c: 81: for(int j = 0; j< 8; j++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(show_pattern_on_a_plane@j)
	clrf	(show_pattern_on_a_plane@j+1)
	
l5932:	
	movf	(show_pattern_on_a_plane@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4045
	movlw	low(08h)
	subwf	(show_pattern_on_a_plane@j),w
u4045:

	skipc
	goto	u4041
	goto	u4040
u4041:
	goto	l5936
u4040:
	goto	l5946
	
l5934:	
	goto	l5946
	line	82
	
l1498:	
	line	83
	
l5936:	
;Lightup.c: 82: {
;Lightup.c: 83: PORTC = (0x01 & (pattern_array[i] >> (7-j))) << layer;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(show_pattern_on_a_plane@i),w
	addwf	(show_pattern_on_a_plane@pattern_array),w
	movwf	(??_show_pattern_on_a_plane+0)+0
	movf	0+(??_show_pattern_on_a_plane+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_show_pattern_on_a_plane+1)+0
	decf	(show_pattern_on_a_plane@j),w
	xorlw	0ffh
	addlw	07h
	addlw	1
	goto	u4054
u4055:
	clrc
	rrf	(??_show_pattern_on_a_plane+1)+0,f
u4054:
	addlw	-1
	skipz
	goto	u4055
	movf	0+(??_show_pattern_on_a_plane+1)+0,w
	andlw	01h
	movwf	(??_show_pattern_on_a_plane+2)+0
	incf	(show_pattern_on_a_plane@layer),w
	goto	u4064
u4065:
	clrc
	rlf	(??_show_pattern_on_a_plane+2)+0,f
u4064:
	addlw	-1
	skipz
	goto	u4065
	movf	0+(??_show_pattern_on_a_plane+2)+0,w
	movwf	(7)	;volatile
	line	84
	
l5938:	
;Lightup.c: 84: RA1 = 1;
	bsf	(41/8),(41)&7
	line	85
	
l5940:	
;Lightup.c: 85: RA1 = 0;
	bcf	(41/8),(41)&7
	line	81
	
l5942:	
	movlw	low(01h)
	addwf	(show_pattern_on_a_plane@j),f
	skipnc
	incf	(show_pattern_on_a_plane@j+1),f
	movlw	high(01h)
	addwf	(show_pattern_on_a_plane@j+1),f
	
l5944:	
	movf	(show_pattern_on_a_plane@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4075
	movlw	low(08h)
	subwf	(show_pattern_on_a_plane@j),w
u4075:

	skipc
	goto	u4071
	goto	u4070
u4071:
	goto	l5936
u4070:
	goto	l5946
	
l1499:	
	line	87
	
l5946:	
;Lightup.c: 86: }
;Lightup.c: 87: PORTD = 1<<i;
	movlw	(01h)
	movwf	(??_show_pattern_on_a_plane+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(show_pattern_on_a_plane@i),w
	goto	u4084
u4085:
	clrc
	rlf	(??_show_pattern_on_a_plane+0)+0,f
u4084:
	addlw	-1
	skipz
	goto	u4085
	movf	0+(??_show_pattern_on_a_plane+0)+0,w
	movwf	(8)	;volatile
	line	88
	
l5948:	
;Lightup.c: 88: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_show_pattern_on_a_plane+0)+0+1),f
	movlw	118
movwf	((??_show_pattern_on_a_plane+0)+0),f
u5587:
	decfsz	((??_show_pattern_on_a_plane+0)+0),f
	goto	u5587
	decfsz	((??_show_pattern_on_a_plane+0)+0+1),f
	goto	u5587
	clrwdt
opt asmopt_on

	line	89
	
l5950:	
;Lightup.c: 89: PORTD = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	79
	
l5952:	
	movlw	low(01h)
	addwf	(show_pattern_on_a_plane@i),f
	skipnc
	incf	(show_pattern_on_a_plane@i+1),f
	movlw	high(01h)
	addwf	(show_pattern_on_a_plane@i+1),f
	
l5954:	
	movf	(show_pattern_on_a_plane@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4095
	movlw	low(08h)
	subwf	(show_pattern_on_a_plane@i),w
u4095:

	skipc
	goto	u4091
	goto	u4090
u4091:
	goto	l5930
u4090:
	goto	l1512
	
l1497:	
	line	91
;Lightup.c: 90: }
;Lightup.c: 91: }
	goto	l1512
	line	93
	
l1495:	
	
l5956:	
;Lightup.c: 93: else if (plane == 2)
	movf	(show_pattern_on_a_plane@plane),w
	xorlw	02h
	skipz
	goto	u4101
	goto	u4100
u4101:
	goto	l6012
u4100:
	line	95
	
l5958:	
;Lightup.c: 94: {
;Lightup.c: 95: for(int i = 0; i<8; i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(show_pattern_on_a_plane@i_2167)
	clrf	(show_pattern_on_a_plane@i_2167+1)
	
l5960:	
	movf	(show_pattern_on_a_plane@i_2167+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4115
	movlw	low(08h)
	subwf	(show_pattern_on_a_plane@i_2167),w
u4115:

	skipc
	goto	u4111
	goto	u4110
u4111:
	goto	l5964
u4110:
	goto	l1512
	
l5962:	
	goto	l1512
	line	96
	
l1502:	
	line	98
	
l5964:	
;Lightup.c: 96: {
;Lightup.c: 98: for(int j = layer; j>0; j--)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(show_pattern_on_a_plane@layer),w
	movwf	(??_show_pattern_on_a_plane+0)+0
	clrf	(??_show_pattern_on_a_plane+0)+0+1
	movf	0+(??_show_pattern_on_a_plane+0)+0,w
	movwf	(show_pattern_on_a_plane@j_2168)
	movf	1+(??_show_pattern_on_a_plane+0)+0,w
	movwf	(show_pattern_on_a_plane@j_2168+1)
	
l5966:	
	movf	(show_pattern_on_a_plane@j_2168+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4125
	movlw	low(01h)
	subwf	(show_pattern_on_a_plane@j_2168),w
u4125:

	skipnc
	goto	u4121
	goto	u4120
u4121:
	goto	l5970
u4120:
	goto	l5980
	
l5968:	
	goto	l5980
	line	99
	
l1504:	
	line	100
	
l5970:	
;Lightup.c: 99: {
;Lightup.c: 100: PORTC = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	101
	
l5972:	
;Lightup.c: 101: RA1 = 1;
	bsf	(41/8),(41)&7
	line	102
	
l5974:	
;Lightup.c: 102: RA1 = 0;
	bcf	(41/8),(41)&7
	line	98
	
l5976:	
	movlw	low(-1)
	addwf	(show_pattern_on_a_plane@j_2168),f
	skipnc
	incf	(show_pattern_on_a_plane@j_2168+1),f
	movlw	high(-1)
	addwf	(show_pattern_on_a_plane@j_2168+1),f
	
l5978:	
	movf	(show_pattern_on_a_plane@j_2168+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4135
	movlw	low(01h)
	subwf	(show_pattern_on_a_plane@j_2168),w
u4135:

	skipnc
	goto	u4131
	goto	u4130
u4131:
	goto	l5970
u4130:
	goto	l5980
	
l1505:	
	line	104
	
l5980:	
;Lightup.c: 103: }
;Lightup.c: 104: PORTC = pattern_array[i];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(show_pattern_on_a_plane@i_2167),w
	addwf	(show_pattern_on_a_plane@pattern_array),w
	movwf	(??_show_pattern_on_a_plane+0)+0
	movf	0+(??_show_pattern_on_a_plane+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	105
	
l5982:	
;Lightup.c: 105: RA1 = 1;
	bsf	(41/8),(41)&7
	line	106
	
l5984:	
;Lightup.c: 106: RA1 = 0;
	bcf	(41/8),(41)&7
	line	107
	
l5986:	
;Lightup.c: 107: for(int j =7-layer; j>0; j--)
	movf	(show_pattern_on_a_plane@layer),w
	movwf	(??_show_pattern_on_a_plane+0)+0
	clrf	(??_show_pattern_on_a_plane+0)+0+1
	comf	(??_show_pattern_on_a_plane+0)+0,f
	comf	(??_show_pattern_on_a_plane+0)+1,f
	incf	(??_show_pattern_on_a_plane+0)+0,f
	skipnz
	incf	(??_show_pattern_on_a_plane+0)+1,f
	movf	0+(??_show_pattern_on_a_plane+0)+0,w
	addlw	low(07h)
	movwf	(show_pattern_on_a_plane@j_2169)
	movf	1+(??_show_pattern_on_a_plane+0)+0,w
	skipnc
	addlw	1
	addlw	high(07h)
	movwf	1+(show_pattern_on_a_plane@j_2169)
	
l5988:	
	movf	(show_pattern_on_a_plane@j_2169+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4145
	movlw	low(01h)
	subwf	(show_pattern_on_a_plane@j_2169),w
u4145:

	skipnc
	goto	u4141
	goto	u4140
u4141:
	goto	l5992
u4140:
	goto	l6002
	
l5990:	
	goto	l6002
	line	108
	
l1506:	
	line	109
	
l5992:	
;Lightup.c: 108: {
;Lightup.c: 109: PORTC = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	110
	
l5994:	
;Lightup.c: 110: RA1 = 1;
	bsf	(41/8),(41)&7
	line	111
	
l5996:	
;Lightup.c: 111: RA1 = 0;
	bcf	(41/8),(41)&7
	line	107
	
l5998:	
	movlw	low(-1)
	addwf	(show_pattern_on_a_plane@j_2169),f
	skipnc
	incf	(show_pattern_on_a_plane@j_2169+1),f
	movlw	high(-1)
	addwf	(show_pattern_on_a_plane@j_2169+1),f
	
l6000:	
	movf	(show_pattern_on_a_plane@j_2169+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4155
	movlw	low(01h)
	subwf	(show_pattern_on_a_plane@j_2169),w
u4155:

	skipnc
	goto	u4151
	goto	u4150
u4151:
	goto	l5992
u4150:
	goto	l6002
	
l1507:	
	line	113
	
l6002:	
;Lightup.c: 112: }
;Lightup.c: 113: PORTD = 1<<i;
	movlw	(01h)
	movwf	(??_show_pattern_on_a_plane+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(show_pattern_on_a_plane@i_2167),w
	goto	u4164
u4165:
	clrc
	rlf	(??_show_pattern_on_a_plane+0)+0,f
u4164:
	addlw	-1
	skipz
	goto	u4165
	movf	0+(??_show_pattern_on_a_plane+0)+0,w
	movwf	(8)	;volatile
	line	114
	
l6004:	
;Lightup.c: 114: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_show_pattern_on_a_plane+0)+0+1),f
	movlw	118
movwf	((??_show_pattern_on_a_plane+0)+0),f
u5597:
	decfsz	((??_show_pattern_on_a_plane+0)+0),f
	goto	u5597
	decfsz	((??_show_pattern_on_a_plane+0)+0+1),f
	goto	u5597
	clrwdt
opt asmopt_on

	line	115
	
l6006:	
;Lightup.c: 115: PORTD = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	95
	
l6008:	
	movlw	low(01h)
	addwf	(show_pattern_on_a_plane@i_2167),f
	skipnc
	incf	(show_pattern_on_a_plane@i_2167+1),f
	movlw	high(01h)
	addwf	(show_pattern_on_a_plane@i_2167+1),f
	
l6010:	
	movf	(show_pattern_on_a_plane@i_2167+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4175
	movlw	low(08h)
	subwf	(show_pattern_on_a_plane@i_2167),w
u4175:

	skipc
	goto	u4171
	goto	u4170
u4171:
	goto	l5964
u4170:
	goto	l1512
	
l1503:	
	line	117
;Lightup.c: 116: }
;Lightup.c: 117: }
	goto	l1512
	line	119
	
l1501:	
	
l6012:	
;Lightup.c: 119: else if(plane == 3)
	movf	(show_pattern_on_a_plane@plane),w
	xorlw	03h
	skipz
	goto	u4181
	goto	u4180
u4181:
	goto	l1512
u4180:
	line	121
	
l6014:	
;Lightup.c: 120: {
;Lightup.c: 121: for(int j = 0; j< 8; j++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(show_pattern_on_a_plane@j_2170)
	clrf	(show_pattern_on_a_plane@j_2170+1)
	
l6016:	
	movf	(show_pattern_on_a_plane@j_2170+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4195
	movlw	low(08h)
	subwf	(show_pattern_on_a_plane@j_2170),w
u4195:

	skipc
	goto	u4191
	goto	u4190
u4191:
	goto	l6020
u4190:
	goto	l6030
	
l6018:	
	goto	l6030
	line	122
	
l1510:	
	line	123
	
l6020:	
;Lightup.c: 122: {
;Lightup.c: 123: PORTC = pattern_array[j];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(show_pattern_on_a_plane@j_2170),w
	addwf	(show_pattern_on_a_plane@pattern_array),w
	movwf	(??_show_pattern_on_a_plane+0)+0
	movf	0+(??_show_pattern_on_a_plane+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	124
	
l6022:	
;Lightup.c: 124: RA1 = 1;
	bsf	(41/8),(41)&7
	line	125
	
l6024:	
;Lightup.c: 125: RA1 = 0;
	bcf	(41/8),(41)&7
	line	121
	
l6026:	
	movlw	low(01h)
	addwf	(show_pattern_on_a_plane@j_2170),f
	skipnc
	incf	(show_pattern_on_a_plane@j_2170+1),f
	movlw	high(01h)
	addwf	(show_pattern_on_a_plane@j_2170+1),f
	
l6028:	
	movf	(show_pattern_on_a_plane@j_2170+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4205
	movlw	low(08h)
	subwf	(show_pattern_on_a_plane@j_2170),w
u4205:

	skipc
	goto	u4201
	goto	u4200
u4201:
	goto	l6020
u4200:
	goto	l6030
	
l1511:	
	line	127
	
l6030:	
;Lightup.c: 126: }
;Lightup.c: 127: PORTD = 1<<layer;
	movlw	(01h)
	movwf	(??_show_pattern_on_a_plane+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(show_pattern_on_a_plane@layer),w
	goto	u4214
u4215:
	clrc
	rlf	(??_show_pattern_on_a_plane+0)+0,f
u4214:
	addlw	-1
	skipz
	goto	u4215
	movf	0+(??_show_pattern_on_a_plane+0)+0,w
	movwf	(8)	;volatile
	line	128
	
l6032:	
;Lightup.c: 128: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_show_pattern_on_a_plane+0)+0+1),f
	movlw	125
movwf	((??_show_pattern_on_a_plane+0)+0),f
u5607:
	decfsz	((??_show_pattern_on_a_plane+0)+0),f
	goto	u5607
	decfsz	((??_show_pattern_on_a_plane+0)+0+1),f
	goto	u5607
opt asmopt_on

	goto	l1512
	line	129
	
l1509:	
	goto	l1512
	line	130
	
l1508:	
	goto	l1512
	
l1500:	
	
l1512:	
	return
	opt stack 0
GLOBAL	__end_of_show_pattern_on_a_plane
	__end_of_show_pattern_on_a_plane:
;; =============== function _show_pattern_on_a_plane ends ============

	signat	_show_pattern_on_a_plane,12408
	global	_set_a_plane
psect	text555,local,class=CODE,delta=2
global __ptext555
__ptext555:

;; *************** function _set_a_plane *****************
;; Defined at:
;;		line 25 in file "C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Lightup.c"
;; Parameters:    Size  Location     Type
;;  layer           1    wreg     unsigned char 
;;  plane           1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  layer           1   11[COMMON] unsigned char 
;;  j               2    9[COMMON] int 
;;  j               2    7[COMMON] int 
;;  j               2    5[COMMON] int 
;;  j               2    3[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         9       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:        12       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_choose_mode
;;		_plane_left_to_right
;;		_plane_bottom_to_top
;;		_plane_forward_to_back
;;		_dice
;; This function uses a non-reentrant model
;;
psect	text555
	file	"C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Lightup.c"
	line	25
	global	__size_of_set_a_plane
	__size_of_set_a_plane	equ	__end_of_set_a_plane-_set_a_plane
	
_set_a_plane:	
	opt	stack 6
; Regs used in _set_a_plane: [wreg+status,2+status,0+btemp+1]
;set_a_plane@layer stored from wreg
	movwf	(set_a_plane@layer)
	line	26
	
l5836:	
;Lightup.c: 26: if(plane == 1)
	movf	(set_a_plane@plane),w
	xorlw	01h
	skipz
	goto	u3891
	goto	u3890
u3891:
	goto	l5856
u3890:
	line	28
	
l5838:	
;Lightup.c: 27: {
;Lightup.c: 28: for(int j = 0; j< 8; j++)
	clrf	(set_a_plane@j)
	clrf	(set_a_plane@j+1)
	
l5840:	
	movf	(set_a_plane@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3905
	movlw	low(08h)
	subwf	(set_a_plane@j),w
u3905:

	skipc
	goto	u3901
	goto	u3900
u3901:
	goto	l5844
u3900:
	goto	l5854
	
l5842:	
	goto	l5854
	line	29
	
l1480:	
	line	31
	
l5844:	
;Lightup.c: 29: {
;Lightup.c: 31: PORTC = 1<<layer;
	movlw	(01h)
	movwf	(??_set_a_plane+0)+0
	incf	(set_a_plane@layer),w
	goto	u3914
u3915:
	clrc
	rlf	(??_set_a_plane+0)+0,f
u3914:
	addlw	-1
	skipz
	goto	u3915
	movf	0+(??_set_a_plane+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	32
	
l5846:	
;Lightup.c: 32: RA1 = 1;
	bsf	(41/8),(41)&7
	line	33
	
l5848:	
;Lightup.c: 33: RA1 = 0;
	bcf	(41/8),(41)&7
	line	28
	
l5850:	
	movlw	low(01h)
	addwf	(set_a_plane@j),f
	skipnc
	incf	(set_a_plane@j+1),f
	movlw	high(01h)
	addwf	(set_a_plane@j+1),f
	
l5852:	
	movf	(set_a_plane@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3925
	movlw	low(08h)
	subwf	(set_a_plane@j),w
u3925:

	skipc
	goto	u3921
	goto	u3920
u3921:
	goto	l5844
u3920:
	goto	l5854
	
l1481:	
	line	35
	
l5854:	
;Lightup.c: 34: }
;Lightup.c: 35: PORTD = 0b11111111;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	36
;Lightup.c: 36: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_set_a_plane+0)+0+1),f
	movlw	125
movwf	((??_set_a_plane+0)+0),f
u5617:
	decfsz	((??_set_a_plane+0)+0),f
	goto	u5617
	decfsz	((??_set_a_plane+0)+0+1),f
	goto	u5617
opt asmopt_on

	line	37
;Lightup.c: 37: }
	goto	l1492
	line	39
	
l1479:	
	
l5856:	
;Lightup.c: 39: else if(plane == 2)
	movf	(set_a_plane@plane),w
	xorlw	02h
	skipz
	goto	u3931
	goto	u3930
u3931:
	goto	l5898
u3930:
	line	41
	
l5858:	
;Lightup.c: 40: {
;Lightup.c: 41: for(int j = layer; j>0; j--)
	movf	(set_a_plane@layer),w
	movwf	(??_set_a_plane+0)+0
	clrf	(??_set_a_plane+0)+0+1
	movf	0+(??_set_a_plane+0)+0,w
	movwf	(set_a_plane@j_2156)
	movf	1+(??_set_a_plane+0)+0,w
	movwf	(set_a_plane@j_2156+1)
	
l5860:	
	movf	(set_a_plane@j_2156+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3945
	movlw	low(01h)
	subwf	(set_a_plane@j_2156),w
u3945:

	skipnc
	goto	u3941
	goto	u3940
u3941:
	goto	l5864
u3940:
	goto	l5874
	
l5862:	
	goto	l5874
	line	42
	
l1484:	
	line	43
	
l5864:	
;Lightup.c: 42: {
;Lightup.c: 43: PORTC = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	44
	
l5866:	
;Lightup.c: 44: RA1 = 1;
	bsf	(41/8),(41)&7
	line	45
	
l5868:	
;Lightup.c: 45: RA1 = 0;
	bcf	(41/8),(41)&7
	line	41
	
l5870:	
	movlw	low(-1)
	addwf	(set_a_plane@j_2156),f
	skipnc
	incf	(set_a_plane@j_2156+1),f
	movlw	high(-1)
	addwf	(set_a_plane@j_2156+1),f
	
l5872:	
	movf	(set_a_plane@j_2156+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3955
	movlw	low(01h)
	subwf	(set_a_plane@j_2156),w
u3955:

	skipnc
	goto	u3951
	goto	u3950
u3951:
	goto	l5864
u3950:
	goto	l5874
	
l1485:	
	line	47
	
l5874:	
;Lightup.c: 46: }
;Lightup.c: 47: PORTC = 0xff;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	48
	
l5876:	
;Lightup.c: 48: RA1 = 1;
	bsf	(41/8),(41)&7
	line	49
	
l5878:	
;Lightup.c: 49: RA1 = 0;
	bcf	(41/8),(41)&7
	line	50
	
l5880:	
;Lightup.c: 50: for(int j =7-layer; j>0; j--)
	movf	(set_a_plane@layer),w
	movwf	(??_set_a_plane+0)+0
	clrf	(??_set_a_plane+0)+0+1
	comf	(??_set_a_plane+0)+0,f
	comf	(??_set_a_plane+0)+1,f
	incf	(??_set_a_plane+0)+0,f
	skipnz
	incf	(??_set_a_plane+0)+1,f
	movf	0+(??_set_a_plane+0)+0,w
	addlw	low(07h)
	movwf	(set_a_plane@j_2157)
	movf	1+(??_set_a_plane+0)+0,w
	skipnc
	addlw	1
	addlw	high(07h)
	movwf	1+(set_a_plane@j_2157)
	
l5882:	
	movf	(set_a_plane@j_2157+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3965
	movlw	low(01h)
	subwf	(set_a_plane@j_2157),w
u3965:

	skipnc
	goto	u3961
	goto	u3960
u3961:
	goto	l5886
u3960:
	goto	l5896
	
l5884:	
	goto	l5896
	line	51
	
l1486:	
	line	52
	
l5886:	
;Lightup.c: 51: {
;Lightup.c: 52: PORTC = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	53
	
l5888:	
;Lightup.c: 53: RA1 = 1;
	bsf	(41/8),(41)&7
	line	54
	
l5890:	
;Lightup.c: 54: RA1 = 0;
	bcf	(41/8),(41)&7
	line	50
	
l5892:	
	movlw	low(-1)
	addwf	(set_a_plane@j_2157),f
	skipnc
	incf	(set_a_plane@j_2157+1),f
	movlw	high(-1)
	addwf	(set_a_plane@j_2157+1),f
	
l5894:	
	movf	(set_a_plane@j_2157+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3975
	movlw	low(01h)
	subwf	(set_a_plane@j_2157),w
u3975:

	skipnc
	goto	u3971
	goto	u3970
u3971:
	goto	l5886
u3970:
	goto	l5896
	
l1487:	
	line	56
	
l5896:	
;Lightup.c: 55: }
;Lightup.c: 56: PORTD = 0b111111111;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	57
;Lightup.c: 57: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_set_a_plane+0)+0+1),f
	movlw	125
movwf	((??_set_a_plane+0)+0),f
u5627:
	decfsz	((??_set_a_plane+0)+0),f
	goto	u5627
	decfsz	((??_set_a_plane+0)+0+1),f
	goto	u5627
opt asmopt_on

	line	58
;Lightup.c: 58: }
	goto	l1492
	line	60
	
l1483:	
	
l5898:	
;Lightup.c: 60: else if(plane == 3)
	movf	(set_a_plane@plane),w
	xorlw	03h
	skipz
	goto	u3981
	goto	u3980
u3981:
	goto	l1492
u3980:
	line	62
	
l5900:	
;Lightup.c: 61: {
;Lightup.c: 62: for(int j = 0; j< 8; j++)
	clrf	(set_a_plane@j_2158)
	clrf	(set_a_plane@j_2158+1)
	
l5902:	
	movf	(set_a_plane@j_2158+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3995
	movlw	low(08h)
	subwf	(set_a_plane@j_2158),w
u3995:

	skipc
	goto	u3991
	goto	u3990
u3991:
	goto	l5906
u3990:
	goto	l5914
	
l5904:	
	goto	l5914
	line	63
	
l1490:	
	line	64
	
l5906:	
;Lightup.c: 63: {
;Lightup.c: 64: PORTC = 0b11111111;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	65
	
l5908:	
;Lightup.c: 65: RA1 = 1;
	bsf	(41/8),(41)&7
	line	66
	
l5910:	
;Lightup.c: 66: RA1 = 0;
	bcf	(41/8),(41)&7
	line	62
	movlw	low(01h)
	addwf	(set_a_plane@j_2158),f
	skipnc
	incf	(set_a_plane@j_2158+1),f
	movlw	high(01h)
	addwf	(set_a_plane@j_2158+1),f
	
l5912:	
	movf	(set_a_plane@j_2158+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4005
	movlw	low(08h)
	subwf	(set_a_plane@j_2158),w
u4005:

	skipc
	goto	u4001
	goto	u4000
u4001:
	goto	l5906
u4000:
	goto	l5914
	
l1491:	
	line	68
	
l5914:	
;Lightup.c: 67: }
;Lightup.c: 68: PORTD = 1<<layer;
	movlw	(01h)
	movwf	(??_set_a_plane+0)+0
	incf	(set_a_plane@layer),w
	goto	u4014
u4015:
	clrc
	rlf	(??_set_a_plane+0)+0,f
u4014:
	addlw	-1
	skipz
	goto	u4015
	movf	0+(??_set_a_plane+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	69
	
l5916:	
;Lightup.c: 69: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_set_a_plane+0)+0+1),f
	movlw	125
movwf	((??_set_a_plane+0)+0),f
u5637:
	decfsz	((??_set_a_plane+0)+0),f
	goto	u5637
	decfsz	((??_set_a_plane+0)+0+1),f
	goto	u5637
opt asmopt_on

	goto	l1492
	line	70
	
l1489:	
	goto	l1492
	line	71
	
l1488:	
	goto	l1492
	
l1482:	
	
l1492:	
	return
	opt stack 0
GLOBAL	__end_of_set_a_plane
	__end_of_set_a_plane:
;; =============== function _set_a_plane ends ============

	signat	_set_a_plane,8312
	global	_delay_using_adc
psect	text556,local,class=CODE,delta=2
global __ptext556
__ptext556:

;; *************** function _delay_using_adc *****************
;; Defined at:
;;		line 102 in file "C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\LED Cube.c"
;; Parameters:    Size  Location     Type
;;  scale           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  scale           1    4[BANK0 ] unsigned char 
;;  adc_delay       2    2[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_get_adc_value
;;		___wmul
;;		_delay
;; This function is called by:
;;		_moving_point_in_sequence
;;		_plane_left_to_right
;;		_plane_bottom_to_top
;;		_plane_forward_to_back
;;		_flying_alphabet
;; This function uses a non-reentrant model
;;
psect	text556
	file	"C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\LED Cube.c"
	line	102
	global	__size_of_delay_using_adc
	__size_of_delay_using_adc	equ	__end_of_delay_using_adc-_delay_using_adc
	
_delay_using_adc:	
	opt	stack 5
; Regs used in _delay_using_adc: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;delay_using_adc@scale stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(delay_using_adc@scale)
	line	103
	
l5828:	
;LED Cube.c: 103: if(scale>=0 && scale<=50)
	movlw	(033h)
	subwf	(delay_using_adc@scale),w
	skipnc
	goto	u3881
	goto	u3880
u3881:
	goto	l743
u3880:
	line	105
	
l5830:	
;LED Cube.c: 104: {
;LED Cube.c: 105: unsigned int adc_delay = 0;
	clrf	(delay_using_adc@adc_delay)
	clrf	(delay_using_adc@adc_delay+1)
	line	106
	
l5832:	
;LED Cube.c: 106: adc_delay = get_adc_value();
	fcall	_get_adc_value
	movf	(1+(?_get_adc_value)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(delay_using_adc@adc_delay+1)
	addwf	(delay_using_adc@adc_delay+1)
	movf	(0+(?_get_adc_value)),w
	clrf	(delay_using_adc@adc_delay)
	addwf	(delay_using_adc@adc_delay)

	line	107
	
l5834:	
;LED Cube.c: 107: delay(adc_delay*scale);
	movf	(delay_using_adc@scale),w
	movwf	(??_delay_using_adc+0)+0
	clrf	(??_delay_using_adc+0)+0+1
	movf	0+(??_delay_using_adc+0)+0,w
	movwf	(?___wmul)
	movf	1+(??_delay_using_adc+0)+0,w
	movwf	(?___wmul+1)
	movf	(delay_using_adc@adc_delay+1),w
	clrf	1+(?___wmul)+02h
	addwf	1+(?___wmul)+02h
	movf	(delay_using_adc@adc_delay),w
	clrf	0+(?___wmul)+02h
	addwf	0+(?___wmul)+02h

	fcall	___wmul
	movf	(0+(?___wmul)),w
	movwf	(?_delay)
	movf	(1+(?___wmul)),w
	movwf	((?_delay))+1
	clrf	2+((?_delay))
	clrf	3+((?_delay))
	fcall	_delay
	goto	l743
	line	108
	
l742:	
	line	109
	
l743:	
	return
	opt stack 0
GLOBAL	__end_of_delay_using_adc
	__end_of_delay_using_adc:
;; =============== function _delay_using_adc ends ============

	signat	_delay_using_adc,4216
	global	___wmul
psect	text557,local,class=CODE,delta=2
global __ptext557
__ptext557:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_delay_using_adc
;; This function uses a non-reentrant model
;;
psect	text557
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l5816:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l5818
	line	6
	
l3116:	
	line	7
	
l5818:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3841
	goto	u3840
u3841:
	goto	l3117
u3840:
	line	8
	
l5820:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l3117:	
	line	9
	movlw	01h
	
u3855:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u3855
	line	10
	
l5822:	
	movlw	01h
	
u3865:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u3865
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u3871
	goto	u3870
u3871:
	goto	l5818
u3870:
	goto	l5824
	
l3118:	
	line	12
	
l5824:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l3119
	
l5826:	
	line	13
	
l3119:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_choose_alphabet
psect	text558,local,class=CODE,delta=2
global __ptext558
__ptext558:

;; *************** function _choose_alphabet *****************
;; Defined at:
;;		line 90 in file "C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Effect.c"
;; Parameters:    Size  Location     Type
;;  alphabet        1    wreg     unsigned char 
;;  alphabet_arr    1    0[COMMON] PTR unsigned char 
;;		 -> flying_character_of_a_word@alphabet_pattern(8), flying_alphabet@temp_alphabet_array(8), show_mode@mode_pattern(8), 
;; Auto vars:     Size  Location     Type
;;  alphabet        1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_show_mode
;;		_flying_character_of_a_word
;;		_flying_alphabet
;; This function uses a non-reentrant model
;;
psect	text558
	file	"C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\Effect.c"
	line	90
	global	__size_of_choose_alphabet
	__size_of_choose_alphabet	equ	__end_of_choose_alphabet-_choose_alphabet
	
_choose_alphabet:	
	opt	stack 6
; Regs used in _choose_alphabet: [wreg-fsr0h+status,2+status,0]
;choose_alphabet@alphabet stored from wreg
	movwf	(choose_alphabet@alphabet)
	line	91
	
l5708:	
;Effect.c: 91: switch(alphabet)
	goto	l5776
	line	93
;Effect.c: 92: {
;Effect.c: 93: case 'A': alphabet_array[0] = 0xc3;
	
l2256:	
	
l5710:	
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	94
	
l5712:	
;Effect.c: 94: alphabet_array[1] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	95
	
l5714:	
;Effect.c: 95: alphabet_array[2] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	96
	
l5716:	
;Effect.c: 96: alphabet_array[3] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	97
	
l5718:	
;Effect.c: 97: alphabet_array[4] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	98
	
l5720:	
;Effect.c: 98: alphabet_array[5] = 0xe7;
	movlw	(0E7h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	99
	
l5722:	
;Effect.c: 99: alphabet_array[6] = 0x7e;
	movlw	(07Eh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	100
	
l5724:	
;Effect.c: 100: alphabet_array[7] = 0x3c;
	movlw	(03Ch)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	101
;Effect.c: 101: break;
	goto	l2283
	line	103
;Effect.c: 103: case 'B': alphabet_array[0] = 0x3f;
	
l2258:	
	
l5726:	
	movlw	(03Fh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	104
;Effect.c: 104: alphabet_array[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	105
;Effect.c: 105: alphabet_array[2] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	106
;Effect.c: 106: alphabet_array[3] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	107
;Effect.c: 107: alphabet_array[4] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	108
;Effect.c: 108: alphabet_array[5] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	109
;Effect.c: 109: alphabet_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	110
;Effect.c: 110: alphabet_array[7] = 0x3f;
	movlw	(03Fh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	111
;Effect.c: 111: break;
	goto	l2283
	line	113
;Effect.c: 113: case 'C': alphabet_array[0] = 0xff;
	
l2259:	
	
l5728:	
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	114
;Effect.c: 114: alphabet_array[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	115
;Effect.c: 115: alphabet_array[2] = 0x03;
	movlw	(03h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	116
;Effect.c: 116: alphabet_array[3] = 0x03;
	movlw	(03h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	117
;Effect.c: 117: alphabet_array[4] = 0x03;
	movlw	(03h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	118
;Effect.c: 118: alphabet_array[5] = 0x03;
	movlw	(03h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	119
;Effect.c: 119: alphabet_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	120
;Effect.c: 120: alphabet_array[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	121
;Effect.c: 121: break;
	goto	l2283
	line	123
;Effect.c: 123: case 'D': alphabet_array[0] = 0x3f;
	
l2260:	
	
l5730:	
	movlw	(03Fh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	124
;Effect.c: 124: alphabet_array[1] = 0x7f;
	movlw	(07Fh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	125
;Effect.c: 125: alphabet_array[2] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	126
;Effect.c: 126: alphabet_array[3] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	127
;Effect.c: 127: alphabet_array[4] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	128
;Effect.c: 128: alphabet_array[5] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	129
;Effect.c: 129: alphabet_array[6] = 0x7f;
	movlw	(07Fh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	130
;Effect.c: 130: alphabet_array[7] = 0x3f;
	movlw	(03Fh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	131
;Effect.c: 131: break;
	goto	l2283
	line	133
;Effect.c: 133: case 'E': alphabet_array[0] = 0xff;
	
l2261:	
	
l5732:	
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	134
;Effect.c: 134: alphabet_array[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	135
;Effect.c: 135: alphabet_array[2] = 0x03;
	movlw	(03h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	136
;Effect.c: 136: alphabet_array[3] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	137
;Effect.c: 137: alphabet_array[4] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	138
;Effect.c: 138: alphabet_array[5] = 0x03;
	movlw	(03h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	139
;Effect.c: 139: alphabet_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	140
;Effect.c: 140: alphabet_array[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	141
;Effect.c: 141: break;
	goto	l2283
	line	143
;Effect.c: 143: case 'F': alphabet_array[0] = 0x03;
	
l2262:	
	
l5734:	
	movlw	(03h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	144
;Effect.c: 144: alphabet_array[1] = 0x03;
	movlw	(03h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	145
;Effect.c: 145: alphabet_array[2] = 0x03;
	movlw	(03h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	146
;Effect.c: 146: alphabet_array[3] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	147
;Effect.c: 147: alphabet_array[4] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	148
;Effect.c: 148: alphabet_array[5] = 0x03;
	movlw	(03h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	149
;Effect.c: 149: alphabet_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	150
;Effect.c: 150: alphabet_array[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	151
;Effect.c: 151: break;
	goto	l2283
	line	153
;Effect.c: 153: case 'G': alphabet_array[0] = 0xfe;
	
l2263:	
	
l5736:	
	movlw	(0FEh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	154
;Effect.c: 154: alphabet_array[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	155
;Effect.c: 155: alphabet_array[2] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	156
;Effect.c: 156: alphabet_array[3] = 0xf3;
	movlw	(0F3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	157
;Effect.c: 157: alphabet_array[4] = 0xf3;
	movlw	(0F3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	158
;Effect.c: 158: alphabet_array[5] = 0x03;
	movlw	(03h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	159
;Effect.c: 159: alphabet_array[6] = 0xfe;
	movlw	(0FEh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	160
;Effect.c: 160: alphabet_array[7] = 0xfc;
	movlw	(0FCh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	161
;Effect.c: 161: break;
	goto	l2283
	line	163
;Effect.c: 163: case 'H': alphabet_array[0] = 0xc3;
	
l2264:	
	
l5738:	
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	164
;Effect.c: 164: alphabet_array[1] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	165
;Effect.c: 165: alphabet_array[2] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	166
;Effect.c: 166: alphabet_array[3] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	167
;Effect.c: 167: alphabet_array[4] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	168
;Effect.c: 168: alphabet_array[5] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	169
;Effect.c: 169: alphabet_array[6] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	170
;Effect.c: 170: alphabet_array[7] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	171
;Effect.c: 171: break;
	goto	l2283
	line	173
;Effect.c: 173: case 'I': alphabet_array[0] = 0xff;
	
l2265:	
	
l5740:	
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	174
;Effect.c: 174: alphabet_array[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	175
;Effect.c: 175: alphabet_array[2] = 0x18;
	movlw	(018h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	176
;Effect.c: 176: alphabet_array[3] = 0x18;
	movlw	(018h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	177
;Effect.c: 177: alphabet_array[4] = 0x18;
	movlw	(018h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	178
;Effect.c: 178: alphabet_array[5] = 0x18;
	movlw	(018h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	179
;Effect.c: 179: alphabet_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	180
;Effect.c: 180: alphabet_array[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	181
;Effect.c: 181: break;
	goto	l2283
	line	182
;Effect.c: 182: case 'J': alphabet_array[0] = 0x1e;
	
l2266:	
	
l5742:	
	movlw	(01Eh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	183
;Effect.c: 183: alphabet_array[1] = 0x3f;
	movlw	(03Fh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	184
;Effect.c: 184: alphabet_array[2] = 0x33;
	movlw	(033h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	185
;Effect.c: 185: alphabet_array[3] = 0x33;
	movlw	(033h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	186
;Effect.c: 186: alphabet_array[4] = 0x30;
	movlw	(030h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	187
;Effect.c: 187: alphabet_array[5] = 0x30;
	movlw	(030h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	188
;Effect.c: 188: alphabet_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	189
;Effect.c: 189: alphabet_array[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	190
;Effect.c: 190: break;
	goto	l2283
	line	191
;Effect.c: 191: case 'K': alphabet_array[0] = 0xc3;
	
l2267:	
	
l5744:	
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	192
;Effect.c: 192: alphabet_array[1] = 0x63;
	movlw	(063h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	193
;Effect.c: 193: alphabet_array[2] = 0x33;
	movlw	(033h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	194
;Effect.c: 194: alphabet_array[3] = 0x1f;
	movlw	(01Fh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	195
;Effect.c: 195: alphabet_array[4] = 0x1f;
	movlw	(01Fh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	196
;Effect.c: 196: alphabet_array[5] = 0x33;
	movlw	(033h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	197
;Effect.c: 197: alphabet_array[6] = 0x63;
	movlw	(063h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	198
;Effect.c: 198: alphabet_array[7] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	199
;Effect.c: 199: break;
	goto	l2283
	line	200
;Effect.c: 200: case 'L': alphabet_array[0] = 0xff;
	
l2268:	
	
l5746:	
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	201
;Effect.c: 201: alphabet_array[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	202
;Effect.c: 202: alphabet_array[2] = 0x03;
	movlw	(03h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	203
;Effect.c: 203: alphabet_array[3] = 0x03;
	movlw	(03h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	204
;Effect.c: 204: alphabet_array[4] = 0x03;
	movlw	(03h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	205
;Effect.c: 205: alphabet_array[5] = 0x03;
	movlw	(03h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	206
;Effect.c: 206: alphabet_array[6] = 0x03;
	movlw	(03h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	207
;Effect.c: 207: alphabet_array[7] = 0x03;
	movlw	(03h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	208
;Effect.c: 208: break;
	goto	l2283
	line	209
;Effect.c: 209: case 'M': alphabet_array[0] = 0xc3;
	
l2269:	
	
l5748:	
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	210
;Effect.c: 210: alphabet_array[1] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	211
;Effect.c: 211: alphabet_array[2] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	212
;Effect.c: 212: alphabet_array[3] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	213
;Effect.c: 213: alphabet_array[4] = 0xdb;
	movlw	(0DBh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	214
;Effect.c: 214: alphabet_array[5] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	215
;Effect.c: 215: alphabet_array[6] = 0xe7;
	movlw	(0E7h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	216
;Effect.c: 216: alphabet_array[7] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	217
;Effect.c: 217: break;
	goto	l2283
	line	219
;Effect.c: 219: case 'N': alphabet_array[0] = 0xc3;
	
l2270:	
	
l5750:	
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	220
;Effect.c: 220: alphabet_array[1] = 0xe3;
	movlw	(0E3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	221
;Effect.c: 221: alphabet_array[2] = 0xf3;
	movlw	(0F3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	222
;Effect.c: 222: alphabet_array[3] = 0xfb;
	movlw	(0FBh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	223
;Effect.c: 223: alphabet_array[4] = 0xdf;
	movlw	(0DFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	224
;Effect.c: 224: alphabet_array[5] = 0xcf;
	movlw	(0CFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	225
;Effect.c: 225: alphabet_array[6] = 0xc7;
	movlw	(0C7h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	226
;Effect.c: 226: alphabet_array[7] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	227
;Effect.c: 227: break;
	goto	l2283
	line	229
;Effect.c: 229: case 'O': alphabet_array[0] = 0x3c;
	
l2271:	
	
l5752:	
	movlw	(03Ch)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	230
;Effect.c: 230: alphabet_array[1] = 0x7e;
	movlw	(07Eh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	231
;Effect.c: 231: alphabet_array[2] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	232
;Effect.c: 232: alphabet_array[3] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	233
;Effect.c: 233: alphabet_array[4] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	234
;Effect.c: 234: alphabet_array[5] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	235
;Effect.c: 235: alphabet_array[6] = 0x7e;
	movlw	(07Eh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	236
;Effect.c: 236: alphabet_array[7] = 0x3c;
	movlw	(03Ch)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	237
;Effect.c: 237: break;
	goto	l2283
	line	239
;Effect.c: 239: case 'P': alphabet_array[0] = 0x03;
	
l2272:	
	
l5754:	
	movlw	(03h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	240
;Effect.c: 240: alphabet_array[1] = 0x03;
	movlw	(03h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	241
;Effect.c: 241: alphabet_array[2] = 0x7f;
	movlw	(07Fh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	242
;Effect.c: 242: alphabet_array[3] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	243
;Effect.c: 243: alphabet_array[4] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	244
;Effect.c: 244: alphabet_array[5] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	245
;Effect.c: 245: alphabet_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	246
;Effect.c: 246: alphabet_array[7] = 0x7e;
	movlw	(07Eh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	247
;Effect.c: 247: break;
	goto	l2283
	line	249
;Effect.c: 249: case 'Q': alphabet_array[0] = 0xde;
	
l2273:	
	
l5756:	
	movlw	(0DEh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	250
;Effect.c: 250: alphabet_array[1] = 0x7f;
	movlw	(07Fh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	251
;Effect.c: 251: alphabet_array[2] = 0xf3;
	movlw	(0F3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	252
;Effect.c: 252: alphabet_array[3] = 0xdb;
	movlw	(0DBh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	253
;Effect.c: 253: alphabet_array[4] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	254
;Effect.c: 254: alphabet_array[5] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	255
;Effect.c: 255: alphabet_array[6] = 0x7e;
	movlw	(07Eh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	256
;Effect.c: 256: alphabet_array[7] = 0x3c;
	movlw	(03Ch)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	257
;Effect.c: 257: break;
	goto	l2283
	line	259
;Effect.c: 259: case 'R': alphabet_array[0] = 0xc3;
	
l2274:	
	
l5758:	
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	260
;Effect.c: 260: alphabet_array[1] = 0xe3;
	movlw	(0E3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	261
;Effect.c: 261: alphabet_array[2] = 0x73;
	movlw	(073h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	262
;Effect.c: 262: alphabet_array[3] = 0x7f;
	movlw	(07Fh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	263
;Effect.c: 263: alphabet_array[4] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	264
;Effect.c: 264: alphabet_array[5] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	265
;Effect.c: 265: alphabet_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	266
;Effect.c: 266: alphabet_array[7] = 0x7f;
	movlw	(07Fh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	267
;Effect.c: 267: break;
	goto	l2283
	line	269
;Effect.c: 269: case 'S': alphabet_array[0] = 0xff;
	
l2275:	
	
l5760:	
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	270
;Effect.c: 270: alphabet_array[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	271
;Effect.c: 271: alphabet_array[2] = 0xc0;
	movlw	(0C0h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	272
;Effect.c: 272: alphabet_array[3] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	273
;Effect.c: 273: alphabet_array[4] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	274
;Effect.c: 274: alphabet_array[5] = 0x03;
	movlw	(03h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	275
;Effect.c: 275: alphabet_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	276
;Effect.c: 276: alphabet_array[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	277
;Effect.c: 277: break;
	goto	l2283
	line	279
;Effect.c: 279: case 'T': alphabet_array[0] = 0x18;
	
l2276:	
	
l5762:	
	movlw	(018h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	280
;Effect.c: 280: alphabet_array[1] = 0x18;
	movlw	(018h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	281
;Effect.c: 281: alphabet_array[2] = 0x18;
	movlw	(018h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	282
;Effect.c: 282: alphabet_array[3] = 0x18;
	movlw	(018h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	283
;Effect.c: 283: alphabet_array[4] = 0x18;
	movlw	(018h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	284
;Effect.c: 284: alphabet_array[5] = 0x18;
	movlw	(018h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	285
;Effect.c: 285: alphabet_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	286
;Effect.c: 286: alphabet_array[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	287
;Effect.c: 287: break;
	goto	l2283
	line	288
;Effect.c: 288: case 'U': alphabet_array[0] = 0x7e;
	
l2277:	
	
l5764:	
	movlw	(07Eh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	289
;Effect.c: 289: alphabet_array[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	290
;Effect.c: 290: alphabet_array[2] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	291
;Effect.c: 291: alphabet_array[3] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	292
;Effect.c: 292: alphabet_array[4] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	293
;Effect.c: 293: alphabet_array[5] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	294
;Effect.c: 294: alphabet_array[6] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	295
;Effect.c: 295: alphabet_array[7] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	296
;Effect.c: 296: break;
	goto	l2283
	line	298
;Effect.c: 298: case 'V': alphabet_array[0] = 0x18;
	
l2278:	
	
l5766:	
	movlw	(018h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	299
;Effect.c: 299: alphabet_array[1] = 0x3c;
	movlw	(03Ch)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	300
;Effect.c: 300: alphabet_array[2] = 0x66;
	movlw	(066h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	301
;Effect.c: 301: alphabet_array[3] = 0xe7;
	movlw	(0E7h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	302
;Effect.c: 302: alphabet_array[4] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	303
;Effect.c: 303: alphabet_array[5] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	304
;Effect.c: 304: alphabet_array[6] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	305
;Effect.c: 305: alphabet_array[7] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	306
;Effect.c: 306: break;
	goto	l2283
	line	308
;Effect.c: 308: case 'W': alphabet_array[0] = 0xc3;
	
l2279:	
	
l5768:	
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	309
;Effect.c: 309: alphabet_array[1] = 0xe7;
	movlw	(0E7h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	310
;Effect.c: 310: alphabet_array[2] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	311
;Effect.c: 311: alphabet_array[3] = 0xdb;
	movlw	(0DBh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	312
;Effect.c: 312: alphabet_array[4] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	313
;Effect.c: 313: alphabet_array[5] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	314
;Effect.c: 314: alphabet_array[6] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	315
;Effect.c: 315: alphabet_array[7] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	316
;Effect.c: 316: break;
	goto	l2283
	line	318
;Effect.c: 318: case 'X': alphabet_array[0] = 0xc3;
	
l2280:	
	
l5770:	
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	319
;Effect.c: 319: alphabet_array[1] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	320
;Effect.c: 320: alphabet_array[2] = 0x66;
	movlw	(066h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	321
;Effect.c: 321: alphabet_array[3] = 0x3c;
	movlw	(03Ch)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	322
;Effect.c: 322: alphabet_array[4] = 0x3c;
	movlw	(03Ch)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	323
;Effect.c: 323: alphabet_array[5] = 0x66;
	movlw	(066h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	324
;Effect.c: 324: alphabet_array[6] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	325
;Effect.c: 325: alphabet_array[7] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	326
;Effect.c: 326: break;
	goto	l2283
	line	328
;Effect.c: 328: case 'Y': alphabet_array[0] = 0x18;
	
l2281:	
	
l5772:	
	movlw	(018h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	329
;Effect.c: 329: alphabet_array[1] = 0x18;
	movlw	(018h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	330
;Effect.c: 330: alphabet_array[2] = 0x18;
	movlw	(018h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	331
;Effect.c: 331: alphabet_array[3] = 0x18;
	movlw	(018h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	332
;Effect.c: 332: alphabet_array[4] = 0x3c;
	movlw	(03Ch)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	333
;Effect.c: 333: alphabet_array[5] = 0x66;
	movlw	(066h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	334
;Effect.c: 334: alphabet_array[6] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	335
;Effect.c: 335: alphabet_array[7] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	336
;Effect.c: 336: break;
	goto	l2283
	line	337
;Effect.c: 337: case 'Z': alphabet_array[0] = 0xff;
	
l2282:	
	
l5774:	
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	338
;Effect.c: 338: alphabet_array[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	339
;Effect.c: 339: alphabet_array[2] = 0x0e;
	movlw	(0Eh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	340
;Effect.c: 340: alphabet_array[3] = 0x1c;
	movlw	(01Ch)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	341
;Effect.c: 341: alphabet_array[4] = 0x28;
	movlw	(028h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	342
;Effect.c: 342: alphabet_array[5] = 0x70;
	movlw	(070h)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	343
;Effect.c: 343: alphabet_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	344
;Effect.c: 344: alphabet_array[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_alphabet+0)+0
	movf	(choose_alphabet@alphabet_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_alphabet+0)+0,w
	movwf	indf
	line	345
;Effect.c: 345: }
	goto	l2283
	line	91
	
l2255:	
	
l5776:	
	movf	(choose_alphabet@alphabet),w
	; Switch size 1, requested type "space"
; Number of cases is 26, Range of values is 65 to 90
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           79    40 (average)
; direct_byte           89    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	65^0	; case 65
	skipnz
	goto	l5710
	xorlw	66^65	; case 66
	skipnz
	goto	l5726
	xorlw	67^66	; case 67
	skipnz
	goto	l5728
	xorlw	68^67	; case 68
	skipnz
	goto	l5730
	xorlw	69^68	; case 69
	skipnz
	goto	l5732
	xorlw	70^69	; case 70
	skipnz
	goto	l5734
	xorlw	71^70	; case 71
	skipnz
	goto	l5736
	xorlw	72^71	; case 72
	skipnz
	goto	l5738
	xorlw	73^72	; case 73
	skipnz
	goto	l5740
	xorlw	74^73	; case 74
	skipnz
	goto	l5742
	xorlw	75^74	; case 75
	skipnz
	goto	l5744
	xorlw	76^75	; case 76
	skipnz
	goto	l5746
	xorlw	77^76	; case 77
	skipnz
	goto	l5748
	xorlw	78^77	; case 78
	skipnz
	goto	l5750
	xorlw	79^78	; case 79
	skipnz
	goto	l5752
	xorlw	80^79	; case 80
	skipnz
	goto	l5754
	xorlw	81^80	; case 81
	skipnz
	goto	l5756
	xorlw	82^81	; case 82
	skipnz
	goto	l5758
	xorlw	83^82	; case 83
	skipnz
	goto	l5760
	xorlw	84^83	; case 84
	skipnz
	goto	l5762
	xorlw	85^84	; case 85
	skipnz
	goto	l5764
	xorlw	86^85	; case 86
	skipnz
	goto	l5766
	xorlw	87^86	; case 87
	skipnz
	goto	l5768
	xorlw	88^87	; case 88
	skipnz
	goto	l5770
	xorlw	89^88	; case 89
	skipnz
	goto	l5772
	xorlw	90^89	; case 90
	skipnz
	goto	l5774
	goto	l2283
	opt asmopt_on

	line	345
	
l2257:	
	line	346
	
l2283:	
	return
	opt stack 0
GLOBAL	__end_of_choose_alphabet
	__end_of_choose_alphabet:
;; =============== function _choose_alphabet ends ============

	signat	_choose_alphabet,8312
	global	_delay
psect	text559,local,class=CODE,delta=2
global __ptext559
__ptext559:

;; *************** function _delay *****************
;; Defined at:
;;		line 113 in file "C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\LED Cube.c"
;; Parameters:    Size  Location     Type
;;  time            4    6[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_delay_using_adc
;; This function uses a non-reentrant model
;;
psect	text559
	file	"C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\LED Cube.c"
	line	113
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	114
	
l5704:	
;LED Cube.c: 114: while(time--);
	goto	l5706
	
l747:	
	goto	l5706
	
l746:	
	
l5706:	
	movlw	01h
	movwf	((??_delay+0)+0)
	movlw	0
	movwf	((??_delay+0)+0+1)
	movlw	0
	movwf	((??_delay+0)+0+2)
	movlw	0
	movwf	((??_delay+0)+0+3)
	movf	0+(??_delay+0)+0,w
	subwf	(delay@time),f
	movf	1+(??_delay+0)+0,w
	skipc
	incfsz	1+(??_delay+0)+0,w
	goto	u3745
	goto	u3746
u3745:
	subwf	(delay@time+1),f
u3746:
	movf	2+(??_delay+0)+0,w
	skipc
	incfsz	2+(??_delay+0)+0,w
	goto	u3747
	goto	u3748
u3747:
	subwf	(delay@time+2),f
u3748:
	movf	3+(??_delay+0)+0,w
	skipc
	incfsz	3+(??_delay+0)+0,w
	goto	u3749
	goto	u3740
u3749:
	subwf	(delay@time+3),f
u3740:

	movlw	0FFh
	xorwf	((delay@time+3)),w
	skipz
	goto	u3755
	movlw	0FFh
	xorwf	((delay@time+2)),w
	skipz
	goto	u3755
	movlw	0FFh
	xorwf	((delay@time+1)),w
	skipz
	goto	u3755
	movlw	0FFh
	xorwf	((delay@time)),w
u3755:
	skipz
	goto	u3751
	goto	u3750
u3751:
	goto	l5706
u3750:
	goto	l749
	
l748:	
	line	115
	
l749:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_get_adc_value
psect	text560,local,class=CODE,delta=2
global __ptext560
__ptext560:

;; *************** function _get_adc_value *****************
;; Defined at:
;;		line 88 in file "C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\LED Cube.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  local_adc_va    2    4[COMMON] int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_delay_using_adc
;; This function uses a non-reentrant model
;;
psect	text560
	file	"C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\LED Cube.c"
	line	88
	global	__size_of_get_adc_value
	__size_of_get_adc_value	equ	__end_of_get_adc_value-_get_adc_value
	
_get_adc_value:	
	opt	stack 5
; Regs used in _get_adc_value: [wreg+status,2+status,0+btemp+1]
	line	89
	
l5690:	
;LED Cube.c: 89: int local_adc_value = 0;
	clrf	(get_adc_value@local_adc_value)
	clrf	(get_adc_value@local_adc_value+1)
	line	90
	
l5692:	
;LED Cube.c: 90: GO = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	91
;LED Cube.c: 91: while(GO == 1);
	goto	l736
	
l737:	
	
l736:	
	btfsc	(250/8),(250)&7
	goto	u3731
	goto	u3730
u3731:
	goto	l736
u3730:
	
l738:	
	line	92
;LED Cube.c: 92: ADIF = 0;
	bcf	(102/8),(102)&7
	line	94
	
l5694:	
;LED Cube.c: 94: local_adc_value = ADRESH;
	movf	(30),w	;volatile
	movwf	(??_get_adc_value+0)+0
	clrf	(??_get_adc_value+0)+0+1
	movf	0+(??_get_adc_value+0)+0,w
	movwf	(get_adc_value@local_adc_value)
	movf	1+(??_get_adc_value+0)+0,w
	movwf	(get_adc_value@local_adc_value+1)
	line	95
	
l5696:	
;LED Cube.c: 95: local_adc_value = local_adc_value << 8;
	movf	(get_adc_value@local_adc_value+1),w
	movwf	(??_get_adc_value+0)+0+1
	movf	(get_adc_value@local_adc_value),w
	movwf	(??_get_adc_value+0)+0
	movf	(??_get_adc_value+0)+0,w
	movwf	(??_get_adc_value+0)+1
	clrf	(??_get_adc_value+0)+0
	movf	0+(??_get_adc_value+0)+0,w
	movwf	(get_adc_value@local_adc_value)
	movf	1+(??_get_adc_value+0)+0,w
	movwf	(get_adc_value@local_adc_value+1)
	line	96
	
l5698:	
;LED Cube.c: 96: local_adc_value = local_adc_value | ADRESL;
	movf	(get_adc_value@local_adc_value),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(158)^080h,w	;volatile
	movwf	(get_adc_value@local_adc_value)
	movf	(get_adc_value@local_adc_value+1),w
	movwf	1+(get_adc_value@local_adc_value)
	line	97
	
l5700:	
;LED Cube.c: 97: return local_adc_value;
	movf	(get_adc_value@local_adc_value+1),w
	clrf	(?_get_adc_value+1)
	addwf	(?_get_adc_value+1)
	movf	(get_adc_value@local_adc_value),w
	clrf	(?_get_adc_value)
	addwf	(?_get_adc_value)

	goto	l739
	
l5702:	
	line	98
	
l739:	
	return
	opt stack 0
GLOBAL	__end_of_get_adc_value
	__end_of_get_adc_value:
;; =============== function _get_adc_value ends ============

	signat	_get_adc_value,90
	global	_io_init
psect	text561,local,class=CODE,delta=2
global __ptext561
__ptext561:

;; *************** function _io_init *****************
;; Defined at:
;;		line 58 in file "C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\LED Cube.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text561
	file	"C:\Users\Younce\Desktop\LED Cube 8 x 8 x 8\LED Cube.c"
	line	58
	global	__size_of_io_init
	__size_of_io_init	equ	__end_of_io_init-_io_init
	
_io_init:	
	opt	stack 7
; Regs used in _io_init: [wreg+status,2]
	line	60
	
l5658:	
;LED Cube.c: 60: TRISA = 0b00000001;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	61
;LED Cube.c: 61: TRISB = 0b00000011;
	movlw	(03h)
	movwf	(134)^080h	;volatile
	line	62
	
l5660:	
;LED Cube.c: 62: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	63
	
l5662:	
;LED Cube.c: 63: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	64
	
l5664:	
;LED Cube.c: 64: TRISE = 0;
	clrf	(137)^080h	;volatile
	line	66
	
l5666:	
;LED Cube.c: 66: PORTA = PORTB = PORTC = PORTD = PORTE = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	clrf	(8)	;volatile
	clrf	(7)	;volatile
	clrf	(6)	;volatile
	clrf	(5)	;volatile
	line	69
	
l5668:	
;LED Cube.c: 69: ADCS1 = 0;
	bcf	(255/8),(255)&7
	line	70
	
l5670:	
;LED Cube.c: 70: ADCS0 = 0;
	bcf	(254/8),(254)&7
	line	72
	
l5672:	
;LED Cube.c: 72: CHS2 = 0;
	bcf	(253/8),(253)&7
	line	73
	
l5674:	
;LED Cube.c: 73: CHS1 = 0;
	bcf	(252/8),(252)&7
	line	74
	
l5676:	
;LED Cube.c: 74: CHS0 = 0;
	bcf	(251/8),(251)&7
	line	76
	
l5678:	
;LED Cube.c: 76: ADFM = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1279/8)^080h,(1279)&7
	line	78
	
l5680:	
;LED Cube.c: 78: PCFG3 = 1;
	bsf	(1275/8)^080h,(1275)&7
	line	79
	
l5682:	
;LED Cube.c: 79: PCFG2 = 1;
	bsf	(1274/8)^080h,(1274)&7
	line	80
	
l5684:	
;LED Cube.c: 80: PCFG1 = 1;
	bsf	(1273/8)^080h,(1273)&7
	line	81
	
l5686:	
;LED Cube.c: 81: PCFG0 = 0;
	bcf	(1272/8)^080h,(1272)&7
	line	83
	
l5688:	
;LED Cube.c: 83: ADON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(248/8),(248)&7
	line	84
	
l733:	
	return
	opt stack 0
GLOBAL	__end_of_io_init
	__end_of_io_init:
;; =============== function _io_init ends ============

	signat	_io_init,88
psect	text562,local,class=CODE,delta=2
global __ptext562
__ptext562:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
