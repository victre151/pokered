	db DEX_PORYGON ; pokedex id

	db  85,  80,  80,  50, 105 ;  400BST
	;   hp  atk  def  spd  spc

	db ELECTRIC, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 130 ; base exp

	INCBIN "gfx/pokemon/front/porygon.pic", 0, 1 ; sprite dimensions
	dw PorygonPicFront, PorygonPicBack

	db TACKLE, PSYWAVE, THUNDER_WAVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm FLASH,        THRASH,       DOUBLE_EDGE,  DISABLE,      HYPER_BEAM,   \
	     THUNDERBOLT,  THUNDER,      HYPNOSIS,     RECOVER,      REFLECT,      \
	     SKULL_BASH,   AMNESIA,      DREAM_EATER,  REST,         TRI_ATTACK,   \
	     SUBSTITUTE
	; end

	db BANK(PorygonPicFront)
	assert BANK(PorygonPicFront) == BANK(PorygonPicBack)
