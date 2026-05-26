ChampionsRoom_Script:
	call EnableAutoTextBoxDrawing
	ld hl, ChampionsRoom_ScriptPointers
	ld a, [wChampionsRoomCurScript]
	jp CallFunctionInTable

ResetRivalScript:
	xor a ; SCRIPT_CHAMPIONSROOM_DEFAULT
	ld [wJoyIgnore], a
	ld [wChampionsRoomCurScript], a
	ret

ChampionsRoomStarterTableFemaleRival:
	db STARTER1, 19
	db STARTER2, 20
	db STARTER3, 21
	db -1

ChampionsRoomStarterTableMaleRival:
	db STARTER1, 21
	db STARTER2, 19
	db STARTER3, 20
	db -1

ChampionsRoomStarterTableFemaleRivalRematch:
	db STARTER1, 22
	db STARTER2, 23
	db STARTER3, 24
	db -1

ChampionsRoomStarterTableMaleRivalRematch:
	db STARTER1, 24
	db STARTER2, 22
	db STARTER3, 23
	db -1

ChampionsRoomPickTrainerNoByStarter:
	ld a, [wPlayerStarter]
	ld b, a
.pickNext
	ld a, [hli]
	cp -1
	jr z, .pickFallback
	cp b
	jr z, .pickGot
	inc hl
	jr .pickNext
.pickGot
	ld a, [hl]
	ld [wTrainerNo], a
	ret
.pickFallback
	ld a, 19
	ld [wTrainerNo], a
	ret

ChampionsRoom_ScriptPointers:
	def_script_pointers
	dw_const ChampionsRoomDefaultScript,                  SCRIPT_CHAMPIONSROOM_DEFAULT
	dw_const ChampionsRoomPlayerEntersScript,             SCRIPT_CHAMPIONSROOM_PLAYER_ENTERS
	dw_const ChampionsRoomRivalReadyToBattleScript,       SCRIPT_CHAMPIONSROOM_RIVAL_READY_TO_BATTLE
	dw_const ChampionsRoomRivalDefeatedScript,            SCRIPT_CHAMPIONSROOM_RIVAL_DEFEATED
	dw_const ChampionsRoomOakArrivesScript,               SCRIPT_CHAMPIONSROOM_OAK_ARRIVES
	dw_const ChampionsRoomOakCongratulatesPlayerScript,   SCRIPT_CHAMPIONSROOM_OAK_CONGRATULATES_PLAYER
	dw_const ChampionsRoomOakDisappointedWithRivalScript, SCRIPT_CHAMPIONSROOM_OAK_DISAPPOINTED_WITH_RIVAL
	dw_const ChampionsRoomOakComeWithMeScript,            SCRIPT_CHAMPIONSROOM_OAK_COME_WITH_ME
	dw_const ChampionsRoomOakExitsScript,                 SCRIPT_CHAMPIONSROOM_OAK_EXITS
	dw_const ChampionsRoomPlayerFollowsOakScript,         SCRIPT_CHAMPIONSROOM_PLAYER_FOLLOWS_OAK
	dw_const ChampionsRoomCleanupScript,                  SCRIPT_CHAMPIONSROOM_CLEANUP_SCRIPT

ChampionsRoomDefaultScript:
	ret

ChampionsRoomPlayerEntersScript:
	ld a, PAD_BUTTONS | PAD_CTRL_PAD
	ld [wJoyIgnore], a
	ld hl, wSimulatedJoypadStatesEnd
	ld de, RivalEntrance_RLEMovement
	call DecodeRLEList
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, SCRIPT_CHAMPIONSROOM_RIVAL_READY_TO_BATTLE
	ld [wChampionsRoomCurScript], a
	ret

RivalEntrance_RLEMovement:
	db PAD_UP, 1
	db PAD_RIGHT, 1
	db PAD_UP, 3
	db -1 ; end

ChampionsRoomRivalReadyToBattleScript:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	call Delay3
	xor a
	ld [wJoyIgnore], a
	ld hl, wOptions
	res BIT_BATTLE_ANIMATION, [hl]

	CheckEvent EVENT_VICTORY_ROAD_ROCKETS_DONE
	jp nz, .Archer

	ld a, [wPlayerGender]
	and a
	jr z, .MaleIntro
	ld a, TEXT_CHAMPIONSROOM_RIVAL_FEMALE
	jr .ShowIntro
.MaleIntro
	ld a, TEXT_CHAMPIONSROOM_RIVAL_MALE
.ShowIntro
	ldh [hTextID], a
	call DisplayTextID
	call Delay3

	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]

	CheckEvent EVENT_OAKSLAB_POKEDEX_RIVAL_DONE
	jr nz, .RematchBattleSetup

	ld a, [wPlayerGender]
	and a
	ld hl, DefeatedTextBoy
	ld de, MaleVictoryText
	ld a, OPP_RIVAL4
	jr nz, .done
	ld hl, DefeatedTextGirl
	ld de, FemaleVictoryText
	ld a, OPP_RIVAL3
.done
	ld [wCurOpponent], a
	call SaveEndBattleTextPointers
	ld a, [wPlayerGender]
	and a
	jr z, .useFemaleRivalTable
	ld hl, ChampionsRoomStarterTableMaleRival
	jr .gotChampionsStarterTable
.useFemaleRivalTable
	ld hl, ChampionsRoomStarterTableFemaleRival
.gotChampionsStarterTable
	call ChampionsRoomPickTrainerNoByStarter
	jr .saveTrainerContinue

.RematchBattleSetup
	ld a, [wPlayerGender]
	and a
	ld hl, RematchDefeatedTextBoy
	ld de, RematchMaleVictoryText
	ld a, OPP_RIVAL4
	jr nz, .rematchDone
	ld hl, RematchDefeatedTextGirl
	ld de, RematchFemaleVictoryText
	ld a, OPP_RIVAL3
.rematchDone
	ld [wCurOpponent], a
	call SaveEndBattleTextPointers
	ld a, [wPlayerGender]
	and a
	jr z, .useFemaleRivalTableRematch
	ld hl, ChampionsRoomStarterTableMaleRivalRematch
	jr .gotRematchTable
.useFemaleRivalTableRematch
	ld hl, ChampionsRoomStarterTableFemaleRivalRematch
.gotRematchTable
	call ChampionsRoomPickTrainerNoByStarter
	jr .saveTrainerContinue

.saveTrainerContinue
	xor a
	ldh [hJoyHeld], a
	ld a, SCRIPT_CHAMPIONSROOM_RIVAL_DEFEATED
	ld [wChampionsRoomCurScript], a
	ret

.saveTrainerId
	ld [wTrainerNo], a
	jr .saveTrainerContinue

.Archer
	ld a, TEXT_CHAMPIONSROOM_ARCHER_INTRO
	ldh [hTextID], a
	call DisplayTextID
	call Delay3
	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]
	ld hl, ChampionsRoomArcherDefeatedText
	ld de, ChampionsRoomArcherVictoryText
	call SaveEndBattleTextPointers
	ld a, OPP_ARCHER
	ld [wCurOpponent], a
	ld a, $1
	jr .saveTrainerId

ChampionsRoomRivalDefeatedScript:
	ld a, [wIsInBattle]
	cp $ff
	jp z, ResetRivalScript
	call UpdateSprites
	CheckEvent EVENT_VICTORY_ROAD_ROCKETS_DONE
	jr nz, .ArcherDefeated
	SetEvent EVENT_BEAT_CHAMPION_RIVAL
	ld a, PAD_CTRL_PAD
	ld [wJoyIgnore], a
	ld a, [wPlayerGender]
	and a
	ld a, TEXT_CHAMPIONSROOM_RIVAL_FEMALE
	jr nz, .gotText
	ld a, TEXT_CHAMPIONSROOM_RIVAL_MALE
.gotText
	ldh [hTextID], a
	call ChampionsRoom_DisplayTextID_AllowABSelectStart
	ld a, [wPlayerGender]
	add CHAMPIONSROOM_RIVAL_MALE
	ldh [hSpriteIndex], a
	call SetSpriteMovementBytesToFF
	ld a, SCRIPT_CHAMPIONSROOM_OAK_ARRIVES
	ld [wChampionsRoomCurScript], a
	ret

.ArcherDefeated
	SetEvent EVENT_BEAT_LEAGUE_ROCKETS
	ld a, PAD_CTRL_PAD
	ld [wJoyIgnore], a
	ld a, CHAMPIONSROOM_ARCHER
	ldh [hSpriteIndex], a
	ld a, TEXT_CHAMPIONSROOM_ARCHER_AFTER_BATTLE
	ldh [hTextID], a
	call ChampionsRoom_DisplayTextID_AllowABSelectStart
	call SetSpriteMovementBytesToFF
	call GBFadeOutToBlack
	ld a, HS_CHAMPIONS_ROOM_ARCHER
	ld [wMissableObjectIndex], a
	predef HideObject
	call UpdateSprites
	call Delay3
	call GBFadeInFromBlack
	ld a, SCRIPT_CHAMPIONSROOM_OAK_ARRIVES
	ld [wChampionsRoomCurScript], a
	ret

ChampionsRoomOakArrivesScript:
	farcall Music_Cities1AlternateTempo
	CheckEvent EVENT_BEAT_LEAGUE_ROCKETS
	jr nz, .RocketsOak
	CheckEvent EVENT_OAKSLAB_POKEDEX_RIVAL_DONE
	jr nz, .RematchOak
	ld a, TEXT_CHAMPIONSROOM_OAK
	jr .continue
.RematchOak
	ld a, TEXT_CHAMPIONSROOM_OAK_REMATCH_ARRIVES
	jr .continue
.continue
	ldh [hTextID], a
	call ChampionsRoom_DisplayTextID_AllowABSelectStart
	ld a, CHAMPIONSROOM_OAK
	ldh [hSpriteIndex], a
	call SetSpriteMovementBytesToFF
	ld de, OakEntranceAfterVictoryMovement
	ld a, CHAMPIONSROOM_OAK
	ldh [hSpriteIndex], a
	call MoveSprite
	ld a, HS_CHAMPIONS_ROOM_OAK
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, SCRIPT_CHAMPIONSROOM_OAK_CONGRATULATES_PLAYER
	ld [wChampionsRoomCurScript], a
	ret
.RocketsOak
	ld a, TEXT_CHAMPIONSROOM_ROCKETS_OAK
	jr .continue

OakEntranceAfterVictoryMovement:
	db NPC_MOVEMENT_UP
	db NPC_MOVEMENT_UP
	db NPC_MOVEMENT_UP
	db NPC_MOVEMENT_UP
	db NPC_MOVEMENT_UP
	db -1 ; end

ChampionsRoomOakCongratulatesPlayerScript:
	CheckEvent EVENT_BEAT_LEAGUE_ROCKETS
	jr nz, .LeagueRockets
	CheckEvent EVENT_OAKSLAB_POKEDEX_RIVAL_DONE
	jr nz, .RematchCongrats
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz
	ld a, PLAYER_DIR_LEFT
	ld [wPlayerMovingDirection], a
	ld a, [wPlayerGender]
	add CHAMPIONSROOM_RIVAL_MALE
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_LEFT
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	ld a, CHAMPIONSROOM_OAK
	ldh [hSpriteIndex], a
	xor a ; SPRITE_FACING_DOWN
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	ld a, TEXT_CHAMPIONSROOM_OAK_CONGRATULATES_PLAYER
	ldh [hTextID], a
	call ChampionsRoom_DisplayTextID_AllowABSelectStart
	ld a, SCRIPT_CHAMPIONSROOM_OAK_DISAPPOINTED_WITH_RIVAL
	ld [wChampionsRoomCurScript], a
	ret
.RematchCongrats
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz
	ld a, PLAYER_DIR_LEFT
	ld [wPlayerMovingDirection], a
	ld a, [wPlayerGender]
	add CHAMPIONSROOM_RIVAL_MALE
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_LEFT
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	ld a, CHAMPIONSROOM_OAK
	ldh [hSpriteIndex], a
	xor a
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	ld a, TEXT_CHAMPIONSROOM_OAK_REMATCH_CONGRATS
	ldh [hTextID], a
	call ChampionsRoom_DisplayTextID_AllowABSelectStart
	ld a, SCRIPT_CHAMPIONSROOM_OAK_COME_WITH_ME
	ld [wChampionsRoomCurScript], a
	ret
.LeagueRockets
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz
	ld a, PLAYER_DIR_LEFT
	ld [wPlayerMovingDirection], a
	ld a, CHAMPIONSROOM_OAK
	ldh [hSpriteIndex], a
	xor a ; SPRITE_FACING_DOWN
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	ld a, TEXT_CHAMPIONSROOM_OAK_BEAT_ROCKETS
	ldh [hTextID], a
	call ChampionsRoom_DisplayTextID_AllowABSelectStart
	ld a, SCRIPT_CHAMPIONSROOM_OAK_COME_WITH_ME
	ld [wChampionsRoomCurScript], a
	ret

ChampionsRoomOakDisappointedWithRivalScript:
	CheckEvent EVENT_OAKSLAB_POKEDEX_RIVAL_DONE
	jr nz, ChampionsRoomOakComeWithMeScript
	ld a, TEXT_CHAMPIONSROOM_OAK_DISAPPOINTED_WITH_RIVAL
	ldh [hTextID], a
	call ChampionsRoom_DisplayTextID_AllowABSelectStart
	ld a, SCRIPT_CHAMPIONSROOM_OAK_COME_WITH_ME
	ld [wChampionsRoomCurScript], a
	ret

ChampionsRoomOakComeWithMeScript:
	CheckEvent EVENT_BEAT_LEAGUE_ROCKETS
	jr nz, .FollowOak
	CheckEvent EVENT_OAKSLAB_POKEDEX_RIVAL_DONE
	jr nz, .RematchFollow
	ld a, TEXT_CHAMPIONSROOM_OAK_COME_WITH_ME
	ldh [hTextID], a
	call ChampionsRoom_DisplayTextID_AllowABSelectStart
	ld de, OakExitChampionsRoomMovement
	ld a, CHAMPIONSROOM_OAK
	ldh [hSpriteIndex], a
	call MoveSprite
	ld a, SCRIPT_CHAMPIONSROOM_OAK_EXITS
	ld [wChampionsRoomCurScript], a
	ret
.RematchFollow
	ld a, TEXT_CHAMPIONSROOM_OAK_REMATCH_COME_WITH_ME
	ldh [hTextID], a
	call ChampionsRoom_DisplayTextID_AllowABSelectStart
	ld de, OakExitChampionsRoomMovement
	ld a, CHAMPIONSROOM_OAK
	ldh [hSpriteIndex], a
	call MoveSprite
	ld a, SCRIPT_CHAMPIONSROOM_OAK_EXITS
	ld [wChampionsRoomCurScript], a
	ret
.FollowOak
	ld a, TEXT_CHAMPIONSROOM_FOLLOW_OAK_ROCKETS
	ldh [hTextID], a
	call ChampionsRoom_DisplayTextID_AllowABSelectStart
	ld de, OakExitChampionsRoomMovement
	ld a, CHAMPIONSROOM_OAK
	ldh [hSpriteIndex], a
	call MoveSprite
	ld a, SCRIPT_CHAMPIONSROOM_OAK_EXITS
	ld [wChampionsRoomCurScript], a
	ret

OakExitChampionsRoomMovement:
	db NPC_MOVEMENT_UP
	db NPC_MOVEMENT_UP
	db -1 ; end

ChampionsRoomOakExitsScript:
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz
	ld a, HS_CHAMPIONS_ROOM_OAK
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, SCRIPT_CHAMPIONSROOM_PLAYER_FOLLOWS_OAK
	ld [wChampionsRoomCurScript], a
	ret

ChampionsRoomPlayerFollowsOakScript:
	ld a, PAD_BUTTONS | PAD_CTRL_PAD
	ld [wJoyIgnore], a
	ld hl, wSimulatedJoypadStatesEnd
	ld de, WalkToHallOfFame_RLEMovement
	call DecodeRLEList
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, SCRIPT_CHAMPIONSROOM_CLEANUP_SCRIPT
	ld [wChampionsRoomCurScript], a
	ret

WalkToHallOfFame_RLEMovement:
	db PAD_UP, 4
	db PAD_LEFT, 1
	db -1 ; end

ChampionsRoomCleanupScript:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	xor a
	ld [wJoyIgnore], a
	ld a, SCRIPT_CHAMPIONSROOM_DEFAULT
	ld [wChampionsRoomCurScript], a
	ret

ChampionsRoom_DisplayTextID_AllowABSelectStart:
	ld a, PAD_CTRL_PAD
	ld [wJoyIgnore], a
	call DisplayTextID
	ld a, PAD_BUTTONS | PAD_CTRL_PAD
	ld [wJoyIgnore], a
	ret

ChampionsRoom_TextPointers:
	def_text_pointers
	dw_const ChampionsRoomMaleText,                     TEXT_CHAMPIONSROOM_RIVAL_MALE
	dw_const ChampionsRoomFemaleText,                   TEXT_CHAMPIONSROOM_RIVAL_FEMALE
	dw_const ChampionsRoomOakText,                      TEXT_CHAMPIONSROOM_OAK
	dw_const ChampionsRoomOakCongratulatesPlayerText,   TEXT_CHAMPIONSROOM_OAK_CONGRATULATES_PLAYER
	dw_const ChampionsRoomOakDisappointedWithRivalText, TEXT_CHAMPIONSROOM_OAK_DISAPPOINTED_WITH_RIVAL
	dw_const ChampionsRoomOakComeWithMeText,            TEXT_CHAMPIONSROOM_OAK_COME_WITH_ME
	dw_const ChampionsRoomArcherIntro,                  TEXT_CHAMPIONSROOM_ARCHER_INTRO
	dw_const ChampionsRoomArcherDefeatedText,           TEXT_CHAMPIONSROOM_ARCHER_DEFEATED
	dw_const ChampionsRoomArcherAfterBattleText,        TEXT_CHAMPIONSROOM_ARCHER_AFTER_BATTLE
	dw_const ChampionsRoomRocketsOakText,               TEXT_CHAMPIONSROOM_ROCKETS_OAK
	dw_const ChampionsRoomOakBeatRockets,               TEXT_CHAMPIONSROOM_OAK_BEAT_ROCKETS
	dw_const ChampionsRoomFollowOakRocketsText,         TEXT_CHAMPIONSROOM_FOLLOW_OAK_ROCKETS
	dw_const ChampionsRoomOakRematchArrivesText,        TEXT_CHAMPIONSROOM_OAK_REMATCH_ARRIVES
	dw_const ChampionsRoomOakRematchCongratsText,       TEXT_CHAMPIONSROOM_OAK_REMATCH_CONGRATS
	dw_const ChampionsRoomOakRematchComeWithMeText,      TEXT_CHAMPIONSROOM_OAK_REMATCH_COME_WITH_ME

ChampionsRoomMaleText:
	text_asm
	CheckEvent EVENT_OAKSLAB_POKEDEX_RIVAL_DONE
	jr z, .vanilla
	CheckEvent EVENT_BEAT_CHAMPION_RIVAL
	jr z, .rematchFight
	ld hl, RematchAfterOnlyFemale
	jr .printText
.rematchFight
	ld hl, RematchIntroFemale
	call PrintText
	jp TextScriptEnd
.vanilla
	CheckEvent EVENT_BEAT_CHAMPION_RIVAL
	ld hl, IntroFemale
	jr z, .printText
	ld hl, AfterBattleGirl
.printText
	call PrintText
	jp TextScriptEnd

ChampionsRoomFemaleText:
	text_asm
	CheckEvent EVENT_OAKSLAB_POKEDEX_RIVAL_DONE
	jr z, .vanilla
	CheckEvent EVENT_BEAT_CHAMPION_RIVAL
	jr z, .rematchFight
	ld hl, RematchAfterOnlyMale
	jr .printText
.rematchFight
	ld hl, RematchIntroMale
	call PrintText
	jp TextScriptEnd
.vanilla
	CheckEvent EVENT_BEAT_CHAMPION_RIVAL
	ld hl, IntroMale
	jr z, .printText
	ld hl, AfterBattleBoy
.printText
	call PrintText
	jp TextScriptEnd
IntroMale:
	text_far _ChampionsRoomMaleIntroText
	text_end

IntroFemale:
	text_far _ChampionsRoomFemaleIntroText
	text_end

RematchIntroMale:
	text_far _ChampionsRoomMaleRematchIntroText
	text_end

RematchIntroFemale:
	text_far _ChampionsRoomFemaleRematchIntroText
	text_end

RematchAfterOnlyMale:
	text_far _ChampionsRoomMaleRematchAfterBattleText
	text_end

RematchAfterOnlyFemale:
	text_far _ChampionsRoomFemaleRematchAfterBattleText
	text_end

RematchDefeatedTextBoy:
	text_far _ChampionsRoomBoyRematchDefeatedText
	text_end

RematchDefeatedTextGirl:
	text_far _ChampionsRoomGirlRematchDefeatedText
	text_end

RematchMaleVictoryText:
	text_far _ChampionsRoomMaleRematchVictoryText
	text_end

RematchFemaleVictoryText:
	text_far _ChampionsRoomFemaleRematchVictoryText
	text_end

DefeatedTextGirl:
	text_far _GirlDefeatedText
	text_end

DefeatedTextBoy:
	text_far _BoyDefeatedText
	text_end

MaleVictoryText:
	text_far _MaleVictoryText
	text_end

FemaleVictoryText:
	text_far _FemaleVictoryText
	text_end

AfterBattleGirl:
	text_far _ChampionsRoomGirlAfterBattleText
	text_end

AfterBattleBoy:
	text_far _ChampionsRoomBoyAfterBattleText
	text_end

ChampionsRoomOakText:
	text_far _ChampionsRoomOakText
	text_end

ChampionsRoomOakCongratulatesPlayerText:
	text_asm
	ld a, [wPlayerStarter]
	ld [wNamedObjectIndex], a
	call GetMonName
	ld hl, .Text
	call PrintText
	jp TextScriptEnd
.Text:
	text_far _ChampionsRoomOakCongratulatesPlayerText
	text_end

ChampionsRoomOakRematchArrivesText:
	text_far _ChampionsRoomOakRematchArrivesText
	text_end

ChampionsRoomOakRematchCongratsText:
	text_far _ChampionsRoomOakRematchCongratulatesPlayerText
	text_end

ChampionsRoomOakRematchComeWithMeText:
	text_far _ChampionsRoomOakRematchComeWithMeText
	text_end

ChampionsRoomOakDisappointedWithRivalText:
	text_far _ChampionsRoomOakDisappointedWithRivalText
	text_end

ChampionsRoomOakComeWithMeText:
	text_far _ChampionsRoomOakComeWithMeText
	text_end

ChampionsRoomArcherIntro:
	text_far _ChampionsRoomArcherIntro
	text_end

ChampionsRoomArcherDefeatedText:
	text_far _ChampionsRoomArcherDefeated
	text_end

ChampionsRoomArcherVictoryText:
	text_far _ChampionsRoomArcherVictory
	text_end

ChampionsRoomArcherAfterBattleText:
	text_far _ChampionsRoomArcherAfterBattle
	text_end

ChampionsRoomRocketsOakText:
	text_far _ChampionsRoomRocketsOakText
	text_end

ChampionsRoomOakBeatRockets:
	text_far _ChampionsRoomOakBeatRockets
	text_end

ChampionsRoomFollowOakRocketsText:
	text_far _ChampionsRoomFollowOakRocketsText
	text_end