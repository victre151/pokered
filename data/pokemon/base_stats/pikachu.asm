	db DEX_PIKACHU ; pokedex id

	db  35,  50,  40,  90,  55 ;  270BST
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 82 ; base exp

	INCBIN "gfx/pokemon/front/pikachu.pic", 0, 1 ; sprite dimensions
	dw PikachuPicFront, PikachuPicBack

	db SCRATCH, TACKLE, THUNDER_WAVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm FLASH,        MEGA_PUNCH,   THUNDERPUNCH, MEGA_KICK,    THRASH,       \
	     DOUBLE_EDGE,  SEISMIC_TOSS, THUNDERBOLT,  THUNDER,      REFLECT,      \
	     SKULL_BASH,   REST,         SUBSTITUTE  
	; end

	db 0 ; padding
