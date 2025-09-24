	db DEX_DRATINI ; pokedex id

	db  41,  64,  45,  50,  50 ;  250BST
	;   hp  atk  def  spd  spc

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 67 ; base exp

	INCBIN "gfx/pokemon/front/dratini.pic", 0, 1 ; sprite dimensions
	dw DratiniPicFront, DratiniPicBack

	db TACKLE, THUNDER_WAVE, BUBBLE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SURF,         HORN_DRILL,	 THRASH,       DOUBLE_EDGE,  HYDRO_PUMP,   \
	     BUBBLEBEAM,   THUNDERBOLT,  THUNDER,      REFLECT,      SKULL_BASH,   \
	     GLARE,  	   REST,  	     SUBSTITUTE
	; end

	db BANK(DratiniPicFront)
	assert BANK(DratiniPicFront) == BANK(DratiniPicBack)
