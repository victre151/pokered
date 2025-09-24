	db DEX_MAGNEMITE ; pokedex id

	db  25,  35,  70,  45,  95 ;  270BST
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 89 ; base exp

	INCBIN "gfx/pokemon/front/magnemite.pic", 0, 1 ; sprite dimensions
	dw MagnemitePicFront, MagnemitePicBack

	db TACKLE, THUNDER_WAVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm FLASH,        THRASH,       DOUBLE_EDGE,  THUNDERBOLT,  THUNDER,      \
	     REFLECT,      SKULL_BASH,   REST,         TRI_ATTACK,   SUBSTITUTE
	; end

	db BANK(MagnemitePicFront)
	assert BANK(MagnemitePicFront) == BANK(MagnemitePicBack)
