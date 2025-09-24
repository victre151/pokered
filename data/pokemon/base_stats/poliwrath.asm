	db DEX_POLIWRATH ; pokedex id

	db  90,  95,  95,  70,  90 ;  440BST
	;   hp  atk  def  spd  spc

	db WATER, FIGHTING ; type
	db 45 ; catch rate
	db 185 ; base exp

	INCBIN "gfx/pokemon/front/poliwrath.pic", 0, 1 ; sprite dimensions
	dw PoliwrathPicFront, PoliwrathPicBack

	db WATERFALL, SUBMISSION, PSYCHIC_M, BODY_SLAM ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SURF,         STRENGTH,     MEGA_PUNCH,   ICE_PUNCH,    MEGA_KICK,    \
	     THRASH,       DOUBLE_EDGE,  HYDRO_PUMP,   BUBBLEBEAM,   HYPER_BEAM,   \
	     SEISMIC_TOSS, SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db BANK(PoliwrathPicFront)
	assert BANK(PoliwrathPicFront) == BANK(PoliwrathPicBack)
