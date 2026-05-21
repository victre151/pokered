PokemonMansion1F_Script:
	call Mansion1CheckReplaceSwitchDoorBlocks
	call EnableAutoTextBoxDrawing
	ld hl, Mansion1TrainerHeaders
	ld de, PokemonMansion1F_ScriptPointers
	ld a, [wPokemonMansion1FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wPokemonMansion1FCurScript], a
	ret

Mansion1CheckReplaceSwitchDoorBlocks:
	ld hl, wCurrentMapScriptFlags
	bit BIT_CUR_MAP_LOADED_1, [hl]
	res BIT_CUR_MAP_LOADED_1, [hl]
	ret z
	CheckEvent EVENT_MANSION_SWITCH_ON
	jr nz, .switchTurnedOn
	lb bc, 6, 12
	call Mansion1LoadEmptyFloorTileBlock
	lb bc, 3, 8
	call Mansion1LoadHorizontalGateBlock
	lb bc, 8, 10
	call Mansion1LoadHorizontalGateBlock
	lb bc, 13, 13
	jp Mansion1LoadHorizontalGateBlock
.switchTurnedOn
	lb bc, 6, 12
	call Mansion1LoadHorizontalGateBlock
	lb bc, 3, 8
	call Mansion1LoadEmptyFloorTileBlock
	lb bc, 8, 10
	call Mansion1LoadEmptyFloorTileBlock
	lb bc, 13, 13
	jp Mansion1LoadEmptyFloorTileBlock

Mansion1LoadHorizontalGateBlock:
	ld a, $2d
	ld [wNewTileBlockID], a
	jr Mansion1ReplaceBlock

Mansion1LoadEmptyFloorTileBlock:
	ld a, $e
	ld [wNewTileBlockID], a
Mansion1ReplaceBlock:
	predef ReplaceTileBlock
	ret

Mansion1Script_Switches::
	ld a, [wSpritePlayerStateData1FacingDirection]
	cp SPRITE_FACING_UP
	ret nz
	xor a
	ldh [hJoyHeld], a
	ld a, TEXT_POKEMONMANSION1F_SWITCH
	ldh [hTextID], a
	jp DisplayTextID

PokemonMansion1F_ScriptPointers:
	def_script_pointers
	dw_const PokemonMansion1FDefaultScript,              	  SCRIPT_POKEMONMANSION1F_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, 		  SCRIPT_POKEMONMANSION1F_START_BATTLE
	dw_const EndTrainerBattle,                      		  SCRIPT_POKEMONMANSION1F_END_BATTLE
	dw_const PokemonMansion1FRivalStartBattleScript,          SCRIPT_POKEMONMANSION1F_RIVAL_START_BATTLE
	dw_const PokemonMansion1FRivalAfterBattleScript,          SCRIPT_POKEMONMANSION1F_RIVAL_AFTER_BATTLE
	dw_const PokemonMansion1FRivalExitScript,                 SCRIPT_POKEMONMANSION1F_RIVAL_EXIT

PokemonMansion1F_TextPointers:
	def_text_pointers
	dw_const PokemonMansion1FScientistText, 			  TEXT_POKEMONMANSION1F_SCIENTIST
	dw_const PokemonMansion1FRivalMale,		              TEXT_POKEMONMANSION1F_RIVAL_MALE
	dw_const PokemonMansion1FRivalFemale,				  TEXT_POKEMONMANSION1F_RIVAL_FEMALE
	dw_const PickUpItemText,                			  TEXT_POKEMONMANSION1F_ESCAPE_ROPE
	dw_const PickUpItemText,                			  TEXT_POKEMONMANSION1F_CARBOS
	dw_const PokemonMansion1FSwitchText,    			  TEXT_POKEMONMANSION1F_SWITCH
	dw_const PokemonMansion1FRivalMalePostBattleText,     TEXT_POKEMONMANSION1F_RIVAL_MALE_POSTBATTLE
	dw_const PokemonMansion1FRivalFemalePostBattleText,   TEXT_POKEMONMANSION1F_RIVAL_FEMALE_POSTBATTLE

Mansion1TrainerHeaders:
	def_trainers
Mansion1TrainerHeader0:
	trainer EVENT_BEAT_MANSION_1_TRAINER_0, 3, PokemonMansion1FScientistBattleText, PokemonMansion1FScientistEndBattleText, PokemonMansion1FScientistAfterBattleText
	db -1 ; end

PokemonMansion1FDefaultScript:
	CheckEvent EVENT_BEAT_POKEMON_MANSION_1F_RIVAL
	jr nz, .runTrainers
	
	ld hl, .RivalBattleCoords
	call ArePlayerCoordsInArray
	jp nc, .runTrainers
	
	ld a, [wCoordIndex]
	ld [wSavedCoordIndex], a
	
	ld a, [wPlayerGender]
	and a
	ld a, POKEMONMANSION1F_RIVAL_MALE
	jr nz, .GotID
	ld a, POKEMONMANSION1F_RIVAL_FEMALE
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
	
	ld hl, wNPCMovementDirections2
	
	ld a, [wSavedCoordIndex]
	cp 1
	jr z, .approachLeft
	cp 2
	jr z, .approachDownOnly
	cp 3
	jr z, .approachOneRight
	
	ld [hl], NPC_MOVEMENT_RIGHT
	inc hl
	ld [hl], NPC_MOVEMENT_RIGHT
	inc hl
	jr .approachThreeDown
	
.approachLeft
	ld [hl], NPC_MOVEMENT_LEFT
	inc hl
	jr .approachThreeDown
	
.approachDownOnly
	jr .approachThreeDown
	
.approachOneRight
	ld [hl], NPC_MOVEMENT_RIGHT
	inc hl
	
.approachThreeDown
	ld b, 3
.downLoop
	ld [hl], NPC_MOVEMENT_DOWN
	inc hl
	dec b
	jr nz, .downLoop
	ld [hl], $ff
	ld de, wNPCMovementDirections2
	call MoveSprite
	ld a, SCRIPT_POKEMONMANSION1F_RIVAL_START_BATTLE
	ld [wPokemonMansion1FCurScript], a
	ld [wCurMapScript], a
	ret
	
.runTrainers
	jp CheckFightingMapTrainers
	
.RivalBattleCoords
	dbmapcoord 4, 26
	dbmapcoord 5, 26
	dbmapcoord 6, 26
	dbmapcoord 7, 26
	db -1
	
PokemonMansion1FRivalStartBattleScript:
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
	ld a, TEXT_POKEMONMANSION1F_RIVAL_MALE
	jr .initBattle
	
.femaleBattle
	ld a, [wEmotionBubbleSpriteIndex]
	ldh [hSpriteIndex], a
	xor a
	ld [wWhichEmotionBubble], a
	predef EmotionBubble
	ld a, OPP_RIVAL3
	ld [wCurOpponent], a
	ld a, TEXT_POKEMONMANSION1F_RIVAL_FEMALE
	
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
	ld hl, PokemonMansion1FRivalMaleDefeatedText
	ld de, PokemonMansion1FRivalMaleVictoryText
	jr .savePtrs
.femaleTextPtrs
	ld hl, PokemonMansion1FRivalFemaleDefeatedText
	ld de, PokemonMansion1FRivalFemaleVictoryText
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
	call PokemonMansion1FGetRivalTrainerNoByStarter
	
	ld a, SCRIPT_POKEMONMANSION1F_RIVAL_AFTER_BATTLE
	ld [wPokemonMansion1FCurScript], a
	ld [wCurMapScript], a
	ret

.StarterTableFemaleRival
	db STARTER1, 13
	db STARTER2, 14
	db STARTER3, 15
	db -1
	
.StarterTableMaleRival
	db STARTER1, 15
	db STARTER2, 13
	db STARTER3, 14
	db -1
	
PokemonMansion1FGetRivalTrainerNoByStarter:
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
	ld a, 13
	ld [wTrainerNo], a
	ret
	
PokemonMansion1FRivalAfterBattleScript:
	ld a, [wIsInBattle]
	cp $ff
	jr z, .reset_script
	
	xor a
	ld [wJoyIgnore], a
	
	ld a, [wPlayerGender]
	and a
	ld a, TEXT_POKEMONMANSION1F_RIVAL_MALE_POSTBATTLE
	jr nz, .display
	ld a, TEXT_POKEMONMANSION1F_RIVAL_FEMALE_POSTBATTLE
.display
	ldh [hTextID], a
	call DisplayTextID
	
	ld a, [wPlayerGender]
	and a
	ld a, POKEMONMANSION1F_RIVAL_MALE
	jr nz, .gotExitSprite
	ld a, POKEMONMANSION1F_RIVAL_FEMALE
.gotExitSprite
	ldh [hSpriteIndex], a
	
	ld a, [wSavedCoordIndex]
	cp 4
	ld de, .RivalExitMovement2
	jr z, .doRivalExitMove
	ld de, .RivalExitMovement
.doRivalExitMove
	call MoveSprite
	ld a, SCRIPT_POKEMONMANSION1F_RIVAL_EXIT
	ld [wPokemonMansion1FCurScript], a
	ld [wCurMapScript], a
	ret
	
.reset_script
	xor a
	ld [wJoyIgnore], a
	ret
	
.RivalExitMovement
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db $ff
	
.RivalExitMovement2
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db $ff
	
PokemonMansion1FRivalExitScript:
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz
	
	xor a
	ld [wJoyIgnore], a
	
	ld a, HS_POKEMON_MANSION_1F_RIVAL_MALE
	ld [wMissableObjectIndex], a
	predef HideObject
	
	ld a, HS_POKEMON_MANSION_1F_RIVAL_FEMALE
	ld [wMissableObjectIndex], a
	predef HideObject
	
	SetEvent EVENT_BEAT_POKEMON_MANSION_1F_RIVAL
	
	xor a
	ld [wPokemonMansion1FCurScript], a
	ld [wCurMapScript], a
	ret


PokemonMansion1FScientistText:
	text_asm
	ld hl, Mansion1TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

PokemonMansion1FScientistBattleText:
	text_far _PokemonMansion1FScientistBattleText
	text_end

PokemonMansion1FScientistEndBattleText:
	text_far _PokemonMansion1FScientistEndBattleText
	text_end

PokemonMansion1FScientistAfterBattleText:
	text_far _PokemonMansion1FScientistAfterBattleText
	text_end

PokemonMansion1FSwitchText:
	text_asm
	ld hl, .Text
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .not_pressed
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld hl, wCurrentMapScriptFlags
	set BIT_CUR_MAP_LOADED_1, [hl]
	ld hl, .PressedText
	call PrintText
	ld a, SFX_GO_INSIDE
	call PlaySound
	CheckAndSetEvent EVENT_MANSION_SWITCH_ON
	jr z, .done
	ResetEventReuseHL EVENT_MANSION_SWITCH_ON
	jr .done
.not_pressed
	ld hl, .NotPressedText
	call PrintText
.done
	jp TextScriptEnd

.Text:
	text_far _PokemonMansion1FSwitchText
	text_end

.PressedText:
	text_far _PokemonMansion1FSwitchPressedText
	text_end

.NotPressedText:
	text_far _PokemonMansion1FSwitchNotPressedText
	text_end
	
PokemonMansion1FRivalMale:
	text_far _PokemonMansion1FRivalMale
	text_end
	
PokemonMansion1FRivalFemale:
	text_far _PokemonMansion1FRivalFemale
	text_end

PokemonMansion1FRivalMaleDefeatedText:
	text_far _PokemonMansion1FRivalMaleDefeatedText
	text_end
	
PokemonMansion1FRivalMaleVictoryText:
	text_far _PokemonMansion1FRivalMaleVictoryText
	text_end
	
PokemonMansion1FRivalFemaleDefeatedText:
	text_far _PokemonMansion1FRivalFemaleDefeatedText
	text_end
	
PokemonMansion1FRivalFemaleVictoryText:
	text_far _PokemonMansion1FRivalFemaleVictoryText
	text_end
	
PokemonMansion1FRivalMalePostBattleText:
	text_far _PokemonMansion1FRivalMalePostBattleText
	text_end
	
PokemonMansion1FRivalFemalePostBattleText:
	text_far _PokemonMansion1FRivalFemalePostBattleText
	text_end
