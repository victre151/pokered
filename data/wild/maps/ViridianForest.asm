ViridianForestWildMons:
	def_grass_wildmons 8 ; encounter rate
	db  7, METAPOD
	db  7, KAKUNA
	db  8, PIDGEY
	db  8, SPEAROW
	db  9, PARAS
	db  7, ODDISH
	db  7, BELLSPROUT
	db  9, PINSIR
	db  9, SCYTHER
IF DEF(_RED)
	db 8, PIKACHU
ENDC
IF DEF(_BLUE)
	db 8, BULBASAUR
ENDC
	end_grass_wildmons
	
	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
