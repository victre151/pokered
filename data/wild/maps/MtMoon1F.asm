MtMoon1FWildMons:
	def_grass_wildmons 10 ; encounter rate
	db 7, ZUBAT
	db 8, ZUBAT
	db 7, GEODUDE
	db 9, ZUBAT
	db 8, GEODUDE
	db 7, PARAS
	db 7, SANDSHREW
	db 9, ONIX
IF DEF(_RED)
	db 8, CLEFAIRY
	db 8, CHARMANDER
ENDC
IF DEF(_BLUE)
	db 8, CHARMANDER
	db 8, CLEFAIRY
ENDC
	end_grass_wildmons
	
	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
