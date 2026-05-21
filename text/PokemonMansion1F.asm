_PokemonMansion1FScientistBattleText::
	text "Who are you? There"
	line "shouldn't be"
	cont "anyone here."
	done

_PokemonMansion1FScientistEndBattleText::
	text "Ouch!"
	prompt

_PokemonMansion1FScientistAfterBattleText::
	text "A key? I don't"
	line "know what you're"
	cont "talking about."
	done

_PokemonMansion1FSwitchText::
	text "A secret switch!"

	para "Press it?"
	done

_PokemonMansion1FSwitchPressedText::
	text "Who wouldn't?"
	prompt

_PokemonMansion1FSwitchNotPressedText::
	text "Not quite yet!"
	done
	
_PokemonMansion1FRivalMale::
IF DEF(_BLUE)
	text "YELLOW: <PLAYER>!"
	line "The floor"
	cont "creaked and I"
	cont "almost ran."
	
	para "We're so far from"
	line "CELADON now..."
	
	para "After this island"
	line "the road gets"
	cont "really short"
	cont "before the end."
	
	para "One quick match,"
	line "then I need to"
	cont "get some air"
	cont "before I lose"
	cont "my nerve..."
	done
ELSE
	text "RED: You smell"
	line "the ash too?"
	
	para "Good."
	
	para "CINNABAR is one"
	line "of the last"
	cont "real stops"
	cont "before things"
	cont "get really"
	cont "tough!"
	
	para "Prove you got"
	line "what it takes!"
	done
ENDC
_PokemonMansion1FRivalFemale::
IF DEF(_BLUE)
	text "PINK: <PLAYER>!!"
	
	para "NO GHOSTING me in"
	line "this creepy OLD"
	cont "ruin!!"
	
	para "If this is NOT a"
	line "horror movie,"
	cont "why do the"
	cont "halls go on"
	cont "forever?!"
	
	para "Battle me RIGHT"
	line "NOW before I"
	cont "lose it"
	cont "completely!!"
	done
ELSE
	text "GREEN: Quiet"
	line "footsteps echo"
	cont "louder here."
	
	para "Slip once this"
	line "late and"
	cont "you waste"
	cont "everything"
	cont "before the"
	cont "LEAGUE."
	
	para "One fight."
	
	para "Show your mind"
	line "isn't clouded."
	done
ENDC
_PokemonMansion1FRivalMaleDefeatedText::
IF DEF(_BLUE) ;YELLOW
	text "...OK."
	line "You win."
	
	para "I'm going to"
	line "step out"
	cont "and breathe."
	
	para "Is our journey"
	line "really almost"
	cont "over...?"
	prompt
ELSE ;RED
	text "Hmph."
	
	para "Next time I will"
	line "be the one with"
	cont "steady legs,"
	cont "not the one"
	cont "watching the"
	cont "dust settle!"
	prompt
ENDC
_PokemonMansion1FRivalMaleVictoryText::
IF DEF(_BLUE) ;YELLOW
	text "I'm"
	line "sorry..."
	
	para "I pushed when you"
	line "were already on"
	cont "edge..."
	
	para "Go heal, we're"
	line "too close to"
	cont "the end for"
	cont "dumb risks..."
	prompt
ELSE ;RED
	text "You moved"
	line "before you"
	cont "looked!"
	
	para "The last stretch"
	line "will not hand"
	cont "that back!"
	
	para "Clean it up"
	cont "before we leave"
	cont "this island!"
	prompt
ENDC
_PokemonMansion1FRivalFemaleDefeatedText::
IF DEF(_BLUE) ;PINK
	text "FINE, you"
	line "win!!"
	
	para "Take your trophy!"
	
	para "I'm sprinting for"
	line "daylight before"
	cont "the walls talk!"
	prompt
ELSE ;GREEN
	text "Hm."
	
	para "You earned that."
	
	para "This place rewards"
	line "patience."
	
	para "Keep that through"
	line "what little"
	cont "road is left."
	prompt
ENDC
_PokemonMansion1FRivalFemaleVictoryText::
IF DEF(_BLUE) ;PINK
	text "YES!! OK!!"
	line "I'm ALIVE!!"
	
	para "Scared but ALIVE"
	line "it still"
	cont "counts!!"
	
	para "Go heal!! We BOTH"
	line "need to be"
	cont "sharp before"
	cont "the REAL"
	cont "finish line!!"
	prompt
ELSE ;GREEN
	text "You saw"
	line "the opening and"
	cont "still froze."
	
	para "Fix it before our"
	line "last warm-up."
	prompt
ENDC
_PokemonMansion1FRivalMalePostBattleText::
IF DEF(_BLUE)
	text "YELLOW: Sunlight"
	line "first, Counting"
	cont "steps until the"
	cont "exit."
	done
ELSE
	text "RED: BLAINE next."
	line "Then the road"
	cont "barely exists."
	
	para "Then silence until"
	line "someone walks"
	cont "onto the"
	cont "summit!"
	done
ENDC
_PokemonMansion1FRivalFemalePostBattleText::
IF DEF(_BLUE)
	text "PINK: I am"
	line "finding the"
	line "EXIT!!"
	done
ELSE
	text "GREEN: BLAINE."
	line "Then Viridian."
	
	para "Remember what you"
	line "have learned."
	done
ENDC