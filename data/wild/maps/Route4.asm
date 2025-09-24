Route4WildMons:
	def_grass_wildmons 20 ; encounter rate
IF DEF(_RED)
	db 7, RATTATA
	db 7, MANKEY
	db 8, PIDGEY
	db 8, SPEAROW
	db 9, RATTATA
	db 8, MANKEY
	db 7, EKANS
	db 9, SANDSHREW
	db 9, JIGGLYPUFF
	db 7, PSYDUCK
ENDC
IF DEF(_BLUE)
	db 7, RATTATA
	db 7, MANKEY
	db 8, SPEAROW
	db 8, PIDGEY
	db 9, RATTATA
	db 8, SANDSHREW
	db 7, MANKEY
	db 9, EKANS
	db 9, JIGGLYPUFF
	db 7, PSYDUCK
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
