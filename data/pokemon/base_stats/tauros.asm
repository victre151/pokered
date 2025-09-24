	db DEX_TAUROS ; pokedex id

	db  75, 100,  95, 110,  70 ;  450BST
	;   hp  atk  def  spd  spc

	db NORMAL, GROUND ; type
	db 45 ; catch rate
	db 211 ; base exp

	INCBIN "gfx/pokemon/front/tauros.pic", 0, 1 ; sprite dimensions
	dw TaurosPicFront, TaurosPicBack

	db TACKLE, SAND_ATTACK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,     MEGA_KICK,    HORN_DRILL,   THRASH,       DOUBLE_EDGE,  \
	     HYPER_BEAM,   SEISMIC_TOSS, ROCK_THROW,   FISSURE,      SKULL_BASH,   \
	     GLARE,        REST,         ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(TaurosPicFront)
	assert BANK(TaurosPicFront) == BANK(TaurosPicBack)
