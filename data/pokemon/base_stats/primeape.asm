	db DEX_PRIMEAPE ; pokedex id

	db  68, 98,  63,  98,  83 ;  410BST
	;   hp  atk  def  spd  spc

	db FIGHTING, GHOST ; type
	db 75 ; catch rate
	db 149 ; base exp

	INCBIN "gfx/pokemon/front/primeape.pic", 0, 1 ; sprite dimensions
	dw PrimeapePicFront, PrimeapePicBack

	db SWIFT, LOW_KICK, ICE_PUNCH, TAKE_DOWN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,     MEGA_PUNCH,   ICE_PUNCH,    MEGA_KICK,    THRASH,       \
	     DOUBLE_EDGE,  ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   SEISMIC_TOSS, \
	     ROCK_THROW,   SKULL_BASH,   GLARE,        REST,         ROCK_SLIDE,   \
		 SUBSTITUTE
	; end

	db BANK(PrimeapePicFront)
	assert BANK(PrimeapePicFront) == BANK(PrimeapePicBack)
