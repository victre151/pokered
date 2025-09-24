	db DEX_KABUTO ; pokedex id

	db  30,  80,  90,  55,  55 ;  310BST
	;   hp  atk  def  spd  spc

	db ROCK, BUG ; type
	db 45 ; catch rate
	db 119 ; base exp

	INCBIN "gfx/pokemon/front/kabuto.pic", 0, 1 ; sprite dimensions
	dw KabutoPicFront, KabutoPicBack

	db SCRATCH, SAND_ATTACK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm GUILLOTINE,   SWORDS_DANCE, THRASH,       DOUBLE_EDGE,  MEGA_DRAIN,   \
	     ROCK_THROW,   FISSURE,      DIG,          REFLECT,      SKULL_BASH,   \
	     ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(KabutoPicFront)
	assert BANK(KabutoPicFront) == BANK(KabutoPicBack)
