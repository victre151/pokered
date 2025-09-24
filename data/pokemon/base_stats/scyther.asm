	db DEX_SCYTHER ; pokedex id

	db  70, 110,  80, 105,  80 ;  445BST
	;   hp  atk  def  spd  spc

	db BUG, FLYING ; type
	db 45 ; catch rate
	db 187 ; base exp

	INCBIN "gfx/pokemon/front/scyther.pic", 0, 1 ; sprite dimensions
	dw ScytherPicFront, ScytherPicBack

	db SCRATCH, TACKLE, DOUBLE_KICK, PECK ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm CUT,          FLY,          GUILLOTINE,   RAZOR_WIND,   SWORDS_DANCE, \
	     THRASH,       DOUBLE_EDGE,  HYPER_BEAM,   ROCK_THROW,   SKULL_BASH,   \
	     REST,         ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(ScytherPicFront)
	assert BANK(ScytherPicFront) == BANK(ScytherPicBack)
