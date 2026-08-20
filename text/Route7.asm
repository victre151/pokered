_Route7RivalMaleText::
IF DEF(_BLUE)
	text "YELLOW: Oh,"
	line "It's you..."
	
	para "CELADON's right"
	line "ahead, and it's"
	cont "so loud already..."
	
	para "I'm trying to"
	line "steady myself"
	cont "for the GYM."
	
	para "One short match"
	line "before I walk"
	cont "in there"
	cont "for real?"
	done
ELSE
	text "RED: Hey!"
	line "<PLAYER>!"
	
	para "You heading to"
	line "the GYM too?"
	
	para "Prove your team"
	line "isn't rusty"
	cont "from all"
	cont "the walking!"
	done
ENDC
	
_Route7RivalFemaleText::
IF DEF(_BLUE)
	text "PINK: Wait, wait,"
	line "WAIT!"
	
	para "<PLAYER>!"
	
	para "We're almost at"
	line "CELADON!"
	
	para "Battle me"
	line "before I go" 
	cont "to the GYM!"
	done
ELSE
	text "GREEN: There"
	line "you are again."
	
	para "CELADON pulls"
	line "trainers off"
	cont "task before"
	cont "the GYM."
	
	para "I'll see if"
	line "you're strong"
	cont "enough to"
	cont "face ERIKA!"
	done
ENDC
	
_Route7RivalMaleDefeatedText::
IF DEF(_BLUE) ;YELLOW
	text "I'm going"
	line "to go calm down"
	cont "and breathe"
	cont "before I go"
	cont "to the GYM..."
	prompt
ELSE ;RED
	text "...Fine."
	
	para "You win this one."
	
	para "I'll just have to"
	line "train even"
	cont "harder to get"
	cont "that BADGE!"
	prompt
ENDC
_Route7RivalMaleVictoryText::
IF DEF(_BLUE) ; YELLOW
	text "I... I"
	line "really thought"
	cont "I'd mess that"
	cont "one up!"
	
	para "Stock up before"
	line "the GYM if you"
	cont "need to, OK?"
	prompt
ELSE ;RED
	text "That's what"
	line "I wanted"
	cont "to see!"
	
	para "You pause for one"
	line "beat and I take"
	cont "the opening!"
	
	para "Don't repeat that"
	line "mistake inside"
	cont "the GYM!"
	prompt
ENDC
	
_Route7RivalFemaleDefeatedText::
IF DEF(_BLUE) ;PINK
	text "OK, OK, you"
	line "totally earned"
	cont "that win!"
	
	para "I'll play a few"
	line "rounds at the"
	cont "GAME CORNER,"
	cont "then go" 
	cont "to the GYM!"
	prompt
ELSE ;GREEN
	text "Tch."
	line "You were faster"
	cont "on reads."
	
	para "I'll tighten up"
	line "before the GYM."
	prompt
ENDC
_Route7RivalFemaleVictoryText::
IF DEF(_BLUE) ;PINK
	text "Yes, yes,"
	line "YES!"
	
	para "What a rush!"
	
	para "That was an"
	line "amazing battle!"
	prompt
ELSE ;GREEN
	text "I called"
	line "your plan"
	cont "too early."
	
	para "Change it up"
	line "before ERIKA sees"
	cont "the same tells."
	prompt
ENDC
_Route7RivalMalePostBattleText::
IF DEF(_BLUE)
	text "YELLOW: If I"
	line "freeze at the"
	cont "door, pretend"
	cont "you just didn't"
	cont "see it..."
	done
ELSE
	text "RED: See you"
	line "later!"
	
	para "Don't let"
	line "CELADON take up"
	cont "your whole day!"
	done
ENDC
_Route7RivalFemalePostBattleText::
IF DEF(_BLUE)
	text "PINK: Ok ok I'm"
	line "outta here!!"
	
	para "Byeee!"
	done
ELSE
	text "GREEN: Badge"
	line "first."
	
	para "Then FUCHSIA."
	line "No side trips."
	
	para "If you stall in"
	line "CELADON too"
	cont "long, I'll"
	cont "be gone."
	done
ENDC
	
_Route7UndergroundPathSignText::
	text "UNDERGROUND PATH"
	line "CELADON CITY -"
	cont "LAVENDER TOWN"
	done
