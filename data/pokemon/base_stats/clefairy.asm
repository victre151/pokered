	db DEX_CLEFAIRY ; pokedex id

	db  72,  47,  51,  37,  67 ;  274BST
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 150 ; catch rate
	db 68 ; base exp

	INCBIN "gfx/pokemon/front/clefairy.pic", 0, 1 ; sprite dimensions
	dw ClefairyPicFront, ClefairyPicBack

	db TACKLE, DOUBLE_KICK, PSYWAVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm FLASH,		   DOUBLE_EDGE,  DISABLE,      RECOVER,      REFLECT,      \
		 SKULL_BASH,   DREAM_EATER,  REST,         SUBSTITUTE
	; end

	db BANK(ClefairyPicFront)
	assert BANK(ClefairyPicFront) == BANK(ClefairyPicBack)
