	db DEX_KABUTOPS ; pokedex id

	db  60, 115, 105,  80,  70 ;  430BST
	;   hp  atk  def  spd  spc

	db ROCK, BUG ; type
	db 45 ; catch rate
	db 201 ; base exp

	INCBIN "gfx/pokemon/front/kabutops.pic", 0, 1 ; sprite dimensions
	dw KabutopsPicFront, KabutopsPicBack

	db ROCK_SLIDE, TWINEEDLE, EARTHQUAKE, BODY_SLAM ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm GUILLOTINE,   SWORDS_DANCE, THRASH,       DOUBLE_EDGE,  HYPER_BEAM,   \
	     MEGA_DRAIN,   ROCK_THROW,   FISSURE,      DIG,          REFLECT,      \
	     SKULL_BASH,   ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(KabutopsPicFront)
	assert BANK(KabutopsPicFront) == BANK(KabutopsPicBack)
