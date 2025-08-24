	db DEX_BULBASAUR ; pokedex id

	db  45,  65,  49,  45,  49 ;  253BST
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 64 ; base exp

	INCBIN "gfx/pokemon/front/bulbasaur.pic", 0, 1 ; sprite dimensions
	dw BulbasaurPicFront, BulbasaurPicBack

	db TACKLE, VINE_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm CUT, 		   THRASH,       DOUBLE_EDGE,  ROAR,    	 MEGA_DRAIN,   \
	     LEECH_SEED,   SOLARBEAM,    POISONPOWDER, STUN_SPORE,   SLEEP_POWDER, \
	     PETAL_DANCE,  TOXIC,        REFLECT,      SLUDGE,       SKULL_BASH,   \
		 GLARE,		   POISON_GAS,   ACID_ARMOR,   REST,		 SUBSTITUTE
	; end

	db 0 ; padding
