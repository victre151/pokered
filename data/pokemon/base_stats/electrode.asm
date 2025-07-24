	db DEX_ELECTRODE ; pokedex id

	db  60,  50,  70, 150,  80
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 60 ; catch rate
	db 150 ; base exp

	INCBIN "gfx/pokemon/front/electrode.pic", 0, 1 ; sprite dimensions
	dw ElectrodePicFront, ElectrodePicBack

	db SONICBOOM, TACKLE, SCREECH, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    HYPER_BEAM,   RAGE,         THUNDERBOLT,  \
	     THUNDER,      SUBSTITUTE,   MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         FLASH,        SWIFT,        SKULL_BASH,   REST,         \
		 THUNDER_WAVE  
	; end

	db 0 ; padding
