LavenderTownSpeechHouse_MapScriptHeader: ; 0x7ea45
	; trigger count
	db 0

	; callback count
	db 0
; 0x7ea47

PokefanFScript_0x7ea47: ; 0x7ea47
	jumptextfaceplayer UnknownText_0x7ea4d
; 0x7ea4a

MapLavenderTownSpeechHouseSignpost1Script: ; 0x7ea4a
	jumpstd picturebookshelf
; 0x7ea4d

UnknownText_0x7ea4d: ; 0x7ea4d
	text "LAVANVILLE est une"
	line "petite ville calme"
	cont "au pied des monta-"
	cont "gnes."

	para "Il y a plus de"
	line "passage depuis la"

	para "construction de la"
	line "TOUR RADIO."
	done
; 0x7eac4

LavenderTownSpeechHouse_MapEventHeader: ; 0x7eac4
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 3, GROUP_LAVENDER_TOWN, MAP_LAVENDER_TOWN
	warp_def $7, $3, 3, GROUP_LAVENDER_TOWN, MAP_LAVENDER_TOWN

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 0, $0, MapLavenderTownSpeechHouseSignpost1Script
	signpost 1, 1, $0, MapLavenderTownSpeechHouseSignpost1Script

	; people-events
	db 1
	person_event SPRITE_POKEFAN_F, 7, 6, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, PokefanFScript_0x7ea47, -1
; 0x7eaeb

