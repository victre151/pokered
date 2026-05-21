	object_const_def
	const_export ROUTE22_RIVAL1
	const_export ROUTE22_RIVAL_MALE
	const_export ROUTE22_RIVAL_FEMALE

Route22_Object:
	db $2c ; border block

	def_warp_events
	warp_event  8,  5, ROUTE_22_GATE, 1

	def_bg_events
	bg_event  7, 11, TEXT_ROUTE22_POKEMON_LEAGUE_SIGN

	def_object_events
	object_event 25,  5, SPRITE_BLUE, STAY, NONE, TEXT_ROUTE22_RIVAL1
IF DEF(_BLUE)
	object_event 25,  5, SPRITE_YELLOW, STAY, NONE, TEXT_ROUTE22_RIVAL_MALE
	object_event 25,  5, SPRITE_PINK,   STAY, NONE, TEXT_ROUTE22_RIVAL_FEMALE
ELSE
	object_event 25,  5, SPRITE_RED,    STAY, NONE, TEXT_ROUTE22_RIVAL_MALE
	object_event 25,  5, SPRITE_GREEN,  STAY, NONE, TEXT_ROUTE22_RIVAL_FEMALE
ENDC


	def_warps_to ROUTE_22
