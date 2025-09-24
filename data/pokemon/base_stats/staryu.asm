	db DEX_STARYU ; pokedex id

	db  30,  45,  55,  85,  70 ;  285BST
	;   hp  atk  def  spd  spc

	db WATER, PSYCHIC_TYPE ; type
	db 225 ; catch rate
	db 106 ; base exp

	INCBIN "gfx/pokemon/front/staryu.pic", 0, 1 ; sprite dimensions
	dw StaryuPicFront, StaryuPicBack

	db TACKLE, BUBBLE, PSYWAVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SURF,         DOUBLE_EDGE,  DISABLE,      HYDRO_PUMP,   ICE_BEAM,     \
	     BLIZZARD,     BUBBLEBEAM,   REFLECT,      SKULL_BASH,   REST,         \
	     SUBSTITUTE
	; end

	db BANK(StaryuPicFront)
	assert BANK(StaryuPicFront) == BANK(StaryuPicBack)
