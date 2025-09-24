	db DEX_ZAPDOS ; pokedex id

	db  96,  96,  91, 106, 131 ;  520BST
	;   hp  atk  def  spd  spc

	db ELECTRIC, FLYING ; type
	db 3 ; catch rate
	db 216 ; base exp

	INCBIN "gfx/pokemon/front/zapdos.pic", 0, 1 ; sprite dimensions
	dw ZapdosPicFront, ZapdosPicBack

	db TACKLE, PECK, THUNDERSHOCK, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm FLY,          FLASH,        RAZOR_WIND,   THRASH,       DOUBLE_EDGE,  \
	     HYPER_BEAM,   THUNDERBOLT,  THUNDER,      SKULL_BASH,   REST,         \
	     TRI_ATTACK,   SUBSTITUTE
	; end

	db BANK(ZapdosPicFront)
	assert BANK(ZapdosPicFront) == BANK(ZapdosPicBack)
