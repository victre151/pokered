	db DEX_TENTACOOL ; pokedex id

	db  40,  40,  35,  70, 100 ;  285BST
	;   hp  atk  def  spd  spc

	db WATER, POISON ; type
	db 190 ; catch rate
	db 105 ; base exp

	INCBIN "gfx/pokemon/front/tentacool.pic", 0, 1 ; sprite dimensions
	dw TentacoolPicFront, TentacoolPicBack

	db TACKLE, VINE_WHIP, BUBBLE, POISON_STING ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SURF,         THRASH,       DOUBLE_EDGE,  HYDRO_PUMP,   BUBBLEBEAM,   \
	     MEGA_DRAIN,   TOXIC,        REFLECT,      SLUDGE,       SKULL_BASH,   \
	     GLARE,        POISON_GAS,   ACID_ARMOR,   REST,         SUBSTITUTE
	; end

	db BANK(TentacoolPicFront)
	assert BANK(TentacoolPicFront) == BANK(TentacoolPicBack)
