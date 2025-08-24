	db DEX_MAGMAR ; pokedex id

	db  63,  92,  55,  93,  97 ;  400BST
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 167 ; base exp

	INCBIN "gfx/pokemon/front/magmar.pic", 0, 1 ; sprite dimensions
	dw MagmarPicFront, MagmarPicBack

	db TACKLE, SCRATCH, PECK, FIRE_SPIN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,     MEGA_PUNCH,   FIRE_PUNCH,   THRASH,       MEGA_KICK,    \
	     DOUBLE_EDGE,  HYPER_BEAM,   REFLECT,      FIRE_BLAST,   SKULL_BASH,   \
	     REST,         SUBSTITUTE
	; end

	db 0 ; padding
