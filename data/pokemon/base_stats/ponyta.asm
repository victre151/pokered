	db DEX_PONYTA ; pokedex id

	db  50,  65,  55,  100,  85 ;  355BST
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 152 ; base exp

	INCBIN "gfx/pokemon/front/ponyta.pic", 0, 1 ; sprite dimensions
	dw PonytaPicFront, PonytaPicBack

	db TACKLE, DOUBLE_KICK, SAND_ATTACK, FIRE_SPIN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_KICK,    HORN_DRILL,   THRASH,       DOUBLE_EDGE,  FISSURE,      \
	     DIG,          REFLECT,      FIRE_BLAST,   SKULL_BASH,   REST,         \
	     SUBSTITUTE
	; end

	db BANK(PonytaPicFront)
	assert BANK(PonytaPicFront) == BANK(PonytaPicBack)
