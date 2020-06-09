EcruteakLugiaSpeechHouse_MapScriptHeader: ; 0x99332
	; trigger count
	db 0

	; callback count
	db 0
; 0x99334

GrampsScript_0x99334: ; 0x99334
	jumptextfaceplayer UnknownText_0x9933d
; 0x99337

YoungsterScript_0x99337: ; 0x99337
	jumptextfaceplayer UnknownText_0x993ec
; 0x9933a

MapEcruteakLugiaSpeechHouseSignpost0Script: ; 0x9933a
	jumpstd radio2
; 0x9933d

UnknownText_0x9933d: ; 0x9933d
	text "Ca s'est passé"
	line "lorsque j'étais"
	cont "jeune."

	para "Le ciel est sou-"
	line "dainement devenu"
	cont "noir."

	para "Un #MON gigan-"
	line "tesque cachait les"
	cont "rayons du soleil."

	para "Je me demande quel"
	line "#MON c'était<...>"

	para "C'était comme un"
	line "oiseau ou un"
	cont "dragon."
	done
; 0x993ec

UnknownText_0x993ec: ; 0x993ec
	text "Existe-t-il un"
	line "#MON aussi"
	cont "grand?"

	para "Si c'est le cas,"
	line "il doit être"
	cont "puissant."
	done
; 0x99431

EcruteakLugiaSpeechHouse_MapEventHeader: ; 0x99431
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $3, 7, GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY
	warp_def $7, $4, 7, GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 1, 2, $0, MapEcruteakLugiaSpeechHouseSignpost0Script

	; people-events
	db 2
	person_event SPRITE_GRAMPS, 7, 6, $3, 0, 0, -1, -1, 0, 0, 0, GrampsScript_0x99334, -1
	person_event SPRITE_YOUNGSTER, 8, 9, $8, 0, 0, -1, -1, 0, 0, 0, YoungsterScript_0x99337, -1
; 0x99460

