	db DEX_SHELLDER ; pokedex id

	db  20,  55, 90,  40,  65 ;  270BST
	;   hp  atk  def  spd  spc

	db BUG, WATER ; type
	db 190 ; catch rate
	db 97 ; base exp

	INCBIN "gfx/pokemon/front/shellder.pic", 0, 1 ; sprite dimensions
	dw ShellderPicFront, ShellderPicBack

	db TACKLE, BUBBLE, SAND_ATTACK, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SURF,         GUILLOTINE,   HORN_DRILL,   THRASH,   	 DOUBLE_EDGE,  \
	     MIST,     	   HYDRO_PUMP,   ICE_BEAM,     BLIZZARD,     BUBBLEBEAM,   \
	     HAZE,         REFLECT,      SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db BANK(ShellderPicFront)
	assert BANK(ShellderPicFront) == BANK(ShellderPicBack)
