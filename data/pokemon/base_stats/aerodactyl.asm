	db DEX_AERODACTYL ; pokedex id

	db  79, 104,  64, 129,  74 ;  450BST
	;   hp  atk  def  spd  spc

	db ROCK, DRAGON ; type
	db 45 ; catch rate
	db 202 ; base exp

	INCBIN "gfx/pokemon/front/aerodactyl.pic", 0, 1 ; sprite dimensions
	dw AerodactylPicFront, AerodactylPicBack

	db PECK, SCRATCH, TACKLE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm FLY,          RAZOR_WIND,   HORN_DRILL,   THRASH,       DOUBLE_EDGE,  \
	     ROAR,   	   HYPER_BEAM,   ROCK_THROW,   FIRE_BLAST,   SKULL_BASH,   \
	     GLARE,        REST,         ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(AerodactylPicFront)
	assert BANK(AerodactylPicFront) == BANK(AerodactylPicBack)
