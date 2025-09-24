	db DEX_LAPRAS ; pokedex id

	db 130,  85,  80,  60,  95 ;  450BST
	;   hp  atk  def  spd  spc

	db WATER, ICE ; type
	db 45 ; catch rate
	db 219 ; base exp

	INCBIN "gfx/pokemon/front/lapras.pic", 0, 1 ; sprite dimensions
	dw LaprasPicFront, LaprasPicBack

	db TACKLE, PECK, BUBBLE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SURF,         SWORDS_DANCE, HORN_DRILL,   THRASH,       DOUBLE_EDGE,  \
	     ROAR,         MIST,         HYDRO_PUMP,   ICE_BEAM,     BLIZZARD,     \
	     BUBBLEBEAM,   HYPER_BEAM,   ROCK_THROW,   HAZE,         REFLECT,      \
	     SKULL_BASH,   REST,         ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(LaprasPicFront)
	assert BANK(LaprasPicFront) == BANK(LaprasPicBack)
