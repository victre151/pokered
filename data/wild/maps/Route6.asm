Route6WildMons:
	def_grass_wildmons 15 ; encounter rate
	db 15, ODDISH
	db 15, BELLSPROUT
	db 17, KRABBY
	db 17, PSYDUCK
	db 16, GROWLITHE
	db 16, VULPIX
	db 16, DROWZEE
	db 17, ABRA
IF DEF(_RED)
	db 15, EEVEE
	db 15, SQUIRTLE
ENDC
IF DEF(_BLUE)
	db 15, SQUIRTLE
	db 15, EEVEE
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
