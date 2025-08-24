	db DEX_CATERPIE ; pokedex id

	db  50,  35,  40,  50,  25 ;  200BST
	;   hp  atk  def  spd  spc

	db BUG, BUG ; type
	db 255 ; catch rate
	db 53 ; base exp

	INCBIN "gfx/pokemon/front/caterpie.pic", 0, 1 ; sprite dimensions
	dw CaterpiePicFront, CaterpiePicBack

	db STRING_SHOT, TACKLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DOUBLE_EDGE,  MEGA_DRAIN,	 LEECH_SEED,   REFLECT,		 SKULL_BASH,   \
		 REST,		   SUBSTITUTE
	; end

	db 0 ; padding
