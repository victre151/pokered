Route14WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 40, VENOMOTH
	db 39, PIDGEOT
	db 39, FEAROW
	db 41, GLOOM
	db 41, WEEPINBELL
	db 40, DITTO
	db 41, TAUROS
	db 39, SCYTHER
	db 39, PINSIR
	db 40, CHANSEY
ENDC
IF DEF(_BLUE)
	db 40, VENOMOTH
	db 39, FEAROW
	db 39, PIDGEOT
	db 41, WEEPINBELL
	db 41, GLOOM
	db 40, DITTO
	db 41, TAUROS
	db 39, PINSIR
	db 39, SCYTHER
	db 40, CHANSEY
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
