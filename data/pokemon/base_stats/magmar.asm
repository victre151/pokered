	db DEX_MAGMAR ; pokedex id

	db  65,  95,  57,  95,  100
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 167 ; base exp

	INCBIN "gfx/pokemon/front/magmar.pic", 0, 1 ; sprite dimensions
	dw MagmarPicFront, MagmarPicBack

	db EMBER, TACKLE, LEER, SMOG ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     RAGE,         SUBSTITUTE,   SKULL_BASH,   MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         STRENGTH,     FIRE_BLAST
	; end

	db 0 ; padding
