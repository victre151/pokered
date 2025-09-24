	db DEX_LICKITUNG ; pokedex id

	db 104,  84,  94,  39,  79 ;  400BST
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 127 ; base exp

	INCBIN "gfx/pokemon/front/lickitung.pic", 0, 1 ; sprite dimensions
	dw LickitungPicFront, LickitungPicBack

	db TACKLE, SAND_ATTACK, VINE_WHIP, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SWORDS_DANCE, MEGA_KICK,    THRASH,       DOUBLE_EDGE,  \
	     ROAR,         HYPER_BEAM,   ROCK_THROW,   FISSURE,      DIG,          \
	     SKULL_BASH,   REST,         ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(LickitungPicFront)
	assert BANK(LickitungPicFront) == BANK(LickitungPicBack)
