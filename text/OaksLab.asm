_OaksLabRivalGrampsIsntAroundText::
	text "<RIVAL>: Yo"
	line "<PLAYER>! Gramps"
	cont "isn't around!"
	done

_OaksLabRivalGoAheadAndChooseText::
	text "<RIVAL>: Heh, I"
	line "don't need to be"
	cont "greedy like you!"

	para "Go ahead and"
	line "choose, <PLAYER>!"
	done

_OaksLabRivalMyPokemonLooksStrongerText::
	text "<RIVAL>: My"
	line "#MON looks a"
	cont "lot stronger."
	done

_OaksLabThoseArePokeBallsText::
	text "Those are #"
	line "BALLs. They"
	cont "contain #MON!"
	done

_OaksLabYouWantCharmanderText::
	text "So! You want the"
IF DEF(_RED)
	line "seed #MON,"
ENDC
IF DEF(_BLUE)
	line "mouse #MON,"
ENDC
	cont "@"
	text_ram wNameBuffer
	text "?@"
	text_end

_OaksLabYouWantSquirtleText::
	text "So! You want the"
IF DEF(_RED)
	line "lizard #MON,"
ENDC
IF DEF(_BLUE)
	line "evolution #MON,"
ENDC
	cont "@"
	text_ram wNameBuffer
	text "?@"
	text_end

_OaksLabYouWantBulbasaurText::
	text "So! You want the"
IF DEF(_RED)
	line "turtle #MON,"
ENDC
IF DEF(_BLUE)
	line "fairy #MON,"
ENDC
	cont "@"
	text_ram wNameBuffer
	text "?@"
	text_end

_OaksLabMonEnergeticText::
	text "This #MON is"
	line "really energetic!"
	prompt

_OaksLabReceivedMonText::
	text "<PLAYER> received"
	line "a @"
	text_ram wNameBuffer
	text "!@"
	text_end

_OaksLabLastMonText::
	text "That's PROF.OAK's"
	line "last #MON!"
	done

_OaksLabOak1WhichPokemonDoYouWantText::
	text "OAK: Now, <PLAYER>,"
	line "which #MON do"
	cont "you want?"
	done

_OaksLabOak1YourPokemonCanFightText::
	text "OAK: If a wild"
	line "#MON appears,"
	cont "your #MON can"
	cont "fight against it!"
	done

_OaksLabOak1RaiseYourYoungPokemonText::
	text "OAK: <PLAYER>,"
	line "raise your young"
	cont "#MON by making"
	cont "it fight!"
	done

_OaksLabOak1DeliverParcelText::
	text "OAK: Oh, <PLAYER>!"

	para "How is my old"
	line "#MON?"

	para "Well, it seems to"
	line "like you a lot."

	para "You must be"
	line "talented as a"
	cont "#MON trainer!"

	para "What? You have"
	line "something for me?"

	para "<PLAYER> delivered"
	line "OAK's PARCEL.@"
	text_end

_OaksLabOak1ParcelThanksText::
	text_start
	para "Ah! This is the"
	line "custom # BALL"
	cont "I ordered!"
	cont "Thank you!"
	done

_OaksLabOak1PokemonAroundTheWorldText::
	text "#MON around the"
	line "world wait for"
	cont "you, <PLAYER>!"
	done

_OaksLabOak1ReceivedPokeballsText::
	text "OAK: You can't get"
	line "detailed data on"
	cont "#MON by just"
	cont "seeing them."

	para "You must catch"
	line "them! Use these"
	cont "to capture wild"
	cont "#MON."

	para "<PLAYER> got 5"
	line "# BALLs!@"
	text_end

_OaksLabGivePokeballsExplanationText::
	text_start
	para "When a wild"
	line "#MON appears,"
	cont "it's fair game."

	para "Just throw a #"
	line "BALL at it and"
	cont "try to catch it!"

	para "This won't always"
	line "work, though."

	para "A healthy #MON"
	line "could escape. You"
	cont "have to be lucky!"
	done

_OaksLabOak1ComeSeeMeSometimesText::
	text "OAK: Come see me"
	line "sometimes."

	para "I want to know how"
	line "your #DEX is"
	cont "coming along."
	done

_OaksLabOak1HowIsYourPokedexComingText::
	text "OAK: Good to see "
	line "you! How is your "
	cont "#DEX coming? "
	cont "Here, let me take"
	cont "a look!"
	prompt

_OaksLabPokedexText::
	text "It's encyclopedia-"
	line "like, but the"
	cont "pages are blank!"
	done

_OaksLabOak2Text::
	text "?"
	done

_OaksLabGirlText::
	text "PROF.OAK is the"
	line "authority on"
	cont "#MON!"

	para "Many #MON"
	line "trainers hold him"
	cont "in high regard!"
	done

_OaksLabRivalFedUpWithWaitingText::
	text "<RIVAL>: Gramps!"
	line "I'm fed up with"
	cont "waiting!"
	done

_OaksLabOakChooseMonText::
	text "OAK: <RIVAL>?"
	line "Let me think..."

	para "Oh, that's right,"
	line "I told you to"
	cont "come! Just wait!"

	para "Here, <PLAYER>!"

	para "There are 3"
	line "#MON here!"

	para "Haha!"

	para "They are inside"
	line "the # BALLs."

	para "When I was young,"
	line "I was a serious"
	cont "#MON trainer!"

	para "In my old age, I"
	line "have only 3 left,"
	cont "but you can have"
	cont "one! Choose!"
	done

_OaksLabRivalWhatAboutMeText::
	text "<RIVAL>: Hey!"
	line "Gramps! What"
	cont "about me?"
	done

_OaksLabOakBePatientText::
	text "OAK: Be patient!"
	line "<RIVAL>, you can"
	cont "have one too!"
	done

_OaksLabOakDontGoAwayYetText::
	text "OAK: Hey! Don't go"
	line "away yet!"
	done

_OaksLabRivalIllTakeThisOneText::
	text "<RIVAL>: I'll take"
	line "this one, then!"
	done

_OaksLabRivalReceivedMonText::
	text "<RIVAL> received"
	line "a @"
	text_ram wNameBuffer
	text "!@"
	text_end

_OaksLabRivalIllTakeYouOnText::
	text "<RIVAL>: Wait"
	line "<PLAYER>!"
	cont "Let's check out"
	cont "our #MON!"

	para "Come on, I'll take"
	line "you on!"
	done

_OaksLabRivalIPickedTheWrongPokemonText::
	text "WHAT?"
	line "Unbelievable!"
	cont "I picked the"
	cont "wrong #MON!"
	prompt

_OaksLabRivalAmIGreatOrWhatText::
	text "<RIVAL>: Yeah! Am"
	line "I great or what?"
	prompt

_OaksLabRivalSmellYouLaterText::
	text "<RIVAL>: Okay!"
	line "I'll make my"
	cont "#MON fight to"
	cont "toughen it up!"

	para "<PLAYER>! Gramps!"
	line "Smell you later!"
	done

_OaksLabRivalGrampsText::
	text "<RIVAL>: Gramps!"
	done

_OaksLabRivalWhatDidYouCallMeForText::
	text "<RIVAL>: What did"
	line "you call me for?"
	done

_OaksLabOakIHaveARequestText::
	text "OAK: Oh right! I"
	line "have a request"
	cont "of you two."
	done

_OaksLabOakMyInventionPokedexText::
	text "On the desk there"
	line "is my invention,"
	cont "#DEX!"

	para "It automatically"
	line "records data on"
	cont "#MON you've"
	cont "seen or caught!"

	para "It's a hi-tech"
	line "encyclopedia!"
	done

_OaksLabOakGotPokedexText::
	text "OAK: <PLAYER> and"
	line "<RIVAL>! Take"
	cont "these with you!"

	para "<PLAYER> got"
	line "#DEX from OAK!@"
	text_end

_OaksLabOakThatWasMyDreamText::
	text "To make a complete"
	line "guide on all the"
	cont "#MON in the"
	cont "world..."

	para "That was my dream!"

	para "But, I'm too old!"
	line "I can't do it!"

	para "So, I want you two"
	line "to fulfill my"
	cont "dream for me!"

	para "Get moving, you"
	line "two!"

	para "This is a great"
	line "undertaking in"
	cont "#MON history!"
	done

_OaksLabRivalLeaveItAllToMeText::
	text "<RIVAL>: Alright"
	line "Gramps! Leave it"
	cont "all to me!"

	para "<PLAYER>, I hate to"
	line "say it, but I"
	cont "don't need you!"

	para "I know! I'll"
	line "borrow a TOWN MAP"
	cont "from my sis!"

	para "I'll tell her not"
	line "to lend you one,"
	cont "<PLAYER>! Hahaha!"
	done

_OaksLabScientistText::
	text "I study #MON as"
	line "PROF.OAK's AIDE."
	done

_OaksLabPokedexRivalHowIsDexMaleText::
IF DEF(_BLUE)
	text "YELLOW: Um."
	line "OAK wanted help"
	cont "with checking"
	cont "the #DEX's"
	cont "while he's at"
	cont "VIRIDIAN GYM."
	
	para "Everyone else"
	line "turned theirs"
	cont "in already."
	
	para "I guess that"
	line "leaves you,"
	cont "<PLAYER>."
	
	para "How is it"
	line "coming along?"
	
	para "Could I see"
	line "it for a"
	cont "moment?"
	prompt
ELSE
	text "RED: Hey,"
	line "<PLAYER>!"
	
	para "OAK's tied up at"
	line "VIRIDIAN GYM."
	
	para "He asked me to"
	line "help with the"
	cont "#DEX checks"
	cont "here!"
	
	para "You're the only"
	line "holder still"
	cont "working on it."
	
	para "Mind if I take"
	line "a look?"
	prompt
ENDC

_OaksLabPokedexRivalHowIsDexFemaleText::
IF DEF(_BLUE)
	text "PINK: Oh good,"
	line "you're here!"
	
	para "OAK stuck me"
	line "on #DEX duty"
	cont "while he's"
	cont "at the GYM!"
	
	para "Everyone else"
	line "finished ages"
	cont "ago!"
	
	para "So YOU'RE the"
	line "last one left,"
	cont "<PLAYER>!"
	
	para "How's it"
	line "looking?"
	
	para "Can I check?"
	prompt
ELSE
	text "GREEN: OAK is"
	line "at VIRIDIAN"
	cont "GYM."
	
	para "I was asked "
	line "to handle the"
	cont "#DEX checks."
	
	para "Every other"
	line "holder has"
	cont "finished."
	
	para "That leaves you,"
	line "<PLAYER>."
	
	para "May I see your"
	line "#DEX?"
	prompt
ENDC

_OaksLabPokedexRivalLeagueReopenedMaleText::
IF DEF(_BLUE)
	text "YELLOW: You"
	line "really filled"
	cont "the whole"
	cont "thing!"
	
	para "I was here so"
	line "long, I only"
	cont "just heard that"
	cont "the #MON"
	cont "LEAGUE opened"
	cont "back up!"
	
	para "I should head"
	line "out soon."
	
	para "Take care,"
	line "<PLAYER>!"
	done
ELSE
	text "RED: ...Huh."
	line "You actually"
	cont "did it."
	
	para "Full #DEX."
	line "Nice work."
	
	para "I'm good to go."
	
	para "I heard on the"
	line "news the LEAGUE"
	cont "opened again!"
	
	para "I'll catch you"
	line "later, <PLAYER>!"
	done
ENDC

_OaksLabPokedexRivalLeagueReopenedFemaleText::
IF DEF(_BLUE)
	text "PINK: NO WAY!!"
	line "YOU DID IT!!"
	
	para "The whole"
	line "#DEX!!"
	
	para "I'm FINALLY done"
	line "with this lab!!"
	
	para "OH!! And guess"
	line "what I heard?!"
	
	para "The LEAGUE's"
	line "OPEN again!!"
	
	para "I'm outta here,"
	line "<PLAYER>!!"
	done
ELSE
	text "GREEN: It is" 
	line "complete."
	
	para "I may leave the"
	line "lab now."
	
	para "Word reached me"
	line "that the LEAGUE"
	cont "has reopened."
	done
ENDC

_OaksLabPokedexRivalIncompleteMaleText::
IF DEF(_BLUE)
	text "YELLOW: Hmm..."
	line "Still some"
	cont "empty pages."
	para "Keep at it!"
	line "Come back when"
	cont "it's filled!"
	done
ELSE
	text "RED: Not done"
	line "yet."
	para "Finish the"
	line "#DEX and show"
	cont "me again."
	done
ENDC

_OaksLabPokedexRivalIncompleteFemaleText::
IF DEF(_BLUE)
	text "PINK: Aww,"
	line "not finished!"
	para "Fill it out"
	line "and come back!"
	done
ELSE
	text "GREEN: You still"
	line "have gaps."
	para "See me again"
	line "when it's"
	cont "complete!"
	done
ENDC
