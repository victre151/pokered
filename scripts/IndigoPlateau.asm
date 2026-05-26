IndigoPlateau_Script:
	call EnableAutoTextBoxDrawing
	ld hl, IndigoPlateau_ScriptPointers
	ld a, [wIndigoPlateauCurScript]
	jp CallFunctionInTable

IndigoPlateau_ScriptPointers:
	def_script_pointers
	dw_const IndigoPlateauDefaultScript,      SCRIPT_INDIGOPLATEAU_DEFAULT
	dw_const IndigoPlateauPlayerMovingScript, SCRIPT_INDIGOPLATEAU_PLAYER_MOVING

IndigoPlateauDefaultScript:
	CheckEvent EVENT_BEAT_LEAGUE_ROCKETS
	ret z
	ld a, [wYCoord]
	cp 6
	ret nz
	ld a, [wXCoord]
	cp 9
	ret nz
	ld a, TEXT_INDIGOPLATEAU_GUARD
	ldh [hTextID], a
	call DisplayTextID
	ld a, PAD_BUTTONS | PAD_CTRL_PAD
	ld [wJoyIgnore], a
	xor a
	ldh [hJoyHeld], a
	call IndigoPlateauPushPlayerDown
	ld a, SCRIPT_INDIGOPLATEAU_PLAYER_MOVING
	ld [wIndigoPlateauCurScript], a
	ret

IndigoPlateauPushPlayerDown:
	call StartSimulatingJoypadStates
	ld a, $1
	ld [wSimulatedJoypadStatesIndex], a
	ld a, PAD_DOWN
	ld [wSimulatedJoypadStatesEnd], a
	xor a
	ld [wSpritePlayerStateData1FacingDirection], a
	ld [wJoyIgnore], a
	ret

IndigoPlateauPlayerMovingScript:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	call Delay3
	ld a, SCRIPT_INDIGOPLATEAU_DEFAULT
	ld [wIndigoPlateauCurScript], a
	ret

IndigoPlateau_TextPointers:
	def_text_pointers
	dw_const IndigoPlateauGuardText, TEXT_INDIGOPLATEAU_GUARD

IndigoPlateauGuardText:
	text_far _IndigoPlateauGuardText
	text_end