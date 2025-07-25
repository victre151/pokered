IF DEF(_RED)
DefaultNamesPlayerList:
	db "NEW NAME@"
	db "RED@"
	db "BLUE@"
	db "GREEN@"

DefaultNamesRivalList:
	db "NEW NAME@"
	db "BLUE@"
	db "GREEN@"
	db "RED@"
ENDC

IF DEF(_BLUE)
DefaultNamesPlayerList:
	db "NEW NAME@"
	db "YELLOW@"
	db "BROWN@"
	db "PINK@"

DefaultNamesRivalList:
	db "NEW NAME@"
	db "BROWN@"
	db "PINK@"
	db "YELLOW@"
ENDC
