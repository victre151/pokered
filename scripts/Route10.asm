Route10_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route10TrainerHeaders
	ld de, Route10_ScriptPointers
	ld a, [wRoute10CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute10CurScript], a
	ret

Route10_ScriptPointers:
	def_script_pointers
	dw_const Route10DefaultScript,                  SCRIPT_ROUTE10_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROUTE10_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROUTE10_END_BATTLE
	dw_const Route10RivalStartBattleScript,         SCRIPT_ROUTE10_RIVAL_START_BATTLE
	dw_const Route10RivalAfterBattleScript,         SCRIPT_ROUTE10_RIVAL_AFTER_BATTLE
	dw_const Route10RivalExitScript,                SCRIPT_ROUTE10_RIVAL_EXIT
	dw_const Route10BlueStartBattleScript,          SCRIPT_ROUTE10_BLUE_START_BATTLE
	dw_const Route10BlueAfterBattleScript,          SCRIPT_ROUTE10_BLUE_AFTER_BATTLE
	dw_const Route10BlueExitScript,                 SCRIPT_ROUTE10_BLUE_EXIT

Route10_TextPointers:
	def_text_pointers
	dw_const Route10SuperNerd1Text,     	   TEXT_ROUTE10_SUPER_NERD1
	dw_const Route10Hiker1Text,         	   TEXT_ROUTE10_HIKER1
	dw_const Route10SuperNerd2Text,    		   TEXT_ROUTE10_SUPER_NERD2
	dw_const Route10CooltrainerF1Text,  	   TEXT_ROUTE10_COOLTRAINER_F1
	dw_const Route10Hiker2Text,         	   TEXT_ROUTE10_HIKER2
	dw_const Route10CooltrainerF2Text,  	   TEXT_ROUTE10_COOLTRAINER_F2
	dw_const Route10RivalMaleText,  		   TEXT_ROUTE10_RIVAL_MALE
	dw_const Route10RivalFemaleText,  		   TEXT_ROUTE10_RIVAL_FEMALE
	dw_const Route10BlueText,				   TEXT_ROUTE10_BLUE
	dw_const Route10RivalMalePostBattleText,   TEXT_ROUTE10_RIVAL_MALE_POSTBATTLE
	dw_const Route10RivalFemalePostBattleText, TEXT_ROUTE10_RIVAL_FEMALE_POSTBATTLE
	dw_const Route10BluePostBattleText,        TEXT_ROUTE10_BLUE_POSTBATTLE
	dw_const Route10RockTunnelSignText,    	   TEXT_ROUTE10_ROCKTUNNEL_NORTH_SIGN
	dw_const PokeCenterSignText,       		   TEXT_ROUTE10_POKECENTER_SIGN
	dw_const Route10RockTunnelSignText,		   TEXT_ROUTE10_ROCKTUNNEL_SOUTH_SIGN
	dw_const Route10PowerPlantSignText, 	   TEXT_ROUTE10_POWERPLANT_SIGN

Route10TrainerHeaders:
	def_trainers
Route10TrainerHeader0:
	trainer EVENT_BEAT_ROUTE_10_TRAINER_0, 4, Route10SuperNerd1BattleText, Route10SuperNerd1EndBattleText, Route10SuperNerd1AfterBattleText
Route10TrainerHeader1:
	trainer EVENT_BEAT_ROUTE_10_TRAINER_1, 3, Route10Hiker1BattleText, Route10Hiker1EndBattleText, Route10Hiker1AfterBattleText
Route10TrainerHeader2:
	trainer EVENT_BEAT_ROUTE_10_TRAINER_2, 4, Route10SuperNerd2BattleText, Route10SuperNerd2EndBattleText, Route10SuperNerd2AfterBattleText
Route10TrainerHeader3:
	trainer EVENT_BEAT_ROUTE_10_TRAINER_3, 3, Route10CooltrainerF1BattleText, Route10CooltrainerF1EndBattleText, Route10CooltrainerF1AfterBattleText
Route10TrainerHeader4:
	trainer EVENT_BEAT_ROUTE_10_TRAINER_4, 2, Route10Hiker2BattleText, Route10Hiker2EndBattleText, Route10Hiker2AfterBattleText
Route10TrainerHeader5:
	trainer EVENT_BEAT_ROUTE_10_TRAINER_5, 2, Route10CooltrainerF2BattleText, Route10CooltrainerF2EndBattleText, Route10CooltrainerF2AfterBattleText
	db -1 ; end

Route10DefaultScript:
	CheckEvent EVENT_BEAT_ROUTE_10_RIVAL
	jr nz, .rivalAlreadyBeat
	
	ld hl, .RivalBattleCoords
	call ArePlayerCoordsInArray
	jp nc, .runTrainers
	
	ld a, [wCoordIndex]
	ld [wSavedCoordIndex], a
	
	ld a, [wPlayerGender]
	and a
	ld a, ROUTE10_RIVAL_MALE
	jr nz, .rivalGotID
	ld a, ROUTE10_RIVAL_FEMALE
.rivalGotID
	ldh [hSpriteIndex], a
	ld [wEmotionBubbleSpriteIndex], a
	
	ld a, SFX_STOP_ALL_MUSIC
	call PlaySound
	ld c, BANK(Music_MeetRival)
	ld a, MUSIC_MEET_RIVAL
	call PlayMusic
	
	ld a, [wEmotionBubbleSpriteIndex]
	ldh [hSpriteIndex], a
	
	ld a, [wSavedCoordIndex]
	cp 2
	ld d, 6
	jr z, .rivalSteps
	ld d, 5
.rivalSteps
	ld hl, wNPCMovementDirections2
.rivalLeftLoop
	ld [hl], NPC_MOVEMENT_LEFT
	inc hl
	dec d
	jr nz, .rivalLeftLoop
	ld [hl], NPC_MOVEMENT_DOWN
	inc hl
	ld [hl], $ff
	ld de, wNPCMovementDirections2
	call MoveSprite
	ld a, SCRIPT_ROUTE10_RIVAL_START_BATTLE
	ld [wRoute10CurScript], a
	ld [wCurMapScript], a
	ret
	
.rivalAlreadyBeat
	CheckEvent EVENT_BEAT_ROUTE_10_BLUE
	jr nz, .runTrainers
	
	ld hl, .BlueBattleCoords
	call ArePlayerCoordsInArray
	jr nc, .runTrainers
	
	ld a, ROUTE10_BLUE
	ld [wEmotionBubbleSpriteIndex], a
	xor a
	ld [wWhichEmotionBubble], a
	predef EmotionBubble
	
	ld a, SFX_STOP_ALL_MUSIC
	call PlaySound
	ld c, BANK(Music_MeetRival)
	ld a, MUSIC_MEET_RIVAL
	call PlayMusic
	
	ld a, SCRIPT_ROUTE10_BLUE_START_BATTLE
	ld [wRoute10CurScript], a
	ld [wCurMapScript], a
	ret
	
.runTrainers
	jp CheckFightingMapTrainers
	
.RivalBattleCoords
	dbmapcoord 3, 20
	dbmapcoord 2, 20
	db -1
	
.BlueBattleCoords
	dbmapcoord 6, 41
	db -1
	
Route10RivalStartBattleScript:
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz
	
	ld a, [wPlayerGender]
	and a
	jr z, .femaleBattle
	ld a, [wEmotionBubbleSpriteIndex]
	ldh [hSpriteIndex], a
	xor a
	ld [wWhichEmotionBubble], a
	predef EmotionBubble
	ld a, OPP_RIVAL4
	ld [wCurOpponent], a
	ld a, TEXT_ROUTE10_RIVAL_MALE
	jr .initBattle

.femaleBattle
	ld a, [wEmotionBubbleSpriteIndex]
	ldh [hSpriteIndex], a
	xor a
	ld [wWhichEmotionBubble], a
	predef EmotionBubble
	ld a, OPP_RIVAL3
	ld [wCurOpponent], a
	ld a, TEXT_ROUTE10_RIVAL_FEMALE

.initBattle
	ldh [hTextID], a
	
	ld a, SPRITE_FACING_DOWN
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	
	xor a
	ld [wJoyIgnore], a
	call DisplayTextID
	
	ld a, [wPlayerGender]
	and a
	jr z, .femaleTextPtrs
	ld hl, Route10RivalMaleDefeatedText
	ld de, Route10RivalMaleVictoryText
	jr .savePtrs
.femaleTextPtrs
	ld hl, Route10RivalFemaleDefeatedText
	ld de, Route10RivalFemaleVictoryText
.savePtrs
	call SaveEndBattleTextPointers
	
	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]
	
	ld a, [wPlayerGender]
	and a
	jr z, .useFemaleRivalTable
	ld hl, .StarterTableMaleRival
	jr .gotStarterTable
.useFemaleRivalTable
	ld hl, .StarterTableFemaleRival
.gotStarterTable
	call Route10GetRivalTrainerNoByStarter
	
	ld a, SCRIPT_ROUTE10_RIVAL_AFTER_BATTLE
	ld [wRoute10CurScript], a
	ld [wCurMapScript], a
	ret
	
.StarterTableFemaleRival
	db STARTER1, 4
	db STARTER2, 5
	db STARTER3, 6
	db -1
	
.StarterTableMaleRival
	db STARTER1, 6
	db STARTER2, 4
	db STARTER3, 5
	db -1
	
Route10GetRivalTrainerNoByStarter:
	ld a, [wPlayerStarter]
	ld b, a
.next
	ld a, [hli]
	cp -1
	jr z, .fallback
	cp b
	jr z, .got_it
	inc hl
	jr .next
.got_it
	ld a, [hl]
	ld [wTrainerNo], a
	ret
.fallback
	ld a, 4
	ld [wTrainerNo], a
	ret
	
Route10RivalAfterBattleScript:
	ld a, [wIsInBattle]
	cp $ff
	jr z, .reset_script
	
	xor a
	ld [wJoyIgnore], a
	
	ld a, [wPlayerGender]
	and a
	ld a, TEXT_ROUTE10_RIVAL_MALE_POSTBATTLE
	jr nz, .display
	ld a, TEXT_ROUTE10_RIVAL_FEMALE_POSTBATTLE
.display
	ldh [hTextID], a
	call DisplayTextID
	
	ld a, [wPlayerGender]
	and a
	ld a, ROUTE10_RIVAL_MALE
	jr nz, .gotExitSprite
	ld a, ROUTE10_RIVAL_FEMALE
.gotExitSprite
	ldh [hSpriteIndex], a
	
	ld a, SPRITE_FACING_UP
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	
	ld a, [wSavedCoordIndex]
	cp 2
	ld d, 6
	jr z, .exitRightSteps
	ld d, 5

.exitRightSteps
	ld hl, wNPCMovementDirections2
	ld [hl], NPC_MOVEMENT_UP
	inc hl

.exitRightLoop
	ld [hl], NPC_MOVEMENT_RIGHT
	inc hl
	dec d
	jr nz, .exitRightLoop
	ld [hl], NPC_MOVEMENT_UP
	inc hl
	ld [hl], $ff
	ld de, wNPCMovementDirections2
	call MoveSprite
	ld a, SCRIPT_ROUTE10_RIVAL_EXIT
	ld [wRoute10CurScript], a
	ld [wCurMapScript], a
	ret

.reset_script
	xor a
	ld [wJoyIgnore], a
	ret
	
Route10RivalExitScript:
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz
	
	xor a
	ld [wJoyIgnore], a
	
	ld a, HS_ROUTE_10_RIVAL_MALE
	ld [wMissableObjectIndex], a
	predef HideObject
	
	ld a, HS_ROUTE_10_RIVAL_FEMALE
	ld [wMissableObjectIndex], a
	predef HideObject
	
	SetEvent EVENT_BEAT_ROUTE_10_RIVAL
	
	xor a
	ld [wRoute10CurScript], a
	ld [wCurMapScript], a
	ret
	
Route10BlueStartBattleScript:
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz
	
	ld a, ROUTE10_BLUE
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_DOWN
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	
	xor a
	ld [wJoyIgnore], a
	
	ld a, TEXT_ROUTE10_BLUE
	ldh [hTextID], a
	call DisplayTextID
	
	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]
	ld hl, Route10BlueDefeatedText
	ld de, Route10BlueVictoryText
	call SaveEndBattleTextPointers
	
	ld a, OPP_RIVAL2
	ld [wCurOpponent], a
	
	ld a, [wRivalStarter]
	cp STARTER2
	jr nz, .BlueNotS2
	ld a, 10
	jr .BlueSetNo
.BlueNotS2
	cp STARTER3
	jr nz, .BlueS1
	ld a, 11
	jr .BlueSetNo
.BlueS1
	ld a, 12
.BlueSetNo
	ld [wTrainerNo], a
	
	ld a, SCRIPT_ROUTE10_BLUE_AFTER_BATTLE
	ld [wRoute10CurScript], a
	ld [wCurMapScript], a
	ret
	
Route10BlueAfterBattleScript:
	ld a, [wIsInBattle]
	cp $ff
	jr z, .BlueReset
	
	call UpdateSprites
	call Delay3
	xor a
	ld [wJoyIgnore], a
	
	ld a, TEXT_ROUTE10_BLUE_POSTBATTLE
	ldh [hTextID], a
	call DisplayTextID
	
	ld a, ROUTE10_BLUE
	ldh [hSpriteIndex], a
	call SetSpriteMovementBytesToFF
	ld de, Route10BlueExitMovement
	call MoveSprite
	
	ld a, SCRIPT_ROUTE10_BLUE_EXIT
	ld [wRoute10CurScript], a
	ld [wCurMapScript], a
	ret
	
.BlueReset
	xor a
	ld [wJoyIgnore], a
	ld [wRoute10CurScript], a
	ld [wCurMapScript], a
	ret
	
Route10BlueExitMovement:
	REPT 2
	db NPC_MOVEMENT_LEFT
	ENDR
	REPT 6
	db NPC_MOVEMENT_DOWN
	ENDR
	db $ff
	
Route10BlueExitScript:
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz
	
	xor a
	ld [wJoyIgnore], a
	
	ld a, HS_ROUTE_10_BLUE
	ld [wMissableObjectIndex], a
	predef HideObject
	
	SetEvent EVENT_BEAT_ROUTE_10_BLUE
	
	xor a
	ld [wRoute10CurScript], a
	ld [wCurMapScript], a
	ret

Route10SuperNerd1Text:
	text_asm
	ld hl, Route10TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route10SuperNerd1BattleText:
	text_far _Route10SuperNerd1BattleText
	text_end

Route10SuperNerd1EndBattleText:
	text_far _Route10SuperNerd1EndBattleText
	text_end

Route10SuperNerd1AfterBattleText:
	text_far _Route10SuperNerd1AfterBattleText
	text_end

Route10Hiker1Text:
	text_asm
	ld hl, Route10TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

Route10Hiker1BattleText:
	text_far _Route10Hiker1BattleText
	text_end

Route10Hiker1EndBattleText:
	text_far _Route10Hiker1EndBattleText
	text_end

Route10Hiker1AfterBattleText:
	text_far _Route10Hiker1AfterBattleText
	text_end

Route10SuperNerd2Text:
	text_asm
	ld hl, Route10TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

Route10SuperNerd2BattleText:
	text_far _Route10SuperNerd2BattleText
	text_end

Route10SuperNerd2EndBattleText:
	text_far _Route10SuperNerd2EndBattleText
	text_end

Route10SuperNerd2AfterBattleText:
	text_far _Route10SuperNerd2AfterBattleText
	text_end

Route10CooltrainerF1Text:
	text_asm
	ld hl, Route10TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

Route10CooltrainerF1BattleText:
	text_far _Route10CooltrainerF1BattleText
	text_end

Route10CooltrainerF1EndBattleText:
	text_far _Route10CooltrainerF1EndBattleText
	text_end

Route10CooltrainerF1AfterBattleText:
	text_far _Route10CooltrainerF1AfterBattleText
	text_end

Route10Hiker2Text:
	text_asm
	ld hl, Route10TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

Route10Hiker2BattleText:
	text_far _Route10Hiker2BattleText
	text_end

Route10Hiker2EndBattleText:
	text_far _Route10Hiker2EndBattleText
	text_end

Route10Hiker2AfterBattleText:
	text_far _Route10Hiker2AfterBattleText
	text_end

Route10CooltrainerF2Text:
	text_asm
	ld hl, Route10TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

Route10CooltrainerF2BattleText:
	text_far _Route10CooltrainerF2BattleText
	text_end

Route10CooltrainerF2EndBattleText:
	text_far _Route10CooltrainerF2EndBattleText
	text_end

Route10CooltrainerF2AfterBattleText:
	text_far _Route10CooltrainerF2AfterBattleText
	text_end
	
Route10RivalMaleText:
	text_far _Route10RivalMaleText
	text_end

Route10RivalFemaleText:
	text_far _Route10RivalFemaleText
	text_end
	
Route10RivalMaleDefeatedText:  
	text_far _Route10RivalMaleDefeatedText 
	text_end

Route10RivalMaleVictoryText:   
	text_far _Route10RivalMaleVictoryText  
	text_end

Route10RivalFemaleDefeatedText:
	text_far _Route10RivalFemaleDefeatedText
	text_end

Route10RivalFemaleVictoryText: 
	text_far _Route10RivalFemaleVictoryText 
	text_end

Route10RivalMalePostBattleText:   
	text_far _Route10RivalMalePostBattleText   
	text_end

Route10RivalFemalePostBattleText: 
	text_far _Route10RivalFemalePostBattleText 
	text_end

Route10BlueText:
	text_far _Route10BlueText
	text_end
	
Route10BlueDefeatedText:  
	text_far _Route10BlueDefeatedText 
	text_end

Route10BlueVictoryText:   
	text_far _Route10BlueVictoryText  
	text_end

Route10BluePostBattleText:   
	text_far _Route10BluePostBattleText   
	text_end

Route10RockTunnelSignText:
	text_far _Route10RockTunnelSignText
	text_end

Route10PowerPlantSignText:
	text_far _Route10PowerPlantSignText
	text_end
