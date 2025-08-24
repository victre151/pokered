	db DEX_GASTLY ; pokedex id

	db  30,  35,  30,  80, 100 ;  275BST
	;   hp  atk  def  spd  spc

	db GHOST, POISON ; type
	db 190 ; catch rate
	db 95 ; base exp

	INCBIN "gfx/pokemon/front/gastly.pic", 0, 1 ; sprite dimensions
	dw GastlyPicFront, GastlyPicBack

	db PSYWAVE, POISON_STING, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm ICE_PUNCH,    THRASH,       MIST,         ICE_BEAM,     BLIZZARD,     \
	     TOXIC,        HYPNOSIS,     HAZE,         SLUDGE,       GLARE,        \
	     DREAM_EATER,  POISON_GAS,   ACID_ARMOR,   REST,         SUBSTITUTE    
	; end

	db 0 ; padding
