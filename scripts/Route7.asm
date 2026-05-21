Route7_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route7TrainerHeaders
	ld de, Route7_ScriptPointers
	ld a, [wRoute7CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute7CurScript], a
	ret
	
Route7_ScriptPointers:
	def_script_pointers
	dw_const Route7DefaultScript,                   SCRIPT_ROUTE7_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROUTE7_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROUTE7_END_BATTLE
	dw_const Route7RivalStartBattleScript,          SCRIPT_ROUTE7_RIVAL_START_BATTLE
	dw_const Route7RivalAfterBattleScript,          SCRIPT_ROUTE7_RIVAL_AFTER_BATTLE
	dw_const Route7RivalExitScript,                 SCRIPT_ROUTE7_RIVAL_EXIT

Route7_TextPointers:
	def_text_pointers
	dw_const Route7RivalMaleText,             TEXT_ROUTE7_RIVAL_MALE
	dw_const Route7RivalFemaleText,           TEXT_ROUTE7_RIVAL_FEMALE
	dw_const Route7RivalMalePostBattleText,   TEXT_ROUTE7_RIVAL_MALE_POSTBATTLE
	dw_const Route7RivalFemalePostBattleText, TEXT_ROUTE7_RIVAL_FEMALE_POSTBATTLE
	dw_const Route7UndergroundPathSignText,   TEXT_ROUTE7_UNDERGROUND_PATH_SIGN

Route7TrainerHeaders:
	def_trainers
	db -1 ; end

Route7DefaultScript:
	CheckEvent EVENT_BEAT_ROUTE_7_RIVAL
	jr nz, .runTrainers
	
	ld hl, .RivalBattleCoords
	call ArePlayerCoordsInArray
	jp nc, .runTrainers
	
	ld a, [wCoordIndex]
	ld [wSavedCoordIndex], a
	
	ld a, [wPlayerGender]
	and a
	ld a, ROUTE7_RIVAL_MALE
	jr nz, .GotID
	ld a, ROUTE7_RIVAL_FEMALE
.GotID
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
	ld hl, wNPCMovementDirections2
	ld [hl], NPC_MOVEMENT_DOWN
	inc hl
	ld [hl], NPC_MOVEMENT_DOWN
	inc hl
	ld [hl], $ff
	ld de, wNPCMovementDirections2
	call MoveSprite
	ld a, SCRIPT_ROUTE7_RIVAL_START_BATTLE
	ld [wRoute7CurScript], a
	ld [wCurMapScript], a
	ret
	
.runTrainers
	jp CheckFightingMapTrainers
	
.RivalBattleCoords
	dbmapcoord 4, 6
	db -1
	
Route7RivalStartBattleScript:
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
	ld a, TEXT_ROUTE7_RIVAL_MALE
	jr .initBattle
	
.femaleBattle
	ld a, [wEmotionBubbleSpriteIndex]
	ldh [hSpriteIndex], a
	ld a, OPP_RIVAL3
	ld [wCurOpponent], a
	ld a, TEXT_ROUTE7_RIVAL_FEMALE
	
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
	ld hl, Route7RivalMaleDefeatedText
	ld de, Route7RivalMaleVictoryText
	jr .savePtrs
.femaleTextPtrs
	ld hl, Route7RivalFemaleDefeatedText
	ld de, Route7RivalFemaleVictoryText
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
	call Route7GetRivalTrainerNoByStarter
	
	ld a, SCRIPT_ROUTE7_RIVAL_AFTER_BATTLE
	ld [wRoute7CurScript], a
	ld [wCurMapScript], a
	ret
	
.StarterTableFemaleRival
	db STARTER1, 7
	db STARTER2, 8
	db STARTER3, 9
	db -1
	
.StarterTableMaleRival
	db STARTER1, 9
	db STARTER2, 7
	db STARTER3, 8
	db -1
	
Route7GetRivalTrainerNoByStarter:
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
	ld a, 7
	ld [wTrainerNo], a
	ret
	
Route7RivalAfterBattleScript:
	ld a, [wIsInBattle]
	cp $ff
	jr z, .reset_script
	
	xor a
	ld [wJoyIgnore], a
	
	ld a, [wPlayerGender]
	and a
	ld a, TEXT_ROUTE7_RIVAL_MALE_POSTBATTLE
	jr nz, .display
	ld a, TEXT_ROUTE7_RIVAL_FEMALE_POSTBATTLE
.display
	ldh [hTextID], a
	call DisplayTextID
	
	ld a, [wPlayerGender]
	and a
	ld a, ROUTE7_RIVAL_MALE
	jr nz, .gotExitSprite
	ld a, ROUTE7_RIVAL_FEMALE
.gotExitSprite
	ldh [hSpriteIndex], a
	
	ld a, SPRITE_FACING_UP
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	
	ld de, .RivalExitMovement
	call MoveSprite
	ld a, SCRIPT_ROUTE7_RIVAL_EXIT
	ld [wRoute7CurScript], a
	ld [wCurMapScript], a
	ret
	
.reset_script
	xor a
	ld [wJoyIgnore], a
	ret
.RivalExitMovement
	REPT 3
	db NPC_MOVEMENT_UP
	ENDR
	REPT 5
	db NPC_MOVEMENT_LEFT
	ENDR
	db $ff
	
Route7RivalExitScript:
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz
	
	xor a
	ld [wJoyIgnore], a
	
	ld a, HS_ROUTE_7_RIVAL_MALE
	ld [wMissableObjectIndex], a
	predef HideObject
	
	ld a, HS_ROUTE_7_RIVAL_FEMALE
	ld [wMissableObjectIndex], a
	predef HideObject
	
	SetEvent EVENT_BEAT_ROUTE_7_RIVAL
	
	xor a
	ld [wRoute7CurScript], a
	ld [wCurMapScript], a
	ret

Route7RivalMaleText:
	text_far _Route7RivalMaleText
	text_end
	
Route7RivalFemaleText:
	text_far _Route7RivalFemaleText
	text_end
	
Route7RivalMaleDefeatedText:
	text_far _Route7RivalMaleDefeatedText
	text_end
	
Route7RivalMaleVictoryText:
	text_far _Route7RivalMaleVictoryText
	text_end
	
Route7RivalFemaleDefeatedText:
	text_far _Route7RivalFemaleDefeatedText
	text_end
	
Route7RivalFemaleVictoryText:
	text_far _Route7RivalFemaleVictoryText
	text_end
	
Route7RivalMalePostBattleText:
	text_far _Route7RivalMalePostBattleText
	text_end
	
Route7RivalFemalePostBattleText:
	text_far _Route7RivalFemalePostBattleText
	text_end

Route7UndergroundPathSignText:
	text_far _Route7UndergroundPathSignText
	text_end
