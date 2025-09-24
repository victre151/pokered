	db DEX_MEOWTH ; pokedex id

	db  44,  49,  39,  94,  44 ;  270BST
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 69 ; base exp

	INCBIN "gfx/pokemon/front/meowth.pic", 0, 1 ; sprite dimensions
	dw MeowthPicFront, MeowthPicBack

	db SCRATCH, TACKLE, SAND_ATTACK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm THRASH,       DOUBLE_EDGE,  ROAR,    	   ROCK_THROW,   FISSURE,      \
	     DIG,    	   SKULL_BASH,   GLARE,        REST,  		 ROCK_SLIDE,   \
	     SUBSTITUTE
	; end

	db BANK(MeowthPicFront)
	assert BANK(MeowthPicFront) == BANK(MeowthPicBack)
