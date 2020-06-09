CianwoodLugiaSpeechHouse_MapScriptHeader: ; 0x9e1ae
	; trigger count
	db 0

	; callback count
	db 0
; 0x9e1b0

TeacherScript_0x9e1b0: ; 0x9e1b0
	jumptextfaceplayer UnknownText_0x9e1bc
; 0x9e1b3

LassScript_0x9e1b3: ; 0x9e1b3
	jumptextfaceplayer UnknownText_0x9e23f
; 0x9e1b6

TwinScript_0x9e1b6: ; 0x9e1b6
	jumptextfaceplayer UnknownText_0x9e2a9
; 0x9e1b9

MapCianwoodLugiaSpeechHouseSignpost1Script: ; 0x9e1b9
	jumpstd picturebookshelf
; 0x9e1bc

UnknownText_0x9e1bc: ; 0x9e1bc
	text "Tu viens"
	line "d'OLIVILLE?"

	para "Tu te rappelles"
	line "des quatre îles"
	cont "sur la route?"

	para "J'ai entendu dire"
	line "qu'une créature"
	cont "marine mythique"
	cont "s'y cache."
	done
; 0x9e23f

UnknownText_0x9e23f: ; 0x9e23f
	text "On dit que pour la"
	line "voir, il faut"

	para "avoir l'AILE"
	line "ARGENT."

	para "Elle doit avoir la"
	line "même odeur que la"
	cont "créature."
	done
; 0x9e2a9

UnknownText_0x9e2a9: ; 0x9e2a9
	text "On dit que les"
	line "siphons autour des"

	para "îles sont créés"
	line "par la créature"
	cont "marine."

	para "Il faut une capa-"
	line "cité spéciale pour"
	cont "les passer."
	done
; 0x9e32b

CianwoodLugiaSpeechHouse_MapEventHeader: ; 0x9e32b
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 6, GROUP_CIANWOOD_CITY, MAP_CIANWOOD_CITY
	warp_def $7, $3, 6, GROUP_CIANWOOD_CITY, MAP_CIANWOOD_CITY

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 0, $0, MapCianwoodLugiaSpeechHouseSignpost1Script
	signpost 1, 1, $0, MapCianwoodLugiaSpeechHouseSignpost1Script

	; people-events
	db 3
	person_event SPRITE_TEACHER, 8, 6, $6, 0, 0, -1, -1, 0, 0, 0, TeacherScript_0x9e1b0, -1
	person_event SPRITE_LASS, 9, 10, $5, 0, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, LassScript_0x9e1b3, -1
	person_event SPRITE_TWIN, 6, 4, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, TwinScript_0x9e1b6, -1
; 0x9e36c

