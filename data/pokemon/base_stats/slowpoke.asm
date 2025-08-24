	db DEX_SLOWPOKE ; pokedex id

	db  90,  65,  65,  15,  40 ;  275BST
	;   hp  atk  def  spd  spc

	db WATER, PSYCHIC_TYPE ; type
	db 190 ; catch rate
	db 99 ; base exp

	INCBIN "gfx/pokemon/front/slowpoke.pic", 0, 1 ; sprite dimensions
	dw SlowpokePicFront, SlowpokePicBack

	db SCRATCH, BUBBLE, PSYWAVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SURF,         THRASH,       DOUBLE_EDGE,  DISABLE,      HYDRO_PUMP,   \
	     BUBBLEBEAM,   REFLECT,      SKULL_BASH,   AMNESIA,      REST,         \
	     SUBSTITUTE
	; end

	db 0 ; padding
