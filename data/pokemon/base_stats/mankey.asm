	db DEX_MANKEY ; pokedex id

	db  40,  80,  35,  70,  45
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 190 ; catch rate
	db 74 ; base exp

	INCBIN "gfx/pokemon/front/mankey.pic", 0, 1 ; sprite dimensions
	dw MankeyPicFront, MankeyPicBack

	db FOCUS_ENERGY, LEER, LOW_KICK, SCRATCH ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  PAY_DAY,      SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     RAGE,         THUNDERBOLT,  THUNDER,      DIG,          MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         STRENGTH,     SWIFT,        SKULL_BASH,   \
	     REST,         ROCK_SLIDE,   SUBSTITUTE
	; end

	db 0 ; padding
