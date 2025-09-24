	db DEX_GRAVELER ; pokedex id

	db  55,  95, 115,  35,  45 ;  345BST
	;   hp  atk  def  spd  spc

	db ROCK, GROUND ; type
	db 120 ; catch rate
	db 134 ; base exp

	INCBIN "gfx/pokemon/front/graveler.pic", 0, 1 ; sprite dimensions
	dw GravelerPicFront, GravelerPicBack

	db DIG, SWIFT, HEADBUTT, DIZZY_PUNCH ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,     MEGA_PUNCH,   THRASH,       DOUBLE_EDGE,  SEISMIC_TOSS, \
	     ROCK_THROW,   FISSURE,      DIG,          SKULL_BASH,   REST,         \
	     ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(GravelerPicFront)
	assert BANK(GravelerPicFront) == BANK(GravelerPicBack)
