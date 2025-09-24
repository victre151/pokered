	db DEX_RATICATE ; pokedex id

	db  64,  90,  69, 106,  79 ;  408BST
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 116 ; base exp

	INCBIN "gfx/pokemon/front/raticate.pic", 0, 1 ; sprite dimensions
	dw RaticatePicFront, RaticatePicBack

	db FOCUS_ENERGY, RAGE, DIG, FURY_SWIPES ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm THRASH,       DOUBLE_EDGE,  HYPER_BEAM,   ROCK_THROW,   FISSURE,      \
	     DIG,          SKULL_BASH,   REST,         ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(RaticatePicFront)
	assert BANK(RaticatePicFront) == BANK(RaticatePicBack)
