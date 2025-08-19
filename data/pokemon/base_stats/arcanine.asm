	db DEX_ARCANINE ; pokedex id

	db  86, 105,  75,  90,  95 ;  450BST
	;   hp  atk  def  spd  spc

	db FIRE, DRAGON ; type
	db 75 ; catch rate
	db 213 ; base exp

	INCBIN "gfx/pokemon/front/arcanine.pic", 0, 1 ; sprite dimensions
	dw ArcaninePicFront, ArcaninePicBack

	db TAKE_DOWN, SLASH, AGILITY, FLAMETHROWER ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         DRAGON_RAGE,  DIG,          SUBSTITUTE,   MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         FIRE_BLAST,   SWIFT,        \
	     SKULL_BASH,   REST
	; end

	db 0 ; padding
