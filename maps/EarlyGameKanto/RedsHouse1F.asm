RedsHouse1FRB_MapScriptHeader: ; 0x19ae9c
	; trigger count
	db 2

	; triggers
	dw RedsHouse1FRB_Trigger1, $0000
	dw RedsHouse1FRB_Trigger2, $0000

	; callback count
	db 0
; 0x19aea2

RedsHouse1FRB_Trigger1: ; 0x19aea2
	end
; 0x19aea3
RedsHouse1FRB_Trigger2:
	end

MomsScript_Start4:
	setevent EVENT_000_STD
MomsScript_Start3:
	setevent EVENT_003_STD
	playmusic MUSIC_MOM
	showemote $0, $2, 15
	spriteface $0, $0
	checkevent EVENT_000_STD
	iffalse RedsHouse1FRB_Movement3
	applymovement $2, MovementData_MomWalkUp
	jump RedsHouse1FRB_SkipMovement

RedsHouse1FRB_Movement3:
	applymovement $2, MovementData_MomLookUp
	jump RedsHouse1FRB_SkipMovement

MomsScript_Start1: ; 0x7a4d8
	setevent EVENT_000_STD
; 0x7a4db

MomsScript_Start2: ; 0x7a4db
	playmusic MUSIC_MOM
	showemote $0, $2, 15
	spriteface $0, $2
	checkevent EVENT_000_STD
	iffalse RedsHouse1FRB_Movement2
	applymovement $2, MovementData_0x7a5fc
	jump RedsHouse1FRB_SkipMovement
; 0x7a4f2

RedsHouse1FRB_Movement2: ; 0x7a4f2
	applymovement $2, MovementData_0x7a5fe
RedsHouse1FRB_SkipMovement: ; 0x7a4f6
	loadfont
	writetext MomText1
	buttonsound
	stringtotext RedsHouse1FRB_GearName, $1
	scall RedsHouse1FRB_GetItem
	setflag ENGINE_POKEGEAR
	dotrigger $1
	writetext MomText2
	buttonsound
	special Function90913
RedsHouse1FRB_DSTLoop: ; 0x7a519
	writetext MomText3
	yesorno
	iffalse RedsHouse1FRB_NotDST
	special Function90a54
	yesorno
	iffalse RedsHouse1FRB_DSTLoop
	jump RedsHouse1FRB_TimeIsSet
; 0x7a52a

RedsHouse1FRB_NotDST: ; 0x7a52a
	special Function90a88
	yesorno
	iffalse RedsHouse1FRB_DSTLoop
RedsHouse1FRB_TimeIsSet: ; 0x7a531
	writetext MomText4
	; yesorno
	; iffalse RedsHouse1FRB_DontNeedPhoneExplanation
	; writetext MomText5
	; buttonsound
	; jump RedsHouse1FRB_AfterPhoneExplanation
; ; 0x7a542

; RedsHouse1FRB_DontNeedPhoneExplanation: ; 0x7a542
	; writetext MomText6
	; buttonsound
; ; 0x7a549

; RedsHouse1FRB_AfterPhoneExplanation: ; 0x7a549
	; writetext MomText7
	waitbutton
	closetext
	checkevent EVENT_003_STD
	iftrue RedsHouse1FRB_MoveBack3
	checkevent EVENT_000_STD
	iftrue RedsHouse1FRB_MoveBack1
	checkevent EVENT_001_STD
	iffalse RedsHouse1FRB_MoveBack2
	jump RedsHouse1FRB_DontMoveBack
; 0x7a55d

RedsHouse1FRB_MoveBack1: ; 0x7a55d
	applymovement $2, MovementData_0x7a600
	jump RedsHouse1FRB_DontMoveBack
; 0x7a564

RedsHouse1FRB_MoveBack2: ; 0x7a564
	applymovement $2, MovementData_0x7a602
	jump RedsHouse1FRB_DontMoveBack

RedsHouse1FRB_MoveBack3:
	checkevent EVENT_000_STD
	iftrue RedsHouse1FRB_MoveBack4
	applymovement $2, MovementData_0x7a600
	jump RedsHouse1FRB_DontMoveBack

RedsHouse1FRB_MoveBack4:
	applymovement $2, MovementData_MomWalksDownLooksLeft

RedsHouse1FRB_DontMoveBack: ; 0x7a56b
	special RestartMapMusic
	spriteface $2, LEFT
	blackoutmod GROUP_PALLET_TOWN_RB, MAP_PALLET_TOWN_RB
	end
; 0x7a572

MomScript2: ; 0x7a572
	playmusic MUSIC_MOM
	jump RedsHouse1FRB_SkipMovement
; 0x7a578

RedsHouse1FRB_GearName: ; 0x7a578
	db "#MATOS@"
; 0x7a57e

RedsHouse1FRB_GetItem: ; 0x7a57e
	jumpstd receiveitem
	end
; 0x7a582

MomScript1:
	faceplayer
	setevent EVENT_001_STD
	checktriggers
	iffalse MomScript2
	loadfont
	checkevent EVENT_GOT_POKEMON_FROM_OAK
	iftrue .heal
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .female
	writetext MomText_AllBoysLeaveHomeSomeday
	jump .finish
.female
	writetext MomText_AllGirlsLeaveHomeSomeday
.finish
	waitbutton
	closetext
	end

.heal
	checkevent EVENT_002_STD
	iftrue .skip_heal
	writetext MomHealsYouText
	waitbutton
	closetext
	special Special_FadeToBlack
	special Functiond91
	special Function1060a2
	playmusic MUSIC_HEAL
	special HealParty
	blackoutmod GROUP_PALLET_TOWN_RB, MAP_PALLET_TOWN_RB
	pause 60
	special Function8c0ab
	special RestartMapMusic
	loadfont
	setevent EVENT_002_STD
.skip_heal
	writetext MomAfterHealText
	waitbutton
	closetext
	end
; 0x19aeba

MapRedsHouse1FRBSignpost2Script: ; 0x19aeba
	jumptext MovieOnTVText_RedsHouse1FRB
; 0x19aebd

MapRedsHouse1FRBSignpost1Script: ; 0x19aebd
	jumpstd picturebookshelf
; 0x19aec0

MovementData_0x7a5fc: ; 0x7a5fc
	turn_head_right
	step_end
; 0x7a5fe

MovementData_0x7a5fe: ; 0x7a5fe
	slow_step_right
	step_end
; 0x7a600
MovementData_MomWalksDownLooksLeft:
	slow_step_down
MovementData_0x7a600: ; 0x7a600
	turn_head_left
	step_end
; 0x7a602

MovementData_0x7a602: ; 0x7a602
	slow_step_left
	step_end
; 0x7a604

MovementData_MomWalkUp:
	slow_step_up
	step_end

MovementData_MomLookUp:
	turn_head_up
	step_end

MomText1: ; 0x7a604
	text "Ah, <PLAYER>! Notre"
	line "voisin, le PROF."
	cont "CHEN, te cherche."

	para "Il a dit qu'il"
	line "avait besoin de"
	cont "toi pour quelque"
	cont "chose."

	para "Oh! J'ai failli"
	line "oublié. Ton #-"

	para "MATOS est revenu"
	line "du réparateur."

	para "Tiens!"
	done
; 0x7a6bd

MomText2: ; 0x7a6bd
	text "Le MATOS #MON,"
	line "ou #MATOS."

	para "Il est primordial"
	line "si tu veux être un"
	cont "bon dresseur."

	para "Oh, le jour de la"
	line "semaine est"
	cont "déréglé!"

	para "Voyons voir<...>"
	done
; 0x7a742

MomText3: ; 0x7a742
	text "Est-on à l'heure"
	line "d'été?"
	done
; 0x7a763

MomText4: ; 0x7a763
	text "Reviens ajuster"
	line "l'horloge à la"

	para "maison pour"
	line "l'heure d'été."
	done

MomText_AllBoysLeaveHomeSomeday:
	text "Bon. Tout les"
	line "garçons quittent"
	cont "la maison un jour."
	
	para "Ils le disent à la"
	line "télévision."

	para "Allez, le PROF."
	line "CHEN t'attends!"
	done

MomText_AllGirlsLeaveHomeSomeday:
	text "Bon. Toutes les"
	line "filles quittent"
	cont "la maison un jour."
	
	para "Ils le disent à la"
	line "télévision."

	para "Allez, le PROF."
	line "CHEN t'attends!"
	done

MomHealsYouText:
	text "MAMAN: <PLAYER>!"
	line "Tu devrais te"
	cont "reposer."
	done

MomAfterHealText:
	text "MAMAN: Super!"
	line "Tes #MON et toi"
	para "avez l'air"
	line "en forme!"
	para "Fais attention!"
	done

MovieOnTVText_RedsHouse1FRB:
	text "Il y a un film"
	line "à la télé."

	para "Quatre garçons"
	line "marchent sur des"
	cont "rails de train."

	para "<...> Je dois y aller."
	done

RedsHouse1FRB_MapEventHeader: ; 0x19b017
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $7, $2, 1, GROUP_PALLET_TOWN_RB, MAP_PALLET_TOWN_RB
	warp_def $7, $3, 1, GROUP_PALLET_TOWN_RB, MAP_PALLET_TOWN_RB
	warp_def $0, $7, 1, GROUP_REDS_HOUSE_2F_RB, MAP_REDS_HOUSE_2F_RB

	; xy triggers
	db 4
	xy_trigger 0, $3, $6, 0, MomsScript_Start1, $0, $0
	xy_trigger 0, $3, $7, 0, MomsScript_Start2, $0, $0
	xy_trigger 0, $2, $5, 0, MomsScript_Start3, $0, $0
	xy_trigger 0, $1, $5, 0, MomsScript_Start4, $0, $0

	; signposts
	db 3
	signpost 1, 0, $0, MapRedsHouse1FRBSignpost1Script
	signpost 1, 1, $0, MapRedsHouse1FRBSignpost1Script
	signpost 1, 2, $0, MapRedsHouse1FRBSignpost2Script

	; people-events
	db 1
	person_event SPRITE_MOM, 7, 9, $8, 0, 0, -1, -1, 0, 0, 0, MomScript1, -1
; 0x19b048

