	db DEX_EEVEE ; pokedex id

	db  70,  65,  65,  55,  70 ;  325BST
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 92 ; base exp

	INCBIN "gfx/pokemon/front/eevee.pic", 0, 1 ; sprite dimensions
	dw EeveePicFront, EeveePicBack

	db TACKLE, SCRATCH, DOUBLE_KICK, SAND_ATTACK ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm THRASH,       DOUBLE_EDGE,  REFLECT,      SKULL_BASH,   REST,         \
	     SUBSTITUTE
	; end

	db BANK(EeveePicFront)
	assert BANK(EeveePicFront) == BANK(EeveePicBack)
