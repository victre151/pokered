	db DEX_CLEFAIRY ; pokedex id

	db  72,  47,  51,  37,  67 ;  274BST
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 150 ; catch rate
	db 68 ; base exp

	INCBIN "gfx/pokemon/front/clefairy.pic", 0, 1 ; sprite dimensions
	dw ClefairyPicFront, ClefairyPicBack

	db TACKLE, PSYWAVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         SOLARBEAM,    \
	     THUNDERBOLT,  THUNDER,      PSYCHIC_M,    STRENGTH,     MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         FLASH,        FIRE_BLAST,   \
	     SKULL_BASH,   REST,         THUNDER_WAVE, TRI_ATTACK,   SUBSTITUTE
	; end

	db 0 ; padding
