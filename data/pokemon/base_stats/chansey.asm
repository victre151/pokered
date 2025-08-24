	db DEX_CHANSEY ; pokedex id

	db 250,   5,   5,  50, 105 ;  415BST
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 255 ; base exp

	INCBIN "gfx/pokemon/front/chansey.pic", 0, 1 ; sprite dimensions
	dw ChanseyPicFront, ChanseyPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm FLASH,        MEGA_PUNCH,   MEGA_KICK,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     REFLECT,      SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db 0 ; padding
