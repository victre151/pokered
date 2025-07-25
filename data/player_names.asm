IF DEF(_RED)
DefaultNamesPlayer:
	db   "NEW NAME"
	next "RED"
	next "BLUE"
	next "GREEN"
	db   "@"

DefaultNamesRival:
	db   "NEW NAME"
	next "BLUE"
	next "GREEN"
	next "RED"
	db   "@"
ENDC

IF DEF(_BLUE)
DefaultNamesPlayer:
	db   "NEW NAME"
	next "YELLOW"
	next "BROWN"
	next "PINK"
	db   "@"

DefaultNamesRival:
	db   "NEW NAME"
	next "BROWN"
	next "PINK"
	next "YELLOW"
	db   "@"
ENDC
