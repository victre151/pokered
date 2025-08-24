	db DEX_RAPIDASH ; pokedex id

	db  65,  80,  70, 115, 100 ;  430BST
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 60 ; catch rate
	db 192 ; base exp

	INCBIN "gfx/pokemon/front/rapidash.pic", 0, 1 ; sprite dimensions
	dw RapidashPicFront, RapidashPicBack

	db AGILITY, FLAMETHROWER, EARTHQUAKE, BODY_SLAM ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_KICK,    HORN_DRILL,   THRASH,       DOUBLE_EDGE,  HYPER_BEAM,   \
	     FISSURE,      DIG,          REFLECT,      FIRE_BLAST,   SKULL_BASH,   \
	     REST,         SUBSTITUTE
	; end

	db 0 ; padding
