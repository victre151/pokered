	db DEX_WARTORTLE ; pokedex id

	db  75,  80,  90,  35,  70 ;  350BST
	;   hp  atk  def  spd  spc

	db WATER, GROUND ; type
	db 45 ; catch rate
	db 143 ; base exp

	INCBIN "gfx/pokemon/front/wartortle.pic", 0, 1 ; sprite dimensions
	dw WartortlePicFront, WartortlePicBack

	db AURORA_BEAM, WITHDRAW, BITE, FOCUS_ENERGY ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SURF,   	   STRENGTH,     MEGA_PUNCH,   MEGA_KICK,    THRASH,  	   \
	     DOUBLE_EDGE,  ROAR,    	 HYDRO_PUMP,   BUBBLEBEAM,	 SEISMIC_TOSS, \
	     ROCK_THROW,   REFLECT,   	 FISSURE,  	   DIG,          SKULL_BASH,   \
	     AMNESIA,      GLARE,  	     REST,   	   ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(WartortlePicFront)
	assert BANK(WartortlePicFront) == BANK(WartortlePicBack)
