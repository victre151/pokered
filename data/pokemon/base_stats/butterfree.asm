	db DEX_BUTTERFREE ; pokedex id

	db  79,  74,  69,  89,  99 ;  410BST
	;   hp  atk  def  spd  spc

	db BUG, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 160 ; base exp

	INCBIN "gfx/pokemon/front/butterfree.pic", 0, 1 ; sprite dimensions
	dw ButterfreePicFront, ButterfreePicBack

	db PIN_MISSILE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   DOUBLE_EDGE,  DISABLE,      HYPER_BEAM,   MEGA_DRAIN,   \
		 LEECH_SEED,   POISONPOWDER, STUN_SPORE,   SLEEP_POWDER, PETAL_DANCE,  \
		 REFLECT,      SKULL_BASH,   DREAM_EATER,  REST,		 SUBSTITUTE
	; end

	db BANK(ButterfreePicFront)
	assert BANK(ButterfreePicFront) == BANK(ButterfreePicBack)
