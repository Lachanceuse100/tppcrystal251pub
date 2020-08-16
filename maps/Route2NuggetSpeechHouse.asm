Route2NuggetSpeechHouse_MapScriptHeader: ; 0x9b845
	; trigger count
	db 0

	; callback count
	db 0
; 0x9b847

FisherScript_0x9b847: ; 0x9b847
	faceplayer
	loadfont
	checkevent EVENT_GOT_NUGGET_ON_ROUTE_2
	iftrue UnknownScript_0x9b85c
	writetext UnknownText_0x9b865
	buttonsound
	verbosegiveitem NUGGET, 1
	iffalse UnknownScript_0x9b860
	setevent EVENT_GOT_NUGGET_ON_ROUTE_2
UnknownScript_0x9b85c: ; 0x9b85c
	writetext UnknownText_0x9b8e5
	waitbutton
UnknownScript_0x9b860: ; 0x9b860
	closetext
	end
; 0x9b862

UnknownScript_0x9b862: ; 0x9b862
	jumpstd difficultbookshelf
; 0x9b865

UnknownText_0x9b865: ; 0x9b865
	text "Hé! J'suis content"
	line "de te voir."

	para "Ca fait longtemps"
	line "qu'on ne m'a pas"
	cont "rendu visite."

	para "Un petit cadeau"
	line "pour toi!"
	done
; 0x9b8e5

UnknownText_0x9b8e5: ; 0x9b8e5
	text "C'est une PEPITE."

	para "Je ne peux pas"
	line "t'offrir des pépi-"
	cont "tes de sagesse,"

	para "alors ça fera"
	line "l'affaire!"
	done
; 0x9b933

Route2NuggetSpeechHouse_MapEventHeader: ; 0x9b933
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 1, GROUP_ROUTE_2_NORTH, MAP_ROUTE_2_NORTH
	warp_def $7, $3, 1, GROUP_ROUTE_2_NORTH, MAP_ROUTE_2_NORTH

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_FISHER, 8, 6, $4, 2, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, FisherScript_0x9b847, -1
; 0x9b950

