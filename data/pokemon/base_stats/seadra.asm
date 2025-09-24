	db DEX_SEADRA ; pokedex id

	db  58,  78,  98,  88,  88 ;  410BST
	;   hp  atk  def  spd  spc

	db WATER, DRAGON ; type
	db 75 ; catch rate
	db 155 ; base exp

	INCBIN "gfx/pokemon/front/seadra.pic", 0, 1 ; sprite dimensions
	dw SeadraPicFront, SeadraPicBack

	db HEADBUTT, TAKE_DOWN, SLASH, AGILITY ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SURF,         SWORDS_DANCE, THRASH,       DOUBLE_EDGE,  HYDRO_PUMP,   \
	     BUBBLEBEAM,   HYPER_BEAM,   SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db BANK(SeadraPicFront)
	assert BANK(SeadraPicFront) == BANK(SeadraPicBack)
