VictoryRoad3F_Script:
	call VictoryRoad3FCheckBoulderEventScript
	call EnableAutoTextBoxDrawing
	CheckEvent EVENT_BEAT_VIRIDIAN_GYM_OAK
	jr z, .runEngine
	
	CheckEvent EVENT_VICTORY_ROAD_ROCKETS_DONE
	jr nz, .runEngine
	
	CheckEvent EVENT_VICTORY_ROAD_ROCKETS_MOLTRES
	jr nz, .runEngine
	
	ld a, HS_VICTORY_ROAD_3F_ARIANA
	ld [wMissableObjectIndex], a
	predef ShowObject
	
	call UpdateSprites
	SetEvent EVENT_VICTORY_ROAD_ROCKETS_MOLTRES

.runEngine
	ld hl, VictoryRoad3TrainerHeaders
	ld de, VictoryRoad3F_ScriptPointers
	ld a, [wVictoryRoad3FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wVictoryRoad3FCurScript], a
	ret

VictoryRoad3FCheckBoulderEventScript:
	ld hl, wCurrentMapScriptFlags
	bit BIT_CUR_MAP_LOADED_1, [hl]
	res BIT_CUR_MAP_LOADED_1, [hl]
	ret z
	CheckEventHL EVENT_VICTORY_ROAD_3_BOULDER_ON_SWITCH1
	ret z
	ld a, $1d
	ld [wNewTileBlockID], a
	lb bc, 5, 3
	predef_jump ReplaceTileBlock

VictoryRoad3F_ScriptPointers:
	def_script_pointers
	dw_const VictoryRoad3FDefaultScript,            SCRIPT_VICTORYROAD3F_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_VICTORYROAD3F_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_VICTORYROAD3F_END_BATTLE
	dw_const VictoryRoad3FRocketCleanupScript, 		SCRIPT_VICTORYROAD3F_ROCKET_CLEANUP

VictoryRoad3FDefaultScript:
	ld hl, wMiscFlags
	bit BIT_PUSHED_BOULDER, [hl]
	res BIT_PUSHED_BOULDER, [hl]
	jp z, .check_switch_hole
	ld hl, .SwitchOrHoleCoords
	call CheckBoulderCoords
	jp nc, .check_switch_hole
	ld a, [wCoordIndex]
	cp $1
	jr nz, .handle_hole
	ld hl, wCurrentMapScriptFlags
	set BIT_CUR_MAP_LOADED_1, [hl]
	SetEvent EVENT_VICTORY_ROAD_3_BOULDER_ON_SWITCH1
	ret
.handle_hole
	CheckAndSetEvent EVENT_VICTORY_ROAD_3_BOULDER_ON_SWITCH2
	jr nz, .check_switch_hole
	ld a, HS_VICTORY_ROAD_3F_BOULDER
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_VICTORY_ROAD_2F_BOULDER
	ld [wMissableObjectIndex], a
	predef_jump ShowObject

.SwitchOrHoleCoords:
	dbmapcoord  3,  5 ; switch
	dbmapcoord 23, 15 ; hole
	db -1 ; end

.check_switch_hole
	ld a, VICTORY_ROAD_2F
	ld [wDungeonWarpDestinationMap], a
	ld hl, .SwitchOrHoleCoords
	call IsPlayerOnDungeonWarp
	ld a, [wCoordIndex]
	cp $1
	jr nz, .hole
	ld hl, wStatusFlags3
	res BIT_ON_DUNGEON_WARP, [hl]
	ld hl, wStatusFlags6
	res BIT_DUNGEON_WARP, [hl]
	ret
.hole
	ld a, [wStatusFlags3]
	bit BIT_ON_DUNGEON_WARP, a
	jp z, CheckFightingMapTrainers
	ret

VictoryRoad3F_TextPointers:
	def_text_pointers
	dw_const VictoryRoad3FCooltrainerM1Text, TEXT_VICTORYROAD3F_COOLTRAINER_M1
	dw_const VictoryRoad3FCooltrainerF1Text, TEXT_VICTORYROAD3F_COOLTRAINER_F1
	dw_const VictoryRoad3FCooltrainerM2Text, TEXT_VICTORYROAD3F_COOLTRAINER_M2
	dw_const VictoryRoad3FCooltrainerF2Text, TEXT_VICTORYROAD3F_COOLTRAINER_F2
	dw_const VictoryRoad3FArianaEncounterText, TEXT_VICTORYROAD3F_ARIANA
	dw_const PickUpItemText,                 TEXT_VICTORYROAD3F_MAX_REVIVE
	dw_const PickUpItemText,                 TEXT_VICTORYROAD3F_TM_EXPLOSION
	dw_const BoulderText,                    TEXT_VICTORYROAD3F_BOULDER1
	dw_const BoulderText,                    TEXT_VICTORYROAD3F_BOULDER2
	dw_const BoulderText,                    TEXT_VICTORYROAD3F_BOULDER3
	dw_const BoulderText,                    TEXT_VICTORYROAD3F_BOULDER4

VictoryRoad3TrainerHeaders:
	def_trainers
VictoryRoad3TrainerHeader0:
	trainer EVENT_BEAT_VICTORY_ROAD_3_TRAINER_0, 1, VictoryRoad3FCooltrainerM1BattleText, VictoryRoad3FCooltrainerM1EndBattleText, VictoryRoad3FCooltrainerM1AfterBattleText
VictoryRoad3TrainerHeader1:
	trainer EVENT_BEAT_VICTORY_ROAD_3_TRAINER_1, 4, VictoryRoad3FCooltrainerF1BattleText, VictoryRoad3FCooltrainerF1EndBattleText, VictoryRoad3FCooltrainerF1AfterBattleText
VictoryRoad3TrainerHeader2:
	trainer EVENT_BEAT_VICTORY_ROAD_3_TRAINER_2, 4, VictoryRoad3FCooltrainerM2BattleText, VictoryRoad3FCooltrainerM2EndBattleText, VictoryRoad3FCooltrainerM2AfterBattleText
VictoryRoad3TrainerHeader3:
	trainer EVENT_BEAT_VICTORY_ROAD_3_TRAINER_3, 4, VictoryRoad3FCooltrainerF2BattleText, VictoryRoad3FCooltrainerF2EndBattleText, VictoryRoad3FCooltrainerF2AfterBattleText
	db -1 ; end

VictoryRoad3FCooltrainerM1Text:
	text_asm
	ld hl, VictoryRoad3TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

VictoryRoad3FCooltrainerF1Text:
	text_asm
	ld hl, VictoryRoad3TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

VictoryRoad3FCooltrainerM2Text:
	text_asm
	ld hl, VictoryRoad3TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

VictoryRoad3FCooltrainerF2Text:
	text_asm
	ld hl, VictoryRoad3TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd
	
VictoryRoad3FArianaEncounterText:
	text_asm
	ld hl, VictoryRoadArianaEncounterText
	call PrintText
	call DisableWaitingAfterTextDisplay
	
	ld a, SCRIPT_VICTORYROAD3F_ROCKET_CLEANUP
    ld [wVictoryRoad3FCurScript], a
	
	jp TextScriptEnd
	
VictoryRoad3FRocketCleanupScript:
	
	call GBFadeOutToBlack
	
	SetEvent EVENT_VICTORY_ROAD_ROCKETS_DONE
	
	ld a, HS_VICTORY_ROAD_3F_ARIANA
	ld [wMissableObjectIndex], a
	predef HideObject
	
	ld a, HS_LORELEISROOM_LORELEI
	ld [wMissableObjectIndex], a
	predef HideObject
	
	ld a, HS_LORELEISROOM_SILVER
	ld [wMissableObjectIndex], a
	predef ShowObject
	
	ld a, HS_BRUNOSROOM_BRUNO
	ld [wMissableObjectIndex], a
	predef HideObject
	
	ld a, HS_BRUNOSROOM_PETREL
	ld [wMissableObjectIndex], a
	predef ShowObject
	
	ld a, HS_AGATHASROOM_AGATHA
	ld [wMissableObjectIndex], a
	predef HideObject
	
	ld a, HS_AGATHASROOM_PROTON
	ld [wMissableObjectIndex], a
	predef ShowObject
	
	ld a, HS_LANCESROOM_LANCE
	ld [wMissableObjectIndex], a
	predef HideObject
	
	ld a, HS_LANCESROOM_ARIANA
	ld [wMissableObjectIndex], a
	predef ShowObject
	
	ld a, HS_CHAMPIONS_ROOM_RIVAL_MALE
	ld [wMissableObjectIndex], a
	predef HideObject
	
	ld a, HS_CHAMPIONS_ROOM_RIVAL_FEMALE
	ld [wMissableObjectIndex], a
	predef HideObject
	
	ld a, HS_CHAMPIONS_ROOM_ARCHER
	ld [wMissableObjectIndex], a
	predef ShowObject
	
	call UpdateSprites
	call Delay3
	
	call GBFadeInFromBlack
	
	xor a
	ld [wVictoryRoad3FCurScript], a
	ld [wCurMapScript], a
	ret

VictoryRoad3FCooltrainerM1BattleText:
	text_far _VictoryRoad3FCooltrainerM1BattleText
	text_end

VictoryRoad3FCooltrainerM1EndBattleText:
	text_far _VictoryRoad3FCooltrainerM1EndBattleText
	text_end

VictoryRoad3FCooltrainerM1AfterBattleText:
	text_far _VictoryRoad3FCooltrainerM1AfterBattleText
	text_end

VictoryRoad3FCooltrainerF1BattleText:
	text_far _VictoryRoad3FCooltrainerF1BattleText
	text_end

VictoryRoad3FCooltrainerF1EndBattleText:
	text_far _VictoryRoad3FCooltrainerF1EndBattleText
	text_end

VictoryRoad3FCooltrainerF1AfterBattleText:
	text_far _VictoryRoad3FCooltrainerF1AfterBattleText
	text_end

VictoryRoad3FCooltrainerM2BattleText:
	text_far _VictoryRoad3FCooltrainerM2BattleText
	text_end

VictoryRoad3FCooltrainerM2EndBattleText:
	text_far _VictoryRoad3FCooltrainerM2EndBattleText
	text_end

VictoryRoad3FCooltrainerM2AfterBattleText:
	text_far _VictoryRoad3FCooltrainerM2AfterBattleText
	text_end

VictoryRoad3FCooltrainerF2BattleText:
	text_far _VictoryRoad3FCooltrainerF2BattleText
	text_end

VictoryRoad3FCooltrainerF2EndBattleText:
	text_far _VictoryRoad3FCooltrainerF2EndBattleText
	text_end

VictoryRoad3FCooltrainerF2AfterBattleText:
	text_far _VictoryRoad3FCooltrainerF2AfterBattleText
	text_end

VictoryRoadArianaEncounterText:
	text_far _VictoryRoad3FArianaEncounterText
	text_end