	db DEX_FARFETCHD ; pokedex id

	db  71,  99,  74,  79,  77 ;  400BST
	;   hp  atk  def  spd  spc

	db FLYING, FIGHTING ; type
	db 45 ; catch rate
	db 94 ; base exp

	INCBIN "gfx/pokemon/front/farfetchd.pic", 0, 1 ; sprite dimensions
	dw FarfetchdPicFront, FarfetchdPicBack

	db SAND_ATTACK, VINE_WHIP, PECK, DOUBLE_KICK ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm FLY,          CUT,          GUILLOTINE,   RAZOR_WIND,   SWORDS_DANCE, \
	     MEGA_KICK,    THRASH,       DOUBLE_EDGE,  HYPER_BEAM,   SEISMIC_TOSS, \
	     REFLECT,      SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db BANK(FarfetchdPicFront)
	assert BANK(FarfetchdPicFront) == BANK(FarfetchdPicBack)
