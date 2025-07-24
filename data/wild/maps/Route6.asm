Route6WildMons:
	def_grass_wildmons 15 ; encounter rate
	db 15, ODDISH
	db 15, BELLSPROUT
	db 13, PIDGEY
	db 13, SPEAROW
	db 14, GROWLITHE
	db 12, VULPIX
	db 12, PSYDUCK
	db 16, ABRA
	db 16, JIGGLYPUFF
IF DEF(_RED)
	db 14, EEVEE
ENDC
IF DEF(_BLUE)
	db 14, SQUIRTLE
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
