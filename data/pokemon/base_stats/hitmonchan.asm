	db DEX_HITMONCHAN ; pokedex id

	db  65, 120,  93,  70,  110 ;  458BST
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 140 ; base exp

	INCBIN "gfx/pokemon/front/hitmonchan.pic", 0, 1 ; sprite dimensions
	dw HitmonchanPicFront, HitmonchanPicBack

	db TACKLE, DOUBLE_KICK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,     MEGA_PUNCH,   FIRE_PUNCH,   ICE_PUNCH,    THUNDERPUNCH, \
	     THRASH,       DOUBLE_EDGE,  SEISMIC_TOSS, REST,         ROCK_SLIDE,   \
	     TRI_ATTACK,   SUBSTITUTE
	; end

	db 0 ; padding
