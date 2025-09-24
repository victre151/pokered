	db DEX_VENUSAUR ; pokedex id

	db  80, 100,  83,  80, 82 ;  425BST
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 208 ; base exp

	INCBIN "gfx/pokemon/front/venusaur.pic", 0, 1 ; sprite dimensions
	dw VenusaurPicFront, VenusaurPicBack

	db HEADBUTT, TAKE_DOWN, SLASH, SCREECH ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm CUT, 		   THRASH,       DOUBLE_EDGE,  ROAR,    	 MEGA_DRAIN,   \
	     HYPER_BEAM,   LEECH_SEED,   SOLARBEAM,    POISONPOWDER, STUN_SPORE,   \
	     SLEEP_POWDER, PETAL_DANCE,  TOXIC,        REFLECT,      SLUDGE,       \
		 SKULL_BASH,   GLARE,		 POISON_GAS,   ACID_ARMOR,   REST,		   \
		 SUBSTITUTE
	; end

	db BANK(VenusaurPicFront)
	assert BANK(VenusaurPicFront) == BANK(VenusaurPicBack)
