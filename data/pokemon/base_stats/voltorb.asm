	db DEX_VOLTORB ; pokedex id

	db  40,  30,  50, 100,  55 ;  275BST
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 103 ; base exp

	INCBIN "gfx/pokemon/front/voltorb.pic", 0, 1 ; sprite dimensions
	dw VoltorbPicFront, VoltorbPicBack

	db TACKLE, THUNDER_WAVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    RAGE,         THUNDERBOLT,  THUNDER,      \
	     FLASH,        MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     SUBSTITUTE,   SWIFT,        REST,         THUNDER_WAVE
	; end

	db 0 ; padding
