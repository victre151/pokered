	db DEX_PARAS ; pokedex id

	db  55,  70,  65,  20,  60 ;  270BST
	;   hp  atk  def  spd  spc

	db BUG, GRASS ; type
	db 190 ; catch rate
	db 70 ; base exp

	INCBIN "gfx/pokemon/front/paras.pic", 0, 1 ; sprite dimensions
	dw ParasPicFront, ParasPicBack

	db VINE_WHIP, SAND_ATTACK, POISON_STING, SCRATCH ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm CUT,          GUILLOTINE,   THRASH,       DOUBLE_EDGE,  DISABLE,  	   \
	     MEGA_DRAIN,   LEECH_SEED,   SOLARBEAM,	   POISONPOWDER, STUN_SPORE,   \
	     SLEEP_POWDER, PETAL_DANCE,  TOXIC,        HYPNOSIS,     REFLECT,      \
	     SLUDGE,       SKULL_BASH,   GLARE,        POISON_GAS,   ACID_ARMOR,   \
		 REST,         SUBSTITUTE
	; end

	db BANK(ParasPicFront)
	assert BANK(ParasPicFront) == BANK(ParasPicBack)
