	db DEX_WEEZING ; pokedex id

	db  65,  85, 120,  60,  90 ;  420BST
	;   hp  atk  def  spd  spc

	db POISON, FIRE ; type
	db 60 ; catch rate
	db 173 ; base exp

	INCBIN "gfx/pokemon/front/weezing.pic", 0, 1 ; sprite dimensions
	dw WeezingPicFront, WeezingPicBack

	db HEADBUTT, TAKE_DOWN, SCREECH, FLAMETHROWER ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm THRASH,       DOUBLE_EDGE,  MIST,         HYPER_BEAM,   TOXIC,        \
	     HAZE,         SLUDGE,       FIRE_BLAST,   POISON_GAS,   REST,         \
		 SUBSTITUTE 
	; end

	db BANK(WeezingPicFront)
	assert BANK(WeezingPicFront) == BANK(WeezingPicBack)
