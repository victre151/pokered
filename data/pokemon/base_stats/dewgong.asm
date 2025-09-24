	db DEX_DEWGONG ; pokedex id

	db  90,  70,  80,  70,  95 ;  405BST
	;   hp  atk  def  spd  spc

	db WATER, ICE ; type
	db 75 ; catch rate
	db 176 ; base exp

	INCBIN "gfx/pokemon/front/dewgong.pic", 0, 1 ; sprite dimensions
	dw DewgongPicFront, DewgongPicBack

	db TAKE_DOWN, SLASH, SCREECH, WATERFALL ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SURF,         STRENGTH,     RAZOR_WIND,   HORN_DRILL,   THRASH,  	   \
	     DOUBLE_EDGE,  ROAR,    	 MIST,     	   HYDRO_PUMP,   ICE_BEAM,     \
	     BLIZZARD,     BUBBLEBEAM,   HYPER_BEAM,   FISSURE,  	 HAZE,         \
	     SKULL_BASH,   GLARE,        REST,   	   SUBSTITUTE
	; end

	db BANK(DewgongPicFront)
	assert BANK(DewgongPicFront) == BANK(DewgongPicBack)
