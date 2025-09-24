	db DEX_JYNX ; pokedex id

	db  73,  68,  73, 103,  83 ;  400BST
	;   hp  atk  def  spd  spc

	db ICE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 137 ; base exp

	INCBIN "gfx/pokemon/front/jynx.pic", 0, 1 ; sprite dimensions
	dw JynxPicFront, JynxPicBack

	db TACKLE, PSYWAVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   ICE_PUNCH,    MEGA_KICK,    THRASH,       DOUBLE_EDGE,  \
	     DISABLE,      ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   HYPNOSIS,     \
	     REFLECT,      SKULL_BASH,   DREAM_EATER,  REST,         SUBSTITUTE
	; end

	db BANK(JynxPicFront)
	assert BANK(JynxPicFront) == BANK(JynxPicBack)
