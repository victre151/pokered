; super rod encounters
SuperRodData:
	; map, fishing group
	dbw PALLET_TOWN,         .Group1
	dbw VIRIDIAN_CITY,       .Group1
	dbw CERULEAN_CITY,       .Group3
	dbw VERMILION_CITY,      .Group4
	dbw CELADON_CITY,        .Group5
	dbw FUCHSIA_CITY,        .Group10
	dbw CINNABAR_ISLAND,     .Group8
	dbw ROUTE_4,             .Group3
	dbw ROUTE_6,             .Group4
	dbw ROUTE_10,            .Group6
	dbw ROUTE_11,            .Group4
	dbw ROUTE_12,            .Group7
	dbw ROUTE_13,            .Group7
	dbw ROUTE_17,            .Group7
	dbw ROUTE_18,            .Group7
	dbw ROUTE_19,            .Group8
	dbw ROUTE_20,            .Group8
	dbw ROUTE_21,            .Group8
	dbw ROUTE_22,            .Group2
	dbw ROUTE_23,            .Group9
	dbw ROUTE_24,            .Group3
	dbw ROUTE_25,            .Group3
	dbw CERULEAN_GYM,        .Group3
	dbw VERMILION_DOCK,      .Group4
	dbw SEAFOAM_ISLANDS_B3F, .Group6
	dbw SEAFOAM_ISLANDS_B4F, .Group6
	dbw SAFARI_ZONE_EAST,    .Group6
	dbw SAFARI_ZONE_NORTH,   .Group6
	dbw SAFARI_ZONE_WEST,    .Group6
	dbw SAFARI_ZONE_CENTER,  .Group6
	dbw CERULEAN_CAVE_2F,    .Group9
	dbw CERULEAN_CAVE_B1F,   .Group9
	dbw CERULEAN_CAVE_1F,    .Group9
	db -1 ; end

; fishing groups
; number of monsters, followed by level/monster pairs

.Group1:
	db 2
	db 5, TENTACOOL
	db 5, POLIWAG

.Group2:
	db 2
	db 3, GOLDEEN
	db 3, POLIWAG

.Group3:
	db 3
	db 9, PSYDUCK
	db 9, GOLDEEN
	db 9, KRABBY

.Group4:
	db 2
	db 19, KRABBY
	db 19, SHELLDER

.Group5:
	db 2
	db 25, POLIWHIRL
	db 25, SLOWPOKE

.Group6:
	db 4
	db 43, DRAGONAIR
	db 43, KINGLER
	db 43, GOLDUCK
	db 43, SLOWBRO

.Group7:
	db 4
	db 39, TENTACRUEL
	db 39, KINGLER
	db 39, SEAKING
	db 39, GYARADOS

.Group8:
	db 4
	db 43, STARMIE
	db 43, SEADRA
	db 43, CLOYSTER
	db 43, SEAKING

.Group9:
	db 4
	db 57, SLOWBRO
	db 57, KINGLER
	db 57, SEADRA
	db 57, LAPRAS

.Group10:
	db 4
	db 39, SEAKING
	db 39, KINGLER
	db 39, GOLDUCK
	db 39, GYARADOS
