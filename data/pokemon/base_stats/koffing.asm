	db DEX_KOFFING ; pokedex id

	db  40,  45,  95,  35,  80 ;  295BST
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 190 ; catch rate
	db 114 ; base exp

	INCBIN "gfx/pokemon/front/koffing.pic", 0, 1 ; sprite dimensions
	dw KoffingPicFront, KoffingPicBack

	db TACKLE, POISON_STING, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm THRASH,       DOUBLE_EDGE,  MIST,         TOXIC,        HAZE,         \
	     SLUDGE,       FIRE_BLAST,   POISON_GAS,   REST,         SUBSTITUTE  
	; end

	db 0 ; padding
