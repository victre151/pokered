	db DEX_PIDGEY ; pokedex id

	db  48,  53,  48,  64,  43 ;  256BST
	;   hp  atk  def  spd  spc

	db FLYING, FLYING ; type
	db 255 ; catch rate
	db 55 ; base exp

	INCBIN "gfx/pokemon/front/pidgey.pic", 0, 1 ; sprite dimensions
	dw PidgeyPicFront, PidgeyPicBack

	db SCRATCH, SAND_ATTACK, PECK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm FLY,          RAZOR_WIND,   DOUBLE_EDGE,  REFLECT,    SKULL_BASH,     \
		 REST,         SUBSTITUTE
	; end

	db 0 ; padding
