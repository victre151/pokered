	db DEX_MUK ; pokedex id

	db 105, 105,  75,  50,  100 ;  435BST
	;   hp  atk  def  spd  spc

	db POISON, GROUND ; type
	db 75 ; catch rate
	db 157 ; base exp

	INCBIN "gfx/pokemon/front/muk.pic", 0, 1 ; sprite dimensions
	dw MukPicFront, MukPicBack

	db SCREECH, SLUDGE, EARTHQUAKE, BODY_SLAM ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm THRASH,       ROAR,         DISABLE,      HYPER_BEAM,   ROCK_THROW,   \
	     FISSURE,      DIG,          TOXIC,        SLUDGE,       GLARE,        \
	     POISON_GAS,   ACID_ARMOR,   REST,         ROCK_SLIDE,   SUBSTITUTE       
	; end

	db 0 ; padding
