	db DEX_JOLTEON ; pokedex id

	db  65,  65,  60, 130, 110 ;  430BST
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 197 ; base exp

	INCBIN "gfx/pokemon/front/jolteon.pic", 0, 1 ; sprite dimensions
	dw JolteonPicFront, JolteonPicBack

	db TAKE_DOWN, SLASH, AGILITY, THUNDERBOLT ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm FLASH,        MEGA_KICK,    THRASH,       DOUBLE_EDGE,  ROAR,         \
	     HYPER_BEAM,   SEISMIC_TOSS, THUNDERBOLT,  THUNDER,      REFLECT,      \
	     SKULL_BASH,   REST,         TRI_ATTACK,   SUBSTITUTE
	; end

	db 0 ; padding
