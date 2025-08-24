	db DEX_KINGLER ; pokedex id

	db  55,  50, 115,  75, 130 ;  425BST
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 60 ; catch rate
	db 206 ; base exp

	INCBIN "gfx/pokemon/front/kingler.pic", 0, 1 ; sprite dimensions
	dw KinglerPicFront, KinglerPicBack

	db BUBBLEBEAM, VICEGRIP, HEADBUTT, DOUBLE_TEAM ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SURF,         CUT,          GUILLOTINE,   THRASH,       DOUBLE_EDGE,  \
	     HYDRO_PUMP,   BUBBLEBEAM,   HYPER_BEAM,   ROCK_THROW,   FISSURE,      \
	     DIG,          SKULL_BASH,   REST,         ROCK_SLIDE,   SUBSTITUTE
	; end

	db 0 ; padding
