	db DEX_GYARADOS ; pokedex id

	db  95, 125,  79,  81, 100 ;  480BST
	;   hp  atk  def  spd  spc

	db WATER, DRAGON ; type
	db 45 ; catch rate
	db 214 ; base exp

	INCBIN "gfx/pokemon/front/gyarados.pic", 0, 1 ; sprite dimensions
	dw GyaradosPicFront, GyaradosPicBack

	db BITE, FOCUS_ENERGY, DOUBLESLAP, RAGE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SURF,         STRENGTH,     THRASH,       DOUBLE_EDGE,  ROAR,          \
	     HYDRO_PUMP,   BUBBLEBEAM,   HYPER_BEAM,   REFLECT,      SKULL_BASH,   \
	     GLARE,        REST,         SUBSTITUTE
	; end

	db BANK(GyaradosPicFront)
	assert BANK(GyaradosPicFront) == BANK(GyaradosPicBack)
