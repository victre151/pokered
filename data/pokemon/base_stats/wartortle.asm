	db DEX_WARTORTLE ; pokedex id

	db  59,  63,  80,  58,  80 ;  340BST
	;   hp  atk  def  spd  spc

	db WATER, ICE ; type
	db 45 ; catch rate
	db 143 ; base exp

	INCBIN "gfx/pokemon/front/wartortle.pic", 0, 1 ; sprite dimensions
	dw WartortlePicFront, WartortlePicBack

	db AURORA_BEAM, WITHDRAW, BITE, FOCUS_ENERGY ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SURF,   	   STRENGTH,     MEGA_PUNCH,   ICE_PUNCH,    MEGA_KICK,    \
	     THRASH,  	   DOUBLE_EDGE,  ROAR,    	   MIST,     	 HYDRO_PUMP,   \
	     ICE_BEAM,     BLIZZARD,     BUBBLEBEAM,   SEISMIC_TOSS, ROCK_THROW,   \
	     HAZE,	       REFLECT,      SKULL_BASH,   AMNESIA,      GLARE,  	   \
	     REST,   	   ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(WartortlePicFront)
	assert BANK(WartortlePicFront) == BANK(WartortlePicBack)
