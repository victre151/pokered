	db DEX_MAROWAK ; pokedex id

	db  67,  87, 117,  52,  87 ;  410BST
	;   hp  atk  def  spd  spc

	db GROUND, GHOST ; type
	db 75 ; catch rate
	db 124 ; base exp

	INCBIN "gfx/pokemon/front/marowak.pic", 0, 1 ; sprite dimensions
	dw MarowakPicFront, MarowakPicBack

	db DIG, FURY_SWIPES, BONE_CLUB, HEADBUTT ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,     SWORDS_DANCE, THRASH,       DOUBLE_EDGE,  HYPER_BEAM,   \
	     ROCK_THROW,   FISSURE,  	 DIG,   	   SKULL_BASH,   GLARE,    	   \
	     REST,         ROCK_SLIDE,   SUBSTITUTE
	; end

	db 0 ; padding
