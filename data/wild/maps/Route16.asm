Route16WildMons:
	def_grass_wildmons 25 ; encounter rate
IF DEF(_RED)
	db 37, PIDGEOTTO
	db 37, FEAROW
	db 38, PIDGEOT
	db 38, FEAROW
	db 37, RATICATE
	db 38, RATICATE
	db 39, RATICATE
	db 38, DODRIO
	db 39, DODRIO
	db 39, CHANSEY
ENDC
IF DEF(_BLUE)
	db 37, FEAROW
	db 37, PIDGEOTTO
	db 38, FEAROW
	db 38, PIDGEOT
	db 37, RATICATE
	db 38, RATICATE
	db 39, RATICATE
	db 38, DODRIO
	db 39, DODRIO
	db 39, CHANSEY
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
