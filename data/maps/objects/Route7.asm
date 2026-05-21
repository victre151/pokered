	object_const_def
	const_export ROUTE7_RIVAL_MALE
	const_export ROUTE7_RIVAL_FEMALE

Route7_Object:
	db $f ; border block

	def_warp_events
	warp_event 18,  9, ROUTE_7_GATE, 3
	warp_event 18, 10, ROUTE_7_GATE, 4
	warp_event 11,  9, ROUTE_7_GATE, 1
	warp_event 11, 10, ROUTE_7_GATE, 2
	warp_event  5, 13, UNDERGROUND_PATH_ROUTE_7, 1

	def_bg_events
	bg_event  3, 13, TEXT_ROUTE7_UNDERGROUND_PATH_SIGN

	def_object_events
IF DEF(_BLUE)
	object_event  4, 3, SPRITE_YELLOW, STAY, DOWN, TEXT_ROUTE7_RIVAL_MALE
	object_event  4, 3, SPRITE_PINK,   STAY, DOWN, TEXT_ROUTE7_RIVAL_FEMALE
ELSE
	object_event  4, 3, SPRITE_RED,    STAY, DOWN, TEXT_ROUTE7_RIVAL_MALE
	object_event  4, 3, SPRITE_GREEN,  STAY, DOWN, TEXT_ROUTE7_RIVAL_FEMALE
ENDC
	def_warps_to ROUTE_7
