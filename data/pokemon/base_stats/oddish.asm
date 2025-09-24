	db DEX_ODDISH ; pokedex id

	db  50,  75,  55,  30,  50 ;  260BST
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 255 ; catch rate
	db 78 ; base exp

	INCBIN "gfx/pokemon/front/oddish.pic", 0, 1 ; sprite dimensions
	dw OddishPicFront, OddishPicBack

	db TACKLE, VINE_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm CUT,          THRASH,       DOUBLE_EDGE,  MEGA_DRAIN,   LEECH_SEED,   \
	     SOLARBEAM,    POISONPOWDER, STUN_SPORE,   SLEEP_POWDER, PETAL_DANCE,  \
	     TOXIC,        REFLECT,      SKULL_BASH,   POISON_GAS,   ACID_ARMOR,   \
		 REST,         SUBSTITUTE
	; end

	db BANK(OddishPicFront)
	assert BANK(OddishPicFront) == BANK(OddishPicBack)
