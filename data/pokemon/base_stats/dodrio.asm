	db DEX_DODRIO ; pokedex id

	db  60, 110,  70, 110,  60 ;  410BST
	;   hp  atk  def  spd  spc

	db GROUND, FLYING ; type
	db 45 ; catch rate
	db 158 ; base exp

	INCBIN "gfx/pokemon/front/dodrio.pic", 0, 1 ; sprite dimensions
	dw DodrioPicFront, DodrioPicBack

	db HEADBUTT, STOMP, DOUBLE_TEAM, SLASH ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   MEGA_KICK,    THRASH,       DOUBLE_EDGE,  HYPER_BEAM,   \
	     ROCK_THROW,   FISSURE,      DIG,          REFLECT,      SKULL_BASH,   \
	     REST,         ROCK_SLIDE,   TRI_ATTACK,   SUBSTITUTE
	; end

	db 0 ; padding
