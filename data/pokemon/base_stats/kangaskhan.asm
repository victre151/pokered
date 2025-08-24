	db DEX_KANGASKHAN ; pokedex id

	db 105,  95,  80,  90,  80 ;  450BST
	;   hp  atk  def  spd  spc

	db FIGHTING, GROUND ; type
	db 45 ; catch rate
	db 175 ; base exp

	INCBIN "gfx/pokemon/front/kangaskhan.pic", 0, 1 ; sprite dimensions
	dw KangaskhanPicFront, KangaskhanPicBack

	db DOUBLE_KICK, TACKLE, SAND_ATTACK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,     MEGA_PUNCH,   SWORDS_DANCE, MEGA_KICK,    THRASH,       \
	     DOUBLE_EDGE,  ROAR,         HYPER_BEAM,   SEISMIC_TOSS, ROCK_THROW,   \
	     FISSURE,      DIG,          SKULL_BASH,   GLARE,        REST,         \
	     ROCK_SLIDE,   SUBSTITUTE
	; end

	db 0 ; padding
