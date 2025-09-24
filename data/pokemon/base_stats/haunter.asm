	db DEX_HAUNTER ; pokedex id

	db  45,  50,  45,  95, 115 ;  350BST
	;   hp  atk  def  spd  spc

	db GHOST, POISON ; type
	db 90 ; catch rate
	db 126 ; base exp

	INCBIN "gfx/pokemon/front/haunter.pic", 0, 1 ; sprite dimensions
	dw HaunterPicFront, HaunterPicBack

	db RAGE, FURY_SWIPES, CONFUSE_RAY, ACID ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm ICE_PUNCH,    THRASH,       MIST,         ICE_BEAM,     BLIZZARD,     \
	     TOXIC,        HYPNOSIS,     HAZE,         SLUDGE,       GLARE,        \
	     DREAM_EATER,  POISON_GAS,   ACID_ARMOR,   REST,         SUBSTITUTE      
	; end

	db BANK(HaunterPicFront)
	assert BANK(HaunterPicFront) == BANK(HaunterPicBack)
