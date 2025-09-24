Route21WildMons:
	def_grass_wildmons 25 ; encounter rate
IF DEF(_RED)
	db 15, RATTATA
	db 17, RATTATA
	db 15, PIDGEY
	db 15, SPEAROW
	db 17, KRABBY
	db 16, KRABBY
	db 16, SLOWPOKE
	db 16, TANGELA
	db 17, LICKITUNG
	db 16, EXEGGCUTE
ENDC
IF DEF(_BLUE)
	db 15, RATTATA
	db 17, RATTATA
	db 15, SPEAROW
	db 15, PIDGEY
	db 17, KRABBY
	db 16, KRABBY
	db 16, SLOWPOKE
	db 16, TANGELA
	db 17, LICKITUNG
	db 16, EXEGGCUTE
ENDC
	end_grass_wildmons

	def_water_wildmons 5 ; encounter rate
	db 15, TENTACOOL
	db 15, MAGIKARP
	db 17, TENTACOOL
	db 17, MAGIKARP
	db 16, SHELLDER
	db 16, STARYU
	db 15, GOLDEEN
	db 16, POLIWAG
	db 17, SEEL
	db 17, HORSEA
	end_water_wildmons
