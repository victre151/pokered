	db DEX_ABRA ; pokedex id

	db  25,  20,  15,  90, 105 ;  255BST
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 200 ; catch rate
	db 73 ; base exp

	INCBIN "gfx/pokemon/front/abra.pic", 0, 1 ; sprite dimensions
	dw AbraPicFront, AbraPicBack

	db SCRATCH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm FLASH,   	   MEGA_PUNCH,   MEGA_KICK,    DISABLE,      DOUBLE_EDGE,  \
	     SEISMIC_TOSS, HYPNOSIS, 	 RECOVER,      LIGHT_SCREEN, REFLECT, 	   \
	     SKULL_BASH,   DREAM_EATER,  REST,  	   TRI_ATTACK,   SUBSTITUTE
	; end

	db 0 ; padding
