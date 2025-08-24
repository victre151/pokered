	db DEX_PARASECT ; pokedex id

	db  73, 108,  93,  43,  93 ;  410BST
	;   hp  atk  def  spd  spc

	db BUG, GHOST ; type
	db 75 ; catch rate
	db 128 ; base exp

	INCBIN "gfx/pokemon/front/parasect.pic", 0, 1 ; sprite dimensions
	dw ParasectPicFront, ParasectPicBack

	db GROWTH, FURY_SWIPES, CONFUSE_RAY, SPORE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm CUT,          GUILLOTINE,   THRASH,       DOUBLE_EDGE,  DISABLE,  	   \
	     HYPER_BEAM,   MEGA_DRAIN,   LEECH_SEED,   POISONPOWDER, STUN_SPORE,   \
	     SLEEP_POWDER, TOXIC,        HYPNOSIS,     REFLECT,      SLUDGE,       \
	     SKULL_BASH,   GLARE,        POISON_GAS,   ACID_ARMOR,   REST,         \
		 SUBSTITUTE
	; end

	db 0 ; padding
