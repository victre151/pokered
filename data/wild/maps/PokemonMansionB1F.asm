PokemonMansionB1FWildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db 41, WEEZING
	db 41, MUK
	db 42, RATICATE
	db 43, WEEZING
	db 43, MUK
	db 42, RATICATE
	db 42, MAGMAR
	db 43, MAGMAR
	db 41, DITTO
	db 43, AERODACTYL
ENDC
IF DEF(_BLUE)
	db 41, MUK
	db 41, WEEZING
	db 42, RATICATE
	db 43, MUK
	db 43, WEEZING
	db 42, RATICATE
	db 42, MAGMAR
	db 43, MAGMAR
	db 41, DITTO
	db 43, AERODACTYL
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
