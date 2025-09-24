	db DEX_RHYHORN ; pokedex id

	db  80,  85,  95,  25,  30 ;  315BST
	;   hp  atk  def  spd  spc

	db GROUND, ROCK ; type
	db 120 ; catch rate
	db 135 ; base exp

	INCBIN "gfx/pokemon/front/rhyhorn.pic", 0, 1 ; sprite dimensions
	dw RhyhornPicFront, RhyhornPicBack

	db SCRATCH, TACKLE, SAND_ATTACK, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,     MEGA_KICK,    HORN_DRILL,   THRASH,       DOUBLE_EDGE,  \
	     ROAR,         ROCK_THROW,   FISSURE,      DIG,          SKULL_BASH,   \
	     ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(RhyhornPicFront)
	assert BANK(RhyhornPicFront) == BANK(RhyhornPicBack)
