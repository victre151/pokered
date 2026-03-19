_CeruleanCaveRivalBeforeBattleText::
IF DEF(_BLUE)
	text "BROWN: Hey!"
	line "<PLAYER>!"
	cont "Are you looking"
	cont "for the rumored"
	cont "strong #MON"
	cont "too?"

	para "I won't let you"
	line "get to it first!"
	done
ELSE
	text "BLUE: Hey!" 
	line "<PLAYER>!"
	cont "Are you looking"
	cont "for the rumored"
	cont "strong #MON"
	cont "too?"

	para "I won't let you"
	line "get to it first!"
	done
ENDC

_CeruleanCaveRivalDefeatedText::
	text "What!?"
	line "Unbelievable!"
	prompt

_CeruleanCaveRivalVictoryText::
	text "Heh!"
	line "I knew I was"
	cont "the best!"
	prompt

_CeruleanCaveRivalAfterBattleText::
IF DEF(_BLUE)
	text "BROWN: I guess I"
	line "need to keep"
	cont "training."

	para "Good luck"
	line "finding the"
	cont "rumored #MON!"
	done
ELSE
	text "BLUE: I guess I"
	line "need to keep"
	cont "training."

	para "Good luck"
	line "finding the"
	cont "rumored #MON!"
	done
ENDC