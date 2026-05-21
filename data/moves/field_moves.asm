FieldMoveDisplayData:
	; move id, FieldMoveNames index, leftmost tile
	; (leftmost tile = -1 + tile column in which the first
	;  letter of the move's name should be displayed)
	db CUT,          1, $0C
	db FLY,          2, $0C
	db ANIM_B4,      3, $0C ; unused
	db SURF,         4, $0C
	db STRENGTH,     5, $0A
	db FLASH,        6, $0C
	db DIG,          7, $0C
	db TELEPORT,     8, $0A
	db SOFTBOILED, 	 9, $08
	db SLASH,        10, $0B
	db THUNDERBOLT,  11, $07
	db THUNDER,      12, $09
	db FIRE_BLAST,   13, $08
	db FLAMETHROWER, 14, $06
	db SUBMISSION,   15, $08
	db SEISMIC_TOSS, 16, $06
	db -1 ; end
