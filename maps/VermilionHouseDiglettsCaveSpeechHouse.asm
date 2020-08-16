VermilionHouseDiglettsCaveSpeechHouse_MapScriptHeader: ; 0x19202f
	; trigger count
	db 0

	; callback count
	db 0
; 0x192031

GentlemanScript_0x192031: ; 0x192031
	jumptextfaceplayer UnknownText_0x192034
; 0x192034

UnknownText_0x192034: ; 0x192034
	text "Les TAUPIQUEUR ont"
	line "creusé un énorme"
	cont "tunnel pendant des"
	cont "années."

	para "Ce tunnel va vers"
	line "une ville loin-"
	cont "taine."
	done
; 0x192086

VermilionHouseDiglettsCaveSpeechHouse_MapEventHeader: ; 0x192086
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 6, GROUP_VERMILION_CITY, MAP_VERMILION_CITY
	warp_def $7, $3, 6, GROUP_VERMILION_CITY, MAP_VERMILION_CITY

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_GENTLEMAN, 7, 5, $4, 1, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, GentlemanScript_0x192031, -1
; 0x1920a3

