SafariZoneWestWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db 38, EXEGGCUTE
	db 37, VENOMOTH
	db 37, DODRIO
	db 38, NIDORINO
	db 38, NIDORINA
	db 37, TAUROS
	db 39, LICKITUNG
	db 39, SCYTHER
	db 39, PINSIR
	db 39, TANGELA
ENDC
IF DEF(_BLUE)
	db 38, EXEGGCUTE
	db 37, VENOMOTH
	db 37, DODRIO
	db 38, NIDORINA
	db 38, NIDORINO
	db 37, TAUROS
	db 39, LICKITUNG
	db 39, PINSIR
	db 39, SCYTHER
	db 39, TANGELA
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
