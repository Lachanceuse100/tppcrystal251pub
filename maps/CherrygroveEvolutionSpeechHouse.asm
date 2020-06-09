CherrygroveEvolutionSpeechHouse_MapScriptHeader: ; 0x196cb0
	; trigger count
	db 0

	; callback count
	db 0
; 0x196cb2

YoungsterScript_0x196cb2: ; 0x196cb2
	loadfont
	writetext UnknownText_0x196cc3
	waitbutton
	closetext
	end
; 0x196cb9

LassScript_0x196cb9: ; 0x196cb9
	loadfont
	writetext UnknownText_0x196cfc
	waitbutton
	closetext
	end
; 0x196cc0

MapCherrygroveEvolutionSpeechHouseSignpost1Script: ; 0x196cc0
	jumpstd magazinebookshelf
; 0x196cc3

UnknownText_0x196cc3: ; 0x196cc3
	text "Les #MON"
	line "gagnent de l'expé-"
	cont "rience en combat"

	para "et changent de"
	line "forme."
	done
; 0x196cfc

UnknownText_0x196cfc: ; 0x196cfc
	text "Les #MON"
	line "changent?"

	para "Je serais choquée"
	line "si l'un des miens"
	cont "faisait ça."
	done
; 0x196d2e

CherrygroveEvolutionSpeechHouse_MapEventHeader: ; 0x196d2e
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 5, GROUP_CHERRYGROVE_CITY, MAP_CHERRYGROVE_CITY
	warp_def $7, $3, 5, GROUP_CHERRYGROVE_CITY, MAP_CHERRYGROVE_CITY

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 0, $0, MapCherrygroveEvolutionSpeechHouseSignpost1Script
	signpost 1, 1, $0, MapCherrygroveEvolutionSpeechHouseSignpost1Script

	; people-events
	db 2
	person_event SPRITE_LASS, 9, 7, $8, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, LassScript_0x196cb9, -1
	person_event SPRITE_YOUNGSTER, 9, 6, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, YoungsterScript_0x196cb2, -1
; 0x196d62

