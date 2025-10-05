Route2WildMons:
	def_grass_wildmons 25 ; encounter rate
IF DEF(_RED)
	db  3, RATTATA
	db  5, RATTATA
	db  4, PIDGEY
	db  4, SPEAROW
	db  3, CATERPIE
	db  3, WEEDLE
	db  5, NIDORAN_M
	db  5, NIDORAN_F
	db  4, ODDISH
	db  4, BELLSPROUT
ENDC
IF DEF(_BLUE)
	db  3, RATTATA
	db  5, RATTATA
	db  4, SPEAROW
	db  4, PIDGEY
	db  3, WEEDLE
	db  3, CATERPIE
	db  5, NIDORAN_F
	db  5, NIDORAN_M
	db  4, ODDISH
	db  4, BELLSPROUT
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
