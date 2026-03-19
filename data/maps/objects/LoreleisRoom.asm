	object_const_def
	const_export LORELEISROOM_LORELEI
	const_export LORELEISROOM_SILVER

LoreleisRoom_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 11, INDIGO_PLATEAU_LOBBY, 3
	warp_event  5, 11, INDIGO_PLATEAU_LOBBY, 3
	warp_event  4,  0, BRUNOS_ROOM, 1
	warp_event  5,  0, BRUNOS_ROOM, 2

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_LORELEI, STAY, DOWN, TEXT_LORELEISROOM_LORELEI, OPP_LORELEI, 1
	object_event  5,  2, SPRITE_YOUNGSTER, STAY, DOWN, TEXT_LORELEISROOM_SILVER, OPP_SILVER, 2
	def_warps_to LORELEIS_ROOM
