	db DEX_STARMIE ; pokedex id

	db  60,  75,  85, 115, 100 ;  435BST
	;   hp  atk  def  spd  spc

	db WATER, PSYCHIC_TYPE ; type
	db 60 ; catch rate
	db 207 ; base exp

	INCBIN "gfx/pokemon/front/starmie.pic", 0, 1 ; sprite dimensions
	dw StarmiePicFront, StarmiePicBack

	db MINIMIZE, TAKE_DOWN, LIGHT_SCREEN, WATERFALL ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SURF,         DOUBLE_EDGE,  DISABLE,      HYDRO_PUMP,   ICE_BEAM,     \
	     BLIZZARD,     BUBBLEBEAM,   HYPER_BEAM,   REFLECT,      SKULL_BASH,   \
	     REST,         SUBSTITUTE
	; end

	db 0 ; padding
