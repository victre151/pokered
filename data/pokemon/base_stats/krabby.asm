	db DEX_KRABBY ; pokedex id

	db  30, 25,  90,  50, 105 ;  300BST
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 225 ; catch rate
	db 115 ; base exp

	INCBIN "gfx/pokemon/front/krabby.pic", 0, 1 ; sprite dimensions
	dw KrabbyPicFront, KrabbyPicBack

	db SCRATCH, TACKLE, SAND_ATTACK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SURF,         CUT,          GUILLOTINE,   THRASH,       DOUBLE_EDGE,  \
	     HYDRO_PUMP,   BUBBLEBEAM,   ROCK_THROW,   FISSURE,      DIG,          \
	     SKULL_BASH,   REST,         ROCK_SLIDE,   SUBSTITUTE
	; end

	db 0 ; padding
