	db DEX_PIDGEOT ; pokedex id

	db  87,  84,  79,  105,  74 ;  429BST
	;   hp  atk  def  spd  spc

	db FLYING, FLYING ; type
	db 45 ; catch rate
	db 172 ; base exp

	INCBIN "gfx/pokemon/front/pidgeot.pic", 0, 1 ; sprite dimensions
	dw PidgeotPicFront, PidgeotPicBack

	db AGILITY, SCREECH, DRILL_PECK, BODY_SLAM ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm FLY,          RAZOR_WIND,   DOUBLE_EDGE,  HYPER_BEAM, REFLECT,        \
		 SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db BANK(PidgeotPicFront)
	assert BANK(PidgeotPicFront) == BANK(PidgeotPicBack)
