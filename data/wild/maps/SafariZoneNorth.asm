SafariZoneNorthWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db 37, EXEGGCUTE
	db 37, PARASECT
	db 38, RHYDON
	db 38, NIDORINO
	db 38, NIDORINA
	db 39, VENOMOTH
	db 37, MAROWAK
ENDC
IF DEF(_BLUE)
	db 37, EXEGGCUTE
	db 37, PARASECT
	db 38, RHYDON
	db 38, NIDORINA
	db 38, NIDORINO
	db 39, VENOMOTH
	db 37, MAROWAK
ENDC
	db 39, KANGASKHAN
	db 39, CHANSEY
	db 39, TAUROS
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
