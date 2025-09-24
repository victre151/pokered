	db DEX_VENONAT ; pokedex id

	db  60,  55,  50,  45,  55 ;  265BST
	;   hp  atk  def  spd  spc

	db POISON, PSYCHIC_TYPE ; type
	db 190 ; catch rate
	db 75 ; base exp

	INCBIN "gfx/pokemon/front/venonat.pic", 0, 1 ; sprite dimensions
	dw VenonatPicFront, VenonatPicBack

	db SCRATCH, POISON_STING, STRING_SHOT, PSYWAVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm THRASH,       DOUBLE_EDGE,  DISABLE,      POISONPOWDER, STUN_SPORE,   \
	     SLEEP_POWDER, TOXIC,        HYPNOSIS,     REFLECT,      SLUDGE,       \
	     SKULL_BASH,   DREAM_EATER,  POISON_GAS,   REST,         SUBSTITUTE
	; end

	db BANK(VenonatPicFront)
	assert BANK(VenonatPicFront) == BANK(VenonatPicBack)
