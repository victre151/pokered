	db DEX_HITMONLEE ; pokedex id

	db  65, 120,  70,  93,  110 ;  458BST
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 139 ; base exp

	INCBIN "gfx/pokemon/front/hitmonlee.pic", 0, 1 ; sprite dimensions
	dw HitmonleePicFront, HitmonleePicBack

	db TACKLE, DOUBLE_KICK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,     MEGA_KICK,    THRASH,       DOUBLE_EDGE,  SEISMIC_TOSS, \
	     ROCK_THROW,   SKULL_BASH,   REST,         ROCK_SLIDE,   TRI_ATTACK,   \
	     SUBSTITUTE
	; end

	db 0 ; padding
