	db DEX_POLIWAG ; pokedex id

	db  40,  50,  40,  90,  40 ;  260BST
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 255 ; catch rate
	db 77 ; base exp

	INCBIN "gfx/pokemon/front/poliwag.pic", 0, 1 ; sprite dimensions
	dw PoliwagPicFront, PoliwagPicBack

	db TACKLE, BUBBLE, PSYWAVE, DOUBLE_KICK ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SURF,         MEGA_KICK,    THRASH,       DOUBLE_EDGE,  DISABLE,      \
	     HYDRO_PUMP,   BUBBLEBEAM,   SEISMIC_TOSS, HYPNOSIS,     SKULL_BASH,   \
	     AMNESIA,      REST,         SUBSTITUTE
	; end

	db BANK(PoliwagPicFront)
	assert BANK(PoliwagPicFront) == BANK(PoliwagPicBack)
