BrunosRoom_Script:
	call BrunoShowOrHideExitBlock
	call EnableAutoTextBoxDrawing
	ld hl, BrunosRoomTrainerHeaders
	ld de, BrunosRoom_ScriptPointers
	ld a, [wBrunosRoomCurScript]
	call ExecuteCurMapScriptInTable
	ld [wBrunosRoomCurScript], a
	ret

BrunoShowOrHideExitBlock:
; Blocks or clears the exit to the next room.
	ld hl, wCurrentMapScriptFlags
	bit BIT_CUR_MAP_LOADED_1, [hl]
	res BIT_CUR_MAP_LOADED_1, [hl]
	ret z
	CheckEvent EVENT_OAKSLAB_POKEDEX_RIVAL_DONE
	jp nz, .Bruno
	CheckEvent EVENT_VICTORY_ROAD_ROCKETS_DONE
	jr nz, .Petrel
.Bruno
	CheckEvent EVENT_BEAT_BRUNOS_ROOM_TRAINER_0
	jr z, .blockExitToNextRoom
	ld a, $5
	jr .setExitBlock
.blockExitToNextRoom
	ld a, $24
.setExitBlock
	ld [wNewTileBlockID], a
	lb bc, 0, 2
	predef_jump ReplaceTileBlock
.Petrel
	CheckEvent EVENT_BEAT_BRUNOS_ROOM_TRAINER_1
	jr z, .blockExitToNextRoom
	ld a, $5
	jr .setExitBlock

ResetBrunoScript:
	xor a ; SCRIPT_BRUNOSROOM_DEFAULT
	ld [wJoyIgnore], a
	ld [wBrunosRoomCurScript], a
	ld [wCurMapScript], a
	ret

BrunosRoom_ScriptPointers:
	def_script_pointers
	dw_const BrunosRoomDefaultScript,               SCRIPT_BRUNOSROOM_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_BRUNOSROOM_BRUNO_START_BATTLE
	dw_const BrunosRoomBrunoEndBattleScript,        SCRIPT_BRUNOSROOM_BRUNO_END_BATTLE
	dw_const BrunosRoomBrunoRematchEndBattleScript, SCRIPT_BRUNOSROOM_BRUNO_REMATCH_END_BATTLE
	dw_const BrunosRoomPlayerIsMovingScript,        SCRIPT_BRUNOSROOM_PLAYER_IS_MOVING
	dw_const BrunosRoomNoopScript,                  SCRIPT_BRUNOSROOM_NOOP

BrunosRoomNoopScript:
	ret

BrunoScriptWalkIntoRoom:
; Walk six steps upward.
	ld hl, wSimulatedJoypadStatesEnd
	ld a, PAD_UP
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld a, $6
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, SCRIPT_BRUNOSROOM_PLAYER_IS_MOVING
	ld [wBrunosRoomCurScript], a
	ld [wCurMapScript], a
	ret

BrunosRoomDefaultScript:
	ld hl, BrunoEntranceCoords
	call ArePlayerCoordsInArray
	jp nc, CheckFightingMapTrainers
	xor a
	ldh [hJoyPressed], a
	ldh [hJoyHeld], a
	ld [wSimulatedJoypadStatesEnd], a
	ld [wSimulatedJoypadStatesIndex], a
	ld a, [wCoordIndex]
	cp $3  ; Is player standing one tile above the exit?
	jr c, .stopPlayerFromLeaving
	CheckAndSetEvent EVENT_AUTOWALKED_INTO_BRUNOS_ROOM
	jr z, BrunoScriptWalkIntoRoom
.stopPlayerFromLeaving
	ld a, TEXT_BRUNOSROOM_BRUNO_DONT_RUN_AWAY
	ldh [hTextID], a
	call DisplayTextID  ; "Don't run away!"
	ld a, PAD_UP
	ld [wSimulatedJoypadStatesEnd], a
	ld a, $1
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, SCRIPT_BRUNOSROOM_PLAYER_IS_MOVING
	ld [wBrunosRoomCurScript], a
	ld [wCurMapScript], a
	ret

BrunoEntranceCoords:
	dbmapcoord  4, 10
	dbmapcoord  5, 10
	dbmapcoord  4, 11
	dbmapcoord  5, 11
	db -1 ; end

BrunosRoomPlayerIsMovingScript:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	call Delay3
	xor a
	ld [wJoyIgnore], a
	ld [wBrunosRoomCurScript], a
	ld [wCurMapScript], a
	ret

BrunosRoomBrunoEndBattleScript:
	call EndTrainerBattle
	ld a, [wIsInBattle]
	cp $ff
	jp z, ResetBrunoScript
	CheckEvent EVENT_OAKSLAB_POKEDEX_RIVAL_DONE
	jp nz, .Bruno
	CheckEvent EVENT_VICTORY_ROAD_ROCKETS_DONE
	jr nz, .Petrel
.Bruno
	ld a, TEXT_BRUNOSROOM_BRUNO
	jr .continue
.Petrel
	ld a, TEXT_BRUNOSROOM_PETREL
.continue
	ldh [hTextID], a
	jp DisplayTextID

BrunosRoomBrunoRematchEndBattleScript:
	call EndTrainerBattle
	ld hl, wStatusFlags3
	res BIT_PRINT_END_BATTLE_TEXT, [hl]
	ld hl, wMiscFlags
	res BIT_SEEN_BY_TRAINER, [hl]
	ld a, [wIsInBattle]
	cp $ff
	jp z, ResetBrunoScript
	ld a, PAD_CTRL_PAD
	ld [wJoyIgnore], a
	ld a, TEXT_BRUNOSROOM_BRUNO_REMATCH_AFTER_BATTLE
	ldh [hTextID], a
	call DisplayTextID
	SetEvent EVENT_BEAT_BRUNOS_ROOM_TRAINER_0
	jp ResetBrunoScript

BrunosRoom_TextPointers:
	def_text_pointers
	dw_const BrunosRoomBrunoText,                   TEXT_BRUNOSROOM_BRUNO
	dw_const BrunosRoomPetrelText,                  TEXT_BRUNOSROOM_PETREL
	dw_const BrunosRoomBrunoDontRunAwayText,        TEXT_BRUNOSROOM_BRUNO_DONT_RUN_AWAY
	dw_const BrunosRoomBrunoRematchAfterBattleText,  TEXT_BRUNOSROOM_BRUNO_REMATCH_AFTER_BATTLE

BrunosRoomTrainerHeaders:
	def_trainers
BrunosRoomTrainerHeader0:
	trainer EVENT_BEAT_BRUNOS_ROOM_TRAINER_0, 0, BrunoBeforeBattleText, BrunoEndBattleText, BrunoAfterBattleText
BrunosRoomTrainerHeader1:
	trainer EVENT_BEAT_BRUNOS_ROOM_TRAINER_1, 0, PetrelBeforeBattleText, PetrelEndBattleText, PetrelAfterBattleText
	db -1 ; end

BrunosRoomBrunoText:
	text_asm
	CheckEvent EVENT_OAKSLAB_POKEDEX_RIVAL_DONE
	jr z, .vanilla
	CheckEvent EVENT_BEAT_BRUNOS_ROOM_TRAINER_0
	jr z, .rematch
	ld hl, BrunosRoomBrunoRematchAfterBattleText
	call PrintText
	jp TextScriptEnd
.rematch
	ld hl, BrunosRoomBrunoRematchBeforeBattleText
	call PrintText
	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]
	ld hl, BrunosRoomBrunoRematchEndBattleText
	ld de, BrunosRoomBrunoRematchEndBattleText
	call SaveEndBattleTextPointers
	ld hl, BrunosRoomTrainerHeader0
	call StoreTrainerHeaderPointer
	xor a
	call ReadTrainerHeaderInfo
	ldh a, [hSpriteIndex]
	ld [wSpriteIndex], a
	call EngageMapTrainer
	ld a, 2
	ld [wEngagedTrainerSet], a
	call InitBattleEnemyParameters
	ld a, 1
	ld [wGymLeaderNo], a
	ld hl, wStatusFlags4
	set BIT_UNKNOWN_4_1, [hl]
	xor a
	ldh [hJoyHeld], a
	ldh [hJoyPressed], a
	ldh [hJoyReleased], a
	ld a, SCRIPT_BRUNOSROOM_BRUNO_REMATCH_END_BATTLE
	ld [wBrunosRoomCurScript], a
	ld [wCurMapScript], a
	jp TextScriptEnd
.vanilla
	ld a, 1
	ld [wGymLeaderNo], a
	ld hl, BrunosRoomTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

BrunosRoomBrunoRematchBeforeBattleText:
	text_far _BrunosRoomBrunoRematchBeforeBattleText
	text_end

BrunosRoomBrunoRematchEndBattleText:
	text_far _BrunosRoomBrunoRematchEndBattleText
	text_end

BrunosRoomBrunoRematchAfterBattleText:
	text_far _BrunosRoomBrunoRematchAfterBattleText
	text_end

BrunoBeforeBattleText:
	text_far _BrunoBeforeBattleText
	text_end

BrunoEndBattleText:
	text_far _BrunoEndBattleText
	text_end

BrunoAfterBattleText:
	text_far _BrunoAfterBattleText
	text_end

BrunosRoomBrunoDontRunAwayText:
	text_far _BrunosRoomBrunoDontRunAwayText
	text_end

BrunosRoomPetrelText:
	text_asm
	ld hl, BrunosRoomTrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

PetrelBeforeBattleText:
	text_far _PetrelBeforeBattleText
	text_end

PetrelEndBattleText:
	text_far _PetrelEndBattleText
	text_end

PetrelAfterBattleText:
	text_far _PetrelAfterBattleText
	text_end