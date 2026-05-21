Route15_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route15TrainerHeaders
	ld de, Route15_ScriptPointers
	ld a, [wRoute15CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute15CurScript], a
	ret

Route15_ScriptPointers:
	def_script_pointers
	dw_const Route15DefaultScript,              	SCRIPT_ROUTE15_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROUTE15_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROUTE15_END_BATTLE
	dw_const Route15RivalStartBattleScript,         SCRIPT_ROUTE15_RIVAL_START_BATTLE
	dw_const Route15RivalAfterBattleScript,         SCRIPT_ROUTE15_RIVAL_AFTER_BATTLE
	dw_const Route15RivalExitScript,                SCRIPT_ROUTE15_RIVAL_EXIT

Route15_TextPointers:
	def_text_pointers
	dw_const Route15CooltrainerF1Text, 			TEXT_ROUTE15_COOLTRAINER_F1
	dw_const Route15CooltrainerF2Text, 			TEXT_ROUTE15_COOLTRAINER_F2
	dw_const Route15CooltrainerM1Text, 			TEXT_ROUTE15_COOLTRAINER_M1
	dw_const Route15CooltrainerM2Text, 			TEXT_ROUTE15_COOLTRAINER_M2
	dw_const Route15Beauty1Text,       			TEXT_ROUTE15_BEAUTY1
	dw_const Route15Beauty2Text,       			TEXT_ROUTE15_BEAUTY2
	dw_const Route15Biker1Text,        			TEXT_ROUTE15_BIKER1
	dw_const Route15Biker2Text,        			TEXT_ROUTE15_BIKER2
	dw_const Route15CooltrainerF3Text, 			TEXT_ROUTE15_COOLTRAINER_F3
	dw_const Route15CooltrainerF4Text, 			TEXT_ROUTE15_COOLTRAINER_F4
	dw_const Route15RivalMaleText,     			TEXT_ROUTE15_RIVAL_MALE
	dw_const Route15RivalFemaleText,   			TEXT_ROUTE15_RIVAL_FEMALE
	dw_const PickUpItemText,           			TEXT_ROUTE15_TM_RAGE
	dw_const Route15SignText,          			TEXT_ROUTE15_SIGN
	dw_const Route15RivalMalePostBattleText,    TEXT_ROUTE15_RIVAL_MALE_POSTBATTLE
	dw_const Route15RivalFemalePostBattleText,  TEXT_ROUTE15_RIVAL_FEMALE_POSTBATTLE

Route15TrainerHeaders:
	def_trainers
Route15TrainerHeader0:
	trainer EVENT_BEAT_ROUTE_15_TRAINER_0, 2, Route15CooltrainerF1BattleText, Route15CooltrainerF1EndBattleText, Route15CooltrainerF1AfterBattleText
Route15TrainerHeader1:
	trainer EVENT_BEAT_ROUTE_15_TRAINER_1, 3, Route15CooltrainerF2BattleText, Route15CooltrainerF2EndBattleText, Route15CooltrainerF2AfterBattleText
Route15TrainerHeader2:
	trainer EVENT_BEAT_ROUTE_15_TRAINER_2, 3, Route15CooltrainerM1BattleText, Route15CooltrainerM1EndBattleText, Route15CooltrainerM1AfterBattleText
Route15TrainerHeader3:
	trainer EVENT_BEAT_ROUTE_15_TRAINER_3, 3, Route15CooltrainerM2BattleText, Route15CooltrainerM2EndBattleText, Route15CooltrainerM2AfterBattleText
Route15TrainerHeader4:
	trainer EVENT_BEAT_ROUTE_15_TRAINER_4, 2, Route15Beauty1BattleText, Route15Beauty1EndBattleText, Route15Beauty1AfterBattleText
Route15TrainerHeader5:
	trainer EVENT_BEAT_ROUTE_15_TRAINER_5, 3, Route15Beauty2BattleText, Route15Beauty2EndBattleText, Route15Beauty2AfterBattleText
Route15TrainerHeader6:
	trainer EVENT_BEAT_ROUTE_15_TRAINER_6, 3, Route15Biker1BattleText, Route15Biker1EndBattleText, Route15Biker1AfterBattleText
Route15TrainerHeader7:
	trainer EVENT_BEAT_ROUTE_15_TRAINER_7, 3, Route15Biker2BattleText, Route15Biker2EndBattleText, Route15Biker2AfterBattleText
Route15TrainerHeader8:
	trainer EVENT_BEAT_ROUTE_15_TRAINER_8, 3, Route15CooltrainerF3BattleText, Route15CooltrainerF3EndBattleText, Route15CooltrainerF3AfterBattleText
Route15TrainerHeader9:
	trainer EVENT_BEAT_ROUTE_15_TRAINER_9, 3, Route15CooltrainerF4BattleText, Route15CooltrainerF4EndBattleText, Route15CooltrainerF4AfterBattleText
	db -1 ; end

Route15DefaultScript:
	CheckEvent EVENT_BEAT_ROUTE_15_RIVAL
	jr nz, .runTrainers
	
	ld hl, .RivalBattleCoords
	call ArePlayerCoordsInArray
	jp nc, .runTrainers
	
	ld a, [wCoordIndex]
	ld [wSavedCoordIndex], a
	
	ld a, [wPlayerGender]
	and a
	ld a, ROUTE15_RIVAL_MALE
	jr nz, .gotRivalSprite
	ld a, ROUTE15_RIVAL_FEMALE
.gotRivalSprite
	ldh [hSpriteIndex], a
	ld [wEmotionBubbleSpriteIndex], a
	
	ld a, SFX_STOP_ALL_MUSIC
	call PlaySound
	ld c, BANK(Music_MeetRival)
	ld a, MUSIC_MEET_RIVAL
	call PlayMusic
	
	ld a, [wEmotionBubbleSpriteIndex]
	ldh [hSpriteIndex], a
	xor a
	ld [wWhichEmotionBubble], a
	predef EmotionBubble
	
	ld a, [wEmotionBubbleSpriteIndex]
	ldh [hSpriteIndex], a
	
	ld a, [wSavedCoordIndex]
	cp 2
	jr z, .gatePathB
	
	ld hl, wNPCMovementDirections2
	ld [hl], NPC_MOVEMENT_RIGHT
	inc hl
	ld [hl], NPC_MOVEMENT_RIGHT
	inc hl
	ld [hl], $ff
	ld de, wNPCMovementDirections2
	call MoveSprite
	
.gatePathB
	ld a, SCRIPT_ROUTE15_RIVAL_START_BATTLE
	ld [wRoute15CurScript], a
	ld [wCurMapScript], a
	ret
	
.runTrainers
	jp CheckFightingMapTrainers
	
.RivalBattleCoords
	dbmapcoord 17, 8
	dbmapcoord 14, 9
	db -1
	
Route15RivalStartBattleScript:
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz
	
	ld a, [wPlayerGender]
	and a
	jr z, .femaleBattle
	ld a, [wEmotionBubbleSpriteIndex]
	ldh [hSpriteIndex], a
	ld a, OPP_RIVAL4
	ld [wCurOpponent], a
	ld a, TEXT_ROUTE15_RIVAL_MALE
	jr .initBattle
	
.femaleBattle
	ld a, [wEmotionBubbleSpriteIndex]
	ldh [hSpriteIndex], a
	ld a, OPP_RIVAL3
	ld [wCurOpponent], a
	ld a, TEXT_ROUTE15_RIVAL_FEMALE
	
.initBattle
	ldh [hTextID], a
	
	ld a, [wSavedCoordIndex]
	cp 2
	ld a, SPRITE_FACING_DOWN
	jr z, .rival15PreBattleFacingSet
	ld a, SPRITE_FACING_RIGHT
.rival15PreBattleFacingSet
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	
	xor a
	ld [wJoyIgnore], a
	call DisplayTextID
	
	ld a, [wPlayerGender]
	and a
	jr z, .femaleTextPtrs
	ld hl, Route15RivalMaleDefeatedText
	ld de, Route15RivalMaleVictoryText
	jr .savePtrs
.femaleTextPtrs
	ld hl, Route15RivalFemaleDefeatedText
	ld de, Route15RivalFemaleVictoryText
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
	call Route15GetRivalTrainerNoByStarter
	
	ld a, SCRIPT_ROUTE15_RIVAL_AFTER_BATTLE
	ld [wRoute15CurScript], a
	ld [wCurMapScript], a
	ret
	
.StarterTableFemaleRival
	db STARTER1, 10
	db STARTER2, 11
	db STARTER3, 12
	db -1
	
.StarterTableMaleRival
	db STARTER1, 12
	db STARTER2, 10
	db STARTER3, 11
	db -1
	
Route15GetRivalTrainerNoByStarter:
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
	ld a, 10
	ld [wTrainerNo], a
	ret
	
Route15RivalAfterBattleScript:
	ld a, [wIsInBattle]
	cp $ff
	jp z, .reset_script
	
	xor a
	ld [wJoyIgnore], a
	
	ld a, [wPlayerGender]
	and a
	ld a, TEXT_ROUTE15_RIVAL_MALE_POSTBATTLE
	jr nz, .display
	ld a, TEXT_ROUTE15_RIVAL_FEMALE_POSTBATTLE
.display
	ldh [hTextID], a
	call DisplayTextID
	
	ld a, [wPlayerGender]
	and a
	ld a, ROUTE15_RIVAL_MALE
	jr nz, .gotExitSprite
	ld a, ROUTE15_RIVAL_FEMALE
.gotExitSprite
	ldh [hSpriteIndex], a
	
	ld a, SPRITE_FACING_LEFT
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	
	ld hl, .RivalPostBattleCoords
	call ArePlayerCoordsInArray
	jr c, .SkipMoveSprite
	
	ld de, .gatePathAAfterPost
	call MoveSprite
	
.SkipMoveSprite
	ld a, SCRIPT_ROUTE15_RIVAL_EXIT
	ld [wRoute15CurScript], a
	ld [wCurMapScript], a
	ret
	
.gatePathAAfterPost
	db NPC_MOVEMENT_LEFT, NPC_MOVEMENT_LEFT
	db $ff
	
.RivalPostBattleCoords
	dbmapcoord 14, 9
	db -1
	
.reset_script
	xor a
	ld [wJoyIgnore], a
	ret
	
Route15RivalExitScript:
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz
	
	xor a
	ld [wJoyIgnore], a
	
	ld a, HS_ROUTE_15_RIVAL_MALE
	ld [wMissableObjectIndex], a
	predef HideObject
	
	ld a, HS_ROUTE_15_RIVAL_FEMALE
	ld [wMissableObjectIndex], a
	predef HideObject
	
	SetEvent EVENT_BEAT_ROUTE_15_RIVAL
	
	xor a
	ld [wRoute15CurScript], a
	ld [wCurMapScript], a
	ret
	
Route15RivalMaleDefeatedText:
	text_far _Route15RivalMaleDefeatedText
	text_end
	
Route15RivalMaleVictoryText:
	text_far _Route15RivalMaleVictoryText
	text_end
	
Route15RivalFemaleDefeatedText:
	text_far _Route15RivalFemaleDefeatedText
	text_end
	
Route15RivalFemaleVictoryText:
	text_far _Route15RivalFemaleVictoryText
	text_end
	
Route15RivalMalePostBattleText:
	text_far _Route15RivalMalePostBattleText
	text_end
	
Route15RivalFemalePostBattleText:
	text_far _Route15RivalFemalePostBattleText
	text_end
	
Route15CooltrainerF1Text:
	text_asm
	ld hl, Route15TrainerHeader0
	jr Route15TalkToTrainer

Route15CooltrainerF2Text:
	text_asm
	ld hl, Route15TrainerHeader1
	jr Route15TalkToTrainer

Route15CooltrainerM1Text:
	text_asm
	ld hl, Route15TrainerHeader2
	jr Route15TalkToTrainer

Route15CooltrainerM2Text:
	text_asm
	ld hl, Route15TrainerHeader3
	jr Route15TalkToTrainer

Route15Beauty1Text:
	text_asm
	ld hl, Route15TrainerHeader4
	jr Route15TalkToTrainer

Route15Beauty2Text:
	text_asm
	ld hl, Route15TrainerHeader5
	jr Route15TalkToTrainer

Route15Biker1Text:
	text_asm
	ld hl, Route15TrainerHeader6
	jr Route15TalkToTrainer

Route15Biker2Text:
	text_asm
	ld hl, Route15TrainerHeader7
	jr Route15TalkToTrainer

Route15CooltrainerF3Text:
	text_asm
	ld hl, Route15TrainerHeader8
	jr Route15TalkToTrainer

Route15CooltrainerF4Text:
	text_asm
	ld hl, Route15TrainerHeader9
Route15TalkToTrainer:
	call TalkToTrainer
	jp TextScriptEnd
	
Route15RivalMaleText:
	text_far _Route15RivalMaleText
	text_end

Route15RivalFemaleText:
	text_far _Route15RivalFemaleText
	text_end

Route15CooltrainerF1BattleText:
	text_far _Route15CooltrainerF1BattleText
	text_end

Route15CooltrainerF1EndBattleText:
	text_far _Route15CooltrainerF1EndBattleText
	text_end

Route15CooltrainerF1AfterBattleText:
	text_far _Route15CooltrainerF1AfterBattleText
	text_end

Route15CooltrainerF2BattleText:
	text_far _Route15CooltrainerF2BattleText
	text_end

Route15CooltrainerF2EndBattleText:
	text_far _Route15CooltrainerF2EndBattleText
	text_end

Route15CooltrainerF2AfterBattleText:
	text_far _Route15CooltrainerF2AfterBattleText
	text_end

Route15CooltrainerM1BattleText:
	text_far _Route15CooltrainerM1BattleText
	text_end

Route15CooltrainerM1EndBattleText:
	text_far _Route15CooltrainerM1EndBattleText
	text_end

Route15CooltrainerM1AfterBattleText:
	text_far _Route15CooltrainerM1AfterBattleText
	text_end

Route15CooltrainerM2BattleText:
	text_far _Route15CooltrainerM2BattleText
	text_end

Route15CooltrainerM2EndBattleText:
	text_far _Route15CooltrainerM2EndBattleText
	text_end

Route15CooltrainerM2AfterBattleText:
	text_far _Route15CooltrainerM2AfterBattleText
	text_end

Route15Beauty1BattleText:
	text_far _Route15Beauty1BattleText
	text_end

Route15Beauty1EndBattleText:
	text_far _Route15Beauty1EndBattleText
	text_end

Route15Beauty1AfterBattleText:
	text_far _Route15Beauty1AfterBattleText
	text_end

Route15Beauty2BattleText:
	text_far _Route15Beauty2BattleText
	text_end

Route15Beauty2EndBattleText:
	text_far _Route15Beauty2EndBattleText
	text_end

Route15Beauty2AfterBattleText:
	text_far _Route15Beauty2AfterBattleText
	text_end

Route15Biker1BattleText:
	text_far _Route15Biker1BattleText
	text_end

Route15Biker1EndBattleText:
	text_far _Route15Biker1EndBattleText
	text_end

Route15Biker1AfterBattleText:
	text_far _Route15Biker1AfterBattleText
	text_end

Route15Biker2BattleText:
	text_far _Route15Biker2BattleText
	text_end

Route15Biker2EndBattleText:
	text_far _Route15Biker2EndBattleText
	text_end

Route15Biker2AfterBattleText:
	text_far _Route15Biker2AfterBattleText
	text_end

Route15CooltrainerF3BattleText:
	text_far _Route15CooltrainerF3BattleText
	text_end

Route15CooltrainerF3EndBattleText:
	text_far _Route15CooltrainerF3EndBattleText
	text_end

Route15CooltrainerF3AfterBattleText:
	text_far _Route15CooltrainerF3AfterBattleText
	text_end

Route15CooltrainerF4BattleText:
	text_far _Route15CooltrainerF4BattleText
	text_end

Route15CooltrainerF4EndBattleText:
	text_far _Route15CooltrainerF4EndBattleText
	text_end

Route15CooltrainerF4AfterBattleText:
	text_far _Route15CooltrainerF4AfterBattleText
	text_end

Route15SignText:
	text_far _Route15SignText
	text_end
