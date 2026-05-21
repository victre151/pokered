SafariZoneCenterWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db 41, EXEGGUTOR
	db 42, DODRIO
	db 41, RHYDON
	db 41, VENOMOTH
	db 42, NIDORINO
	db 42, NIDORINA
	db 42, PARASECT
	db 43, SCYTHER
	db 43, PINSIR
ENDC
IF DEF(_BLUE)
	db 41, EXEGGUTOR
	db 42, DODRIO
	db 41, RHYDON
	db 41, VENOMOTH
	db 42, NIDORINA
	db 42, NIDORINO
	db 42, PARASECT
	db 43, PINSIR
	db 43, SCYTHER
ENDC
	db 43, CHANSEY
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
