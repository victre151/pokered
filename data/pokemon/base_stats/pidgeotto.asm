	db DEX_PIDGEOTTO ; pokedex id

	db  80,  60,  70,  45,  75 ;  330BST
	;   hp  atk  def  spd  spc

	db FLYING, NORMAL ; type
	db 120 ; catch rate
	db 113 ; base exp

	INCBIN "gfx/pokemon/front/pidgeotto.pic", 0, 1 ; sprite dimensions
	dw PidgeottoPicFront, PidgeottoPicBack

	db FOCUS_ENERGY, FURY_SWIPES, RAGE, FURY_ATTACK ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm FLY,          RAZOR_WIND,   DOUBLE_EDGE,  REFLECT,    SKULL_BASH,     \
		 REST,         SUBSTITUTE
	; end

	db BANK(PidgeottoPicFront)
	assert BANK(PidgeottoPicFront) == BANK(PidgeottoPicBack)
