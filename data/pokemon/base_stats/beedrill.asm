	db DEX_BEEDRILL ; pokedex id

	db  77,  92,  52,  87, 102 ;  410BST
	;   hp  atk  def  spd  spc

	db BUG, POISON ; type
	db 45 ; catch rate
	db 159 ; base exp

	INCBIN "gfx/pokemon/front/beedrill.pic", 0, 1 ; sprite dimensions
	dw BeedrillPicFront, BeedrillPicBack

	db LEER, PIN_MISSILE, SMOG, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm CUT, 		   RAZOR_WIND,	 SWORDS_DANCE, HORN_DRILL,   THRASH,	   \
	     DOUBLE_EDGE,  HYPER_BEAM,   MEGA_DRAIN,   PETAL_DANCE,  TOXIC,        \
	     REFLECT,  	   SLUDGE,		 SKULL_BASH,   POISON_GAS,   REST,   	   \
		 GLARE,		   TRI_ATTACK,   SUBSTITUTE
	; end

	db 0 ; padding
