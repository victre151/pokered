	db DEX_VAPOREON ; pokedex id

	db 115,  80,  92,  65, 95 ;  447BST
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 196 ; base exp

	INCBIN "gfx/pokemon/front/vaporeon.pic", 0, 1 ; sprite dimensions
	dw VaporeonPicFront, VaporeonPicBack

	db DOUBLE_TEAM, TAKE_DOWN, SLASH, WATERFALL ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SURF,         THRASH,       DOUBLE_EDGE,  ROAR,         MIST,         \
	     HYDRO_PUMP,   ICE_BEAM,     BLIZZARD,     BUBBLEBEAM,   HYPER_BEAM,   \
	     TOXIC,        HAZE,  		 REFLECT,      SLUDGE,       SKULL_BASH,   \
	     POISON_GAS,   ACID_ARMOR,   REST,         TRI_ATTACK,   SUBSTITUTE
	; end

	db BANK(VaporeonPicFront)
	assert BANK(VaporeonPicFront) == BANK(VaporeonPicBack)
