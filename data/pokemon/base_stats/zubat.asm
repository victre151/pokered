	db DEX_ZUBAT ; pokedex id

	db  51,  56,  46,  66,  51 ;  270BST
	;   hp  atk  def  spd  spc

	db POISON, FLYING ; type
	db 255 ; catch rate
	db 54 ; base exp

	INCBIN "gfx/pokemon/front/zubat.pic", 0, 1 ; sprite dimensions
	dw ZubatPicFront, ZubatPicBack

	db TACKLE, POISON_STING, PECK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm FLY,   	   RAZOR_WIND,   THRASH,       DOUBLE_EDGE,  MIST,         \
	     MEGA_DRAIN,   TOXIC,        HYPNOSIS,     HAZE,         SLUDGE,       \
	     SKULL_BASH,   GLARE,        POISON_GAS,   ACID_ARMOR,   REST,         \
		 SUBSTITUTE
	; end

	db BANK(ZubatPicFront)
	assert BANK(ZubatPicFront) == BANK(ZubatPicBack)
