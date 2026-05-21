CeruleanCave1F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, CeruleanCave1F_ScriptPointers
	ld a, [wCeruleanCave1FCurScript]
	jp CallFunctionInTable

CeruleanCave1F_ScriptPointers:
	def_script_pointers
	dw_const CeruleanCave1FDefaultScript,           SCRIPT_CERULEANCAVE1F_DEFAULT
	dw_const CeruleanCave1FRivalStartBattleScript,  SCRIPT_CERULEANCAVE1F_RIVAL_START_BATTLE
	dw_const CeruleanCave1FRivalAfterBattleScript,  SCRIPT_CERULEANCAVE1F_RIVAL_AFTER_BATTLE
	dw_const CeruleanCave1FRivalExitScript,         SCRIPT_CERULEANCAVE1F_RIVAL_EXIT

CeruleanCave1FDefaultScript:
	CheckEvent EVENT_BEAT_CERULEAN_CAVE_RIVAL
	ret nz
	CheckEvent EVENT_PLAYER_IS_CHAMPION
	ret z
	ld hl, .RivalBattleCoords
	call ArePlayerCoordsInArray
	ret nc
	
	ld a, [wCoordIndex]
	ld [wSavedCoordIndex], a
	
	ld a, CERULEANCAVE1F_RIVAL
	ld [wEmotionBubbleSpriteIndex], a
	xor a ; EXCLAMATION_BUBBLE
	ld [wWhichEmotionBubble], a
	predef EmotionBubble
	
	ld a, SFX_STOP_ALL_MUSIC
	call PlaySound
	ld c, BANK(Music_MeetRival)
	ld a, MUSIC_MEET_RIVAL
	call PlayMusic

	ld a, [wSavedCoordIndex]
	cp 2
	jr z, .fourSteps
	cp 1
	jr z, .threeSteps
	ld d, 2 
	jr .loadMovement
.threeSteps
	ld d, 3
	jr .loadMovement
.fourSteps
	ld d, 4
	
.loadMovement
	ld hl, wNPCMovementDirections2
.movementLoop
	ld [hl], NPC_MOVEMENT_RIGHT
	inc hl
	dec d
	jr nz, .movementLoop
	ld [hl], $ff 
	
	ld a, CERULEANCAVE1F_RIVAL
	ldh [hSpriteIndex], a
	ld de, wNPCMovementDirections2
	call MoveSprite
	
	ld a, SCRIPT_CERULEANCAVE1F_RIVAL_START_BATTLE
	ld [wCeruleanCave1FCurScript], a
	ret

.RivalBattleCoords:
	dbmapcoord 22, 15 
	dbmapcoord 23, 15
	dbmapcoord 24, 15
	db -1
	
CeruleanCave1FRivalExitMovement:
	REPT 2
	db NPC_MOVEMENT_LEFT
	ENDR
	REPT 4
	db NPC_MOVEMENT_UP
	ENDR
	db -1

CeruleanCave1FRivalStartBattleScript:
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz 
	
	ld a, CERULEANCAVE1F_RIVAL
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_RIGHT
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	
	xor a
	ld [wJoyIgnore], a
	
	ld a, TEXT_CERULEANCAVE1F_RIVAL
	ldh [hTextID], a
	call DisplayTextID
	
	; Battle Setup
	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]
	ld hl, CeruleanCaveRivalDefeatedText
	ld de, CeruleanCaveRivalVictoryText
	call SaveEndBattleTextPointers
	
	ld a, OPP_RIVAL2
	ld [wCurOpponent], a
	
	ld hl, .CeruleanRivalStarterTable
	call CeruleanCaveGetRivalTrainerNoByStarter
	
	ld a, SCRIPT_CERULEANCAVE1F_RIVAL_AFTER_BATTLE
	ld [wCeruleanCave1FCurScript], a
	ld [wCurMapScript], a
	ret

.CeruleanRivalStarterTable:
	db STARTER2, 16
	db STARTER3, 17
	db STARTER1, 18
	db -1

CeruleanCaveGetRivalTrainerNoByStarter:
	ld a, [wRivalStarter]
	ld b, a
.next_trainer_no
	ld a, [hli]
	cp -1
	jr z, .fallback
	cp b
	jr z, .got_trainer_no
	inc hl
	jr .next_trainer_no
.got_trainer_no
	ld a, [hl]
	ld [wTrainerNo], a
	ret
.fallback
	ld a, 16
	ld [wTrainerNo], a
	ret

CeruleanCave1FRivalAfterBattleScript:
	ld a, [wIsInBattle]
	cp $ff
	jr z, .reset_script
	
	xor a
	ld [wJoyIgnore], a         
	
	ld a, CERULEANCAVE1F_RIVAL
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_RIGHT
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	
	SetEvent EVENT_BEAT_CERULEAN_CAVE_RIVAL
	
	ld a, TEXT_CERULEANCAVE1F_RIVAL_AFTER
	ldh [hTextID], a
	call DisplayTextID
	
	ld a, CERULEANCAVE1F_RIVAL
	ldh [hSpriteIndex], a
	call SetSpriteMovementBytesToFF
	ld de, CeruleanCave1FRivalExitMovement
	call MoveSprite
	
	ld a, SCRIPT_CERULEANCAVE1F_RIVAL_EXIT
	ld [wCeruleanCave1FCurScript], a
	ld [wCurMapScript], a
	ret
	
.reset_script
	xor a
	ld [wJoyIgnore], a
	ld [wCeruleanCave1FCurScript], a
	ret
	
CeruleanCave1FRivalExitScript:
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz
	
	xor a
	ld [wJoyIgnore], a
	
	ld a, HS_CERULEAN_CAVE_1F_RIVAL
	ld [wMissableObjectIndex], a
	predef HideObject
	
	call PlayDefaultMusic
	
	ld a, SCRIPT_CERULEANCAVE1F_DEFAULT
	ld [wCeruleanCave1FCurScript], a
	ld [wCurMapScript], a
	ret

.reset_script
	xor a 
	ld [wJoyIgnore], a
	ld [wCeruleanCave1FCurScript], a
	ret

CeruleanCave1F_TextPointers:
	def_text_pointers
	dw_const CeruleanCaveRivalText, 	   	   TEXT_CERULEANCAVE1F_RIVAL
	dw_const PickUpItemText,        	   	   TEXT_CERULEANCAVE1F_FULL_RESTORE
	dw_const PickUpItemText,        	   	   TEXT_CERULEANCAVE1F_MAX_ELIXER
	dw_const PickUpItemText,        	   	   TEXT_CERULEANCAVE1F_NUGGET
	dw_const CeruleanCaveRivalAfterBattleText, TEXT_CERULEANCAVE1F_RIVAL_AFTER

CeruleanCaveRivalText:
	text_far _CeruleanCaveRivalText
	text_end
	
CeruleanCaveRivalAfterBattleText:
	text_far _CeruleanCaveRivalAfterBattleText
	text_end

CeruleanCaveRivalDefeatedText:
	text_far _CeruleanCaveRivalDefeatedText
	text_end

CeruleanCaveRivalVictoryText:
	text_far _CeruleanCaveRivalVictoryText
	text_end