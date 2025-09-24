SafariZoneNorthWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db 35, EXEGGCUTE
	db 35, PARASECT
	db 36, RHYDON
	db 36, NIDORINO
	db 36, NIDORINA
	db 37, VENOMOTH
	db 35, MAROWAK
ENDC
IF DEF(_BLUE)
	db 35, EXEGGCUTE
	db 35, PARASECT
	db 36, RHYDON
	db 36, NIDORINA
	db 36, NIDORINO
	db 37, VENOMOTH
	db 35, MAROWAK
ENDC
	db 37, KANGASKHAN
	db 37, CHANSEY
	db 37, TAUROS
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
