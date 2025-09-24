	db DEX_ONIX ; pokedex id

	db  71,  81, 156,  66,  76 ;  450BST
	;   hp  atk  def  spd  spc

	db ROCK, DRAGON ; type
	db 45 ; catch rate
	db 108 ; base exp

	INCBIN "gfx/pokemon/front/onix.pic", 0, 1 ; sprite dimensions
	dw OnixPicFront, OnixPicBack

	db TACKLE, SAND_ATTACK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,     HORN_DRILL,   THRASH,       DOUBLE_EDGE,  ROAR,         \
	     HYPER_BEAM,   ROCK_THROW,   FISSURE,      DIG,          SKULL_BASH,   \
	     GLARE,        REST,         ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(OnixPicFront)
	assert BANK(OnixPicFront) == BANK(OnixPicBack)
