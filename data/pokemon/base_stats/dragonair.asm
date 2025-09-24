	db DEX_DRAGONAIR ; pokedex id

	db  61,  84,  65,  70,  70 ;  350BST
	;   hp  atk  def  spd  spc

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 144 ; base exp

	INCBIN "gfx/pokemon/front/dragonair.pic", 0, 1 ; sprite dimensions
	dw DragonairPicFront, DragonairPicBack

	db BUBBLEBEAM, HORN_ATTACK, HEADBUTT, TAKE_DOWN ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SURF,         HORN_DRILL,	 THRASH,       DOUBLE_EDGE,  HYDRO_PUMP,   \
	     BUBBLEBEAM,   THUNDERBOLT,  THUNDER,      REFLECT,      SKULL_BASH,   \
	     GLARE,  	   REST,  	     SUBSTITUTE
	; end

	db BANK(DragonairPicFront)
	assert BANK(DragonairPicFront) == BANK(DragonairPicBack)
