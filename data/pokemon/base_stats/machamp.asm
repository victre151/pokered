	db DEX_MACHAMP ; pokedex id

	db  90, 130,  80,  55,  85 ;  440BST
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 193 ; base exp

	INCBIN "gfx/pokemon/front/machamp.pic", 0, 1 ; sprite dimensions
	dw MachampPicFront, MachampPicBack

	db SUBMISSION, DIZZY_PUNCH, ROCK_SLIDE, BODY_SLAM ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,     MEGA_PUNCH,   MEGA_KICK,    THRASH,       DOUBLE_EDGE,  \
	     HYPER_BEAM,   SEISMIC_TOSS, ROCK_THROW,   SKULL_BASH,   ROCK_SLIDE,   \
		 SUBSTITUTE
	; end

	db 0 ; padding
