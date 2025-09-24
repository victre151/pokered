	db DEX_EXEGGCUTE ; pokedex id

	db  60,  40,  80,  40,  60 ;  280BST
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 90 ; catch rate
	db 98 ; base exp

	INCBIN "gfx/pokemon/front/exeggcute.pic", 0, 1 ; sprite dimensions
	dw ExeggcutePicFront, ExeggcutePicBack

	db BARRAGE, VINE_WHIP, PSYWAVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm THRASH,       DOUBLE_EDGE,  DISABLE,      MEGA_DRAIN,   LEECH_SEED,   \
	     SOLARBEAM,    POISONPOWDER, STUN_SPORE,   SLEEP_POWDER, PETAL_DANCE,  \
	     FISSURE,      DIG,			 HYPNOSIS,     REFLECT,      SKULL_BASH,   \
		 REST,         SUBSTITUTE
	; end

	db BANK(ExeggcutePicFront)
	assert BANK(ExeggcutePicFront) == BANK(ExeggcutePicBack)
