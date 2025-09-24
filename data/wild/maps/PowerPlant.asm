PowerPlantWildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db 45, GOLBAT
	db 46, RATICATE
	db 46, ARBOK
	db 46, MAGNETON
	db 46, ELECTRODE
	db 47, MUK
	db 47, WEEZING
	db 45, HYPNO
	db 45, ELECTABUZZ
	db 47, GENGAR
ENDC
IF DEF(_BLUE)
	db 45, GOLBAT
	db 46, ARBOK
	db 46, RATICATE
	db 46, ELECTRODE
	db 46, MAGNETON
	db 47, MUK
	db 47, WEEZING
	db 45, HYPNO
	db 45, ELECTABUZZ
	db 47, GENGAR
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
