	db DEX_MACHOP ; pokedex id

	db  70,  80,  50,  35,  35 ;  270BST
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 180 ; catch rate
	db 88 ; base exp

	INCBIN "gfx/pokemon/front/machop.pic", 0, 1 ; sprite dimensions
	dw MachopPicFront, MachopPicBack

	db TACKLE, DOUBLE_KICK, SAND_ATTACK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,     MEGA_PUNCH,   MEGA_KICK,    THRASH,       DOUBLE_EDGE,  \
	     SEISMIC_TOSS, ROCK_THROW,   SKULL_BASH,   ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(MachopPicFront)
	assert BANK(MachopPicFront) == BANK(MachopPicBack)
