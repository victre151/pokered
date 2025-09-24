	db DEX_SPEAROW ; pokedex id

	db  48,  68,  38,  78,  39 ;  271BST
	;   hp  atk  def  spd  spc

	db FLYING, FLYING ; type
	db 255 ; catch rate
	db 58 ; base exp

	INCBIN "gfx/pokemon/front/spearow.pic", 0, 1 ; sprite dimensions
	dw SpearowPicFront, SpearowPicBack

	db SAND_ATTACK, SCRATCH, PECK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm FLY,          RAZOR_WIND,   SWORDS_DANCE, THRASH,       DOUBLE_EDGE,  \
	     REST,         SUBSTITUTE
	; end

	db BANK(SpearowPicFront)
	assert BANK(SpearowPicFront) == BANK(SpearowPicBack)
