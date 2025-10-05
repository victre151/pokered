	db DEX_CHARMANDER ; pokedex id

	db  39,  52,  43,  65,  60 ;  259BST
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 65 ; base exp

	INCBIN "gfx/pokemon/front/charmander.pic", 0, 1 ; sprite dimensions
	dw CharmanderPicFront, CharmanderPicBack

	db SCRATCH, FIRE_SPIN, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm CUT,          STRENGTH,     MEGA_PUNCH,   FIRE_PUNCH,   SWORDS_DANCE, \
		 MEGA_KICK,    THRASH,    	 DOUBLE_EDGE,  ROAR,  		 REFLECT,	   \
		 FIRE_BLAST,   SKULL_BASH,   GLARE,   	   REST,         SUBSTITUTE,   \
		 FLASH
	; end

	db BANK(CharmanderPicFront)
	assert BANK(CharmanderPicFront) == BANK(CharmanderPicBack)
