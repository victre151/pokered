Route25WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 11, PIDGEY
	db 11, SPEAROW
	db 12, BUTTERFREE
	db 12, BEEDRILL
	db 11, ODDISH
	db 11, BELLSPROUT
	db 13, PSYDUCK
	db 13, MEOWTH
	db 12, VENONAT
	db 12, ABRA
ENDC
IF DEF(_BLUE)
	db 11, SPEAROW
	db 11, PIDGEY
	db 12, BEEDRILL
	db 12, BUTTERFREE
	db 11, BELLSPROUT
	db 11, ODDISH
	db 13, PSYDUCK
	db 13, MEOWTH
	db 12, VENONAT
	db 12, ABRA
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
