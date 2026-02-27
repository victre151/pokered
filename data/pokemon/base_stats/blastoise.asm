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
	tmhm SURF,   	   STRENGTH,     MEGA_PUNCH,    MEGA_KICK,    THRASH,  	   \
	     DOUBLE_EDGE,  ROAR,     	 HYDRO_PUMP,    BUBBLEBEAM,   HYPER_BEAM,  \
	     SEISMIC_TOSS, ROCK_THROW,	 REFLECT,       SKULL_BASH,   AMNESIA,     \
	     GLARE,  	   REST,   	     ROCK_SLIDE,	FISSURE,  	  DIG,    	   \
		 SUBSTITUTE
	; end

	db BANK(BlastoisePicFront)
	assert BANK(BlastoisePicFront) == BANK(BlastoisePicBack)
