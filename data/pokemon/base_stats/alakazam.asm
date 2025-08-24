	db DEX_ALAKAZAM ; pokedex id

	db  55,  50,  45, 120, 135 ;  405BST
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 50 ; catch rate
	db 186 ; base exp

	INCBIN "gfx/pokemon/front/alakazam.pic", 0, 1 ; sprite dimensions
	dw AlakazamPicFront, AlakazamPicBack

	db LIGHT_SCREEN, PSYCHIC_M, TRI_ATTACK, BODY_SLAM ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm FLASH,   	   MEGA_PUNCH,   MEGA_KICK,    DISABLE,      DOUBLE_EDGE,  \
	     HYPER_BEAM,   SEISMIC_TOSS, HYPNOSIS,     RECOVER,      LIGHT_SCREEN, \
	     REFLECT,      SKULL_BASH,   DREAM_EATER,  REST,         TRI_ATTACK,   \
		 SUBSTITUTE
	; end

	db 0 ; padding
