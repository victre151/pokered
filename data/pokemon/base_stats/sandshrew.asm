	db DEX_SANDSHREW ; pokedex id

	db  50,  65,  85,  40,  40 ;  280BST
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 255 ; catch rate
	db 93 ; base exp

	INCBIN "gfx/pokemon/front/sandshrew.pic", 0, 1 ; sprite dimensions
	dw SandshrewPicFront, SandshrewPicBack

	db SCRATCH, TACKLE, POISON_STING, SAND_ATTACK ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,     CUT,          SWORDS_DANCE, THRASH,       DOUBLE_EDGE,  \
	     ROCK_THROW,   FISSURE,      DIG,          TOXIC,        SLUDGE,       \
	     SKULL_BASH,   POISON_GAS,   ACID_ARMOR,   REST,         ROCK_SLIDE,   \
	     SUBSTITUTE
	; end

	db BANK(SandshrewPicFront)
	assert BANK(SandshrewPicFront) == BANK(SandshrewPicBack)
