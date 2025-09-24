	db DEX_NIDOKING ; pokedex id

	db  81,  102,  77,  85,  85 ;  430BST
	;   hp  atk  def  spd  spc

	db POISON, GROUND ; type
	db 45 ; catch rate
	db 195 ; base exp

	INCBIN "gfx/pokemon/front/nidoking.pic", 0, 1 ; sprite dimensions
	dw NidokingPicFront, NidokingPicBack

	db EARTHQUAKE, DRILL_PECK, ROCK_SLIDE, BODY_SLAM ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm STRENGTH, 	   MEGA_PUNCH,   MEGA_KICK,    HORN_DRILL,   THRASH,       \
	     DOUBLE_EDGE,  ROAR,  	   HYPER_BEAM,   SEISMIC_TOSS, ROCK_THROW,     \
	     FISSURE,      DIG,          TOXIC,        REFLECT,      SLUDGE,       \
	     SKULL_BASH,   GLARE,        POISON_GAS,   REST,         ROCK_SLIDE,   \
		 SUBSTITUTE
	; end

	db BANK(NidokingPicFront)
	assert BANK(NidokingPicFront) == BANK(NidokingPicBack)
