	db DEX_VICTREEBEL ; pokedex id

	db  80, 105,  65,  70, 100 ;  420BST
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 191 ; base exp

	INCBIN "gfx/pokemon/front/victreebel.pic", 0, 1 ; sprite dimensions
	dw VictreebelPicFront, VictreebelPicBack

	db RAZOR_LEAF, SLUDGE, BODY_SLAM, SWORDS_DANCE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm CUT, 		   SWORDS_DANCE, THRASH,       DOUBLE_EDGE,  HYPER_BEAM,   \
	     MEGA_DRAIN,   LEECH_SEED,   SOLARBEAM,    POISONPOWDER, STUN_SPORE,   \
	     SLEEP_POWDER, PETAL_DANCE,  TOXIC,        REFLECT,      SLUDGE,	   \
		 POISON_GAS,   REST,   	     SUBSTITUTE
	; end

	db 0 ; padding
