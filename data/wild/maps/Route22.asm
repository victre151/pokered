Route22WildMons:
	def_grass_wildmons 25 ; encounter rate
	IF DEF(_RED)
	db  2, RATTATA
	db  3, RATTATA
	db  2, PIDGEY
	db  2, SPEAROW
	db  1, NIDORAN_M
	db  1, NIDORAN_F
	db  1, MANKEY
	db  2, DODUO
	db  3, MANKEY
	db  3, DODUO
ENDC
IF DEF(_BLUE)
	db  2, RATTATA
	db  3, RATTATA
	db  2, SPEAROW
	db  2, PIDGEY
	db  1, NIDORAN_F
	db  1, NIDORAN_M
	db  1, MANKEY
	db  2, DODUO
	db  3, MANKEY
	db  3, DODUO
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
