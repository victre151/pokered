	db DEX_NIDORINA ; pokedex id

	db  75,  55,  80,  60,  65 ;  335BST
	;   hp  atk  def  spd  spc

	db POISON, GROUND ; type
	db 120 ; catch rate
	db 117 ; base exp

	INCBIN "gfx/pokemon/front/nidorina.pic", 0, 1 ; sprite dimensions
	dw NidorinaPicFront, NidorinaPicBack

	db DIG, FURY_ATTACK, ACID, HORN_ATTACK ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_KICK,    HORN_DRILL,   THRASH,       DOUBLE_EDGE,  ROAR,  	   \
	     ROCK_THROW,   FISSURE,      DIG,          TOXIC,        REFLECT,      \
	     SLUDGE,       SKULL_BASH,   GLARE,        POISON_GAS,   REST,         \
	     ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(NidorinaPicFront)
	assert BANK(NidorinaPicFront) == BANK(NidorinaPicBack)
