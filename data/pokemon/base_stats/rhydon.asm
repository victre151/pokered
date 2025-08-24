	db DEX_RHYDON ; pokedex id

	db 105, 130, 120,  40,  45 ;  440BST
	;   hp  atk  def  spd  spc

	db GROUND, ROCK ; type
	db 60 ; catch rate
	db 204 ; base exp

	INCBIN "gfx/pokemon/front/rhydon.pic", 0, 1 ; sprite dimensions
	dw RhydonPicFront, RhydonPicBack

	db SCREECH, ROCK_SLIDE, EARTHQUAKE, BODY_SLAM ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,     MEGA_PUNCH,   MEGA_KICK,    HORN_DRILL,   THRASH,       \
	     DOUBLE_EDGE,  HYPER_BEAM,   ROAR,         ROCK_THROW,   FISSURE,      \
	     DIG,          SKULL_BASH,   ROCK_SLIDE,   SUBSTITUTE
	; end

	db 0 ; padding
