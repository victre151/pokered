_ViridianForestYoungster1Text::
	text "I came here with"
	line "some friends!"

	para "They're out for"
	line "#MON fights!"
	done

_ViridianForestYoungster2BattleText::
	text "Hey! You have"
	line "#MON! Come on!"
	cont "Let's battle'em!"
	done

_ViridianForestYoungster2EndBattleText::
	text "No!"
	line "METAPOD can't"
	cont "cut it!"
	prompt

_ViridianForestYoungster2AfterBattleText::
	text "Ssh! You'll scare"
	line "the bugs away!"
	done

_ViridianForestYoungster3BattleText::
	text "Yo! You can't jam"
	line "out if you're a"
	cont "#MON trainer!"
	done

_ViridianForestYoungster3EndBattleText::
	text "Huh?"
	line "I ran out of"
	cont "#MON!"
	prompt

_ViridianForestYoungster3AfterBattleText::
	text "Darn! I'm going"
	line "to catch some"
	cont "stronger ones!"
	done

_ViridianForestYoungster4BattleText::
	text "Hey, wait up!"
	line "What's the hurry?"
	done

_ViridianForestYoungster4EndBattleText::
	text "I"
	line "give! You're good"
	cont "at this!"
	prompt

_ViridianForestYoungster4AfterBattleText::
	text "Sometimes, you"
	line "can find stuff on"
	cont "the ground!"

	para "I'm looking for"
	line "the stuff I"
	cont "dropped!"
	done

_ViridianForestYoungster5Text::
	text "I ran out of #"
	line "BALLs to catch"
	cont "#MON with!"

	para "You should carry"
	line "extras!"
	done

_ViridianForestTrainerTips1Text::
	text "TRAINER TIPS"

	para "If you want to"
	line "avoid battles,"
	cont "stay away from"
	cont "grassy areas!"
	done

_ViridianForestUseAntidoteSignText::
	text "For poison, use"
	line "ANTIDOTE! Get it"
	cont "at #MON MARTs!"
	done

_ViridianForestTrainerTips2Text::
	text "TRAINER TIPS"

	para "Contact PROF.OAK"
	line "via PC to get"
	cont "your #DEX"
	cont "evaluated!"
	done

_ViridianForestTrainerTips3Text::
	text "TRAINER TIPS"

	para "No stealing of"
	line "#MON from"
	cont "other trainers!"
	cont "Catch only wild"
	cont "#MON!"
	done

_ViridianForestTrainerTips4Text::
	text "TRAINER TIPS"

	para "Weaken #MON"
	line "before attempting"
	cont "capture!"

	para "When healthy,"
	line "they may escape!"
	done

_ViridianForestLeavingSignText::
	text "LEAVING"
	line "VIRIDIAN FOREST"
	cont "PEWTER CITY AHEAD"
	done

_ViridianForestRivalMaleText::
IF DEF(_BLUE)
	text "YELLOW: Hi..."
	line "Sorry, I froze."
	
	para "I don't really"
	line "like battles."
	
	para "Ok, just"
	line "one match."

	para "Please be" 
	line "careful..."
	done
ELSE
	text "RED: Hey there!"
	line "I heard"
	cont "fighting deeper"
	cont "inside the"
	cont "forest."
	
	para "If you're a real"
	line "trainer, show"
	cont "me what"
	cont "you've got!"
	done
ENDC
	
_ViridianForestRivalFemaleText::
IF DEF(_BLUE)
	text "PINK: Hey! Hey!"
	line "Trainer at"
	cont "the exit!"
	
	para "I've been waiting"
	line "for somebody"
	cont "interesting!"
	
	para "Battle me before"
	line "you vanish into"
	cont "the trees!"
	done
ELSE
	text "GREEN: Hold on."
	line "You look sure"
	cont "of yourself."
	
	para "Confidence is"
	line "cheap in"
	cont "this forest."
	
	para "Prove it in a"
	line "battle now!"
	done
ENDC
_ViridianForestRivalMaleDefeatedText::
IF DEF(_BLUE) ;YELLOW
	text "...OK."
	line "You win..."
	
	para "I'll heal my"
	line "#MON now."
	prompt
ELSE ;RED
	text "...Fine."
	line "You win."
	
	para "I'll train harder"
	line "and win"
	cont "next time!"
	prompt
ENDC

_ViridianForestRivalMaleVictoryText::
IF DEF(_BLUE) ;YELLOW
	text "I'm"
	line "sorry..."
	
	para "Please heal"
	line "your #MON."
	prompt
ELSE ;RED
	text "Not good"
	line "enough yet."

	para "You need more"
	line "practice."
	
	para "Train, then come"
	line "find me again."
	prompt
ENDC

_ViridianForestRivalFemaleDefeatedText::
	IF DEF(_BLUE) ;PINK
	text "Aww,"
	line "I lost!"
	
	para "But that was"
	cont "super fun!"
	
	para "Rematch later,"
	line "OK?"
	prompt
ELSE ;GREEN
	text "You're"
	line "better than"
	cont "I expected."
	
	para "Don't expect me"
	line "to say"
	cont "that again."
	prompt
ENDC

_ViridianForestRivalFemaleVictoryText::
IF DEF(_BLUE) ;PINK
	text "I win!"
	line "Good game!"
	
	para "Don't give up"
	cont "train and"
	cont "try again!"
	prompt
ELSE ;GREEN
	text "Too easy!"
	
	para "You weren't"
	line "ready."
	prompt
ENDC
	
_ViridianForestRivalMalePostBattleText::
IF DEF(_BLUE)
	text "YELLOW: You're"
	line "<PLAYER>, right?"
	
	para "I overslept and"
	line "missed the lab."
	
	para "Later I met"
	line "<RIVAL>."

	para "We battled."
	
	para "I'd rather not"
	cont "talk about it."
	done
ELSE
	text "RED: <PLAYER>!"
	line "I've heard that"
	cont "name before!"
	
	para "I got to the lab"
	line "late nobody"
	cont "was there."
	
	para "After that I"
	line "met <RIVAL>."
	
	para "We battled, but"
	line "That's all"
	cont "I'm saying!"
	done
ENDC
	
_ViridianForestRivalFemalePostBattleText::
	IF DEF(_BLUE)
	text "PINK: You're"
	line "<PLAYER>, right?"
	
	para "I missed the lab"
	line "because I woke"
	cont "up late."
	
	para "Then I"
	line "saw <RIVAL>!" 
	
	para "We battled!"
	
	para "It was really"
	line "intense!"
	
	para "I'll tell you the"
	line "details later!"
	done
ELSE
	text "GREEN: <PLAYER>."
	line "Hmm, That"
	cont "makes sense."
	
	para "I missed the lab"
	line "because I"
	cont "was late."
	
	para "I met <RIVAL>."
	
	para "We battled."
	
	para "they lost."
	done
ENDC