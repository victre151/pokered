	db DEX_KADABRA ; pokedex id

	db  40,  35,  30, 105, 120 ;  330BST
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 100 ; catch rate
	db 145 ; base exp

	INCBIN "gfx/pokemon/front/kadabra.pic", 0, 1 ; sprite dimensions
	dw KadabraPicFront, KadabraPicBack

	db FURY_SWIPES, SWIFT, REFLECT, PSYBEAM ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm FLASH,   	   MEGA_PUNCH,   MEGA_KICK,    DISABLE,      DOUBLE_EDGE,  \
	     SEISMIC_TOSS, HYPNOSIS, 	 RECOVER,      LIGHT_SCREEN, REFLECT, 	   \
	     SKULL_BASH,   DREAM_EATER,  REST,  	   TRI_ATTACK,   SUBSTITUTE
	; end

	db 0 ; padding
