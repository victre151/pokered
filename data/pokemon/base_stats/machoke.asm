	db DEX_MACHOKE ; pokedex id

	db  80, 100,  70,  45,  60 ;  355BST
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 90 ; catch rate
	db 146 ; base exp

	INCBIN "gfx/pokemon/front/machoke.pic", 0, 1 ; sprite dimensions
	dw MachokePicFront, MachokePicBack

	db RAGE, SWIFT, LOW_KICK, DIZZY_PUNCH ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,     MEGA_PUNCH,   MEGA_KICK,    THRASH,       DOUBLE_EDGE,  \
	     SEISMIC_TOSS, ROCK_THROW,   SKULL_BASH,   ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(MachokePicFront)
	assert BANK(MachokePicFront) == BANK(MachokePicBack)
