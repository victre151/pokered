Route15WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 42, VENOMOTH
	db 41, PIDGEOT
	db 41, FEAROW
	db 43, GLOOM
	db 43, WEEPINBELL
	db 42, DITTO
	db 43, TAUROS
	db 41, SCYTHER
	db 41, PINSIR
	db 42, CHANSEY
ENDC
IF DEF(_BLUE)
	db 42, VENOMOTH
	db 41, FEAROW
	db 41, PIDGEOT
	db 43, WEEPINBELL
	db 43, GLOOM
	db 42, DITTO
	db 43, TAUROS
	db 41, PINSIR
	db 41, SCYTHER
	db 42, CHANSEY
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
