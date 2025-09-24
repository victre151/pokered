	db DEX_WEEPINBELL ; pokedex id

	db  65,  90,  50,  55,  85 ;  345BST
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 120 ; catch rate
	db 151 ; base exp

	INCBIN "gfx/pokemon/front/weepinbell.pic", 0, 1 ; sprite dimensions
	dw WeepinbellPicFront, WeepinbellPicBack

	db GROWTH, FURY_SWIPES, SWIFT, MEGA_DRAIN ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm CUT, 		   SWORDS_DANCE, THRASH,       DOUBLE_EDGE,  MEGA_DRAIN,   \
	     LEECH_SEED,   SOLARBEAM,    POISONPOWDER, STUN_SPORE,   SLEEP_POWDER, \
	     PETAL_DANCE,  TOXIC,        REFLECT,      SLUDGE,		 POISON_GAS,   \
		 REST,   	   SUBSTITUTE
	; end

	db BANK(WeepinbellPicFront)
	assert BANK(WeepinbellPicFront) == BANK(WeepinbellPicBack)
