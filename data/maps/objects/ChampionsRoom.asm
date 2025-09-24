	object_const_def
	const_export CHAMPIONSROOM_RIVAL_MALE
	const_export CHAMPIONSROOM_RIVAL_FEMALE
	const_export CHAMPIONSROOM_OAK

ChampionsRoom_Object:
	db $3 ; border block

	def_warp_events
	warp_event  3,  7, LANCES_ROOM, 2
	warp_event  4,  7, LANCES_ROOM, 3
	warp_event  3,  0, HALL_OF_FAME, 1
	warp_event  4,  0, HALL_OF_FAME, 1

	def_bg_events

	def_object_events
IF DEF(_BLUE)
	object_event  4,  2, SPRITE_YELLOW, STAY, DOWN, TEXT_CHAMPIONSROOM_RIVAL_MALE
	object_event  4,  2, SPRITE_PINK, STAY, DOWN, TEXT_CHAMPIONSROOM_RIVAL_FEMALE
ELSE
	object_event  4,  2, SPRITE_RED, STAY, DOWN, TEXT_CHAMPIONSROOM_RIVAL_MALE
	object_event  4,  2, SPRITE_GREEN, STAY, DOWN, TEXT_CHAMPIONSROOM_RIVAL_FEMALE
ENDC
	object_event  3,  7, SPRITE_OAK, STAY, UP, TEXT_CHAMPIONSROOM_OAK

	def_warps_to CHAMPIONS_ROOM
