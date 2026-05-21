Route17WildMons:
	def_grass_wildmons 25 ; encounter rate
IF DEF(_RED)
	db 38, PIDGEOT
	db 38, FEAROW
	db 38, RATICATE
	db 37, GOLDUCK
	db 39, GOLDUCK
	db 37, DODRIO
	db 39, DODRIO
	db 37, RAPIDASH
	db 39, RAPIDASH
	db 39, CHANSEY
ENDC
IF DEF(_BLUE)
	db 38, FEAROW
	db 38, PIDGEOTTO
	db 38, RATICATE
	db 37, GOLDUCK
	db 39, GOLDUCK
	db 37, DODRIO
	db 39, DODRIO
	db 37, RAPIDASH
	db 39, RAPIDASH
	db 39, CHANSEY
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
