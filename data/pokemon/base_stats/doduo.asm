	db DEX_DODUO ; pokedex id

	db  35,  85,  45,  75,  35 ;  275BST
	;   hp  atk  def  spd  spc

	db GROUND, FLYING ; type
	db 190 ; catch rate
	db 96 ; base exp

	INCBIN "gfx/pokemon/front/doduo.pic", 0, 1 ; sprite dimensions
	dw DoduoPicFront, DoduoPicBack

	db SCRATCH, DOUBLE_KICK, PECK, SAND_ATTACK ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm FLY, 		   RAZOR_WIND,   MEGA_KICK,    THRASH,       DOUBLE_EDGE,  \
	     ROCK_THROW,   FISSURE,      DIG,          REFLECT,      SKULL_BASH,   \
	     REST,         ROCK_SLIDE,   TRI_ATTACK,   SUBSTITUTE
	; end

	db BANK(DoduoPicFront)
	assert BANK(DoduoPicFront) == BANK(DoduoPicBack)
