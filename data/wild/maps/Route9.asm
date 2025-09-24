Route9WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 20, RATICATE
	db 20, PIDGEOTTO
	db 20, FEAROW
	db 19, EKANS
	db 19, SANDSHREW
	db 21, EKANS
	db 21, SANDSHREW
	db 19, NIDORAN_M
	db 19, NIDORAN_F
	db 21, CHANSEY
ENDC
IF DEF(_BLUE)
	db 20, RATICATE
	db 20, FEAROW
	db 20, PIDGEOTTO
	db 19, SANDSHREW
	db 19, EKANS
	db 21, SANDSHREW
	db 21, EKANS
	db 19, NIDORAN_F
	db 19, NIDORAN_M
	db 21, CHANSEY
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
