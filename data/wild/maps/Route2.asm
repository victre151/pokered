Route2WildMons:
	def_grass_wildmons 25 ; encounter rate
	db  3, RATTATA
	db  4, PIDGEY
	db  5, PIDGEY
	db  7, RATTATA
	db  7, PIDGEY
IF DEF(_RED)
	db  3, WEEDLE
	db  4, RATTATA
	db  5, RATTATA
	db  5, WEEDLE
	db  6, WEEDLE
ENDC
IF DEF(_BLUE)
	db  3, CATERPIE
	db  4, RATTATA
	db  5, RATTATA
	db  5, CATERPIE
	db  6, CATERPIE
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
