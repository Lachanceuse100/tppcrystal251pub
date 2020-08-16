PalletTown_MapScriptHeader: ; 0x1ac6cc
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 5, UnknownScript_0x1ac6d1
; 0x1ac6d1

UnknownScript_0x1ac6d1: ; 0x1ac6d1
	setflag ENGINE_FLYPOINT_PALLET
	return
; 0x1ac6d5

TeacherScript_0x1ac6d5: ; 0x1ac6d5
	jumptextfaceplayer UnknownText_0x1ac6e7
; 0x1ac6d8

FisherScript_0x1ac6d8: ; 0x1ac6d8
	jumptextfaceplayer UnknownText_0x1ac720
; 0x1ac6db

MapPalletTownSignpost0Script: ; 0x1ac6db
	jumptext UnknownText_0x1ac76b
; 0x1ac6de

MapPalletTownSignpost1Script: ; 0x1ac6de
	jumptext UnknownText_0x1ac79d
; 0x1ac6e1

MapPalletTownSignpost2Script: ; 0x1ac6e1
	jumptext UnknownText_0x1ac7aa
; 0x1ac6e4

MapPalletTownSignpost3Script: ; 0x1ac6e4
	jumptext UnknownText_0x1ac7c1
; 0x1ac6e7

UnknownText_0x1ac6e7: ; 0x1ac6e7
	text "J'entraîne des"
	line "#MON moi aussi."

	para "Ce sont mes gardes"
	line "du corps."
	done
; 0x1ac720

UnknownText_0x1ac720: ; 0x1ac720
	text "Le progrès<...>"
	line "C'est dingue!"

	para "Tu peux échanger"
	line "des #MON à tra-"
	cont "vers le temps"
	cont "comme des e-mails."
	done
; 0x1ac76b

UnknownText_0x1ac76b: ; 0x1ac76b
	text "BOURG PALETTE"

	para "Calme, paix et"
	line "pureté."
	done
; 0x1ac79d

UnknownText_0x1ac79d: ; 0x1ac79d
	text "CHEZ AIIIAAB."
	done
; 0x1ac7aa

UnknownText_0x1ac7aa: ; 0x1ac7aa
	text "LABO #MON du"
	line "PROF. CHEN."
	done
; 0x1ac7c1

UnknownText_0x1ac7c1: ; 0x1ac7c1
	text "CHEZ BLUE."
	done
; 0x1ac7cf

PalletTown_MapEventHeader: ; 0x1ac7cf
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $5, $5, 1, GROUP_REDS_HOUSE_1F, MAP_REDS_HOUSE_1F
	warp_def $5, $d, 1, GROUP_BLUES_HOUSE, MAP_BLUES_HOUSE
	warp_def $b, $c, 1, GROUP_OAKS_LAB, MAP_OAKS_LAB

	; xy triggers
	db 0

	; signposts
	db 4
	signpost 9, 7, $0, MapPalletTownSignpost0Script
	signpost 5, 3, $0, MapPalletTownSignpost1Script
	signpost 13, 13, $0, MapPalletTownSignpost2Script
	signpost 5, 11, $0, MapPalletTownSignpost3Script

	; people-events
	db 2
	person_event SPRITE_TEACHER, 12, 7, $2, 2, 2, -1, -1, 0, 0, 0, TeacherScript_0x1ac6d5, -1
	person_event SPRITE_FISHER, 18, 16, $5, 0, 2, -1, -1, 8 + PAL_OW_GREEN, 0, 0, FisherScript_0x1ac6d8, -1
; 0x1ac812

