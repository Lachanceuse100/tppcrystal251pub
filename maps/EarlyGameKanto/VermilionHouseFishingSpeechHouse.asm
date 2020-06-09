VermilionHouseFishingSpeechHouseRB_MapScriptHeader: ; 0x19148b
	; trigger count
	db 0

	; callback count
	db 0
; 0x19148d

FishingGuruScript_EGKVermilionHouse: ; 0x19148d
	faceplayer
	loadfont
	checkevent EVENT_RECEIVED_OLD_ROD_EGK
	iftrue .got_rod
	writetext _VermilionHouse2Text_560b1
	yesorno
	iffalse .refused_rod
	writetext _VermilionHouse2Text_560b6
	giveitem OLD_ROD, 1
	iffalse .bag_full
	playsound SFX_ITEM
	waitbutton
	itemnotify
	setevent EVENT_RECEIVED_OLD_ROD_EGK
	writetext _VermilionHouse2Text_560bb
	waitbutton
	closetext
	end

.got_rod
	writetext _VermilionHouse2Text_560c5
	waitbutton
	closetext
	end

.bag_full
	buttonsound
	writetext _VermilionHouse2Text_560ca
	waitbutton
	closetext
	end

.refused_rod
	writetext _VermilionHouse2Text_560c0
	waitbutton
	closetext
	end
; 0x191490

MapVermilionHouseFishingSpeechHouseRBSignpost0Script: ; 0x191490
	jumptext .Signpost0Text
.Signpost0Text
	TX_FAR UnknownText_0x1915a3
	db "@"
; 0x191496

_VermilionHouse2Text_560b1:
	text "Je suis le"
	line "MAITRE PECHEUR!"

	para "J'adoooooooore"
	line "pêcher!"

	para "Tu aimes la pêche?"
	done

_VermilionHouse2Text_560b6:
	text "Terrible! J'adore"
	line "ton style!"

	para "Prends ça et"
	line "pêche donc!"

	para "<PLAYER> reçoit"
	line "une CANNE!"
	done

_VermilionHouse2Text_560bb:
	text "La pêche est un"
	line "style de vie."

	para "Des mers aux"
	line "rivières, va"
	cont "pêcher le gros"
	cont "poisson!"
	done

_VermilionHouse2Text_560c0:
	text "Oh<...> C'est"
	line "décevant<...>"
	done

_VermilionHouse2Text_560c5:
	text "Tiens donc,"
	line "<PLAYER>!"

	para "Ca mords?"
	done

_VermilionHouse2Text_560ca:
	text "Oh non!"

	para "Tu n'as plus de"
	line "place pour mon"
	cont "cadeau!"
	done


VermilionHouseFishingSpeechHouseRB_MapEventHeader: ; 0x1915df
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 1, GROUP_VERMILION_CITY_RB, MAP_VERMILION_CITY_RB
	warp_def $7, $3, 1, GROUP_VERMILION_CITY_RB, MAP_VERMILION_CITY_RB

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 0, 3, $0, MapVermilionHouseFishingSpeechHouseRBSignpost0Script

	; people-events
	db 1
	person_event SPRITE_FISHING_GURU, 8, 6, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, FishingGuruScript_EGKVermilionHouse, -1
; 0x191601

