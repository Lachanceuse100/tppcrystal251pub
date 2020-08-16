Route12SuperRodHouse_MapScriptHeader: ; 0x7f482
	; trigger count
	db 0

	; callback count
	db 0
; 0x7f484

FishingGuruScript_0x7f484: ; 0x7f484
	faceplayer
	loadfont
	checkevent EVENT_GOT_SUPER_ROD
	iftrue UnknownScript_0x7f4a0
	writetext UnknownText_0x7f4af
	yesorno
	iffalse UnknownScript_0x7f4a6
	writetext UnknownText_0x7f52f
	buttonsound
	verbosegiveitem SUPER_ROD, 1
	iffalse UnknownScript_0x7f4aa
	setevent EVENT_GOT_SUPER_ROD
UnknownScript_0x7f4a0: ; 0x7f4a0
	writetext UnknownText_0x7f57c
	waitbutton
	closetext
	end
; 0x7f4a6

UnknownScript_0x7f4a6: ; 0x7f4a6
	writetext UnknownText_0x7f5ec
	waitbutton
UnknownScript_0x7f4aa: ; 0x7f4aa
	closetext
	end
; 0x7f4ac

UnknownScript_0x7f4ac: ; 0x7f4ac
	jumpstd picturebookshelf
; 0x7f4af

UnknownText_0x7f4af: ; 0x7f4af
	text "Je suis le petit"
	line "frère du MAITRE"
	cont "PECHEUR."

	para "Tu aimes la pêche,"
	line "toi! Ca se voit."

	para "Je n'ai aucun"
	line "doute là-dessus."

	para "Alors? Je sais que"
	line "j'ai raison."
	done
; 0x7f52f

UnknownText_0x7f52f: ; 0x7f52f
	text "Héhé, je me trompe"
	line "jamais!"

	para "Tiens, prends ça,"
	line "c'est la MEGA"
	cont "CANNE."
	done
; 0x7f57c

UnknownText_0x7f57c: ; 0x7f57c
	text "Essaie de pêcher"
	line "un peu partout où"
	cont "il y a de l'eau."

	para "Souviens-toi: tu"
	line "peux attraper plu-"

	para "sieurs #MON"
	line "grâce à différen-"
	cont "tes CANNES."
	done
; 0x7f5ec

UnknownText_0x7f5ec: ; 0x7f5ec
	text "Hein? J'ai été"
	line "trompé?"
	done
; 0x7f60b

Route12SuperRodHouse_MapEventHeader: ; 0x7f60b
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 1, GROUP_ROUTE_12, MAP_ROUTE_12
	warp_def $7, $3, 1, GROUP_ROUTE_12, MAP_ROUTE_12

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_FISHING_GURU, 7, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, FishingGuruScript_0x7f484, -1
; 0x7f628

