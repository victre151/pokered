	db DEX_FEAROW ; pokedex id

	db  71,  96,  71, 106,  67 ;  411BST
	;   hp  atk  def  spd  spc

	db FLYING, FLYING ; type
	db 90 ; catch rate
	db 162 ; base exp

	INCBIN "gfx/pokemon/front/fearow.pic", 0, 1 ; sprite dimensions
	dw FearowPicFront, FearowPicBack

	db FOCUS_ENERGY, FURY_SWIPES, RAGE, FURY_ATTACK ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm FLY,          RAZOR_WIND,   SWORDS_DANCE, THRASH,       DOUBLE_EDGE,  \
	     HYPER_BEAM,   REST,         SUBSTITUTE
	; end

	db BANK(FearowPicFront)
	assert BANK(FearowPicFront) == BANK(FearowPicBack)
