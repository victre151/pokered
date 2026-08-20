_Route10SuperNerd1BattleText::
	text "Wow, are you a"
	line "#MANIAC too?"
	cont "Want to see my"
	cont "collection?"
	done

_Route10SuperNerd1EndBattleText::
	text "Humph."
	line "I'm not angry!"
	prompt

_Route10SuperNerd1AfterBattleText::
	text "I have more rare"
	line "#MON at home!"
	done

_Route10Hiker1BattleText::
	text "Ha-hahah-ah-ha!"
	done

_Route10Hiker1EndBattleText::
	text "Ha-haha!"
	line "Not laughing!"
	cont "Ha-hay fever!"
	cont "Haha-ha-choo!"
	prompt

_Route10Hiker1AfterBattleText::
	text "Haha-ha-choo!"
	line "Ha-choo!"
	cont "Snort! Snivel!"
	done

_Route10SuperNerd2BattleText::
	text "Hi kid, want to"
	line "see my #MON?"
	done

_Route10SuperNerd2EndBattleText::
	text "Oh no!"
	line "My #MON!"
	prompt

_Route10SuperNerd2AfterBattleText::
	text "I don't like you"
	line "for beating me!"
	done

_Route10CooltrainerF1BattleText::
	text "I've been to a"
	line "#MON GYM a few"
	cont "times. But, I"
	cont "lost each time."
	done

_Route10CooltrainerF1EndBattleText::
	text "Ohh!"
	line "Blew it again!"
	prompt

_Route10CooltrainerF1AfterBattleText::
	text "I noticed some"
	line "#MANIACs"
	cont "prowling around."
	done

_Route10Hiker2BattleText::
	text "Ah! This mountain"
	line "air is delicious!"
	done

_Route10Hiker2EndBattleText::
	text "That"
	line "cleared my head!"
	prompt

_Route10Hiker2AfterBattleText::
	text "I feel bloated on"
	line "mountain air!"
	done

_Route10CooltrainerF2BattleText::
	text "I'm feeling a bit"
	line "faint from this"
	cont "tough hike."
	done

_Route10CooltrainerF2EndBattleText::
	text "I'm"
	line "not up to it!"
	prompt

_Route10CooltrainerF2AfterBattleText::
	text "The #MON here"
	line "are so chunky!"
	cont "There should be a"
	cont "pink one with a"
	cont "floral pattern!"
	done
	
_Route10RivalMaleText::
IF DEF(_BLUE)
	text "YELLOW: Uh..."
	line "<PLAYER>."
	
	para "I almost hid"
	line "when I saw you."
	
	para "Battling still"
	line "isn't my thing."
	
	para "Could we keep it"
	line "short? I just"
	cont "want to get it"
	cont "over with..."
	done
ELSE
	text "RED: There"
	line "you are!"
	
	para "ROCK TUNNEL will"
	line "eat you alive"
	cont "if you're not"
	cont "strong enough!"
	
	para "Show me that"
	line "you got what"
	cont "it takes!"
	done
ENDC

_Route10RivalFemaleText::
IF DEF(_BLUE)
	text "PINK: <PLAYER>!"
	line "Wait wait WAIT!"
	
	para "I was THIS close"
	line "to running into"
	cont "the # CENTER!"
	
	para "You owe me a"
	line "quick battle"
	cont "before you"
	cont "disappear!"
	done
ELSE
	text "GREEN: Not so"
	line "fast!"
	
	para "Same face, new"
	line "route!"
	
	para "Time to test" 
	line "your strength!"
	done
ENDC

_Route10RivalMaleDefeatedText::
IF DEF(_BLUE) ;YELLOW
	text "...Yeah."
	line "That's enough"
	cont "for me."
	
	para "I'm going to go"
	line "the # CENTER"
	cont "..."
	prompt
ELSE ;RED
	text "Hmph."
	
	para "You read me"
	line "like a book!"
	
	para "I'll train up"
	line "before we cross"
	cont "paths again!"
	prompt
ENDC

_Route10RivalMaleVictoryText::
IF DEF(_BLUE) ;YELLOW
	text "I hate"
	line "that I won"
	cont "like that..."
	
	para "Go heal your"
	line "#MON up." 
	
	para "Please!"
	prompt
ELSE ;RED
	text "You did"
	line "good!"
	
	para "But not"
	line "good enough!"
	
	para "You got to train" 
	line "harder if you"
	cont "want to be"
	cont "in my league!"
	prompt
ENDC

_Route10RivalFemaleDefeatedText::
IF DEF(_BLUE) ;PINK
	text "Nooo, I"
	line "lost!"
	
	para "But I still had"
	line "a blast!"
	
	para "See ya!"
	prompt
ELSE ;GREEN
	text "I'll"
	line "remember how" 
	cont "you fought for"
	cont "next time."
	prompt
ENDC

_Route10RivalFemaleVictoryText::
IF DEF(_BLUE) ;PINK
	text "That was a rush!"
	
	para "Train up and come" 
	line "back for"
	cont "a rematch!"
	prompt
ELSE ;GREEN
	text "Cute try."
	line "Predictable"
	cont "though."
	
	para "Come back sharper"
	line "or don't bother."
	prompt
ENDC

_Route10RivalMalePostBattleText::
IF DEF(_BLUE)
	text "YELLOW: I'm"
	line "heading to" 
	cont "LAVENDER TOWN!"
	
	para "I'm just going to"
	line "hug the wall in"
	cont "ROCK TUNNEL and"
	cont "hope nothing"
	cont "jumps out" 
	cont "at me..."
	done
ELSE
	text "RED: Time to head"
	line "in, wish me luck!"
	done
ENDC

_Route10RivalFemalePostBattleText::
IF DEF(_BLUE)
	text "PINK: # CENTER"
	line "first, then I'm"
	cont "taking on"
	cont "that cave!"
	
	para "Root for me, I'll"
	line "root for you!"
	done
ELSE
	text "GREEN: Lavender's"
	line "on my map next."
	
	para "I'll be curious"
	line "how you handle"
	cont "the path ahead."
	done
ENDC

_Route10BlueText::
	text "BLUE: Hey!" 
	line "<PLAYER>!"
	
	para "I heard there was"
	line "a legendary"
	cont "#MON here,"
	cont "but I couldn't"
	cont "find it..."
	
	para "Guess I'll just"
	line "challenge you"
	cont "to a battle"
	cont "instead!"
	done
	
_Route10BlueDefeatedText::
	text "Tch!"
	
	para "Fine, you win."
	
	para "Your #MON hit"
	line "harder than"
	cont "I remembered!"
	prompt

_Route10BlueVictoryText::
	text "See that?"
	line "That's the gap."
	
	para "You need to Train"
	line "harder before"
	cont "you challenge"
	cont "the future"
	cont "CHAMPION!"
	prompt

_Route10BluePostBattleText::
	text "BLUE: I heard"
	line "that the GYM"
	cont "LEADER in"
	cont "VIRIDIAN CITY"
	cont "is back, so I'm"
	cont "headed there!"
	
	para "Smell ya!"
	done
	
_Route10RockTunnelSignText::
	text "ROCK TUNNEL"
	done

_Route10PowerPlantSignText::
	text "POWER PLANT"
	done
