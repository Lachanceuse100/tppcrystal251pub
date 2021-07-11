CopycatsHouse2F_MapScriptHeader: ; 0x18ae9a
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 2, UnknownScript_0x18ae9f
; 0x18ae9f

UnknownScript_0x18ae9f: ; 0x18ae9f
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue UnknownScript_0x18aeac
	disappear $7
	appear $2
	jump UnknownScript_0x18aeb0
; 0x18aeac

UnknownScript_0x18aeac: ; 0x18aeac
	disappear $2
	appear $7
UnknownScript_0x18aeb0: ; 0x18aeb0
	return
; 0x18aeb1

SetCopycatToPlayerPals:
	ld a, [wPlayerPalette]
	and a
	ret z
	push af
	push af
	ld a, [PlayerGender]
	jr _ContinueCopycatPals

ResetCopycatPals:
	ld a, [wPlayerPalette]
	and a
	ret z
	ld a, [PlayerGender]
	and $1
	or $8
	push af
	push af
_ContinueCopycatPals:
	bit 0, a
	ld a, $1
	jr z, .okay
	ld a, $6
.okay
	call GetMapObject
	ld hl, $8
	add hl, bc
	pop af
	swap a
	ld [hl], a
	ld hl, 0
	add hl, bc
	ld a, [hl]
	call Function1ae5 ; GetObjectStruct
	ld hl, $6
	add hl, bc
	pop af
	and $7
	ld [hl], a
	ret

CopycatScript_0x18aeb1: ; 0x18aeb1
	faceplayer
	checkevent EVENT_GOT_PASS_FROM_COPYCAT
	iftrue .GotPass
	checkevent EVENT_RETURNED_LOST_ITEM_TO_COPYCAT
	iftrue .ReturnedLostItem
	checkitem LOST_ITEM
	iftrue .DeliverLostItem
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Phase1a_Female
	applymovement $2, CopycatSpinMovementData
	callasm SetCopycatToPlayerPals
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_RUST
	jump .Phase1a_Merge
; 0x18aed4

.Phase1a_Female: ; 0x18aed4
	applymovement $7, CopycatSpinMovementData
	callasm SetCopycatToPlayerPals
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_AZURE
.Phase1a_Merge: ; 0x18aedc
	special Function14209
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Phase1b_Female
	writetext CopycatPhase1MaleText
	jump .Phase1b_Merge
; 0x18aef2

.Phase1b_Female: ; 0x18aef2
	writetext CopycatPhase1FemaleText
.Phase1b_Merge: ; 0x18aef5
	waitbutton
	closetext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Phase1c_Female
	applymovement $2, CopycatSpinMovementData
	jump .Phase1c_Merge
; 0x18af04

.Phase1c_Female: ; 0x18af04
	applymovement $7, CopycatSpinMovementData
.Phase1c_Merge: ; 0x18af08
	callasm ResetCopycatPals
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_LASS
	special Function14209
	loadfont
	writetext UnknownText_0x18b028
	waitbutton
	closetext
	end
; 0x18af16

.ReturnedMachinePart: ; 0x18af16
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Phase2a_Female
	writetext CopycatPhase2MaleText
	jump .Phase2a_Merge
; 0x18af23

.Phase2a_Female: ; 0x18af23
	writetext CopycatPhase2FemaleText
.Phase2a_Merge: ; 0x18af26
	waitbutton
	closetext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Phase2b_Female
	applymovement $2, CopycatSpinMovementData
	jump .Phase2b_Merge
; 0x18af35

.Phase2b_Female: ; 0x18af35
	applymovement $7, CopycatSpinMovementData
.Phase2b_Merge: ; 0x18af39
	callasm ResetCopycatPals
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_LASS
	special Function14209
	loadfont
	writetext UnknownText_0x18b116
	waitbutton
	closetext
	setevent EVENT_MET_COPYCAT_FOUND_OUT_ABOUT_LOST_ITEM
	end
; 0x18af4a

.DeliverLostItem: ; 0x18af4a
	loadfont
	writetext CopycatTakeLostItemText
	buttonsound
	takeitem LOST_ITEM, 1
	setevent EVENT_RETURNED_LOST_ITEM_TO_COPYCAT
	clearevent EVENT_COPYCATS_DOLL_IN_HER_ROOM
	jump .GivePass
; 0x18af5b

.ReturnedLostItem: ; 0x18af5b
	loadfont
.GivePass: ; 0x18af5c
	writetext CopycatGivePassText
	buttonsound
	verbosegiveitem PASS, 1
	iffalse .Abort
	setevent EVENT_GOT_PASS_FROM_COPYCAT
	writetext CopycatExplainPassText
	waitbutton
	closetext
	end
; 0x18af6f

.GotPass: ; 0x18af6f
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Phase3a_Female
	applymovement $2, CopycatSpinMovementData
	callasm SetCopycatToPlayerPals
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_RUST
	jump .Phase3a_Merge
; 0x18af80

.Phase3a_Female: ; 0x18af80
	applymovement $7, CopycatSpinMovementData
	callasm SetCopycatToPlayerPals
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_AZURE
.Phase3a_Merge: ; 0x18af88
	special Function14209
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Phase3b_Female
	writetext CopycatPhase3MaleText
	jump .Phase3b_Merge
; 0x18af98

.Phase3b_Female: ; 0x18af98
	writetext CopycatPhase3FemaleText
.Phase3b_Merge: ; 0x18af9b
	waitbutton
	closetext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Phase3c_Female
	applymovement $2, CopycatSpinMovementData
	jump .Phase3c_Merge
; 0x18afaa

.Phase3c_Female: ; 0x18afaa
	applymovement $7, CopycatSpinMovementData
.Phase3c_Merge: ; 0x18afae
	callasm ResetCopycatPals
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_LASS
	special Function14209
	loadfont
	writetext UnknownText_0x18b2f5
	waitbutton
.Abort: ; 0x18afba
	closetext
	end
; 0x18afbc

MoltresScript_0x18afbc: ; 0x18afbc
	loadfont
	writetext UnknownText_0x18b476
	cry DODRIO
	buttonsound
	writetext UnknownText_0x18b489
	waitbutton
	closetext
	end
; 0x18afca

FairyScript_0x18afca:
MonsterScript_0x18afca:
BirdScript_0x18afca: ; 0x18afca
	jumptext UnknownText_0x18b4c4
; 0x18afcd

MapCopycatsHouse2FSignpost1Script: ; 0x18afcd
	jumpstd picturebookshelf
; 0x18afd0

CopycatSpinMovementData: ; 0x18afd0
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	step_end
; 0x18afda

CopycatPhase1MaleText: ; 0x18afda
	text "<PLAYER>: Salut! Tu"
	line "aimes #MON?"

	para "<PLAYER>: Hein?"
	line "Non, c'est à toi"
	cont "que je demande."

	para "<PLAYER>: Mais?"
	line "T'es bizarre!"
	done
; 0x18b028

UnknownText_0x18b028: ; 0x18b028
	text "COPIEUSE: Hein?"
	line "Faut que j'arrête"
	cont "de t'imiter?"

	para "Mais c'est mon"
	line "passe-temps"
	cont "favori!"
	done
; 0x18b064

CopycatPhase2MaleText: ; 0x18b064
	text "<PLAYER>: Salut!"
	line "On dit que tu as"

	para "perdu ta #"
	line "POUPEE préférée."

	para "<PLAYER>: Si tu la"
	line "trouve, tu me"
	cont "donnes un PASSE?"

	para "<PLAYER>: Je vais"
	line "la chercher."

	para "Tu l'as perdu en"
	line "allant à CARMIN"
	cont "SUR MER?"
	done
; 0x18b116

UnknownText_0x18b116: ; 0x18b116
	text "COPIEUSE: Pardon?"

	para "Tu ne veux pas que"
	line "je te dise comment"
	cont "faire?"

	para "Mais j'ai si peur!"
	line "Et si quelqu'un la"
	cont "trouve?"
	done
; 0x18b17f

CopycatTakeLostItemText: ; 0x18b17f
	text "COPIEUSE: Hé!"
	line "C'est ma #"
	cont "POUPEE MELOFEE!"

	para "Elle est un peu"
	line "déchirée près de"

	para "la jambe! C'est la"
	line "mienne!"
	done
; 0x18b1e2

CopycatGivePassText: ; 0x18b1e2
	text "OK. Voilà le"
	line "PASSE du TRAIN"
	cont "comme promis!"
	done
; 0x18b214

CopycatExplainPassText: ; 0x18b214
	text "COPIEUSE: C'est le"
	line "PASSE pour le"
	cont "TRAIN MAGNET."

	para "On me l'a donné"
	line "quand ils ont tout"

	para "cassé ma maison"
	line "pour construire la"
	cont "STATION."
	done
; 0x18b298

CopycatPhase3MaleText: ; 0x18b298
	text "<PLAYER>: Merci!"
	line "pour le PASSE!"

	para "<PLAYER>: <...>Quoi?"

	para "<PLAYER>: T'en as"
	line "jamais marre de"
	
	para "répéter tout ce"
	line "que je dis?"
	done
; 0x18b2f5

UnknownText_0x18b2f5: ; 0x18b2f5
	text "COPIEUSE: Jamais!"
	line "Copier, c'est"
	cont "mortel!"
	done
; 0x18b316

CopycatPhase1FemaleText: ; 0x18b316
	text "<PLAYER>: Salut! Tu"
	line "aimes #MON?"

	para "<PLAYER>: Hein?"
	line "Non, c'est à toi"
	cont "que je demande."

	para "<PLAYER>: Mais?"
	line "T'es bizarre!"
	done
; 0x18b366

CopycatPhase2FemaleText: ; 0x18b366
	text "<PLAYER>: Salut!"
	line "On dit que tu as"

	para "perdu ta #"
	line "POUPEE préférée."

	para "<PLAYER>: Si tu la"
	line "trouve, tu me"
	cont "donnes un PASSE?"

	para "<PLAYER>: Je vais"
	line "la chercher."

	para "Tu l'as perdu en"
	line "allant à CARMIN"
	cont "SUR MER?"
	done
; 0x18b415

CopycatPhase3FemaleText: ; 0x18b415
	text "<PLAYER>: Merci!"
	line "pour le PASSE!"

	para "<PLAYER>: <...>Quoi?"

	para "<PLAYER>: T'en as"
	line "jamais marre de"
	
	para "répéter tout ce"
	line "que je dis?"
	done
; 0x18b476

UnknownText_0x18b476: ; 0x18b476
	text "DODRIO: Driii!"
	done
; 0x18b489

UnknownText_0x18b489: ; 0x18b489
	text "MON BEAU MIROIR,"
	line "QUI EST LA PLUS"

	para "BELLE DE TOUTES?"
	line "HEIN? C'EST QUI?"
	done
; 0x18b4c4

UnknownText_0x18b4c4: ; 0x18b4c4
	text "C'est un #MON"
	line "super rare! Hein?"

	para "Une poupée<...>"
	done
; 0x18b4f0

CopycatsHouse2F_MapEventHeader: ; 0x18b4f0
	; filler
	db 0, 0

	; warps
	db 1
	warp_def $0, $3, 3, GROUP_COPYCATS_HOUSE_1F, MAP_COPYCATS_HOUSE_1F

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 0, $0, MapCopycatsHouse2FSignpost1Script
	signpost 1, 1, $0, MapCopycatsHouse2FSignpost1Script

	; people-events
	db 6
	person_event SPRITE_COPYCAT, 7, 8, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, CopycatScript_0x18aeb1, EVENT_COPYCAT
	person_event SPRITE_SPEAROW, 8, 10, $16, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, MoltresScript_0x18afbc, -1
	person_event SPRITE_FAIRY, 5, 10, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, FairyScript_0x18afca, EVENT_COPYCATS_DOLL_IN_HER_ROOM
	person_event SPRITE_MONSTER, 5, 6, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, MonsterScript_0x18afca, -1
	person_event SPRITE_BIRD, 5, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, BirdScript_0x18afca, -1
	person_event SPRITE_COPYCAT, 7, 8, $8, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, CopycatScript_0x18aeb1, EVENT_COPYCAT_2
; 0x18b553

