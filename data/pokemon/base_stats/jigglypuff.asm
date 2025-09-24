	db DEX_JIGGLYPUFF ; pokedex id

	db 120,  50,  25,  25,  50 ;  270BST
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 170 ; catch rate
	db 76 ; base exp

	INCBIN "gfx/pokemon/front/jigglypuff.pic", 0, 1 ; sprite dimensions
	dw JigglypuffPicFront, JigglypuffPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,	   SWORDS_DANCE, THRASH,       DOUBLE_EDGE,  DISABLE,      \
	     HYPNOSIS,     RECOVER,      REFLECT,      SKULL_BASH,   DREAM_EATER,  \
	     ACID_ARMOR,   REST,         SUBSTITUTE
	; end

	db BANK(JigglypuffPicFront)
	assert BANK(JigglypuffPicFront) == BANK(JigglypuffPicBack)
