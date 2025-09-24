CeruleanCaveB1FWildMons:
	def_grass_wildmons 25 ; encounter rate
IF DEF(_RED)
	db 57, GOLBAT
	db 56, GOLEM
	db 56, RHYDON
	db 56, MAROWAK
	db 55, PARASECT
	db 55, ARBOK
	db 55, SANDSLASH
	db 55, PARASECT
	db 57, LICKITUNG
	db 57, SNORLAX
ENDC
IF DEF(_BLUE)
	db 57, GOLBAT
	db 56, GOLEM
	db 56, RHYDON
	db 56, MAROWAK
	db 55, PARASECT
	db 55, SANDSLASH
	db 55, ARBOK
	db 55, PARASECT
	db 57, LICKITUNG
	db 57, SNORLAX
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
