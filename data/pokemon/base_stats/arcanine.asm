	db DEX_ARCANINE ; pokedex id

	db  86, 105,  75,  90,  95 ;  450BST
	;   hp  atk  def  spd  spc

	db FIRE, DRAGON ; type
	db 75 ; catch rate
	db 213 ; base exp

	INCBIN "gfx/pokemon/front/arcanine.pic", 0, 1 ; sprite dimensions
	dw ArcaninePicFront, ArcaninePicBack

	db TAKE_DOWN, SLASH, AGILITY, FLAMETHROWER ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm THRASH,       DOUBLE_EDGE,  ROAR,    	   HYPER_BEAM,   ROCK_THROW,   \
	     FISSURE,  	   DIG,          FIRE_BLAST,   REFLECT,  	 SKULL_BASH,   \
	     GLARE,        REST,   		 ROCK_SLIDE,   TRI_ATTACK,   SUBSTITUTE
	; end

	db 0 ; padding
