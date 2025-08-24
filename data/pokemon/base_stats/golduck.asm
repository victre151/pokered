	db DEX_GOLDUCK ; pokedex id

	db  80,  82,  78,  85,  95 ;  420BST
	;   hp  atk  def  spd  spc

	db WATER, PSYCHIC_TYPE ; type
	db 75 ; catch rate
	db 174 ; base exp

	INCBIN "gfx/pokemon/front/golduck.pic", 0, 1 ; sprite dimensions
	dw GolduckPicFront, GolduckPicBack

	db HEADBUTT, SLASH, AMNESIA, TAKE_DOWN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SURF,         STRENGTH,     MEGA_PUNCH,   ICE_PUNCH,    MEGA_KICK,    \
	     THRASH,       DOUBLE_EDGE,  DISABLE,      MIST,         HYDRO_PUMP,   \
	     ICE_BEAM,     BLIZZARD,     BUBBLEBEAM,   HYPER_BEAM,   SEISMIC_TOSS, \
	     HYPNOSIS,     HAZE,         REFLECT,      SKULL_BASH,   REST,         \
		 SUBSTITUTE
	; end

	db 0 ; padding
