	db DEX_DUGTRIO ; pokedex id

	db  42,  107,  57, 127,  77 ;  410BST
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 50 ; catch rate
	db 153 ; base exp

	INCBIN "gfx/pokemon/front/dugtrio.pic", 0, 1 ; sprite dimensions
	dw DugtrioPicFront, DugtrioPicBack

	db DIG, SWIFT, REFLECT, HEADBUTT ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm THRASH,       DOUBLE_EDGE,  HYPER_BEAM,   ROCK_THROW,   FISSURE,  	   \
	     DIG,          SKULL_BASH,   REST,         ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(DugtrioPicFront)
	assert BANK(DugtrioPicFront) == BANK(DugtrioPicBack)
