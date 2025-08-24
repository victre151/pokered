	db DEX_ARTICUNO ; pokedex id

	db  97, 132, 107,  92,  92 ;  520BST
	
	;   hp  atk  def  spd  spc

	db ICE, FLYING ; type
	db 3 ; catch rate
	db 215 ; base exp

	INCBIN "gfx/pokemon/front/articuno.pic", 0, 1 ; sprite dimensions
	dw ArticunoPicFront, ArticunoPicBack

	db TACKLE, PECK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm FLY,   	   RAZOR_WIND,   DOUBLE_EDGE,  ROAR,    	 MIST, 		   \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   HAZE,     	 REFLECT,      \
	     SKULL_BASH,   REST,         TRI_ATTACK,   SUBSTITUTE
	; end

	db 0 ; padding
