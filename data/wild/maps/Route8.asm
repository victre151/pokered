Route8WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 23, RATICATE
	db 23, ARBOK
	db 23, MANKEY
	db 23, MEOWTH
	db 24, SANDSLASH
	db 25, GROWLITHE
	db 25, VULPIX
	db 24, PONYTA
	db 24, ABRA
	db 25, CHANSEY
ENDC
IF DEF(_BLUE)
	db 23, RATICATE
	db 23, SANDSLASH
	db 23, MANKEY
	db 23, MEOWTH
	db 24, ARBOK
	db 25, VULPIX
	db 25, GROWLITHE
	db 24, PONYTA
	db 24, ABRA
	db 25, CHANSEY
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
