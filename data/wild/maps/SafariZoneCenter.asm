SafariZoneCenterWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db 35, EXEGGCUTE
	db 36, DODRIO
	db 35, RHYHORN
	db 35, VENOMOTH
	db 36, NIDORINO
	db 36, NIDORINA
	db 36, PARASECT
	db 37, SCYTHER
	db 37, PINSIR
ENDC
IF DEF(_BLUE)
	db 35, EXEGGCUTE
	db 36, DODRIO
	db 35, RHYHORN
	db 35, VENOMOTH
	db 36, NIDORINA
	db 36, NIDORINO
	db 36, PARASECT
	db 37, PINSIR
	db 37, SCYTHER
ENDC
	db 37, CHANSEY
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
