	db DEX_SANDSLASH ; pokedex id

	db  75,  90, 110,  65,  65 ;  405BST
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 90 ; catch rate
	db 163 ; base exp

	INCBIN "gfx/pokemon/front/sandslash.pic", 0, 1 ; sprite dimensions
	dw SandslashPicFront, SandslashPicBack

	db FURY_SWIPES, RAGE, DIG, FURY_ATTACK ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,     CUT,          SWORDS_DANCE, THRASH,       DOUBLE_EDGE,  \
	     HYPER_BEAM,   ROCK_THROW,   FISSURE,      DIG,          TOXIC,        \
	     SLUDGE,       SKULL_BASH,   POISON_GAS,   ACID_ARMOR,   REST,         \
	     ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(SandslashPicFront)
	assert BANK(SandslashPicFront) == BANK(SandslashPicBack)
