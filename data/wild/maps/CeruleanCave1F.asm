CeruleanCave1FWildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db 57, GOLBAT
	db 57, GOLEM
	db 55, HYPNO
	db 56, ARBOK
	db 56, SANDSLASH
	db 55, VENOMOTH
	db 55, DODRIO
	db 55, PARASECT
	db 57, ALAKAZAM
	db 57, SNORLAX
ENDC
IF DEF(_BLUE)
	db 57, GOLBAT
	db 57, GOLEM
	db 55, HYPNO
	db 56, SANDSLASH
	db 56, ARBOK
	db 55, VENOMOTH
	db 55, DODRIO
	db 55, PARASECT
	db 57, ALAKAZAM
	db 57, SNORLAX
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
