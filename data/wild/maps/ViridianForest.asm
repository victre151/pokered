ViridianForestWildMons:
	def_grass_wildmons 8 ; encounter rate
	db 7, METAPOD
	db 7, KAKUNA
	db 7, ODDISH
	db 7, BELLSPROUT
	db 8, PARAS
	db 9, PARAS
IF DEF(_RED)
	db 9, SCYTHER
	db 9, PINSIR
	db 8, PIKACHU
	db 8, BULBASAUR
ENDC
IF DEF(_BLUE)
	db 9, PINSIR
	db 9, SCYTHER
	db 8, BULBASAUR
	db 8, PIKACHU
ENDC
	end_grass_wildmons
	
	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
