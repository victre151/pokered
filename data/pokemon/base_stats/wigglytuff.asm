	db DEX_WIGGLYTUFF ; pokedex id

	db 143,  88,  58,  48,  73 ;  410BST
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 50 ; catch rate
	db 109 ; base exp

	INCBIN "gfx/pokemon/front/wigglytuff.pic", 0, 1 ; sprite dimensions
	dw WigglytuffPicFront, WigglytuffPicBack

	db TAKE_DOWN, AGILITY, LIGHT_SCREEN, BODY_SLAM ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,	   SWORDS_DANCE, THRASH,       DOUBLE_EDGE,  DISABLE,      \
	     HYPER_BEAM,   HYPNOSIS,     RECOVER,      REFLECT,      SKULL_BASH,   \
	     DREAM_EATER,  ACID_ARMOR,   REST,         SUBSTITUTE
	; end

	db 0 ; padding
