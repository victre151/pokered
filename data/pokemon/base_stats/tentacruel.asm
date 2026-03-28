	db DEX_TENTACRUEL ; pokedex id

	db  70,  85,  65, 100, 115 ;  435BST
	;   hp  atk  def  spd  spc

	db WATER, POISON ; type
	db 60 ; catch rate
	db 205 ; base exp

	INCBIN "gfx/pokemon/front/tentacruel.pic", 0, 1 ; sprite dimensions
	dw TentacruelPicFront, TentacruelPicBack

	db BUBBLEBEAM, ACID, VICEGRIP, MEGA_DRAIN ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SURF,         THRASH, 		 MIST,         DOUBLE_EDGE,  HYDRO_PUMP,   \
	     ICE_BEAM,     BLIZZARD,     BUBBLEBEAM,   HYPER_BEAM,   HAZE, 		   \
	     MEGA_DRAIN,   TOXIC,        REFLECT,      SLUDGE,       SKULL_BASH,   \
		 GLARE,        POISON_GAS,   ACID_ARMOR,   REST,         SUBSTITUTE
	; end

	db BANK(TentacruelPicFront)
	assert BANK(TentacruelPicFront) == BANK(TentacruelPicBack)
