	db DEX_MEWTWO ; pokedex id

	db 104, 118,  88, 128, 142 ;  580BST
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, FIGHTING ; type
	db 3 ; catch rate
	db 220 ; base exp

	INCBIN "gfx/pokemon/front/mewtwo.pic", 0, 1 ; sprite dimensions
	dw MewtwoPicFront, MewtwoPicBack

	db SCRATCH, TACKLE, PSYWAVE, DOUBLE_KICK ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,     MEGA_PUNCH,   FIRE_PUNCH,   ICE_PUNCH,    THUNDERPUNCH, \
	     MEGA_KICK,    THRASH,       DOUBLE_EDGE,  DISABLE,      HYPER_BEAM,   \
	     SEISMIC_TOSS, SKULL_BASH,   GLARE,        REST,         TRI_ATTACK,   \
	     SUBSTITUTE
	; end

	db BANK(MewtwoPicFront)
	assert BANK(MewtwoPicFront) == BANK(MewtwoPicBack)
