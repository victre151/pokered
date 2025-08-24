	db DEX_NIDORINO ; pokedex id

	db  66,  77,  62,  70,  60 ;  335BST
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 120 ; catch rate
	db 118 ; base exp

	INCBIN "gfx/pokemon/front/nidorino.pic", 0, 1 ; sprite dimensions
	dw NidorinoPicFront, NidorinoPicBack

	db DIG, FURY_SWIPES, ACID, LOW_KICK ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_KICK,    HORN_DRILL,   THRASH,       DOUBLE_EDGE,  ROAR,  	   \
	     ROCK_THROW,   FISSURE,      DIG,          TOXIC,        REFLECT,      \
	     SLUDGE,       SKULL_BASH,   GLARE,        POISON_GAS,   REST,         \
	     ROCK_SLIDE,   SUBSTITUTE
	; end

	db 0 ; padding
