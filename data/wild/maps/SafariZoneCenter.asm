SafariZoneCenterWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db 37, EXEGGCUTE
	db 38, DODRIO
	db 37, RHYHORN
	db 37, VENOMOTH
	db 38, NIDORINO
	db 38, NIDORINA
	db 38, PARASECT
	db 39, SCYTHER
	db 39, PINSIR
ENDC
IF DEF(_BLUE)
	db 37, EXEGGCUTE
	db 38, DODRIO
	db 37, RHYHORN
	db 37, VENOMOTH
	db 38, NIDORINA
	db 38, NIDORINO
	db 38, PARASECT
	db 39, PINSIR
	db 39, SCYTHER
ENDC
	db 39, CHANSEY
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
