VermilionHouseFishingSpeechHouse_MapScriptHeader: ; 0x19148b
	; trigger count
	db 0

	; callback count
	db 0
; 0x19148d

FishingGuruScript_0x19148d: ; 0x19148d
	jumptextfaceplayer UnknownText_0x191496
; 0x191490

MapVermilionHouseFishingSpeechHouseSignpost0Script: ; 0x191490
	jumptext UnknownText_0x1915a3
; 0x191493

UnknownScript_0x191493: ; 0x191493
	jumpstd picturebookshelf
; 0x191496

UnknownText_0x191496: ; 0x191496
	text "Moi je suis le"
	line "GARS QUI PECHE,"
	cont "l'aîné des FRERES"
	cont "PECHEURS."

	para "As-tu vu le MAITRE"
	line "PECHEUR au LAC"
	cont "COLERE?"

	para "Il rêve de voir le"
	line "plus grand MAGI-"
	cont "CARPE du monde."

	para "Si ça t'embête pas"
	line "trop, peux-tu lui"

	para "montrer les"
	line "MAGICARPE que"
	cont "tu attrapes?"

	para "Qui sait, tu"
	line "attraperas peut-"
	cont "être le MAGICARPE"
	cont "de ses rêves."
	done
; 0x1915a3

UnknownText_0x1915a3: ; 0x1915a3
	text "Une photo de gens"
	line "qui pêchent<...>"

	para "Ils passent un"
	line "bon moment<...>"
	done
; 0x1915df

VermilionHouseFishingSpeechHouse_MapEventHeader: ; 0x1915df
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 1, GROUP_VERMILION_CITY, MAP_VERMILION_CITY
	warp_def $7, $3, 1, GROUP_VERMILION_CITY, MAP_VERMILION_CITY

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 0, 3, $0, MapVermilionHouseFishingSpeechHouseSignpost0Script

	; people-events
	db 1
	person_event SPRITE_FISHING_GURU, 8, 6, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, FishingGuruScript_0x19148d, -1
; 0x191601

