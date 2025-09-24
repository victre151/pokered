Route11WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 18, EKANS
	db 18, RATTATA
	db 19, RATTATA
	db 17, PIDGEY
	db 17, SPEAROW
	db 19, PIDGEOTTO
	db 19, SPEAROW
	db 18, DROWZEE
	db 17, MR_MIME
	db 17, CHANSEY
ENDC
IF DEF(_BLUE)
	db 18, EKANS
	db 18, RATTATA
	db 19, RATTATA
	db 17, SPEAROW
	db 17, PIDGEY
	db 19, SPEAROW
	db 19, PIDGEOTTO
	db 18, DROWZEE
	db 17, MR_MIME
	db 17, CHANSEY
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
