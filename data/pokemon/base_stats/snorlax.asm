	db DEX_SNORLAX ; pokedex id

	db 155, 105,  60,  25,  105 ;  450BST
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 25 ; catch rate
	db 154 ; base exp

	INCBIN "gfx/pokemon/front/snorlax.pic", 0, 1 ; sprite dimensions
	dw SnorlaxPicFront, SnorlaxPicBack

	db TACKLE, SCRATCH, SAND_ATTACK, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,     MEGA_PUNCH,   MEGA_KICK,    THRASH,       DOUBLE_EDGE,  \
	     ROAR,         HYPER_BEAM,   SEISMIC_TOSS, ROCK_THROW,   FISSURE,      \
	     REFLECT,      SKULL_BASH,   AMNESIA,      REST,         ROCK_SLIDE,   \
	     SUBSTITUTE
	; end

	db 0 ; padding
