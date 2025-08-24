	db DEX_GLOOM ; pokedex id

	db  70,  65,  70,  40,  85 ;  330BST
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 120 ; catch rate
	db 132 ; base exp

	INCBIN "gfx/pokemon/front/gloom.pic", 0, 1 ; sprite dimensions
	dw GloomPicFront, GloomPicBack

	db GROWTH, SWIFT, MEGA_DRAIN, ACID ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm CUT,          THRASH,       DOUBLE_EDGE,  MEGA_DRAIN,   LEECH_SEED,   \
	     SOLARBEAM,    POISONPOWDER, STUN_SPORE,   SLEEP_POWDER, PETAL_DANCE,  \
	     TOXIC,        REFLECT,      SKULL_BASH,   POISON_GAS,   ACID_ARMOR,   \
		 REST,         SUBSTITUTE
	; end

	db 0 ; padding
