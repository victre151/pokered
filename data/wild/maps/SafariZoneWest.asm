SafariZoneWestWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db 36, EXEGGCUTE
	db 35, VENOMOTH
	db 35, DODRIO
	db 36, NIDORINO
	db 36, NIDORINA
	db 35, TAUROS
	db 37, LICKITUNG
	db 37, SCYTHER
	db 37, PINSIR
	db 37, TANGELA
ENDC
IF DEF(_BLUE)
	db 36, EXEGGCUTE
	db 35, VENOMOTH
	db 35, DODRIO
	db 36, NIDORINA
	db 36, NIDORINO
	db 35, TAUROS
	db 37, LICKITUNG
	db 37, PINSIR
	db 37, SCYTHER
	db 37, TANGELA
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
