	db DEX_MEW ; pokedex id

	db 116, 116, 116, 116, 116 ;  580BST
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 64 ; base exp

	INCBIN "gfx/pokemon/front/mew.pic", 0, 1 ; sprite dimensions
	dw MewPicFront, MewPicBack

	db TRANSFORM, TACKLE, SCRATCH, PSYWAVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

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

	db %11111111 ; padding
