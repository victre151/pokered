	db DEX_GENGAR ; pokedex id

	db  60,  65,  60, 110, 130 ;  425BST
	;   hp  atk  def  spd  spc

	db GHOST, POISON ; type
	db 45 ; catch rate
	db 190 ; base exp

	INCBIN "gfx/pokemon/front/gengar.pic", 0, 1 ; sprite dimensions
	dw GengarPicFront, GengarPicBack

	db NIGHT_SHADE, SLUDGE, ICE_BEAM, ACID_ARMOR ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm ICE_PUNCH,    THRASH,       MIST,         ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   TOXIC,        HYPNOSIS,     HAZE,         SLUDGE,       \
	     GLARE,        DREAM_EATER,  POISON_GAS,   ACID_ARMOR,   REST,         \
		 SUBSTITUTE 
	; end

	db 0 ; padding
