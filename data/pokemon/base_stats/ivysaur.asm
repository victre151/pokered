	db DEX_IVYSAUR ; pokedex id

	db  60,  80,  63,  60,  62 ;  325BST
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 141 ; base exp

	INCBIN "gfx/pokemon/front/ivysaur.pic", 0, 1 ; sprite dimensions
	dw IvysaurPicFront, IvysaurPicBack

	db ABSORB, SMOG, BITE, FOCUS_ENERGY ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm CUT, 		   THRASH,       DOUBLE_EDGE,  ROAR,    	 MEGA_DRAIN,   \
	     LEECH_SEED,   SOLARBEAM,    POISONPOWDER, STUN_SPORE,   SLEEP_POWDER, \
	     PETAL_DANCE,  TOXIC,        REFLECT,      SLUDGE,       SKULL_BASH,   \
		 GLARE,		   POISON_GAS,   ACID_ARMOR,   REST,		 SUBSTITUTE
	; end

	db 0 ; padding
