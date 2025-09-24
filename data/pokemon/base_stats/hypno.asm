	db DEX_HYPNO ; pokedex id

	db  85,  73,  70,  67, 115 ;  410BST
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, GHOST ; type
	db 75 ; catch rate
	db 165 ; base exp

	INCBIN "gfx/pokemon/front/hypno.pic", 0, 1 ; sprite dimensions
	dw HypnoPicFront, HypnoPicBack

	db FURY_SWIPES, CONFUSE_RAY, PSYBEAM, ICE_PUNCH ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm FLASH,   	   ICE_PUNCH,    DOUBLE_EDGE,  DISABLE,      HYPER_BEAM,   \
	     HYPNOSIS,     REFLECT,  	 SKULL_BASH,   GLARE,        DREAM_EATER,  \
	     REST,         SUBSTITUTE
	; end

	db BANK(HypnoPicFront)
	assert BANK(HypnoPicFront) == BANK(HypnoPicBack)
