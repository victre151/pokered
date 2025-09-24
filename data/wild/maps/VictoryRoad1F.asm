VictoryRoad1FWildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 50, GOLBAT
	db 49, PRIMEAPE
	db 50, MACHAMP
	db 50, GOLEM
	db 49, MAROWAK
	db 51, ONIX
	db 51, RHYDON
	db 51, NIDOKING
	db 51, NIDOQUEEN
	db 49, AERODACTYL
ENDC
IF DEF(_BLUE)
	db 50, GOLBAT
	db 49, PRIMEAPE
	db 50, MACHAMP
	db 50, GOLEM
	db 49, MAROWAK
	db 51, ONIX
	db 51, RHYDON
	db 51, NIDOQUEEN
	db 51, NIDOKING
	db 49, AERODACTYL
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
