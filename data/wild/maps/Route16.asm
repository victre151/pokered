Route16WildMons:
	def_grass_wildmons 25 ; encounter rate
IF DEF(_RED)
	db 35, PIDGEOTTO
	db 35, FEAROW
	db 36, PIDGEOTTO
	db 36, FEAROW
	db 35, RATICATE
	db 36, RATICATE
	db 37, RATICATE
	db 36, DODRIO
	db 37, DODRIO
	db 37, CHANSEY
ENDC
IF DEF(_BLUE)
	db 35, FEAROW
	db 35, PIDGEOTTO
	db 36, FEAROW
	db 36, PIDGEOTTO
	db 35, RATICATE
	db 36, RATICATE
	db 37, RATICATE
	db 36, DODRIO
	db 37, DODRIO
	db 37, CHANSEY
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
