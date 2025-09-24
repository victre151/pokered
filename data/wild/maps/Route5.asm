Route5WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF (_RED)
	db 11, PIDGEY
	db 11, SPEAROW
	db 12, ODDISH
	db 12, BELLSPROUT
	db 11, MEOWTH
	db 13, GROWLITHE
	db 13, VULPIX
	db 12, DODUO
	db 13, PSYDUCK
	db 11, ABRA
ENDC
IF DEF (_BLUE)
	db 11, SPEAROW
	db 11, PIDGEY
	db 12, BELLSPROUT
	db 12, ODDISH
	db 11, MEOWTH
	db 13, VULPIX
	db 13, GROWLITHE
	db 12, DODUO
	db 13, PSYDUCK
	db 11, ABRA
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
