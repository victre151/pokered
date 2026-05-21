SafariZoneWestWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db 42, EXEGGCUTE
	db 41, VENOMOTH
	db 41, DODRIO
	db 42, NIDORINO
	db 42, NIDORINA
	db 41, TAUROS
	db 43, LICKITUNG
	db 43, SCYTHER
	db 43, PINSIR
	db 43, TANGELA
ENDC
IF DEF(_BLUE)
	db 42, EXEGGCUTE
	db 41, VENOMOTH
	db 41, DODRIO
	db 42, NIDORINA
	db 42, NIDORINO
	db 41, TAUROS
	db 43, LICKITUNG
	db 43, PINSIR
	db 43, SCYTHER
	db 43, TANGELA
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
