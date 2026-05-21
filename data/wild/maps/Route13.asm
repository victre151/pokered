Route13WildMons:
	def_grass_wildmons 20 ; encounter rate
IF DEF(_RED)
	db 33, PIDGEOTTO
	db 33, FEAROW
	db 31, VENOMOTH
	db 33, GLOOM
	db 33, WEEPINBELL
	db 31, KINGLER
	db 32, KINGLER
	db 31, FARFETCHD
	db 32, DITTO
	db 32, CHANSEY
ENDC
IF DEF(_BLUE)
	db 33, FEAROW
	db 33, PIDGEOTTO
	db 31, VENOMOTH
	db 33, WEEPINBELL
	db 33, GLOOM
	db 31, KINGLER
	db 32, KINGLER
	db 31, FARFETCHD
	db 32, DITTO
	db 32, CHANSEY
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
