Route32PokeCenter1F_MapScriptHeader: ; 0x69b50
	; trigger count
	db 0

	; callback count
	db 0
; 0x69b52

NurseScript_0x69b52: ; 0x69b52
	jumpstd pokecenternurse
; 0x69b55

FishingGuruScript_0x69b55: ; 0x69b55
	faceplayer
	loadfont
	checkevent EVENT_RECEIVED_OLD_ROD_EGK
	iftrue UnknownScript_0x69b7a
	writetext UnknownText_0x69b83
	yesorno
	iffalse UnknownScript_0x69b74
	writetext UnknownText_0x69be8
	buttonsound
	verbosegiveitem OLD_ROD, 1
	writetext UnknownText_0x69c1b
	waitbutton
	closetext
	setevent EVENT_RECEIVED_OLD_ROD_EGK
	end
; 0x69b74

UnknownScript_0x69b74: ; 0x69b74
	writetext UnknownText_0x69c6c
	waitbutton
	closetext
	end
; 0x69b7a

UnknownScript_0x69b7a: ; 0x69b7a
	writetext UnknownText_0x69c8d
	waitbutton
	closetext
	end
; 0x69b80

CooltrainerFScript_0x69b80: ; 0x69b80
	jumptextfaceplayer UnknownText_0x69cac
; 0x69b83

UnknownText_0x69b83: ; 0x69b83
	text "C'est un bon en-"
	line "droit pour pêcher."

	para "Tu as vu des"
	line "pêcheurs? Tu veux"
	cont "t'y mettre?"

	para "Tu veux une de mes"
	line "CANNES?"
	done
; 0x69be8

UnknownText_0x69be8: ; 0x69be8
	text "Ha! J'aime"
	line "entendre ça!"

	para "Toi aussi tu es"
	line "un vrai pêcheur!"
	done
; 0x69c1b

UnknownText_0x69c1b: ; 0x69c1b
	text "Pêcher c'est top!"

	para "Si il y a de l'eau"
	line "de mer ou d'une"

	para "rivière, sort"
	line "ta CANNE."
	done
; 0x69c6c

UnknownText_0x69c6c: ; 0x69c6c
	text "C'est bien"
	line "dommage<...>"
	done
; 0x69c8d

UnknownText_0x69c8d: ; 0x69c8d
	text "Salut, ça mord?"
	done
; 0x69cac

UnknownText_0x69cac: ; 0x69cac
	text "Que dois-je donner"
	line "à mon #MON?"

	para "Peut-être un objet"
	line "qui augmente sa"
	cont "puissance<...>"
	done
; 0x69cf9

Route32PokeCenter1F_MapEventHeader: ; 0x69cf9
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $7, $3, 1, GROUP_ROUTE_32, MAP_ROUTE_32
	warp_def $7, $4, 1, GROUP_ROUTE_32, MAP_ROUTE_32
	warp_def $7, $0, 1, GROUP_POKECENTER_2F, MAP_POKECENTER_2F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_NURSE, 5, 7, $6, 0, 0, -1, -1, 0, 0, 0, NurseScript_0x69b52, -1
	person_event SPRITE_FISHING_GURU, 8, 5, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, FishingGuruScript_0x69b55, -1
	person_event SPRITE_COOLTRAINER_F, 6, 10, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, CooltrainerFScript_0x69b80, -1
; 0x69d35

