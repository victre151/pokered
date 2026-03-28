	db DEX_SQUIRTLE ; pokedex id

	db  50,  55,  65,  30,  50 ;  250BST
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 75 ; catch rate
	db 66 ; base exp

	INCBIN "gfx/pokemon/front/squirtle.pic", 0, 1 ; sprite dimensions
	dw SquirtlePicFront, SquirtlePicBack

	db TACKLE, BUBBLE, SAND_ATTACK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SURF,   	   STRENGTH,     MEGA_PUNCH,   MEGA_KICK,    THRASH,  	   \
	     DOUBLE_EDGE,  ROAR,    	 HYDRO_PUMP,   BUBBLEBEAM,	 SEISMIC_TOSS, \
	     ROCK_THROW,   REFLECT,   	 FISSURE,  	   DIG,          SKULL_BASH,   \
	     AMNESIA,      GLARE,  	     REST,   	   ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(SquirtlePicFront)
	assert BANK(SquirtlePicFront) == BANK(SquirtlePicBack)
