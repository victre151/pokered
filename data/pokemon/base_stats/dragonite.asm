	db DEX_DRAGONITE ; pokedex id

	db  91, 134,  95,  80, 100 ;  500BST
	;   hp  atk  def  spd  spc

	db DRAGON, FLYING ; type
	db 45 ; catch rate
	db 218 ; base exp

	INCBIN "gfx/pokemon/front/dragonite.pic", 0, 1 ; sprite dimensions
	dw DragonitePicFront, DragonitePicBack

	db SLAM, WATERFALL, THUNDERBOLT, BODY_SLAM ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SURF,         HORN_DRILL,	 THRASH,       DOUBLE_EDGE,  HYDRO_PUMP,   \
	     BUBBLEBEAM,   HYPER_BEAM,	 THUNDERBOLT,  THUNDER,      REFLECT,      \
	     SKULL_BASH,   GLARE,  	     REST,  	   SUBSTITUTE
	; end

	db 0 ; padding
