	db DEX_BLASTOISE ; pokedex id

	db  79,  83, 100,  78,  105 ;  445BST
	;   hp  atk  def  spd  spc

	db WATER, ICE ; type
	db 45 ; catch rate
	db 210 ; base exp

	INCBIN "gfx/pokemon/front/blastoise.pic", 0, 1 ; sprite dimensions
	dw BlastoisePicFront, BlastoisePicBack

	db TAKE_DOWN, SLASH, SCREECH, WATERFALL ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SURF,   	   STRENGTH,     MEGA_PUNCH,   ICE_PUNCH,    MEGA_KICK,    \
	     THRASH,  	   DOUBLE_EDGE,  ROAR,    	   MIST,     	 HYDRO_PUMP,   \
	     ICE_BEAM,     BLIZZARD,     BUBBLEBEAM,   HYPER_BEAM,	 SEISMIC_TOSS, \
	     ROCK_THROW,   HAZE,	     REFLECT,      SKULL_BASH,   AMNESIA,      \
	     GLARE,  	   REST,   	     ROCK_SLIDE,   SUBSTITUTE
	; end

	db 0 ; padding
