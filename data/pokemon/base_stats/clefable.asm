	db DEX_CLEFABLE ; pokedex id

	db  95,  70,  73,  60,  95 ;  393BST
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 25 ; catch rate
	db 129 ; base exp

	INCBIN "gfx/pokemon/front/clefable.pic", 0, 1 ; sprite dimensions
	dw ClefablePicFront, ClefablePicBack

	db BARRIER, TAKE_DOWN, DOUBLE_TEAM, LIGHT_SCREEN ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm FLASH,		   DOUBLE_EDGE,  DISABLE,      HYPER_BEAM,   RECOVER,      \
		 REFLECT,      SKULL_BASH,   DREAM_EATER,  REST,         SUBSTITUTE
	; end

	db 0 ; padding
