	db DEX_VILEPLUME ; pokedex id

	db  90,  80,  85,  50, 110 ;  415BST
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 184 ; base exp

	INCBIN "gfx/pokemon/front/vileplume.pic", 0, 1 ; sprite dimensions
	dw VileplumePicFront, VileplumePicBack

	db RAZOR_LEAF, SLUDGE, BODY_SLAM, ACID_ARMOR ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm CUT,          THRASH,       DOUBLE_EDGE,  HYPER_BEAM,   MEGA_DRAIN,   \
	     LEECH_SEED,   SOLARBEAM,    POISONPOWDER, STUN_SPORE,   SLEEP_POWDER, \
	     PETAL_DANCE,  TOXIC,        REFLECT,      SKULL_BASH,   POISON_GAS,   \
		 ACID_ARMOR,   REST,         SUBSTITUTE
	; end

	db BANK(VileplumePicFront)
	assert BANK(VileplumePicFront) == BANK(VileplumePicBack)
