_ChampionsRoomMaleIntroText::
IF DEF(_BLUE)
	text "YELLOW: You and"
	para "your #MON have"
	line "traveled far and" 
	cont "trained hard" 
	cont "to get here."
	
	para "But the strongest"
	line "bond is not found"
	cont "through battle"
	cont "alone."
	
	para "It's forged in"
	line "the quiet moments"
	cont "and the trust"
	cont "between you and"
	cont "you #MON."
	
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
	text "Your #MON"
	line "looked so happy!"
	
	para "I'm so glad I"
	line "got to see that."
	
	para "Thank you for the"
	line "wonderful battle."
	prompt
ELSE ;RED
	text "That was an"
	line "amazing battle!"
	
	para "You have a good"
	line "team. They really"
	cont "showed their strength."
	
	para "You've got the"
	line "making of a true"
	cont "champion."
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
	text "The battle"
	line "is over."
	
	para "I understand your" 
	line "strategy now."
	
	para "I'll be prepared" 
	line "for the next"
	cont "time we meet."
	prompt
ENDC

_MaleVictoryText::
IF DEF(_BLUE) ;YELLOW
	text "You fought well..."
	
	para "But my bonds with"
	line "my #MON"
	cont "were stronger."
	
	para "Keep training,"
	line "and we’ll have"
	cont "another great battle!"
	prompt
ELSE ;RED
	text "RED: You battled"
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
	text "Not bad, You"
	line "gave me quite" 
	cont "the challenge."
	
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
	text "You understand"
	line "that your victory"
	cont "was not just your"
	cont "own doing!"

	para "The bond you share"
	line "with your #MON"
	cont "is marvelous!"

	para "<PLAYER>,"
	line "Come with me!"
	done
