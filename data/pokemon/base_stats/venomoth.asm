	db DEX_VENOMOTH ; pokedex id

	db  70,  75,  60,  100,  95
	;   hp  atk  def  spd  spc

	db BUG, PSYCHIC_TYPE ; type
	db 75 ; catch rate
	db 138 ; base exp

	INCBIN "gfx/pokemon/front/venomoth.pic", 0, 1 ; sprite dimensions
	dw VenomothPicFront, VenomothPicBack

	db TACKLE, DISABLE, SUPERSONIC, ABSORB ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   REST,         TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MEGA_DRAIN,   SOLARBEAM,    PSYCHIC_M,    \
	     SUBSTITUTE,   MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     SWIFT
	; end

	db 0 ; padding
