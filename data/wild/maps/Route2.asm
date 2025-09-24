Route2WildMons:
	def_grass_wildmons 25 ; encounter rate
IF DEF(_RED)
	db  1, RATTATA
	db  3, RATTATA
	db  2, PIDGEY
	db  2, SPEAROW
	db  1, CATERPIE
	db  1, WEEDLE
	db  3, NIDORAN_M
	db  3, NIDORAN_F
	db  2, ODDISH
	db  2, BELLSPROUT
ENDC
IF DEF(_BLUE)
	db  1, RATTATA
	db  3, RATTATA
	db  2, SPEAROW
	db  2, PIDGEY
	db  1, WEEDLE
	db  1, CATERPIE
	db  3, NIDORAN_F
	db  3, NIDORAN_M
	db  2, ODDISH
	db  2, BELLSPROUT
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
