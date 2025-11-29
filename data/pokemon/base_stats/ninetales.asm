	db DEX_NINETALES ; pokedex id

	db  73,  76,  75, 100, 100 ;  424BST
	;   hp  atk  def  spd  spc

	db FIRE, GHOST ; type
	db 75 ; catch rate
	db 178 ; base exp

	INCBIN "gfx/pokemon/front/ninetales.pic", 0, 1 ; sprite dimensions
	dw NinetalesPicFront, NinetalesPicBack

	db SLASH, TAKE_DOWN, LIGHT_SCREEN, FLAMETHROWER ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm THRASH,       DOUBLE_EDGE,  ROAR,         DISABLE,      ICE_BEAM,     \
	     HYPER_BEAM,   BLIZZARD,     HYPNOSIS,     REFLECT,      FIRE_BLAST,   \
	     SKULL_BASH,   DREAM_EATER,  REST,         SUBSTITUTE,   FIRE_PUNCH,   \
		 FLASH
	; end

	db BANK(NinetalesPicFront)
	assert BANK(NinetalesPicFront) == BANK(NinetalesPicBack)
