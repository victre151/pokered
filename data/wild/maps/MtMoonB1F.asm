MtMoonB1FWildMons:
	def_grass_wildmons 10 ; encounter rate
	db  11, ZUBAT
	db  12, ZUBAT
	db  11, GEODUDE
	db  13, ZUBAT
	db  12, GEODUDE
	db  13, GEODUDE
	db  11, PARAS
	db  12, PARAS
	db  13, ONIX
IF DEF(_RED)
	db  12, CLEFAIRY
ENDC
IF DEF(_BLUE)
	db 12, CHARMANDER
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
