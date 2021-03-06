CeladonDeptStore5F_MapScriptHeader: ; 0x71002
	; trigger count
	db 0

	; callback count
	db 0
; 0x71004

ClerkScript_0x71004: ; 0x71004
	faceplayer
	loadfont
	pokemart $0, $001b
	closetext
	end
; 0x7100c

ClerkScript_0x7100c: ; 0x7100c
	faceplayer
	loadfont
	pokemart $0, $001c
	closetext
	end
; 0x71014

GentlemanScript_0x71014: ; 0x71014
	jumptextfaceplayer UnknownText_0x71023
; 0x71017

SailorScript_0x71017: ; 0x71017
	jumptextfaceplayer UnknownText_0x71072
; 0x7101a

TeacherScript_0x7101a: ; 0x7101a
	jumptextfaceplayer UnknownText_0x710b6
; 0x7101d

MapCeladonDeptStore5FSignpost0Script: ; 0x7101d
	jumptext UnknownText_0x71100
; 0x71020

MapCeladonDeptStore5FSignpost1Script: ; 0x71020
	jumpstd elevatorbutton
; 0x71023

UnknownText_0x71023: ; 0x71023
	text "Je déteste quand"
	line "ils déplacent les"
	cont "choses<...>"

	para "Ils ont mis les"
	line "pierres avec les"

	para "vitamines pour je"
	line "ne sais quelle"
	cont "raison encore<...>"
	done
; 0x71072

UnknownText_0x71072: ; 0x71072
	text "Je voulais un PP"
	line "PLUS pour monter"
	cont "les PP d'une"
	cont "capacité."

	para "Mais ils ne sont"
	line "disponibles qu'au"
	cont "CASINO<...>"
	done
; 0x710b6

UnknownText_0x710b6: ; 0x710b6
	text "Les PIERRES FEU se"
	line "vendent bien ici."

	para "Je me demande"
	line "pourquoi<...>"
	done
; 0x71100

UnknownText_0x71100: ; 0x71100
	para "4EME: BAZAR"
	line "      SURVITAMINE"
	done
; 0x71110

CeladonDeptStore5F_MapEventHeader: ; 0x71110
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $0, $c, 1, GROUP_CELADON_DEPT_STORE_4F, MAP_CELADON_DEPT_STORE_4F
	warp_def $0, $f, 1, GROUP_CELADON_DEPT_STORE_6F, MAP_CELADON_DEPT_STORE_6F
	warp_def $0, $2, 1, GROUP_CELADON_DEPT_STORE_ELEVATOR, MAP_CELADON_DEPT_STORE_ELEVATOR

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 0, 14, $0, MapCeladonDeptStore5FSignpost0Script
	signpost 0, 3, $0, MapCeladonDeptStore5FSignpost1Script

	; people-events
	db 5
	person_event SPRITE_CLERK, 9, 11, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ClerkScript_0x71004, -1
	person_event SPRITE_CLERK, 9, 12, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ClerkScript_0x7100c, -1
	person_event SPRITE_GENTLEMAN, 9, 17, $2, 1, 1, -1, -1, 8 + PAL_OW_RED, 0, 0, GentlemanScript_0x71014, -1
	person_event SPRITE_SAILOR, 8, 7, $2, 1, 1, -1, -1, 8 + PAL_OW_BLUE, 0, 0, SailorScript_0x71017, -1
	person_event SPRITE_TEACHER, 11, 5, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, TeacherScript_0x7101a, -1
; 0x71170

