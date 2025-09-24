	db DEX_VENOMOTH ; pokedex id

	db  70,  75,  60,  100,  95 ;  400BST
	;   hp  atk  def  spd  spc

	db POISON, PSYCHIC_TYPE ; type
	db 75 ; catch rate
	db 138 ; base exp

	INCBIN "gfx/pokemon/front/venomoth.pic", 0, 1 ; sprite dimensions
	dw VenomothPicFront, VenomothPicBack

	db PSYBEAM, LEECH_LIFE, MEGA_DRAIN, TAKE_DOWN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   THRASH,       DOUBLE_EDGE,  DISABLE,      HYPER_BEAM,   \
	     POISONPOWDER, STUN_SPORE,   SLEEP_POWDER, TOXIC,        HYPNOSIS,     \
	     REFLECT,      SLUDGE,       SKULL_BASH,   DREAM_EATER,  POISON_GAS,   \
		 REST,         SUBSTITUTE
	; end

	db BANK(VenomothPicFront)
	assert BANK(VenomothPicFront) == BANK(VenomothPicBack)
