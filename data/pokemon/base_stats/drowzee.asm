	db DEX_DROWZEE ; pokedex id

	db  60,  48,  45,  42,  90 ;  285BST
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 190 ; catch rate
	db 102 ; base exp

	INCBIN "gfx/pokemon/front/drowzee.pic", 0, 1 ; sprite dimensions
	dw DrowzeePicFront, DrowzeePicBack

	db SCRATCH, PSYWAVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm FLASH,   	   ICE_PUNCH,    DOUBLE_EDGE,  DISABLE,      HYPNOSIS,     \
	     REFLECT,  	   SKULL_BASH,   GLARE,        DREAM_EATER,  REST,         \
	     SUBSTITUTE
	; end

	db 0 ; padding
