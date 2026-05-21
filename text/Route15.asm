_Route15CooltrainerF1BattleText::
	text "Let me try out the"
	line "#MON I just"
	cont "got in a trade!"
	done

_Route15CooltrainerF1EndBattleText::
	text "Not"
	line "good enough!"
	prompt

_Route15CooltrainerF1AfterBattleText::
	text "You can't change"
	line "the nickname of"
	cont "any #MON you"
	cont "get in a trade."

	para "Only the Original"
	line "Trainer can."
	done

_Route15CooltrainerF2BattleText::
	text "You look gentle,"
	line "so I think I can"
	cont "beat you!"
	done

_Route15CooltrainerF2EndBattleText::
	text "No,"
	line "wrong!"
	prompt

_Route15CooltrainerF2AfterBattleText::
	text "I'm afraid of"
	line "BIKERs, they look"
	cont "so ugly and mean!"
	done

_Route15CooltrainerM1BattleText::
	text "When I whistle, I"
	line "can summon bird"
	cont "#MON!"
	done

_Route15CooltrainerM1EndBattleText::
	text "Ow!"
	line "That's tragic!"
	prompt

_Route15CooltrainerM1AfterBattleText::
	text "Maybe I'm not cut"
	line "out for battles."
	done

_Route15CooltrainerM2BattleText::
	text "Hmm? My birds are"
	line "shivering! You're"
	cont "good, aren't you?"
	done

_Route15CooltrainerM2EndBattleText::
	text "Just"
	line "as I thought!"
	prompt

_Route15CooltrainerM2AfterBattleText::
	text "Did you know moves"
	line "like EARTHQUAKE"
	cont "don't have any"
	cont "effect on birds?"
	done

_Route15Beauty1BattleText::
	text "Oh, you're a"
	line "little cutie!"
	done

_Route15Beauty1EndBattleText::
	text "You looked"
	line "so cute too!"
	prompt

_Route15Beauty1AfterBattleText::
	text "I forgive you!"
	line "I can take it!"
	done

_Route15Beauty2BattleText::
	text "I raise #MON"
	line "because I live"
	cont "alone!"
	done

_Route15Beauty2EndBattleText::
	text "I didn't"
	line "ask for this!"
	prompt

_Route15Beauty2AfterBattleText::
	text "I just like going"
	line "home to be with"
	cont "my #MON!"
	done

_Route15Biker1BattleText::
	text "Hey kid! C'mon!"
	line "I just got these!"
	done

_Route15Biker1EndBattleText::
	text "Why"
	line "not?"
	prompt

_Route15Biker1AfterBattleText::
	text "You only live"
	line "once, so I live"
	cont "as an outlaw!"
	cont "TEAM ROCKET RULES!"
	done

_Route15Biker2BattleText::
	text "Fork over all your"
	line "cash when you"
	cont "lose to me, kid!"
	done

_Route15Biker2EndBattleText::
	text "That"
	line "can't be true!"
	prompt

_Route15Biker2AfterBattleText::
	text "I was just joking"
	line "about the money!"
	done

_Route15CooltrainerF3BattleText::
	text "What's cool?"
	line "Trading #MON!"
	done

_Route15CooltrainerF3EndBattleText::
	text "I"
	line "said trade!"
	prompt

_Route15CooltrainerF3AfterBattleText::
	text "I trade #MON"
	line "with my friends!"
	done

_Route15CooltrainerF4BattleText::
	text "Want to play with"
	line "my #MON?"
	done

_Route15CooltrainerF4EndBattleText::
	text "I was"
	line "too impatient!"
	prompt

_Route15CooltrainerF4AfterBattleText::
	text "I'll go train with"
	line "weaker people.@"
	text_end
	
_Route15RivalMaleText::
IF DEF(_BLUE)
	text "YELLOW: Hey,"
	line "we're almost at"
	cont "FUCHSIA!"
	
	para "Everyone sounds"
	line "so happy about"
	cont "the SAFARI"
	cont "ZONE..."
	
	para "It makes me"
	line "really sad..."
	
	para "Let's have one"
	line "short battle"
	cont "while it's"
	cont "still just the"
	cont "two of us?"
	done
ELSE
	text "RED: <PLAYER>!"
	
	para "FUCHSIA is next!"
	
	para "The SAFARI ZONE"
	line "and the GYM"
	cont "will both"
	cont "punish you if"
	cont "you freeze up!"
	
	para "Show me you are"
	line "not saving your"
	cont "best stuff"
	cont "for later!"
	done
ENDC
_Route15RivalFemaleText::
IF DEF(_BLUE)
	text "PINK: <PLAYER>!!"
	line "Wait up!!"
	
	para "You are not"
	line "allowed to slip"
	cont "into town"
	cont "before you"
	cont "fight me!!"
	
	para "I still have"
	line "energy to"
	cont "burn!!!"
	done
ELSE
	text "GREEN: FUCHSIA."
	line "Same problem as"
	cont "CELADON."
	
	para "Crowds pull you"
	line "off course"
	cont "before KOGA."
	
	para "Fight me before"
	line "you get"
	cont "distracted!"
	done
ENDC
_Route15RivalMaleDefeatedText::
IF DEF(_BLUE) ;YELLOW
	text "...OK."
	line "Thanks for not"
	cont "dragging it out."
	
	para "I'm still a"
	line "little shaky"
	cont "but battles"
	cont "with you are"
	cont "not too bad..."
	prompt
ELSE ;RED
	text "Hmph..."
	
	para "I'll train more"
	line "before I take"
	cont "on KOGA!"
	prompt
ENDC
_Route15RivalMaleVictoryText::
IF DEF(_BLUE) ;YELLOW
	text "I'm"
	line "sorry..."
	
	para "Rest your team"
	cont "before KOGA..."
	prompt
ELSE ;RED
	text "You gave"
	line "away another"
	cont "free battle!"
	prompt
ENDC
_Route15RivalFemaleDefeatedText::
IF DEF(_BLUE) ;PINK
	text "Ugh, fine!"

	para "You win this one!"
	
	para "I'm still hitting"
	line "the SAFARI ZONE"
	cont "first though!!"
	prompt
ELSE ;GREEN
	text "Hm."
	
	para "You did good!"
	
	para "I'll redo my list"
	line "before the gym."
	prompt
ENDC
_Route15RivalFemaleVictoryText::
IF DEF(_BLUE) ;PINK
	text "YES!!"
	
	para "THAT is how"
	line "you do it!!"
	
	para "It was tough,"
	line "though you're"
	cont "really strong!"
	prompt
ELSE ;GREEN
	text "Easy win."
	
	para "KOGA notices"
	line "things like"
	cont "that, you need"
	cont "to mix it up!"
	prompt
ENDC
_Route15RivalMalePostBattleText::
IF DEF(_BLUE)
	text "YELLOW: I'll see"
	line "you later, I'm"
	cont "going to go"
	cont "for a walk."
	done
ELSE
	text "RED: See you"
	line "around, try not"
	cont "to blow all"
	cont "your cash on"
	cont "SAFARI BALLs"
	cont "first thing!"
	done
ENDC
_Route15RivalFemalePostBattleText::
IF DEF(_BLUE)
	text "PINK: Ok, ok!!"
	
	para "See you in"
	line "FUCHSIA!!"
	
	para "BYEEE!!"
	done
ELSE
	text "GREEN: Done here."
	
	para "Sort your team."
	line "Then move. I will"
	cont "not wait long."
	done
ENDC

_Route15SignText::
	text "ROUTE 15"
	line "West to FUCHSIA"
	cont "CITY"
	done
