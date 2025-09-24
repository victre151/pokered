ViridianForestWildMons:
	def_grass_wildmons 8 ; encounter rate
IF DEF(_RED)
	db 3, CATERPIE
	db 3, WEEDLE
	db 3, ODDISH
	db 3, BELLSPROUT
	db 4, PARAS
	db 5, PARAS
	db 5, SCYTHER
	db 5, PINSIR
	db 4, PIKACHU
	db 4, BULBASAUR
ENDC
IF DEF(_BLUE)
	db 3, WEEDLE
	db 3, CATERPIE
	db 3, BELLSPROUT
	db 3, ODDISH
	db 4, PARAS
	db 5, PARAS
	db 5, PINSIR
	db 5, SCYTHER
	db 4, BULBASAUR
	db 4, PIKACHU
ENDC
	end_grass_wildmons
	
	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
