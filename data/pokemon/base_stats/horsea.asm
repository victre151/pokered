	db DEX_HORSEA ; pokedex id

	db  30,  50,  70,  60,  60 ;  270BST
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 225 ; catch rate
	db 83 ; base exp

	INCBIN "gfx/pokemon/front/horsea.pic", 0, 1 ; sprite dimensions
	dw HorseaPicFront, HorseaPicBack

	db TACKLE, BUBBLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SURF,         SWORDS_DANCE, THRASH,       DOUBLE_EDGE,  HYDRO_PUMP,   \
	     BUBBLEBEAM,   SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db BANK(HorseaPicFront)
	assert BANK(HorseaPicFront) == BANK(HorseaPicBack)
