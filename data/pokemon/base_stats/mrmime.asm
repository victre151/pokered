	db DEX_MR_MIME ; pokedex id

	db  48,  53,  73,  98, 128 ;  400BST
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 136 ; base exp

	INCBIN "gfx/pokemon/front/mr.mime.pic", 0, 1 ; sprite dimensions
	dw MrMimePicFront, MrMimePicBack

	db TACKLE, PSYWAVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    THRASH,       DOUBLE_EDGE,  HYPER_BEAM,   \
	     REFLECT,      SKULL_BASH,   DREAM_EATER,  REST,         SUBSTITUTE
	; end

	db 0 ; padding
