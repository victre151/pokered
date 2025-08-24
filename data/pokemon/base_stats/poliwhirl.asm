	db DEX_POLIWHIRL ; pokedex id

	db  65,  65,  65,  90,  50 ;  335BST
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 120 ; catch rate
	db 131 ; base exp

	INCBIN "gfx/pokemon/front/poliwhirl.pic", 0, 1 ; sprite dimensions
	dw PoliwhirlPicFront, PoliwhirlPicBack

	db SWIFT, CONFUSE_RAY, BUBBLEBEAM, LOW_KICK ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SURF,         STRENGTH,     MEGA_PUNCH,   ICE_PUNCH,    MEGA_KICK,    \
	     THRASH,       DOUBLE_EDGE,  DISABLE,      HYDRO_PUMP,   BUBBLEBEAM,   \
	     SEISMIC_TOSS, HYPNOSIS,     SKULL_BASH,   AMNESIA,      REST,         \
		 SUBSTITUTE
	; end

	db 0 ; padding
