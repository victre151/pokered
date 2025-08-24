	db DEX_GOLDEEN ; pokedex id

	db  45,  50,  60,  63,  67 ;  285BST
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 225 ; catch rate
	db 111 ; base exp

	INCBIN "gfx/pokemon/front/goldeen.pic", 0, 1 ; sprite dimensions
	dw GoldeenPicFront, GoldeenPicBack

	db PECK, BUBBLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SURF,         HORN_DRILL,   THRASH,       DOUBLE_EDGE,  HYDRO_PUMP,   \
	     BUBBLEBEAM,   SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db 0 ; padding
