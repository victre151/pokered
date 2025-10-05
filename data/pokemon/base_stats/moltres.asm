	db DEX_MOLTRES ; pokedex id

	db  95, 105,  95,  95, 130 ;  520BST
	;   hp  atk  def  spd  spc

	db FIRE, FLYING ; type
	db 3 ; catch rate
	db 217 ; base exp

	INCBIN "gfx/pokemon/front/moltres.pic", 0, 1 ; sprite dimensions
	dw MoltresPicFront, MoltresPicBack

	db TACKLE, PECK, FIRE_SPIN, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm FLY,          RAZOR_WIND,   THRASH,       DOUBLE_EDGE,  HYPER_BEAM,   \
	     REFLECT,      FIRE_BLAST,   SKULL_BASH,   REST,         TRI_ATTACK,   \
	     SUBSTITUTE,   FLASH
	; end

	db BANK(MoltresPicFront)
	assert BANK(MoltresPicFront) == BANK(MoltresPicBack)
