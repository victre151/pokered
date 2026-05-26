_ChampionsRoomMaleIntroText::
IF DEF(_BLUE)
	text "YELLOW: You and"
	line "your #MON"
	cont "have traveled" 
	cont "far and trained" 
	cont "hard to"
	cont "get here."
	
	para "But the strongest"
	line "bond is not"
	cont "found through"
	cont "battle alone."
	
	para "It's forged in"
	line "the quiet moments"
	cont "and the trust"
	cont "between you and"
	cont "your #MON."
	
	para "Let me see if"
	line "your heart truly"
	cont "matches your"
	cont "strength!"
	done
ELSE
	text "RED: So you are"
	line "the new"
	cont "challenger!"
	
	para "I see the"
	line "determination in"
	cont "your eyes."
	
	para "It's impressive!"
	
	para "But many trainers" 
	line "have that look" 
	cont "and not all of" 
	cont "them make it."
	
	para "Let's see if"
	line "you have what"
	cont "it takes!"
	done
ENDC

_ChampionsRoomFemaleIntroText::
IF DEF(_BLUE)
	text "PINK: The"
	line "rumors are true!"
	
	para "I'm soo glad you"
	line "made it here."
	
	para "But the strength"
	line "that got you"
	cont "here Isn't just"
	cont "your own."
	
	para "It's from the"
	line "bonds you've"
	cont "built with"
	cont "your #MON."
	
	para "Show me how"
	line "strong those"
	cont "bonds are!"
	done
ELSE
	text "GREEN: I see the"
	line "fire in"
	cont "your eyes."
	
	para "It burns bright."
	
	para "But a fire without"
	line "control will"
	cont "burn out!"
	
	para "I will show" 
	line "you how I"
	cont "control mine!"
	done
ENDC

_BoyDefeatedText::
IF DEF(_BLUE) ;YELLOW
	text "Your"
	line "#MON looked"
	cont "so happy!"
	
	para "I'm so glad I"
	line "got to see that!"
	
	para "Thank you for the"
	line "wonderful battle!"
	prompt
ELSE ;RED
	text "That was an"
	line "amazing battle!"
	
	para "You have a good"
	line "team! They"
	cont "really showed"
	cont "their strength!"
	
	para "You've got the"
	line "making of a true"
	cont "champion!"
	prompt
ENDC

_GirlDefeatedText::
IF DEF(_BLUE) ;PINK
	text "Wow, That"
	line "was a"
	cont "fantastic battle!"
	
	para "I had so"
	line "much fun!"
	
	para "I'm glad we could"
	line "have this match!"
	prompt
ELSE ;GREEN
	text "The"
	line "battle is over."
	
	para "I understand your" 
	line "strategy now."
	
	para "I'll be prepared" 
	line "for the next"
	cont "time we meet."
	prompt
ENDC

_MaleVictoryText::
IF DEF(_BLUE) ;YELLOW
	text "You"
	line "fought well..."
	
	para "But my bonds with"
	line "my #MON"
	cont "were stronger."
	
	para "Keep training,"
	line "and we’ll have"
	cont "another great battle!"
	prompt
ELSE ;RED
	text "You battled"
	line "with great skill!"
	
	para "I had to push"
	line "myself to the limit,"
	cont "and I came out"
	cont "ahead this time."
	
	para "Next time, I’ll give"
	line "you an even fight!"
	prompt
ENDC

_FemaleVictoryText::
IF DEF(_BLUE) ;PINK
	text "That was a"
	line "fantastic match!"
	
	para "But this time, I"
	line "came out on top."
	
	para "Your #MON are "
	line "strong, I’ll be"
	cont "ready for our" 
	cont "next battle!"
	prompt
ELSE ;GREEN
	text "Not bad," 
	line "You gave me" 
	cont "quite the"
	cont "challenge."
	
	para "But my strategy"
	line "was better."
	
	para "Train hard, and"
	line "we’ll meet again!"
	prompt
ENDC

_ChampionsRoomBoyAfterBattleText::
IF DEF(_BLUE)
	text "YELLOW: Your" 
	line "strength is"
	cont "amazing..."
	
	para "But I know you'll"
	line "use it for the"
	cont "right reasons!"
	done
ELSE
	text "RED: You pushed"
	line "me to my limit!" 
	
	para "I'll have to keep"
	line "training, so"
	cont "let's face each" 
	cont "other again!"
	done
ENDC
	
_ChampionsRoomGirlAfterBattleText::
IF DEF(_BLUE)
	text "PINK: You did" 
	line "good, but don't"
	cont "get too comfy!"
	
	para "I'll surprise"
	line "you next time!"
	done
ELSE
	text "GREEN: I see what"
	line "I need to"
	cont "work on."

	para "Don't think this"
	line "means you've"
	cont "surpassed me."
	done
ENDC

_ChampionsRoomOakText::
	text "OAK: <PLAYER>!"
	done

_ChampionsRoomOakCongratulatesPlayerText::
	text "OAK: I saw"
	line "your battle"
	cont "just now..."
	
	para "It was"
	line "incredible!"
	
	para "What an amazing"
	line "display of"
	cont "strength and"
	cont "spirit from"
	cont "you two!"

	para "Both of you have"
	line "grown beyond"
	cont "anything I could"
	cont "have imagined!"
	
	para "I've never"
	line "witnessed such a"
	cont "clash of"
	cont "trainers before!"
	done

_ChampionsRoomOakDisappointedWithRivalText::
	text "OAK: So, it is"
	line "decided!"
	
	para "<PLAYER>, you are"
	line "the new"
	cont "#MON LEAGUE"
	cont "CHAMPION!"
	
	para "This victory will"
	line "stand as proof of"
	cont "your strength and"
	cont "spirit!"
	done
	
_ChampionsRoomOakComeWithMeText::
	text "OAK: <PLAYER>!"
	
	para "You understand"
	line "that your victory"
	cont "was not just your"
	cont "own doing!"

	para "The bond you share"
	line "with your #MON"
	cont "is marvelous!"

	para "<PLAYER>,"
	line "Come with me!"
	done

_ChampionsRoomArcherIntro::
	text "So, you've made"
	line "it to the very"
	cont "top."
	para "The ELITE FOUR"
	line "are gone. The"
	cont "CHAMPION is"
	cont "nowhere to be"
	cont "found."
	para "I am ARCHER,"
	line "and I lead this"
	cont "new order!"
	para "The LEAGUE now"
	line "belongs to"
	cont "TEAM ROCKET!"
	done

_ChampionsRoomArcherDefeated::
	text "..."
	prompt
	
_ChampionsRoomArcherAfterBattle::
	text "You may"
	line "have defeated"
	cont "me, but"
	cont "TEAM ROCKET"
	cont "will be back!"
	prompt

_ChampionsRoomArcherVictory::
	text "As expected."
	line "The old era is"
	cont "finished."
	prompt

_ChampionsRoomRocketsOakText::
	text "OAK: <PLAYER>!"
	line "You're safe!"
	done

_ChampionsRoomOakBeatRockets::
	text "OAK: I just"
	line "finished securing"
	cont "the ELITE FOUR."
	para "They're being"
	line "moved to a"
	cont "safe location."
	text "I see you"
	line "handled things"
	cont "on this end."
	para "With ARCHER"
	line "defeated, their"
	cont "command chain"
	cont "is shattered."
	done

_ChampionsRoomFollowOakRocketsText::
	text "OAK: Come,"
	line "<PLAYER>!"
	para "You have saved"
	line "KANTO this day."
	para "Your victory"
	line "must be"
	cont "recorded!"
	done
	
_ChampionsRoomMaleRematchIntroText::
IF DEF(_BLUE)
	text "YELLOW: Oh!"
	line "<PLAYER>!"
	
	para "You made it!"
	
	para "When the LEAGUE"
	line "opened, I came"
	cont "up from the LAB."
	
	para "No one else was"
	line "here, so OAK's"
	cont "aide said I had"
	cont "to stand in as"
	cont "CHAMPION."
	
	para "I'm not trying"
	line "to take your"
	cont "title!"
	
	para "But I still have"
	line "to battle you!"
	done
ELSE
	text "RED: <PLAYER>."
	line "You're here."
	
	para "The LEAGUE"
	line "reopened. I left"
	cont "the LAB."
	
	para "I was posted"
	line "here as interim"
	cont "CHAMPION."
	
	para "You're the real"
	line "one."
	
	para "Let's get this"
	line "over with."
	done
ENDC

_ChampionsRoomFemaleRematchIntroText::
IF DEF(_BLUE)
	text "PINK: <PLAYER>!!"
	line "You're FINALLY"
	cont "here!!"
	
	para "I ran from the"
	line "LAB when the"
	cont "LEAGUE opened!"
	
	para "They needed"
	line "SOMEBODY at the"
	cont "top, so I'm the"
	cont "interim CHAMPION!"
	
	para "NOT for real!"
	line "That's YOU!"
	
	para "But I still gotta"
	line "fight you!"
	done
ELSE
	text "GREEN: <PLAYER>."
	line "You have arrived."
	
	para "I departed the"
	line "LAB when the"
	cont "LEAGUE reopened."
	
	para "With no holder"
	line "present, I was"
	cont "named interim"
	cont "CHAMPION."
	
	para "The title is"
	line "yours."
	
	para "I await our"
	line "match."
	done
ENDC

_ChampionsRoomBoyRematchDefeatedText::
IF DEF(_BLUE) ;YELLOW
	text "There you"
	line "go!"
	
	para "The real"
	line "CHAMPION!"
	
	para "That was a"
	line "great battle!"
	prompt
ELSE ;RED
	text "Good."
	line "You're back."
	para "Well fought."
	prompt
ENDC

_ChampionsRoomGirlRematchDefeatedText::
IF DEF(_BLUE) ;PINK
	text "YES!"
	line "You're the"
	cont "CHAMPION!"
	para "That was SO"
	line "much fun!"
	prompt
ELSE ;GREEN
	text "As it"
	line "should be."
	para "Well done."
	prompt
ENDC

_ChampionsRoomMaleRematchVictoryText::
IF DEF(_BLUE) ;YELLOW
	text "W-wait..."
	
	para "does that mean"
	line "I'm the actual"
	cont "CHAMPION now?!"
	prompt
ELSE ;RED
	text "That can't"
	line "be right..."
	prompt
ENDC

_ChampionsRoomFemaleRematchVictoryText::
IF DEF(_BLUE) ;PINK
	text "I WON?! I'm"
	line "CHAMPION?!"
	prompt
ELSE ;GREEN
	text "A momentary"
	line "result."
	prompt
ENDC

_ChampionsRoomMaleRematchAfterBattleText::
IF DEF(_BLUE)
	text "YELLOW: You don't"
	line "stay here long,"
	cont "do you?"

	para "That's fine."
	line "I'll be here if"
	cont "anyone comes."
	done
ELSE
	text "RED: Wandering"
	line "CHAMPION!"

	para "I'll keep the"
	line "seat warm"
	cont "for you!"
	done
ENDC

_ChampionsRoomFemaleRematchAfterBattleText::
IF DEF(_BLUE)
	text "PINK: Go be the"
	line "champ out there!"

	para "I'll handle"
	line "anyone who"
	cont "shows up here!"
	done
ELSE
	text "GREEN: Take your"
	line "leave, <PLAYER>."

	para "I shall remain"
	line "for challengers."
	done
ENDC

_ChampionsRoomOakRematchArrivesText::
	text "OAK: <PLAYER>!"
	line "I saw that"
	cont "whole battle!"

	para "Welcome back,"
	line "CHAMPION!"
	done
_ChampionsRoomOakRematchCongratulatesPlayerText::
	text "OAK: Incredible!"
	line "Both of you"
	cont "were marvelous!"

	para "The LEAGUE is"
	line "in good hands!"
	done
_ChampionsRoomOakRematchComeWithMeText::
	text "OAK: <PLAYER>,"
	line "come with me!"

	para "The HALL OF FAME"
	line "awaits!"
	done