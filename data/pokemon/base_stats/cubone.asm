	db DEX_CUBONE ; pokedex id

	db  50,  50,  95,  35,  50 ;  280BST
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 190 ; catch rate
	db 87 ; base exp

	INCBIN "gfx/pokemon/front/cubone.pic", 0, 1 ; sprite dimensions
	dw CubonePicFront, CubonePicBack

	db TACKLE, SCRATCH, SAND_ATTACK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,     SWORDS_DANCE, THRASH,       DOUBLE_EDGE,  ROCK_THROW,   \
	     FISSURE,  	   DIG,   		 SKULL_BASH,   GLARE,     	 REST,     	   \
	     ROCK_SLIDE,   SUBSTITUTE
	; end

	db 0 ; padding
