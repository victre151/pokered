	db DEX_SEAKING ; pokedex id

	db  85,  85,  67,  73,  97 ;  407BST
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 60 ; catch rate
	db 170 ; base exp

	INCBIN "gfx/pokemon/front/seaking.pic", 0, 1 ; sprite dimensions
	dw SeakingPicFront, SeakingPicBack

	db TAKE_DOWN, SLASH, AGILITY, SCREECH ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SURF,         HORN_DRILL,   THRASH,       DOUBLE_EDGE,  HYDRO_PUMP,   \
	     BUBBLEBEAM,   HYPER_BEAM,   SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db 0 ; padding
