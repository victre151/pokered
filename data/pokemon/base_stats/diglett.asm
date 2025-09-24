	db DEX_DIGLETT ; pokedex id

	db  15,  75,  30, 100,  50 ;  270BST
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 255 ; catch rate
	db 81 ; base exp

	INCBIN "gfx/pokemon/front/diglett.pic", 0, 1 ; sprite dimensions
	dw DiglettPicFront, DiglettPicBack

	db SCRATCH, SAND_ATTACK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm THRASH,       DOUBLE_EDGE,  ROCK_THROW,   FISSURE,  	 DIG,          \
	     SKULL_BASH,   REST,      	 ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(DiglettPicFront)
	assert BANK(DiglettPicFront) == BANK(DiglettPicBack)
