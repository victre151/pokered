	db DEX_SLOWBRO ; pokedex id

	db  95,  80, 100,  45,  90 ;  410BST
	;   hp  atk  def  spd  spc

	db WATER, BUG ; type
	db 75 ; catch rate
	db 164 ; base exp

	INCBIN "gfx/pokemon/front/slowbro.pic", 0, 1 ; sprite dimensions
	dw SlowbroPicFront, SlowbroPicBack

	db TAKE_DOWN, LIGHT_SCREEN, WATERFALL, TWINEEDLE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SURF,         THRASH,       DOUBLE_EDGE,  DISABLE,      HYDRO_PUMP,   \
	     BUBBLEBEAM,   HYPER_BEAM,   REFLECT,      SKULL_BASH,   AMNESIA,      \
	     REST,         SUBSTITUTE
	    
	; end

	db BANK(SlowbroPicFront)
	assert BANK(SlowbroPicFront) == BANK(SlowbroPicBack)
