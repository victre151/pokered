	db DEX_EXEGGUTOR ; pokedex id

	db  95,  95,  85,  55, 125 ;  455BST
	;   hp  atk  def  spd  spc

	db GRASS, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 212 ; base exp

	INCBIN "gfx/pokemon/front/exeggutor.pic", 0, 1 ; sprite dimensions
	dw ExeggutorPicFront, ExeggutorPicBack

	db TAKE_DOWN, EGG_BOMB, LIGHT_SCREEN, RAZOR_LEAF ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   RAGE,         \
	     MEGA_DRAIN,   SOLARBEAM,    PSYCHIC_M,    REST,         MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         STRENGTH,     EGG_BOMB,     \
	     SUBSTITUTE       
	; end

	db 0 ; padding
