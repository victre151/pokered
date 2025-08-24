	db DEX_FLAREON ; pokedex id

	db  65, 110,  60,  65, 130 ;  430BST
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 198 ; base exp

	INCBIN "gfx/pokemon/front/flareon.pic", 0, 1 ; sprite dimensions
	dw FlareonPicFront, FlareonPicBack

	db TAKE_DOWN, SLASH, FLAMETHROWER, EARTHQUAKE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, THRASH,       DOUBLE_EDGE,  ROAR,         HYPER_BEAM,   \
	     ROCK_THROW,   FISSURE,      DIG,          FIRE_BLAST,   SKULL_BASH,   \
	     REST,         ROCK_THROW,   TRI_ATTACK,   SUBSTITUTE
	; end

	db 0 ; padding
