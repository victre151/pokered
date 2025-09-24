	db DEX_RAICHU ; pokedex id

	db  60,  70,  55, 110, 110 ;  405BST
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 75 ; catch rate
	db 122 ; base exp

	INCBIN "gfx/pokemon/front/raichu.pic", 0, 1 ; sprite dimensions
	dw RaichuPicFront, RaichuPicBack

	db TAKE_DOWN, SLASH, AGILITY, THUNDERBOLT ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm FLASH,        MEGA_PUNCH,   THUNDERPUNCH, MEGA_KICK,    THRASH,       \
	     DOUBLE_EDGE,  HYPER_BEAM,   SEISMIC_TOSS, THUNDERBOLT,  THUNDER,      \
	     REFLECT,      SKULL_BASH,   REST,         SUBSTITUTE 
	; end

	db BANK(RaichuPicFront)
	assert BANK(RaichuPicFront) == BANK(RaichuPicBack)
