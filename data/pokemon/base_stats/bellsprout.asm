	db DEX_BELLSPROUT ; pokedex id

	db  50,  75,  35,  40,  70 ;  270BST
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 255 ; catch rate
	db 84 ; base exp

	INCBIN "gfx/pokemon/front/bellsprout.pic", 0, 1 ; sprite dimensions
	dw BellsproutPicFront, BellsproutPicBack

	db SCRATCH, VINE_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm CUT, 		   SWORDS_DANCE, THRASH,       DOUBLE_EDGE,  MEGA_DRAIN,   \
	     LEECH_SEED,   SOLARBEAM,    POISONPOWDER, STUN_SPORE,   SLEEP_POWDER, \
	     PETAL_DANCE,  TOXIC,        REFLECT,      SLUDGE,		 POISON_GAS,   \
		 REST,   	   SUBSTITUTE
	; end

	db BANK(BellsproutPicFront)
	assert BANK(BellsproutPicFront) == BANK(BellsproutPicBack)
