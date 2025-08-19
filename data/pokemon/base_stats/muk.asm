	db DEX_MUK ; pokedex id

	db 105, 105,  75,  50,  100 ;  435BST
	;   hp  atk  def  spd  spc

	db POISON, GROUND ; type
	db 75 ; catch rate
	db 157 ; base exp

	INCBIN "gfx/pokemon/front/muk.pic", 0, 1 ; sprite dimensions
	dw MukPicFront, MukPicBack

	db SCREECH, SLUDGE, EARTHQUAKE, BODY_SLAM ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    HYPER_BEAM,   RAGE,         MEGA_DRAIN,   \
	     THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     SUBSTITUTE,   FIRE_BLAST,   REST    
	; end

	db 0 ; padding
