	db DEX_PINSIR ; pokedex id

	db  65, 125, 100,  85,  70 ;  445BST
	;   hp  atk  def  spd  spc

	db BUG, FIGHTING ; type
	db 45 ; catch rate
	db 200 ; base exp

	INCBIN "gfx/pokemon/front/pinsir.pic", 0, 1 ; sprite dimensions
	dw PinsirPicFront, PinsirPicBack

	db TACKLE, SCRATCH, DOUBLE_KICK, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm CUT,          STRENGTH,     MEGA_PUNCH,   GUILLOTINE,   MEGA_KICK,    \
	     THRASH,       DOUBLE_EDGE,  HYPER_BEAM,   SEISMIC_TOSS, ROCK_THROW,   \
	     SKULL_BASH,   REST,         ROCK_SLIDE,   SUBSTITUTE
	; end

	db 0 ; padding
