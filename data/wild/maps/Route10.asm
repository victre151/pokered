Route10WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 20, RATICATE
	db 20, PIDGEOTTO
	db 20, FEAROW
	db 19, MAGNEMITE
	db 19, VOLTORB
	db 21, KOFFING
	db 21, GRIMER
	db 21, SLOWPOKE 
	db 19, KRABBY
	db 19, DRATINI
ENDC
IF DEF(_BLUE)
	db 20, RATICATE
	db 20, FEAROW
	db 20, PIDGEOTTO
	db 19, VOLTORB
	db 19, MAGNEMITE
	db 21, GRIMER
	db 21, KOFFING
	db 21, SLOWPOKE 
	db 19, KRABBY
	db 19, DRATINI
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
