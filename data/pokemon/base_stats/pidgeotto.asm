	db DEX_PIDGEOTTO ; pokedex id

	db  70,  67,  62,  78,  57 ;  334BST
	;   hp  atk  def  spd  spc

	db FLYING, FLYING ; type
	db 120 ; catch rate
	db 113 ; base exp

	INCBIN "gfx/pokemon/front/pidgeotto.pic", 0, 1 ; sprite dimensions
	dw PidgeottoPicFront, PidgeottoPicBack

	db QUICK_ATTACK, SONICBOOM, FURY_ATTACK, FURY_SWIPES ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   FLY,          TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     SWIFT,        SKY_ATTACK,   REST,         SUBSTITUTE
	; end

	db 0 ; padding
