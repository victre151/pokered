	db DEX_ARBOK ; pokedex id

	db  65,  84,  74,  85, 100 ;  408BST
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 90 ; catch rate
	db 147 ; base exp

	INCBIN "gfx/pokemon/front/arbok.pic", 0, 1 ; sprite dimensions
	dw ArbokPicFront, ArbokPicBack

	db BITE, FOCUS_ENERGY, FURY_ATTACK, RAGE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,     THRASH,  	 DOUBLE_EDGE,  ROAR,   		 HYPER_BEAM,   \
	     MEGA_DRAIN,   ROCK_THROW,   TOXIC,   	   SLUDGE,   	 SKULL_BASH,   \
	     GLARE,		   POISON_GAS,   ACID_ARMOR,   REST,         ROCK_SLIDE,   \
		 SUBSTITUTE
	; end

	db 0 ; padding
