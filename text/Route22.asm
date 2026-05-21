_Route22RivalBeforeBattleText1::
	text "<RIVAL>: Hey!"
	line "<PLAYER>!"

	para "You're going to"
	line "#MON LEAGUE?"

	para "Forget it! You"
	line "probably don't"
	cont "have any BADGEs!"

	para "The guard won't"
	line "let you through!"

	para "By the way, did"
	line "your #MON"
	cont "get any stronger?"
	done

_Route22RivalAfterBattleText1::
	text "I heard #MON"
	line "LEAGUE has many"
	cont "tough trainers!"

	para "I have to figure"
	line "out how to get"
	cont "past them!"

	para "You should quit"
	line "dawdling and get"
	cont "a move on!"
	done

_Route22Rival1DefeatedText::
	text "Awww!"
	line "You just lucked"
	cont "out!"
	prompt

_Route22Rival1VictoryText::
	text "<RIVAL>: What?"
	line "Why do I have 2"
	cont "#MON?"

	para "You should catch"
	cont "some more too!"
	prompt

_Route22Rival2MaleBeforeBattleText::
IF DEF(_BLUE)
	text "YELLOW: <PLAYER>..."
	line "The gate."
	
	para "Every BADGE on"
	line "your jacket..."
	
	para "I have them too."
	line "I still can't"
	cont "believe it."
	
	para "Battling you got"
	line "me this far."
	
	para "One more time"
	line "before we walk"
	cont "in there?"
	cont "For real?"
	done
ELSE
	text "RED: <PLAYER>!"
	line "You made it!"
	
	para "Every BADGE."
	line "I knew"
	cont "you would!"
	
	para "The gate won't"
	line "hold either"
	cont "of us!"
	
	para "One fight,"
	line "Show me you're"
	cont "still sharp!"
	done
ENDC

_Route22Rival2FemaleBeforeBattleText::
IF DEF(_BLUE)
	text "PINK: <PLAYER>!!"
	line "LOOK!!"
	
	para "THE LEAGUE GATE!!"
	line "We're REALLY"
	cont "here!!"
	
	para "You have every"
	line "BADGE too?!"
	
	para "THEN THIS IS IT!!"
	line "Our last warm"
	cont "up before the"
	cont "REAL thing!!"
	
	para "COME ON!!"
	done
ELSE
	text "GREEN: <PLAYER>."
	line "The gate."
	
	para "All BADGEs."
	line "No holes in the"
	cont "route."
	
	para "What waits inside"
	line "won't forgive"
	cont "the same tells."
	
	para "Battle me."
	line "Then go in with"
	cont "a clear plan."
	done
ENDC

_Route22Rival2MaleAfterBattleText::
IF DEF(_BLUE)
	text "YELLOW: Okay..."
	line "I'm ready."
	
	para "I'll see you"
	line "inside,"
	cont "<PLAYER>!"
	
	para "Give them"
	line "everything."
	
	para "I'll try to"
	line "do the same..."
	done
ELSE
	text "RED: Good fight!"
	
	para "I'm ready for"
	line "the ELITE FOUR."
	
	para "You read the"
	line "field well."
	
	para "Keep that up"
	line "in there,"
	cont "<PLAYER>!"
	done
ENDC

_Route22Rival2FemaleAfterBattleText::
IF DEF(_BLUE)
	text "PINK: PHEW!!"
	line "OKAY!!"
	
	para "NOW I'm ready"
	line "for LEAGUE!!"
	
	para "You too,"
	line "<PLAYER>!!"
	
	para "Let's BOTH"
	line "win in there!!"
	
	para "BYEEE!!"
	done
ELSE
	text "GREEN: Done."
	
	para "That was the"
	line "last check."
	
	para "Heal if you must."
	line "Sort your"
	cont "openings."
	
	para "I'll be inside."
	line "Don't stall."
	done
ENDC

_Route22Rival2MaleDefeatedText::
IF DEF(_BLUE) ;YELLOW
	text "You really are"
	line "ready for this!"
	
	para "Good luck"
	line "in there!"
	prompt
ELSE ;RED
	text "Hmph."
	
	para "You read me"
	line "like a book!"
	
	para "Go on."
	line "You've earned"
	cont "it."
	prompt
ENDC

_Route22Rival2MaleVictoryText::
IF DEF(_BLUE) ;YELLOW
	text "I'm sorry..."
	line "I didn't mean"
	cont "to hold you up."
	
	para "Heal up."
	line "You need to be"
	cont "at your best..."
	prompt
ELSE ;RED
	text "You did good!"
	
	para "But not good"
	line "enough!"
	
	para "Train harder"
	line "if you want to"
	cont "hang in there!"
	prompt
ENDC

_Route22Rival2FemaleDefeatedText::
IF DEF(_BLUE) ;PINK
	text "Aww, I lost!"
	
	para "But I'm still"
	line "SO PUMPED!!"
	
	para "Go get 'em,"
	line "<PLAYER>!!"
	prompt
ELSE ;GREEN
	text "Tch."
	
	para "You were faster"
	line "on reads."
	
	para "I'll adjust"
	line "inside."
	prompt
ENDC

_Route22Rival2FemaleVictoryText::
IF DEF(_BLUE) ;PINK
	text "YES!!"
	line "OKAY!!"
	
	para "NOW go win"
	line "in there!!"
	
	para "I'll catch up,"
	line "<PLAYER>!!"
	prompt
ELSE ;GREEN
	text "I called your"
	line "plan too early."
	
	para "Change it up"
	line "before they see"
	cont "the same tells."
	
	para "Train."
	line "Then try again."
	prompt
ENDC

_Route22PokemonLeagueSignText::
	text "#MON LEAGUE"
	line "Front Gate"
	done
