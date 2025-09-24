	db DEX_MANKEY ; pokedex id

	db  40,  70,  35,  70,  55 ;  270BST
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 190 ; catch rate
	db 74 ; base exp

	INCBIN "gfx/pokemon/front/mankey.pic", 0, 1 ; sprite dimensions
	dw MankeyPicFront, MankeyPicBack

	db TACKLE, SAND_ATTACK, DOUBLE_KICK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,     MEGA_PUNCH,   ICE_PUNCH,    MEGA_KICK,    THRASH,       \
	     DOUBLE_EDGE,  ICE_BEAM,     BLIZZARD,     SEISMIC_TOSS, ROCK_THROW,   \
	     SKULL_BASH,   GLARE,        REST,         ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(MankeyPicFront)
	assert BANK(MankeyPicFront) == BANK(MankeyPicBack)
