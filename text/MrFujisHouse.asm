_MrFujisHouseSuperNerdMrFujiIsntHereText::
	text "That's odd, MR.FUJI"
	line "isn't here."
	cont "Where'd he go?"
	done

_MrFujisHouseSuperNerdMrFujiHadBeenPrayingText::
	text "MR.FUJI had been"
	line "praying alone for"
	cont "CUBONE's mother."
	done

_MrFujisHouseLittleGirlThisIsMrFujisHouseText::
	text "This is really"
	line "MR.FUJI's house."

	para "He's really kind!"

	para "He looks after"
	line "abandoned and"
	cont "orphaned #MON!"
	done

_MrFujisHouseLittleGirlPokemonAreNiceToHugText::
	text "It's so warm!"
	line "#MON are so"
	cont "nice to hug!"
	done

_MrFujisHousePsyduckText::
	text "PSYDUCK: Gwappa!@"
	text_end

_MrFujisHouseNidorinoText::
	text "NIDORINO: Gaoo!@"
	text_end

_MrFujisHouseMrFujiIThinkThisMayHelpYourQuestText::
	text "MR.FUJI: <PLAYER>."

	para "Your #DEX quest"
	line "may fail without"
	cont "love for your"
	cont "#MON."

	para "I think this may"
	line "help your quest."
	prompt

_MrFujisHouseMrFujiReceivedPokeFluteText::
	text "<PLAYER> received"
	line "a @"
	text_ram wStringBuffer
	text "!@"
	text_end

_MrFujisHouseMrFujiPokeFluteExplanationText::
	text_start

	para "Upon hearing #"
	line "FLUTE, sleeping"
	cont "#MON will"
	cont "spring awake."

	para "It works on all"
	line "sleeping #MON."
	done

_MrFujisHouseMrFujiPokeFluteNoRoomText::
	text "You must make"
	line "room for this!"
	done

_MrFujisHouseMrFujiHasMyFluteHelpedYouText::
	text "MR.FUJI: Has my"
	line "FLUTE helped you?"
	done

_MrFujisHouseMrFujiPokedexText::
	text "#MON Monthly"
	line "Grand Prize"
	cont "Drawing!"

	para "The application"
	line "form is..."

	para "Gone! It's been"
	line "clipped out!"
	done

_MrFujiBoxMonText::
IF DEF(_BLUE)
	text "Years ago, I was"
	line "part of an"
	cont "awful project..."

	para "I helped"
	line "TEAM ROCKET"
	cont "create the"
	cont "Legendary MEWTWO."

	para "It broke out and"
	line "found me years"
	cont "later."
	
	para "So I hid it away."

	para "Now you've defeated"
	line "TEAM ROCKET and"
	cont "the ELITE FOUR,"
	cont "so I believe you"
	cont "can give MEWTWO a"
	cont "better future."
	done
ELSE
	text "A long time ago,"
	line "I was part of an"
	cont "awful project..."

	para "TEAM ROCKET was"
	line "searching for the"
	cont "mythical MEW."

	para "I helped them"
	line "find it."

	para "But when I found"
	line "out how they"
	cont "planned to use"
	cont "it's power, I"
	cont "knew I couldn't" 
	cont "let them."

	para "So I took MEW and"
	line "ran away to"
	cont "protect it."

	para "Now you've defeated"
	line "TEAM ROCKET and"
	line "TEAM ROCKET and"
	cont "the ELITE FOUR,"
	cont "so I believe you"
	cont "can give MEW a"
	cont "better future."
	done
ENDC

_MrFujiHasBoxMonText::
IF DEF(_BLUE)	
	text "I see that you" 
	line "and MEWTWO are"
	cont "doing well."
	
	para "I'm glad MEWTWO"
	line "has finally found"
	cont "some peace."
	done
ELSE
	text "I see that you" 
	line "and MEW are doing"
	cont "well."
	
	para "I'm glad MEW has"
	line "finally found"
	cont "some peace."
	done
ENDC