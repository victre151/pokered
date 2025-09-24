	db DEX_NIDORAN_M ; pokedex id

	db  50,  61,  44,  54,  44 ;  253BST
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 235 ; catch rate
	db 60 ; base exp

	INCBIN "gfx/pokemon/front/nidoranm.pic", 0, 1 ; sprite dimensions
	dw NidoranMPicFront, NidoranMPicBack

	db PECK, DOUBLE_KICK, SAND_ATTACK, POISON_STING ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_KICK,    HORN_DRILL,   THRASH,       DOUBLE_EDGE,  ROAR,  	   \
	     ROCK_THROW,   FISSURE,      DIG,          TOXIC,        REFLECT,      \
	     SLUDGE,       SKULL_BASH,   GLARE,        POISON_GAS,   REST,         \
	     ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(NidoranMPicFront)
	assert BANK(NidoranMPicFront) == BANK(NidoranMPicBack)
