	db DEX_PARAS ; pokedex id

	db  41,  76,  61,  31,  61 ;  270BST
	;   hp  atk  def  spd  spc

	db BUG, POISON ; type
	db 190 ; catch rate
	db 70 ; base exp

	INCBIN "gfx/pokemon/front/paras.pic", 0, 1 ; sprite dimensions
	dw ParasPicFront, ParasPicBack

	db SCRATCH, SAND_ATTACK, POISON_STING, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm CUT,          GUILLOTINE,   THRASH,       DOUBLE_EDGE,  DISABLE,  	   \
	     MEGA_DRAIN,   LEECH_SEED,   POISONPOWDER, STUN_SPORE,   SLEEP_POWDER, \
	     TOXIC,        HYPNOSIS,     REFLECT,      SLUDGE,       SKULL_BASH,   \
	     GLARE,        POISON_GAS,   ACID_ARMOR,   REST,         SUBSTITUTE
	; end

	db 0 ; padding
