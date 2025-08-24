	db DEX_EKANS ; pokedex id

	db  40,  59,  49,  60,  66 ;  274BST
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 255 ; catch rate
	db 62 ; base exp

	INCBIN "gfx/pokemon/front/ekans.pic", 0, 1 ; sprite dimensions
	dw EkansPicFront, EkansPicBack

	db TACKLE, POISON_STING, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,     THRASH,  	 DOUBLE_EDGE,  ROAR,   		 MEGA_DRAIN,   \
	     ROCK_THROW,   TOXIC,   	 SLUDGE,   	   SKULL_BASH,   GLARE, 	   \
	     POISON_GAS,   ACID_ARMOR,	 REST,         ROCK_SLIDE,   SUBSTITUTE
	; end

	db 0 ; padding
