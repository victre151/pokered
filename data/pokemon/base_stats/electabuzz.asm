	db DEX_ELECTABUZZ ; pokedex id

	db  66,  84,  58, 106,  86 ;  400BST
	;   hp  atk  def  spd  spc

	db ELECTRIC, FIGHTING ; type
	db 45 ; catch rate
	db 156 ; base exp

	INCBIN "gfx/pokemon/front/electabuzz.pic", 0, 1 ; sprite dimensions
	dw ElectabuzzPicFront, ElectabuzzPicBack

	db DOUBLE_KICK, TACKLE, THUNDER_WAVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm FLASH,        STRENGTH,     MEGA_PUNCH,   THUNDERPUNCH, MEGA_KICK,    \
	     THRASH,       DOUBLE_EDGE,  HYPER_BEAM,   SEISMIC_TOSS, THUNDERBOLT,  \
	     THUNDER,      REFLECT,      SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db BANK(ElectabuzzPicFront)
	assert BANK(ElectabuzzPicFront) == BANK(ElectabuzzPicBack)
