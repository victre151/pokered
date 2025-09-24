	db DEX_CHARIZARD ; pokedex id

	db  78,  84,  78, 100, 109 ;  449BST
	;   hp  atk  def  spd  spc

	db FIRE, DRAGON ; type
	db 45 ; catch rate
	db 209 ; base exp

	INCBIN "gfx/pokemon/front/charizard.pic", 0, 1 ; sprite dimensions
	dw CharizardPicFront, CharizardPicBack

	db SLASH, SCREECH, FLAMETHROWER, SLAM ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm CUT,          STRENGTH,     FLY,   	   MEGA_PUNCH,   FIRE_PUNCH,   \
		 RAZOR_WIND,   SWORDS_DANCE, MEGA_KICK,    THRASH,       DOUBLE_EDGE,  \
		 ROAR,	       REFLECT,	     HYPER_BEAM,   FIRE_BLAST,   SKULL_BASH,   \
		 GLARE,        REST,         SUBSTITUTE
	; end

	db BANK(CharizardPicFront)
	assert BANK(CharizardPicFront) == BANK(CharizardPicBack)
