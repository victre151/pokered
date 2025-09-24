SafariZoneEastWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db 36, EXEGGCUTE
	db 36, NIDORINO
	db 36, NIDORINA
	db 36, PARASECT
	db 35, TAUROS
	db 35, MAROWAK
	db 35, KANGASKHAN
	db 37, LICKITUNG
	db 37, SCYTHER
	db 37, PINSIR
ENDC
IF DEF(_BLUE)
	db 36, EXEGGCUTE
	db 36, NIDORINA
	db 36, NIDORINO
	db 36, PARASECT
	db 35, TAUROS
	db 35, MAROWAK
	db 35, KANGASKHAN
	db 37, LICKITUNG
	db 37, PINSIR
	db 37, SCYTHER
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
