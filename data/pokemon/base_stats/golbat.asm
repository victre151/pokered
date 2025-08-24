	db DEX_GOLBAT ; pokedex id

	db  75,  80,  70,  100,  75 ;  400BST
	;   hp  atk  def  spd  spc

	db POISON, FLYING ; type
	db 90 ; catch rate
	db 171 ; base exp

	INCBIN "gfx/pokemon/front/golbat.pic", 0, 1 ; sprite dimensions
	dw GolbatPicFront, GolbatPicBack

	db FOCUS_ENERGY, FURY_ATTACK, RAGE, FURY_SWIPES ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm FLY,   	   RAZOR_WIND,   THRASH,       DOUBLE_EDGE,  MIST,         \
	     HYPER_BEAM,   MEGA_DRAIN,   TOXIC,        HYPNOSIS,     HAZE,         \
	     SLUDGE,       SKULL_BASH,   GLARE,        POISON_GAS,   ACID_ARMOR,   \
		 REST,         SUBSTITUTE
	; end

	db 0 ; padding
