	db DEX_KAKUNA ; pokedex id

	db  59,  39,  64,  49,  39 ;  250BST
	;   hp  atk  def  spd  spc

	db BUG, POISON ; type
	db 120 ; catch rate
	db 71 ; base exp

	INCBIN "gfx/pokemon/front/kakuna.pic", 0, 1 ; sprite dimensions
	dw KakunaPicFront, KakunaPicBack

	db LEER, PIN_MISSILE, HARDEN, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm CUT, 		   SWORDS_DANCE, HORN_DRILL,   THRASH,  	 DOUBLE_EDGE,  \
	     MEGA_DRAIN,   TOXIC,   	 REFLECT,  	   SLUDGE,  	 SKULL_BASH,   \
	     POISON_GAS,   REST,   	     SUBSTITUTE
	; end

	db 0 ; padding
