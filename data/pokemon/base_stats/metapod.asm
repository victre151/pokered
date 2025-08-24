	db DEX_METAPOD ; pokedex id

	db  64,  34,  69,  44,  39 ;  250BST
	;   hp  atk  def  spd  spc

	db BUG, BUG ; type
	db 120 ; catch rate
	db 72 ; base exp

	INCBIN "gfx/pokemon/front/metapod.pic", 0, 1 ; sprite dimensions
	dw MetapodPicFront, MetapodPicBack

	db TAIL_WHIP, PIN_MISSILE, HARDEN, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DOUBLE_EDGE,  MEGA_DRAIN,	 LEECH_SEED,   REFLECT,		 SKULL_BASH,   \
		 REST,		   SUBSTITUTE
	; end

	db 0 ; padding
