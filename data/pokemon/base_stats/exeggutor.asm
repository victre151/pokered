	db DEX_EXEGGUTOR ; pokedex id

	db 100, 115,  90,  60,  85 ;  450BST
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 212 ; base exp

	INCBIN "gfx/pokemon/front/exeggutor.pic", 0, 1 ; sprite dimensions
	dw ExeggutorPicFront, ExeggutorPicBack

	db BARRAGE, TAKE_DOWN, LIGHT_SCREEN, RAZOR_LEAF ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm THRASH,       DOUBLE_EDGE,  DISABLE,      HYPER_BEAM,   MEGA_DRAIN,   \
	     LEECH_SEED,   SOLARBEAM,    POISONPOWDER, STUN_SPORE,   SLEEP_POWDER, \
	     PETAL_DANCE,  FISSURE,      DIG,		   HYPNOSIS,     REFLECT,      \
		 SKULL_BASH,   REST,         SUBSTITUTE 
	; end

	db BANK(ExeggutorPicFront)
	assert BANK(ExeggutorPicFront) == BANK(ExeggutorPicBack)
