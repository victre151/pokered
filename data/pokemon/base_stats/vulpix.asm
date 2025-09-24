	db DEX_VULPIX ; pokedex id

	db  45,  41,  45,  75,  70 ;  276BST
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 63 ; base exp

	INCBIN "gfx/pokemon/front/vulpix.pic", 0, 1 ; sprite dimensions
	dw VulpixPicFront, VulpixPicBack

	db TACKLE, SCRATCH, SAND_ATTACK, FIRE_SPIN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm THRASH,       DOUBLE_EDGE,  ROAR,         DISABLE,      ICE_BEAM,     \
	     BLIZZARD,     HYPNOSIS,     REFLECT,      FIRE_BLAST,   SKULL_BASH,   \
	     DREAM_EATER,  REST,         SUBSTITUTE
	; end

	db BANK(VulpixPicFront)
	assert BANK(VulpixPicFront) == BANK(VulpixPicBack)
