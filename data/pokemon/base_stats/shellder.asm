	db DEX_SHELLDER ; pokedex id

	db  30,  65, 100,  40,  45 ;  280BST
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 190 ; catch rate
	db 97 ; base exp

	INCBIN "gfx/pokemon/front/shellder.pic", 0, 1 ; sprite dimensions
	dw ShellderPicFront, ShellderPicBack

	db TACKLE, BUBBLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SURF,         GUILLOTINE,   HORN_DRILL,   THRASH,   	 DOUBLE_EDGE,  \
	     MIST,     	   HYDRO_PUMP,   ICE_BEAM,     BLIZZARD,     BUBBLEBEAM,   \
	     HAZE,         REFLECT,      SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db 0 ; padding
