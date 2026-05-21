ViridianForest_Script:
	call EnableAutoTextBoxDrawing
	ld hl, ViridianForestTrainerHeaders
	ld de, ViridianForest_ScriptPointers
	ld a, [wViridianForestCurScript]
	call ExecuteCurMapScriptInTable
	ld [wViridianForestCurScript], a
	ret

ViridianForest_ScriptPointers:
	def_script_pointers
	dw_const ViridianForestDefaultScript,              SCRIPT_VIRIDIANFOREST_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_VIRIDIANFOREST_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_VIRIDIANFOREST_END_BATTLE
	dw_const ViridianForestRivalStartBattleScript,   SCRIPT_VIRIDIANFOREST_RIVAL_START_BATTLE
	dw_const ViridianForestRivalAfterBattleScript,    SCRIPT_VIRIDIANFOREST_RIVAL_AFTER_BATTLE
	dw_const ViridianForestRivalExitScript,          SCRIPT_VIRIDIANFOREST_RIVAL_EXIT

ViridianForest_TextPointers:
	def_text_pointers
	dw_const ViridianForestYoungster1Text,      		TEXT_VIRIDIANFOREST_YOUNGSTER1
	dw_const ViridianForestYoungster2Text,      		TEXT_VIRIDIANFOREST_YOUNGSTER2
	dw_const ViridianForestYoungster3Text,      		TEXT_VIRIDIANFOREST_YOUNGSTER3
	dw_const ViridianForestYoungster4Text,      		TEXT_VIRIDIANFOREST_YOUNGSTER4
	dw_const PickUpItemText,                    		TEXT_VIRIDIANFOREST_ANTIDOTE
	dw_const PickUpItemText,                   		 	TEXT_VIRIDIANFOREST_POTION
	dw_const PickUpItemText,                    		TEXT_VIRIDIANFOREST_POKE_BALL
	dw_const ViridianForestYoungster5Text,     			TEXT_VIRIDIANFOREST_YOUNGSTER5
	dw_const ViridianForestRivalMaleText, 				TEXT_VIRIDIANFOREST_RIVAL_MALE
	dw_const ViridianForestRivalFemaleText, 			TEXT_VIRIDIANFOREST_RIVAL_FEMALE
	dw_const ViridianForestRivalMalePostBattleText,		TEXT_VIRIDIANFOREST_RIVAL_MALE_POSTBATTLE
	dw_const ViridianForestRivalFemalePostBattleText,	TEXT_VIRIDIANFOREST_RIVAL_FEMALE_POSTBATTLE
	dw_const ViridianForestTrainerTips1Text,    		TEXT_VIRIDIANFOREST_TRAINER_TIPS1
	dw_const ViridianForestUseAntidoteSignText, 		TEXT_VIRIDIANFOREST_USE_ANTIDOTE_SIGN
	dw_const ViridianForestTrainerTips2Text,    		TEXT_VIRIDIANFOREST_TRAINER_TIPS2
	dw_const ViridianForestTrainerTips3Text,   			TEXT_VIRIDIANFOREST_TRAINER_TIPS3
	dw_const ViridianForestTrainerTips4Text,    		TEXT_VIRIDIANFOREST_TRAINER_TIPS4
	dw_const ViridianForestLeavingSignText,     		TEXT_VIRIDIANFOREST_LEAVING_SIGN
	
ViridianForestTrainerHeaders:
	def_trainers 2
ViridianForestTrainerHeader0:
	trainer EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_0, 4, ViridianForestYoungster2BattleText, ViridianForestYoungster2EndBattleText, ViridianForestYoungster2AfterBattleText
ViridianForestTrainerHeader1:
	trainer EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_1, 4, ViridianForestYoungster3BattleText, ViridianForestYoungster3EndBattleText, ViridianForestYoungster3AfterBattleText
ViridianForestTrainerHeader2:
	trainer EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_2, 1, ViridianForestYoungster4BattleText, ViridianForestYoungster4EndBattleText, ViridianForestYoungster4AfterBattleText
	db -1 ; end

ViridianForestDefaultScript:
	CheckEvent EVENT_BEAT_VIRIDIAN_FOREST_RIVAL
	jr nz, .runBugCatchers
	
	ld hl, .RivalBattleCoords
	call ArePlayerCoordsInArray
	jr nc, .runBugCatchers
	
	ld a, [wPlayerGender]
	and a
	ld a, VIRIDIANFOREST_RIVAL_MALE
	jr nz, .gotID
	ld a, VIRIDIANFOREST_RIVAL_FEMALE
.gotID
	ldh [hSpriteIndex], a
	ld [wEmotionBubbleSpriteIndex], a
	xor a
	ld [wWhichEmotionBubble], a
	predef EmotionBubble
	
	ld a, SFX_STOP_ALL_MUSIC
	call PlaySound
	ld c, BANK(Music_MeetRival)
	ld a, MUSIC_MEET_RIVAL
	call PlayMusic
	
	ld a, [wEmotionBubbleSpriteIndex]
	ldh [hSpriteIndex], a
	ld de, .RivalApproachMovement
	call MoveSprite
	ld a, SCRIPT_VIRIDIANFOREST_RIVAL_START_BATTLE
	ld [wViridianForestCurScript], a
	ld [wCurMapScript], a
	ret

.RivalApproachMovement
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db $ff

.runBugCatchers
	jp CheckFightingMapTrainers

.RivalBattleCoords:
	dbmapcoord 1, 4
	db -1
	
ViridianForestRivalStartBattleScript:
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
	ld a, TEXT_VIRIDIANFOREST_RIVAL_MALE
	jr .initBattle

.femaleBattle
	ld a, [wEmotionBubbleSpriteIndex]
	ldh [hSpriteIndex], a
	ld a, OPP_RIVAL3
	ld [wCurOpponent], a
	ld a, TEXT_VIRIDIANFOREST_RIVAL_FEMALE

.initBattle:
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
	ld hl, ViridianForestRivalMaleDefeatedText
	ld de, ViridianForestRivalMaleVictoryText
	jr .savePtrs
.femaleTextPtrs
	ld hl, ViridianForestRivalFemaleDefeatedText
	ld de, ViridianForestRivalFemaleVictoryText
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
	call ViridianForestGetRivalTrainerNoByStarter
	
	ld a, SCRIPT_VIRIDIANFOREST_RIVAL_AFTER_BATTLE
	ld [wViridianForestCurScript], a
	ld [wCurMapScript], a
	ret
		
.StarterTableFemaleRival
	db STARTER1, 1
	db STARTER2, 2
	db STARTER3, 3
	db -1
	
.StarterTableMaleRival
	db STARTER1, 3
	db STARTER2, 1
	db STARTER3, 2
	db -1
	
ViridianForestGetRivalTrainerNoByStarter:
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
	ld a, 1
	ld [wTrainerNo], a
	ret

ViridianForestRivalAfterBattleScript:
	ld a, [wIsInBattle]
	cp $ff
	jr z, .reset_script
	
	xor a
	ld [wJoyIgnore], a
	
	ld a, [wPlayerGender]
	and a
	ld a, TEXT_VIRIDIANFOREST_RIVAL_MALE_POSTBATTLE
	jr nz, .display
	ld a, TEXT_VIRIDIANFOREST_RIVAL_FEMALE_POSTBATTLE
.display
	ldh [hTextID], a
	call DisplayTextID	

	ld a, [wPlayerGender]
	and a
	ld a, VIRIDIANFOREST_RIVAL_MALE
	jr nz, .gotExitSprite
	ld a, VIRIDIANFOREST_RIVAL_FEMALE
.gotExitSprite
	ldh [hSpriteIndex], a
	
	ld a, SPRITE_FACING_UP
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	
	ld de, .RivalExitMovement
	call MoveSprite
	
	ld a, SCRIPT_VIRIDIANFOREST_RIVAL_EXIT
	ld [wViridianForestCurScript], a
	ld [wCurMapScript], a
	ret

.reset_script
	xor a 
	ld [wJoyIgnore], a
	ret

.RivalExitMovement
	db NPC_MOVEMENT_UP
	db NPC_MOVEMENT_UP
	db NPC_MOVEMENT_UP
	db $ff

ViridianForestRivalExitScript:
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz 
	
	xor a
	ld [wJoyIgnore], a
	
	ld a, HS_VIRIDIAN_FOREST_RIVAL_MALE
	ld [wMissableObjectIndex], a
	predef HideObject
	
	ld a, HS_VIRIDIAN_FOREST_RIVAL_FEMALE
	ld [wMissableObjectIndex], a
	predef HideObject
	
	SetEvent EVENT_BEAT_VIRIDIAN_FOREST_RIVAL
	
	xor a
	ld [wViridianForestCurScript], a
	ld [wCurMapScript], a
	ret

ViridianForestYoungster1Text:
	text_far _ViridianForestYoungster1Text
	text_end

ViridianForestYoungster2Text:
	text_asm
	ld hl, ViridianForestTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

ViridianForestYoungster3Text:
	text_asm
	ld hl, ViridianForestTrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

ViridianForestYoungster4Text:
	text_asm
	ld hl, ViridianForestTrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

ViridianForestYoungster2BattleText:
	text_far _ViridianForestYoungster2BattleText
	text_end

ViridianForestYoungster2EndBattleText:
	text_far _ViridianForestYoungster2EndBattleText
	text_end

ViridianForestYoungster2AfterBattleText:
	text_far _ViridianForestYoungster2AfterBattleText
	text_end

ViridianForestYoungster3BattleText:
	text_far _ViridianForestYoungster3BattleText
	text_end

ViridianForestYoungster3EndBattleText:
	text_far _ViridianForestYoungster3EndBattleText
	text_end

ViridianForestYoungster3AfterBattleText:
	text_far _ViridianForestYoungster3AfterBattleText
	text_end

ViridianForestYoungster4BattleText:
	text_far _ViridianForestYoungster4BattleText
	text_end

ViridianForestYoungster4EndBattleText:
	text_far _ViridianForestYoungster4EndBattleText
	text_end

ViridianForestYoungster4AfterBattleText:
	text_far _ViridianForestYoungster4AfterBattleText
	text_end

ViridianForestYoungster5Text:
	text_far _ViridianForestYoungster5Text
	text_end

ViridianForestTrainerTips1Text:
	text_far _ViridianForestTrainerTips1Text
	text_end

ViridianForestUseAntidoteSignText:
	text_far _ViridianForestUseAntidoteSignText
	text_end

ViridianForestTrainerTips2Text:
	text_far _ViridianForestTrainerTips2Text
	text_end

ViridianForestTrainerTips3Text:
	text_far _ViridianForestTrainerTips3Text
	text_end

ViridianForestTrainerTips4Text:
	text_far _ViridianForestTrainerTips4Text
	text_end

ViridianForestLeavingSignText:
	text_far _ViridianForestLeavingSignText
	text_end
	
ViridianForestRivalMaleText:
	text_far _ViridianForestRivalMaleText
	text_end

ViridianForestRivalFemaleText:
	text_far _ViridianForestRivalFemaleText
	text_end
	
ViridianForestRivalMaleDefeatedText:
	text_far _ViridianForestRivalMaleDefeatedText
	text_end

ViridianForestRivalMaleVictoryText:
	text_far _ViridianForestRivalMaleVictoryText
	text_end

ViridianForestRivalFemaleDefeatedText:
	text_far _ViridianForestRivalFemaleDefeatedText
	text_end

ViridianForestRivalFemaleVictoryText:
	text_far _ViridianForestRivalFemaleVictoryText
	text_end
	
ViridianForestRivalMalePostBattleText:
	text_far _ViridianForestRivalMalePostBattleText
	text_end
	
ViridianForestRivalFemalePostBattleText:
	text_far _ViridianForestRivalFemalePostBattleText
	text_end