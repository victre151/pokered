	db DEX_CLOYSTER ; pokedex id

	db  50,  95, 180,  70,  85 ;  480BST
	;   hp  atk  def  spd  spc

	db WATER, ICE ; type
	db 60 ; catch rate
	db 203 ; base exp

	INCBIN "gfx/pokemon/front/cloyster.pic", 0, 1 ; sprite dimensions
	dw CloysterPicFront, CloysterPicBack

	db TAKE_DOWN, SLASH, SCREECH, ICE_BEAM ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SURF,         GUILLOTINE,   HORN_DRILL,   THRASH,   	 DOUBLE_EDGE,  \
	     MIST,     	   HYDRO_PUMP,   ICE_BEAM,     BLIZZARD,     BUBBLEBEAM,   \
	     HYPER_BEAM,   HAZE,         REFLECT,      SKULL_BASH,   REST,         \
		 SUBSTITUTE
	     
	; end

	db BANK(CloysterPicFront)
	assert BANK(CloysterPicFront) == BANK(CloysterPicBack)
