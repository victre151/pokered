	db DEX_PERSIAN ; pokedex id

	db  72,  77,  67, 122,  72 ;  410BST
	;   hp  atk  def  spd  spc

	db NORMAL, GROUND ; type
	db 90 ; catch rate
	db 148 ; base exp

	INCBIN "gfx/pokemon/front/persian.pic", 0, 1 ; sprite dimensions
	dw PersianPicFront, PersianPicBack

	db FURY_SWIPES, HEADBUTT, STOMP, DOUBLE_TEAM ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm THRASH,       DOUBLE_EDGE,  ROAR,    	   HYPER_BEAM,	 ROCK_THROW,   \
	     FISSURE,	   DIG,    	     SKULL_BASH,   GLARE,        REST,  	   \
	     ROCK_SLIDE,   SUBSTITUTE
	; end

	db 0 ; padding
