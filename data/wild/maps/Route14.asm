Route14WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 32, VENOMOTH
	db 31, PIDGEOTTO
	db 31, FEAROW
	db 33, GLOOM
	db 33, WEEPINBELL
	db 32, DITTO
	db 33, TAUROS
	db 31, SCYTHER
	db 31, PINSIR
	db 32, CHANSEY
ENDC
IF DEF(_BLUE)
	db 32, VENOMOTH
	db 31, FEAROW
	db 31, PIDGEOTTO
	db 33, WEEPINBELL
	db 33, GLOOM
	db 32, DITTO
	db 33, TAUROS
	db 31, PINSIR
	db 31, SCYTHER
	db 32, CHANSEY
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
