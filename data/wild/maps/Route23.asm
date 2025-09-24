Route23WildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db 49, PIDGEOT
	db 49, FEAROW
	db 50, PRIMEAPE
	db 50, SANDSLASH
	db 50, ARBOK
	db 51, NIDOKING
	db 51, NIDOQUEEN
	db 51, EXEGGUTOR
	db 49, DITTO
	db 51, CHANSEY
ENDC
IF DEF(_BLUE)
	db 49, FEAROW
	db 49, PIDGEOT
	db 50, SANDSLASH
	db 50, PRIMEAPE
	db 50, ARBOK
	db 51, NIDOQUEEN
	db 51, NIDOKING
	db 51, EXEGGUTOR
	db 49, DITTO
	db 51, CHANSEY
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
