	db DEX_GOLEM ; pokedex id

	db  80, 120, 130,  45,  65 ;  440BST
	;   hp  atk  def  spd  spc

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 177 ; base exp

	INCBIN "gfx/pokemon/front/golem.pic", 0, 1 ; sprite dimensions
	dw GolemPicFront, GolemPicBack

	db SCREECH, ROCK_SLIDE, EARTHQUAKE, BODY_SLAM ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,     MEGA_PUNCH,   THRASH,       DOUBLE_EDGE,  HYPER_BEAM,   \
	     SEISMIC_TOSS, ROCK_THROW,   FISSURE,      DIG,          SKULL_BASH,   \
	     REST,         ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(GolemPicFront)
	assert BANK(GolemPicFront) == BANK(GolemPicBack)
