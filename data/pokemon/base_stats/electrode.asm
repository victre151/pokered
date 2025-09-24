	db DEX_ELECTRODE ; pokedex id

	db  60,  50,  70, 150,  80 ;  410BST
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 60 ; catch rate
	db 150 ; base exp

	INCBIN "gfx/pokemon/front/electrode.pic", 0, 1 ; sprite dimensions
	dw ElectrodePicFront, ElectrodePicBack

	db THUNDERPUNCH, HEADBUTT, BARRIER, TAKE_DOWN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm FLASH,        DOUBLE_EDGE,  HYPER_BEAM,   THUNDERBOLT,  THUNDER,      \
	     LIGHT_SCREEN, REFLECT,      SKULL_BASH,   GLARE,        REST,         \
		 SUBSTITUTE  
	; end

	db BANK(ElectrodePicFront)
	assert BANK(ElectrodePicFront) == BANK(ElectrodePicBack)
