	db DEX_SEEL ; pokedex id

	db  65,  45,  55,  45,  70 ;  280BST
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 190 ; catch rate
	db 100 ; base exp

	INCBIN "gfx/pokemon/front/seel.pic", 0, 1 ; sprite dimensions
	dw SeelPicFront, SeelPicBack

	db PECK, TACKLE, BUBBLE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SURF,         STRENGTH,     RAZOR_WIND,   HORN_DRILL,   THRASH,  	   \
	     DOUBLE_EDGE,  ROAR,    	 MIST,     	   HYDRO_PUMP,   ICE_BEAM,     \
	     BLIZZARD,     BUBBLEBEAM,   FISSURE,  	   HAZE,         SKULL_BASH,   \
	     GLARE,        REST,   		 SUBSTITUTE
	; end

	db BANK(SeelPicFront)
	assert BANK(SeelPicFront) == BANK(SeelPicBack)
