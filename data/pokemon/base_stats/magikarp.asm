	db DEX_MAGIKARP ; pokedex id

	db  37,  27,  72,  97,  37 ;  270BST
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 255 ; catch rate
	db 20 ; base exp

	INCBIN "gfx/pokemon/front/magikarp.pic", 0, 1 ; sprite dimensions
	dw MagikarpPicFront, MagikarpPicBack

	db TACKLE, BUBBLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SURF,         STRENGTH,     THRASH,       DOUBLE_EDGE,  ROAR,          \
	     HYDRO_PUMP,   BUBBLEBEAM,   REFLECT,      SKULL_BASH,   GLARE,         \
	     REST,         SUBSTITUTE
	; end

	db BANK(MagikarpPicFront)
	assert BANK(MagikarpPicFront) == BANK(MagikarpPicBack)
