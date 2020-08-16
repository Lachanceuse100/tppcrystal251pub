Route5CleanseTagSpeechHouse_MapScriptHeader: ; 0x18b632
	; trigger count
	db 0

	; callback count
	db 0
; 0x18b634

GrannyScript_0x18b634: ; 0x18b634
	faceplayer
	loadfont
	checkevent EVENT_GOT_CLEANSE_TAG
	iftrue UnknownScript_0x18b649
	writetext UnknownText_0x18b655
	buttonsound
	verbosegiveitem CLEANSE_TAG, 1
	iffalse UnknownScript_0x18b64d
	setevent EVENT_GOT_CLEANSE_TAG
UnknownScript_0x18b649: ; 0x18b649
	writetext UnknownText_0x18b6a7
	waitbutton
UnknownScript_0x18b64d: ; 0x18b64d
	closetext
	end
; 0x18b64f

TeacherScript_0x18b64f: ; 0x18b64f
	jumptextfaceplayer UnknownText_0x18b6de
; 0x18b652

MapRoute5CleanseTagSpeechHouseSignpost1Script: ; 0x18b652
	jumpstd difficultbookshelf
; 0x18b655

UnknownText_0x18b655: ; 0x18b655
	text "Yaaaah!"

	para "Je sens une pré-"
	line "sence maléfique"
	cont "planer sur toi."

	para "Prends donc ce"
	line "talisman!"
	done
; 0x18b6a7

UnknownText_0x18b6a7: ; 0x18b6a7
	text "La mort rôdait sur"
	line "ton âme<...> Mais ça"
	cont "ira maintenant."
	done
; 0x18b6de

UnknownText_0x18b6de: ; 0x18b6de
	text "Ma mémé est a fond"
	line "sur les délires"

	para "paranormaux."
	line "Excuse-la."

	para "Elle a dû te faire"
	line "peur, je parie."
	done
; 0x18b744

Route5CleanseTagSpeechHouse_MapEventHeader: ; 0x18b744
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 4, GROUP_ROUTE_5, MAP_ROUTE_5
	warp_def $7, $3, 4, GROUP_ROUTE_5, MAP_ROUTE_5

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 0, $0, MapRoute5CleanseTagSpeechHouseSignpost1Script
	signpost 1, 1, $0, MapRoute5CleanseTagSpeechHouseSignpost1Script

	; people-events
	db 2
	person_event SPRITE_GRANNY, 9, 6, $1f, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, GrannyScript_0x18b634, -1
	person_event SPRITE_TEACHER, 7, 9, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, TeacherScript_0x18b64f, -1
; 0x18b778



