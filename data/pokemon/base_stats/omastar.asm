	db DEX_OMASTAR ; pokedex id

	db  63,  86, 118,  48, 115 ;  430BST
	;   hp  atk  def  spd  spc

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 199 ; base exp

	INCBIN "gfx/pokemon/front/omastar.pic", 0, 1 ; sprite dimensions
	dw OmastarPicFront, OmastarPicBack

	db SCREECH, ROCK_SLIDE, WATERFALL, BODY_SLAM ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SURF,         THRASH,       DOUBLE_EDGE,  DISABLE,      HYDRO_PUMP,   \
	     BUBBLEBEAM,   HYPER_BEAM,   MEGA_DRAIN,   ROCK_THROW,   REFLECT,      \
	     SKULL_BASH,   REST,         ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(OmastarPicFront)
	assert BANK(OmastarPicFront) == BANK(OmastarPicBack)
