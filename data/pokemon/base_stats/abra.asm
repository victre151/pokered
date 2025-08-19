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
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     PSYCHIC_M,    SUBSTITUTE,   MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         FLASH,        SKULL_BASH,   REST,         THUNDER_WAVE, \
	     TRI_ATTACK
	; end

	db 0 ; padding
