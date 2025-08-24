	db DEX_GROWLITHE ; pokedex id

	db  55,  70,  45,  60,  70 ;  300BST
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 91 ; base exp

	INCBIN "gfx/pokemon/front/growlithe.pic", 0, 1 ; sprite dimensions
	dw GrowlithePicFront, GrowlithePicBack

	db SCRATCH, SAND_ATTACK, FIRE_SPIN, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm THRASH,       DOUBLE_EDGE,  ROAR,    	   ROCK_THROW,   FISSURE,      \
	     DIG,  	   	   FIRE_BLAST,   REFLECT,      SKULL_BASH,   GLARE,        \
	     REST,   	   ROCK_SLIDE,   TRI_ATTACK,   SUBSTITUTE
	; end

	db 0 ; padding
