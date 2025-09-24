	db DEX_GRIMER ; pokedex id

	db  80,  60,  50,  25,  70 ;  285BST
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 190 ; catch rate
	db 90 ; base exp

	INCBIN "gfx/pokemon/front/grimer.pic", 0, 1 ; sprite dimensions
	dw GrimerPicFront, GrimerPicBack

	db TACKLE, POISON_STING, SAND_ATTACK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm THRASH,       ROAR,         DISABLE,      ROCK_THROW,   FISSURE,      \
	     DIG,          TOXIC,        SLUDGE,       GLARE,        POISON_GAS,   \
	     ACID_ARMOR,   REST,         ROCK_SLIDE,   SUBSTITUTE    
	; end

	db BANK(GrimerPicFront)
	assert BANK(GrimerPicFront) == BANK(GrimerPicBack)
