	db DEX_MR_MIME ; pokedex id

	db  40,  45,  65,  90, 120
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 136 ; base exp

	INCBIN "gfx/pokemon/front/mr.mime.pic", 0, 1 ; sprite dimensions
	dw MrMimePicFront, MrMimePicBack

	db POUND, TACKLE, BARRIER, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     RAGE,         SOLARBEAM,    THUNDERBOLT,  THUNDER,      PSYCHIC_M,    \
	     SUBSTITUTE,   MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     FLASH,        SKULL_BASH,   REST,         THUNDER_WAVE
	; end

	db 0 ; padding
