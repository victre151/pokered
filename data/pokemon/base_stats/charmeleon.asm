	db DEX_CHARMELEON ; pokedex id

	db  58,  64,  58,  80,  80 ;  340BST
	;   hp  atk  def  spd  spc

	db FIRE, DRAGON ; type
	db 45 ; catch rate
	db 142 ; base exp

	INCBIN "gfx/pokemon/front/charmeleon.pic", 0, 1 ; sprite dimensions
	dw CharmeleonPicFront, CharmeleonPicBack

	db QUICK_ATTACK, SMOKESCREEN, BITE, FOCUS_ENERGY ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm CUT,          STRENGTH,     MEGA_PUNCH,   FIRE_PUNCH,   SWORDS_DANCE, \
		 MEGA_KICK,    THRASH,    	 DOUBLE_EDGE,  ROAR,  		 REFLECT,	   \
		 FIRE_BLAST,   SKULL_BASH,   GLARE,   	   REST,         SUBSTITUTE,   \
		 FLASH
	; end

	db BANK(CharmeleonPicFront)
	assert BANK(CharmeleonPicFront) == BANK(CharmeleonPicBack)
