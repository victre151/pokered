Route6WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 11, ODDISH
	db 11, BELLSPROUT
	db 13, KRABBY
	db 13, PSYDUCK
	db 12, GROWLITHE
	db 12, VULPIX
	db 12, DROWZEE
	db 13, ABRA
	db 11, EEVEE
	db 11, SQUIRTLE
ENDC
IF DEF(_BLUE)
	db 11, BELLSPROUT
	db 11, ODDISH
	db 13, KRABBY
	db 13, PSYDUCK
	db 12, VULPIX
	db 12, GROWLITHE
	db 12, DROWZEE
	db 13, ABRA
	db 11, SQUIRTLE
	db 11, EEVEE
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
