ViridianForestWildMons:
	def_grass_wildmons 8 ; encounter rate
IF DEF(_RED)
	db  7, KAKUNA
	db  5, WEEDLE
	db  6, WEEDLE
	db  8, KAKUNA
	db  8, METAPOD
	db  5, CATERPIE
ENDC
IF DEF(_BLUE)
	db  7, METAPOD
	db  5, CATERPIE
	db  6, CATERPIE
	db  8, METAPOD
	db  8, KAKUNA
	db  5, WEEDLE
ENDC
	db  9, PINSIR
	db  9, SCYTHER
	db  9, PIKACHU
	db  5, PIKACHU
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
