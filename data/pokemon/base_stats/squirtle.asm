	db DEX_SQUIRTLE ; pokedex id

	db  44,  48,  65,  43,  64 ;  264BST
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 66 ; base exp

	INCBIN "gfx/pokemon/front/squirtle.pic", 0, 1 ; sprite dimensions
	dw SquirtlePicFront, SquirtlePicBack

	db TACKLE, BUBBLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SURF,   	   STRENGTH,     MEGA_PUNCH,   ICE_PUNCH,    MEGA_KICK,    \
	     THRASH,  	   DOUBLE_EDGE,  ROAR,    	   MIST,     	 HYDRO_PUMP,   \
	     ICE_BEAM,     BLIZZARD,     BUBBLEBEAM,   SEISMIC_TOSS, ROCK_THROW,   \
	     HAZE,	       REFLECT,      SKULL_BASH,   AMNESIA,      GLARE,  	   \
	     REST,   	   ROCK_SLIDE,   SUBSTITUTE
	; end

	db 0 ; padding
