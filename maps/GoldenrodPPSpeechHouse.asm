GoldenrodPPSpeechHouse_MapScriptHeader: ; 0x55648
	; trigger count
	db 0

	; callback count
	db 0
; 0x5564a

FisherScript_0x5564a: ; 0x5564a
	jumptextfaceplayer UnknownText_0x55659
; 0x5564d

LassScript_0x5564d: ; 0x5564d
	jumptextfaceplayer UnknownText_0x556ca
; 0x55650

MapGoldenrodPPSpeechHouseSignpost1Script: ; 0x55650
	jumpstd difficultbookshelf
; 0x55653

MapGoldenrodPPSpeechHouseSignpost0Script: ; 0x55653
	jumpstd magazinebookshelf
; 0x55656

MapGoldenrodPPSpeechHouseSignpost2Script: ; 0x55656
	jumpstd radio2
; 0x55659

UnknownText_0x55659: ; 0x55659
	text "Une fois, lorsque"
	line "je me battais, mes"

	para "#MON ne"
	line "pouvaient plus"
	cont "attaquer."

	para "Les POINTS de"
	line "POUVOIR, ou PP,"

	para "de mes attaques"
	line "étaient épuisés."
	done
; 0x556ca

UnknownText_0x556ca: ; 0x556ca
	text "Quelques fois, un"
	line "#MON en pleine"

	para "forme en peut pas"
	line "utiliser ses"
	cont "attaques."

	para "Si cela arrive,"
	line "soigne-le dans un"
	cont "CENTRE #MON ou"
	cont "utilise un objet."
	done
; 0x55741

GoldenrodPPSpeechHouse_MapEventHeader: ; 0x55741
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 7, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY
	warp_def $7, $3, 7, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY

	; xy triggers
	db 0

	; signposts
	db 3
	signpost 1, 0, $0, MapGoldenrodPPSpeechHouseSignpost0Script
	signpost 1, 1, $0, MapGoldenrodPPSpeechHouseSignpost1Script
	signpost 1, 7, $0, MapGoldenrodPPSpeechHouseSignpost2Script

	; people-events
	db 2
	person_event SPRITE_FISHER, 8, 6, $4, 1, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, FisherScript_0x5564a, -1
	person_event SPRITE_LASS, 7, 9, $8, 1, 0, -1, -1, 0, 0, 0, LassScript_0x5564d, -1
; 0x5577a

