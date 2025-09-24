Route1WildMons:
	def_grass_wildmons 25 ; encounter rate
IF DEF(_RED)	
	db 3, RATTATA
	db 3, RATTATA
	db 3, PIDGEY
	db 3, SPEAROW
	db 2, RATTATA
	db 1, PIDGEY
	db 1, SPEAROW
	db 1, RATTATA
	db 2, ODDISH
	db 2, BELLSPROUT
ENDC
IF DEF(_BLUE)
	db 3, RATTATA
	db 3, RATTATA
	db 3, SPEAROW
	db 3, PIDGEY
	db 2, RATTATA
	db 1, SPEAROW
	db 1, PIDGEY
	db 1, RATTATA
	db 2, BELLSPROUT
	db 2, ODDISH
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
