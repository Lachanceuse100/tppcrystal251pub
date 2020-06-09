LakeofRageHiddenPowerHouse_MapScriptHeader: ; 0x19a525
	; trigger count
	db 0

	; callback count
	db 0
; 0x19a527

FisherScript_0x19a527: ; 0x19a527
	faceplayer
	loadfont
	checkevent EVENT_GOT_TM10_HIDDEN_POWER
	iftrue UnknownScript_0x19a542
	writetext UnknownText_0x19a54b
	buttonsound
	verbosegiveitem TM_HIDDEN_POWER, 1
	iffalse UnknownScript_0x19a546
	setevent EVENT_GOT_TM10_HIDDEN_POWER
	writetext UnknownText_0x19a5de
	waitbutton
	closetext
	end
; 0x19a542

UnknownScript_0x19a542: ; 0x19a542
	writetext UnknownText_0x19a673
	waitbutton
UnknownScript_0x19a546: ; 0x19a546
	closetext
	end
; 0x19a548

MapLakeofRageHiddenPowerHouseSignpost1Script: ; 0x19a548
	jumpstd difficultbookshelf
; 0x19a54b

UnknownText_0x19a54b: ; 0x19a54b
	text "<...>Tu as bien"
	line "voyagé<...>"

	para "J'ai médité ici."
	line "Au fond de moi,"

	para "une nouvelle force"
	line "s'est réveillée."

	para "Laisse-moi parta-"
	line "ger mon pouvoir"

	para "avec tes #MON."
	line "Prends-ceci."
	done
; 0x19a5de

UnknownText_0x19a5de: ; 0x19a5de
	text "Le vois-tu? C'est"
	line "PUIS.CACHEE"

	para "Elle tire la force"
	line "intérieure de tes"
	cont "#MON."

	para "Le type est diffé-"
	line "rent et unique"
	cont "à chaque #MON."
	done
; 0x19a673

UnknownText_0x19a673: ; 0x19a673
	text "Je médite<...>"
	done
; 0x19a685

LakeofRageHiddenPowerHouse_MapEventHeader: ; 0x19a685
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 1, GROUP_LAKE_OF_RAGE, MAP_LAKE_OF_RAGE
	warp_def $7, $3, 1, GROUP_LAKE_OF_RAGE, MAP_LAKE_OF_RAGE

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 0, $0, MapLakeofRageHiddenPowerHouseSignpost1Script
	signpost 1, 1, $0, MapLakeofRageHiddenPowerHouseSignpost1Script

	; people-events
	db 1
	person_event SPRITE_FISHER, 7, 6, $3, 0, 0, -1, -1, 0, 0, 0, FisherScript_0x19a527, -1
; 0x19a6ac

