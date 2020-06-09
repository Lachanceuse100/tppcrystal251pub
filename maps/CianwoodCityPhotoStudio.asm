CianwoodCityPhotoStudio_MapScriptHeader: ; 0x9e0de
	; trigger count
	db 0

	; callback count
	db 0
; 0x9e0e0

FishingGuruScript_0x9e0e0: ; 0x9e0e0
	faceplayer
	loadfont
	writetext UnknownText_0x9e0f9
	yesorno
	iffalse UnknownScript_0x9e0f3
	writetext UnknownText_0x9e142
	waitbutton
	special Function16dc7
	waitbutton
	closetext
	end
; 0x9e0f3

UnknownScript_0x9e0f3: ; 0x9e0f3
	writetext UnknownText_0x9e156
	waitbutton
	closetext
	end
; 0x9e0f9

UnknownText_0x9e0f9: ; 0x9e0f9
	text "Tu as des #MON"
	line "magnifiques avec"
	cont "toi."

	para "Ca te dirait une"
	line "photo souvenir?"
	done
; 0x9e142

UnknownText_0x9e142: ; 0x9e142
	text "Attention, le"
	line "petit oiseau va"
	cont "sortir!"
	done
; 0x9e156

UnknownText_0x9e156: ; 0x9e156
	text "Oh dommage, je"
	line "suis sûr que ça"

	para "aurait fait un"
	line "bon memento<...>"
	done
; 0x9e191

CianwoodCityPhotoStudio_MapEventHeader: ; 0x9e191
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 5, GROUP_CIANWOOD_CITY, MAP_CIANWOOD_CITY
	warp_def $7, $3, 5, GROUP_CIANWOOD_CITY, MAP_CIANWOOD_CITY

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_FISHING_GURU, 7, 6, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, FishingGuruScript_0x9e0e0, -1
; 0x9e1ae

