	db DEX_MEWTWO ; pokedex id

	db 104, 118,  88, 128, 142 ;  580BST
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, FIGHTING ; type
	db 3 ; catch rate
	db 220 ; base exp

	INCBIN "gfx/pokemon/front/mewtwo.pic", 0, 1 ; sprite dimensions
	dw MewtwoPicFront, MewtwoPicBack

	db SCRATCH, TACKLE, PSYWAVE, DOUBLE_KICK ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   PAY_DAY,      SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     RAGE,         SOLARBEAM,    THUNDERBOLT,  THUNDER,      PSYCHIC_M,    \
	     SUBSTITUTE,   MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     FLASH,        STRENGTH,     FIRE_BLAST,   SKULL_BASH,   REST,         \
	     THUNDER_WAVE, TRI_ATTACK     
	; end

	db 0 ; padding
