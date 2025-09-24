	db DEX_NIDORAN_F ; pokedex id

	db  59,  51,  56,  45,  44 ;  255BST
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 235 ; catch rate
	db 59 ; base exp

	INCBIN "gfx/pokemon/front/nidoranf.pic", 0, 1 ; sprite dimensions
	dw NidoranFPicFront, NidoranFPicBack

	db PECK, DOUBLE_KICK, POISON_STING, SAND_ATTACK ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_KICK,    HORN_DRILL,   THRASH,       DOUBLE_EDGE,  ROAR,  	   \
	     ROCK_THROW,   FISSURE,      DIG,          TOXIC,        REFLECT,      \
	     SLUDGE,       SKULL_BASH,   GLARE,        POISON_GAS,   REST,         \
	     ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(NidoranFPicFront)
	assert BANK(NidoranFPicFront) == BANK(NidoranFPicBack)
