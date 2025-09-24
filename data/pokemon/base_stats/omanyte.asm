	db DEX_OMANYTE ; pokedex id

	db  37,  52, 102,  37,  82 ;  310BST
	;   hp  atk  def  spd  spc

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 120 ; base exp

	INCBIN "gfx/pokemon/front/omanyte.pic", 0, 1 ; sprite dimensions
	dw OmanytePicFront, OmanytePicBack

	db SAND_ATTACK, VINE_WHIP, PECK, BUBBLE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SURF,         THRASH,       DOUBLE_EDGE,  DISABLE,      HYDRO_PUMP,   \
	     BUBBLEBEAM,   MEGA_DRAIN,   ROCK_THROW,   REFLECT,      SKULL_BASH,   \
	     REST,         ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(OmanytePicFront)
	assert BANK(OmanytePicFront) == BANK(OmanytePicBack)
