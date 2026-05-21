SafariZoneNorthWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db 41, EXEGGUTOR
	db 41, PARASECT
	db 42, RHYDON
	db 42, NIDORINO
	db 42, NIDORINA
	db 43, VENOMOTH
	db 41, MAROWAK
ENDC
IF DEF(_BLUE)
	db 41, EXEGGUTOR
	db 41, PARASECT
	db 42, RHYDON
	db 42, NIDORINA
	db 42, NIDORINO
	db 43, VENOMOTH
	db 41, MAROWAK
ENDC
	db 43, KANGASKHAN
	db 43, CHANSEY
	db 43, TAUROS
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
