SafariZoneEastWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db 38, EXEGGCUTE
	db 38, NIDORINO
	db 38, NIDORINA
	db 38, PARASECT
	db 37, TAUROS
	db 37, MAROWAK
	db 37, KANGASKHAN
	db 39, LICKITUNG
	db 39, SCYTHER
	db 39, PINSIR
ENDC
IF DEF(_BLUE)
	db 38, EXEGGCUTE
	db 38, NIDORINA
	db 38, NIDORINO
	db 38, PARASECT
	db 37, TAUROS
	db 37, MAROWAK
	db 37, KANGASKHAN
	db 39, LICKITUNG
	db 39, PINSIR
	db 39, SCYTHER
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
