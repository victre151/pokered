	db DEX_PSYDUCK ; pokedex id

	db  50,  52,  48,  55,  65 ;  270BST
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 190 ; catch rate
	db 80 ; base exp

	INCBIN "gfx/pokemon/front/psyduck.pic", 0, 1 ; sprite dimensions
	dw PsyduckPicFront, PsyduckPicBack

	db SCRATCH, BUBBLE, PSYWAVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SURF,         STRENGTH,     MEGA_PUNCH,   ICE_PUNCH,    MEGA_KICK,    \
	     THRASH,       DOUBLE_EDGE,  DISABLE,      MIST,         HYDRO_PUMP,   \
	     ICE_BEAM,     BLIZZARD,     BUBBLEBEAM,   SEISMIC_TOSS, HYPNOSIS,     \
	     HAZE,         REFLECT,      SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db 0 ; padding
