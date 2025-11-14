	db DEX_MEWTWO ; pokedex id

	db 104, 118,  92, 128, 138 ;  580BST
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, FIGHTING ; type
	db 3 ; catch rate
	db 220 ; base exp

	INCBIN "gfx/pokemon/front/mewtwo.pic", 0, 1 ; sprite dimensions
	dw MewtwoPicFront, MewtwoPicBack

	db SCRATCH, TACKLE, PSYWAVE, DOUBLE_KICK ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm CUT,   	   FLY,   		 SURF,    	   STRENGTH, 	 FLASH,        \
	     MEGA_PUNCH,   FIRE_PUNCH,   ICE_PUNCH,    THUNDERPUNCH, GUILLOTINE,   \
	     RAZOR_WIND,   SWORDS_DANCE, MEGA_KICK,    HORN_DRILL,   THRASH,   	   \
	     DOUBLE_EDGE,  ROAR,   	 	 DISABLE,      MIST, 		 HYDRO_PUMP,   \
	     ICE_BEAM,     BLIZZARD,     BUBBLEBEAM,   HYPER_BEAM,   SEISMIC_TOSS, \
	     MEGA_DRAIN,   LEECH_SEED,   SOLARBEAM,    POISONPOWDER, STUN_SPORE,   \
	     SLEEP_POWDER, PETAL_DANCE,  THUNDERBOLT,  THUNDER,      ROCK_THROW,   \
	     FISSURE,      DIG,          TOXIC,   	   HYPNOSIS,     RECOVER,      \
	     LIGHT_SCREEN, HAZE, 		 REFLECT,      SLUDGE,       FIRE_BLAST,   \
	     SKULL_BASH,   AMNESIA,      GLARE,        DREAM_EATER,  ACID_ARMOR,   \
		 POISON_GAS,   REST,		 ROCK_SLIDE,   TRI_ATTACK,	 SUBSTITUTE
	; end

	db BANK(MewtwoPicFront)
	assert BANK(MewtwoPicFront) == BANK(MewtwoPicBack)
