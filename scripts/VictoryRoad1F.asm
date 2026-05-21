VictoryRoad1F_Script:
	ld hl, wCurrentMapScriptFlags
	bit BIT_CUR_MAP_LOADED_1, [hl]
	res BIT_CUR_MAP_LOADED_1, [hl]
	call nz, .next
	call EnableAutoTextBoxDrawing
	ld hl, VictoryRoad1TrainerHeaders
	ld de, VictoryRoad1F_ScriptPointers
	ld a, [wVictoryRoad1FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wVictoryRoad1FCurScript], a
	ret
.next
	CheckEvent EVENT_VICTORY_ROAD_1_BOULDER_ON_SWITCH
	ret z
	ld a, $1d
	ld [wNewTileBlockID], a
	lb bc, 6, 4
	predef_jump ReplaceTileBlock

VictoryRoad1F_ScriptPointers:
	def_script_pointers
	dw_const VictoryRoad1FDefaultScript,            SCRIPT_VICTORYROAD1F_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_VICTORYROAD1F_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_VICTORYROAD1F_END_BATTLE
	dw_const VictoryRoad1FRivalStartBattleScript,   SCRIPT_VICTORYROAD1F_RIVAL_START_BATTLE
	dw_const VictoryRoad1FRivalAfterBattleScript,   SCRIPT_VICTORYROAD1F_RIVAL_AFTER_BATTLE
	dw_const VictoryRoad1FRivalExitScript,          SCRIPT_VICTORYROAD1F_RIVAL_EXIT

VictoryRoad1FDefaultScript:
	CheckEvent EVENT_BEAT_VICTORY_ROAD_1F_RIVAL
	jr nz, .noRival
	ld hl, .RivalTriggerCoords
	call ArePlayerCoordsInArray
	jr nc, .noRival
	ld a, [wCoordIndex]
	ld [wSavedCoordIndex], a
	
	ld a, VICTORYROAD1F_RIVAL
	ld [wEmotionBubbleSpriteIndex], a
	xor a
	ld [wWhichEmotionBubble], a
	predef EmotionBubble
	
	ld a, SFX_STOP_ALL_MUSIC
	ld [wNewSoundID], a
	call PlaySound
	farcall Music_RivalAlternateTempo
	
	ld a, [wSavedCoordIndex]
	cp 2
	jr z, .approach2
	cp 3
	jr z, .approach3
	ld de, VictoryRoad1FRivalApproachPath1
	jr .doApproach
.approach2
	ld de, VictoryRoad1FRivalApproachPath2
	jr .doApproach
.approach3
	ld de, VictoryRoad1FRivalApproachPath3
.doApproach
	ld a, VICTORYROAD1F_RIVAL
	ldh [hSpriteIndex], a
	call MoveSprite
	
	ld a, SCRIPT_VICTORYROAD1F_RIVAL_START_BATTLE
	ld [wVictoryRoad1FCurScript], a
	ld [wCurMapScript], a
	ret
	
.noRival
	CheckEvent EVENT_VICTORY_ROAD_1_BOULDER_ON_SWITCH
	jp nz, CheckFightingMapTrainers
	ld hl, .SwitchCoords
	call CheckBoulderCoords
	jp nc, CheckFightingMapTrainers
	ld hl, wCurrentMapScriptFlags
	set BIT_CUR_MAP_LOADED_1, [hl]
	SetEvent EVENT_VICTORY_ROAD_1_BOULDER_ON_SWITCH
	ret

.RivalTriggerCoords
	dbmapcoord  8, 16
	dbmapcoord  7, 17
	dbmapcoord  9, 16
	db -1

.SwitchCoords:
	dbmapcoord 17, 13
	db -1 ; end
	
VictoryRoad1FRivalApproachPath1:
	db NPC_MOVEMENT_DOWN
	db -1
	
VictoryRoad1FRivalApproachPath2:
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_DOWN
	db -1
	
VictoryRoad1FRivalApproachPath3:
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_DOWN
	db -1
	
VictoryRoad1FRivalExitPath1:
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_DOWN
	REPT 3
	db NPC_MOVEMENT_LEFT
	ENDR
	db -1
	
VictoryRoad1FRivalExitPath2:
	REPT 2
	db NPC_MOVEMENT_LEFT
	ENDR
	db NPC_MOVEMENT_DOWN
	REPT 2
	db NPC_MOVEMENT_LEFT
	ENDR
	db -1

VictoryRoad1FRivalExitPath3:
	REPT 4
	db NPC_MOVEMENT_LEFT
	ENDR
	db -1
	
VictoryRoad1FRivalStartBattleScript:
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz
	
	ld a, VICTORYROAD1F_RIVAL
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_DOWN
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	
	xor a
	ld [wJoyIgnore], a
	
	ld a, TEXT_VICTORYROAD1F_RIVAL
	ldh [hTextID], a
	call DisplayTextID
	
	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]
	
	ld hl, VictoryRoad1FRivalDefeatedText
	ld de, VictoryRoad1FRivalVictoryText
	call SaveEndBattleTextPointers
	
	ld a, OPP_RIVAL2
	ld [wCurOpponent], a
	
	ld hl, .RivalStarterTable
	call VictoryRoad1FGetRivalTrainerNoByStarter
	
	ld a, SCRIPT_VICTORYROAD1F_RIVAL_AFTER_BATTLE
	ld [wVictoryRoad1FCurScript], a
	ld [wCurMapScript], a
	ret
	
.RivalStarterTable
	db STARTER2, 13
	db STARTER3, 14
	db STARTER1, 15
	db -1
	
VictoryRoad1FGetRivalTrainerNoByStarter:
	ld a, [wRivalStarter]
	ld b, a
.next
	ld a, [hli]
	cp -1
	jr z, .fallback
	cp b
	jr z, .got
	inc hl
	jr .next
.got
	ld a, [hl]
	ld [wTrainerNo], a
	ret
.fallback
	ld a, 13
	ld [wTrainerNo], a
	ret
	
VictoryRoad1FRivalAfterBattleScript:
	ld a, [wIsInBattle]
	cp $ff
	jr z, .reset
	
	xor a
	ld [wJoyIgnore], a
	
	ld a, VICTORYROAD1F_RIVAL
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_DOWN
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	
	SetEvent EVENT_BEAT_VICTORY_ROAD_1F_RIVAL
	
	ld a, TEXT_VICTORYROAD1F_RIVAL_AFTER
	ldh [hTextID], a
	call DisplayTextID
	
	ld a, SFX_STOP_ALL_MUSIC
	ld [wNewSoundID], a
	call PlaySound
	farcall Music_RivalAlternateStart
	
	ld a, [wSavedCoordIndex]
	cp 2
	jr z, .exitLeftDown
	cp 3
	jr z, .exitRight
	ld de, VictoryRoad1FRivalExitPath1
	jr .doExit
.exitLeftDown
	ld de, VictoryRoad1FRivalExitPath3
	jr .doExit
.exitRight
	ld de, VictoryRoad1FRivalExitPath2
.doExit
	ld a, VICTORYROAD1F_RIVAL
	ldh [hSpriteIndex], a
	call SetSpriteMovementBytesToFF
	call MoveSprite

	ld a, SCRIPT_VICTORYROAD1F_RIVAL_EXIT
	ld [wVictoryRoad1FCurScript], a
	ld [wCurMapScript], a
	ret
	
.reset
	xor a
	ld [wJoyIgnore], a
	ld [wVictoryRoad1FCurScript], a
	ld [wCurMapScript], a
	ret
	
VictoryRoad1FRivalExitScript:
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz
	
	xor a
	ld [wJoyIgnore], a
	
	ld a, HS_VICTORY_ROAD_1F_RIVAL
	ld [wMissableObjectIndex], a
	predef HideObject
	
	call PlayDefaultMusic
	
	ld a, SCRIPT_VICTORYROAD1F_DEFAULT
	ld [wVictoryRoad1FCurScript], a
	ld [wCurMapScript], a
	ret

VictoryRoad1F_TextPointers:
	def_text_pointers
	dw_const VictoryRoad1FCooltrainerFText, TEXT_VICTORYROAD1F_COOLTRAINER_F
	dw_const VictoryRoad1FCooltrainerMText, TEXT_VICTORYROAD1F_COOLTRAINER_M
	dw_const PickUpItemText,                TEXT_VICTORYROAD1F_TM_SKY_ATTACK
	dw_const PickUpItemText,                TEXT_VICTORYROAD1F_RARE_CANDY
	dw_const BoulderText,                   TEXT_VICTORYROAD1F_BOULDER1
	dw_const BoulderText,                   TEXT_VICTORYROAD1F_BOULDER2
	dw_const BoulderText,                   TEXT_VICTORYROAD1F_BOULDER3
	dw_const VictoryRoad1FRivalText,		TEXT_VICTORYROAD1F_RIVAL
	dw_const VictoryRoad1FRivalAfterText,   TEXT_VICTORYROAD1F_RIVAL_AFTER

VictoryRoad1TrainerHeaders:
	def_trainers
VictoryRoad1TrainerHeader0:
	trainer EVENT_BEAT_VICTORY_ROAD_1_TRAINER_0, 2, VictoryRoad1FCooltrainerFBattleText, VictoryRoad1FCooltrainerFEndBattleText, VictoryRoad1FCooltrainerFAfterBattleText
VictoryRoad1TrainerHeader1:
	trainer EVENT_BEAT_VICTORY_ROAD_1_TRAINER_1, 2, VictoryRoad1FCooltrainerMBattleText, VictoryRoad1FCooltrainerMEndBattleText, VictoryRoad1FCooltrainerMAfterBattleText
	db -1 ; end

VictoryRoad1FCooltrainerFText:
	text_asm
	ld hl, VictoryRoad1TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

VictoryRoad1FCooltrainerMText:
	text_asm
	ld hl, VictoryRoad1TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd
	
VictoryRoad1FRivalText:
	text_far _VictoryRoad1FRivalText
	text_end
	
VictoryRoad1FRivalAfterText:
	text_far _VictoryRoad1FRivalAfterBattleText
	text_end
	
VictoryRoad1FRivalDefeatedText:
	text_far _VictoryRoad1FRivalDefeatedText
	text_end
	
VictoryRoad1FRivalVictoryText:
	text_far _VictoryRoad1FRivalVictoryText
	text_end

VictoryRoad1FCooltrainerFBattleText:
	text_far _VictoryRoad1FCooltrainerFBattleText
	text_end

VictoryRoad1FCooltrainerFEndBattleText:
	text_far _VictoryRoad1FCooltrainerFEndBattleText
	text_end

VictoryRoad1FCooltrainerFAfterBattleText:
	text_far _VictoryRoad1FCooltrainerFAfterBattleText
	text_end

VictoryRoad1FCooltrainerMBattleText:
	text_far _VictoryRoad1FCooltrainerMBattleText
	text_end

VictoryRoad1FCooltrainerMEndBattleText:
	text_far _VictoryRoad1FCooltrainerMEndBattleText
	text_end

VictoryRoad1FCooltrainerMAfterBattleText:
	text_far _VictoryRoad1FCooltrainerMAfterBattleText
	text_end
