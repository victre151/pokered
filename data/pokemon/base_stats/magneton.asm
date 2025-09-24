	db DEX_MAGNETON ; pokedex id

	db  50,  60,  95,  70, 120 ;  395BST
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 60 ; catch rate
	db 161 ; base exp

	INCBIN "gfx/pokemon/front/magneton.pic", 0, 1 ; sprite dimensions
	dw MagnetonPicFront, MagnetonPicBack

	db THUNDERPUNCH, HEADBUTT, BARRIER, TAKE_DOWN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm FLASH,        THRASH,       DOUBLE_EDGE,  HYPER_BEAM,   THUNDERBOLT,  \
	     THUNDER,      REFLECT,      SKULL_BASH,   REST,         TRI_ATTACK,   \
		 SUBSTITUTE
	; end

	db BANK(MagnetonPicFront)
	assert BANK(MagnetonPicFront) == BANK(MagnetonPicBack)
