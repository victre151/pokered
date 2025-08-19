	db DEX_BUTTERFREE ; pokedex id

	db  79,  74,  69,  89,  99 ;  410BST
	;   hp  atk  def  spd  spc

	db BUG, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 160 ; base exp

	INCBIN "gfx/pokemon/front/butterfree.pic", 0, 1 ; sprite dimensions
	dw ButterfreePicFront, ButterfreePicBack

	db PIN_MISSILE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   REST,         TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MEGA_DRAIN,   SOLARBEAM,    PSYCHIC_M,    \
	     SUBSTITUTE,   MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     SWIFT
	; end

	db 0 ; padding
