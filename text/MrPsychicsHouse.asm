_MoveDeleterGreetingText::
	text "Um… Oh, yes,"
    line "I'm the MOVE"
    cont "DELETER! I can"
    cont "make #MON"
	cont "forget moves."
    done

	text "Shall I make a"
    line "#MON forget?"
	done

_MoveDeleterSaidYesText::
	text "Which #MON?"
    done

_MoveDeleterWhichMoveText::
	text "Which move should"
	line "it forget, then?"
	done

_MoveDeleterConfirmText::
	text "Oh, make it forget"
	line "@"
	text_ram wStringBuffer
	text "?"
	prompt

_MoveDeleterForgotText::
	text "Done! Your"
    line "#MON forgot"
	cont "the move."
	prompt

_MoveDeleterByeText::
	text "Come visit"
    line "me again."
	done

_MoveDeleterOneMoveText::
	text "That #MON knows"
	line "only one move."
	done