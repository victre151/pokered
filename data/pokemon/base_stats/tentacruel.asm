	db DEX_TENTACRUEL ; pokedex id

	db  80,  70,  65, 100, 120 ;  435BST
	;   hp  atk  def  spd  spc

	db WATER, POISON ; type
	db 60 ; catch rate
	db 205 ; base exp

	INCBIN "gfx/pokemon/front/tentacruel.pic", 0, 1 ; sprite dimensions
	dw TentacruelPicFront, TentacruelPicBack

	db BUBBLEBEAM, ACID, VICEGRIP, MEGA_DRAIN ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SURF,         THRASH,       DOUBLE_EDGE,  HYDRO_PUMP,   BUBBLEBEAM,   \
	     HYPER_BEAM,   MEGA_DRAIN,   TOXIC,        REFLECT,      SLUDGE,       \
	     SKULL_BASH,   GLARE,        POISON_GAS,   ACID_ARMOR,   REST,         \
		 SUBSTITUTE
	; end

	db BANK(TentacruelPicFront)
	assert BANK(TentacruelPicFront) == BANK(TentacruelPicBack)
