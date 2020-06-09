BrunosRoom_MapScriptHeader: ; 0x180986
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x180993, $0000
	dw UnknownScript_0x180997, $0000

	; callback count
	db 1

	; callbacks

	dbw 1, UnknownScript_0x180998
; 0x180993

UnknownScript_0x180993: ; 0x180993
	priorityjump UnknownScript_0x1809ad
	end
; 0x180997

UnknownScript_0x180997: ; 0x180997
	end
; 0x180998

UnknownScript_0x180998: ; 0x180998
	checkevent EVENT_KOGAS_ROOM_ENTRANCE_CLOSED
	iffalse UnknownScript_0x1809a2
	changeblock $4, $e, $2a
UnknownScript_0x1809a2: ; 0x1809a2
	checkevent EVENT_BRUNOS_ROOM_EXIT_OPEN
	iffalse UnknownScript_0x1809ac
	changeblock $4, $2, $16
UnknownScript_0x1809ac: ; 0x1809ac
	return
; 0x1809ad

UnknownScript_0x1809ad: ; 0x1809ad
	applymovement $0, MovementData_0x1809f9
	refreshscreen $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock $4, $e, $2a
	reloadmappart
	closetext
	dotrigger $1
	setevent EVENT_KOGAS_ROOM_ENTRANCE_CLOSED
	waitsfx
	end
; 0x1809c5

BrunoScript_0x1809c5: ; 0x1809c5
	faceplayer
	loadfont
	checkevent EVENT_OAK_DEFEATED
	iftrue BrunoRematch
	checkevent EVENT_BEAT_ELITE_4_BRUNO
	iftrue UnknownScript_0x1809f3
	writetext UnknownText_0x1809fe
	waitbutton
	closetext
	winlosstext UnknownText_0x180b23, $0000
	loadtrainer BRUNO, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_ELITE_4_BRUNO
	loadfont
	writetext UnknownText_0x180b3c
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock $4, $2, $16
	reloadmappart
	closetext
	setevent EVENT_BRUNOS_ROOM_EXIT_OPEN
	waitsfx
	end
; 0x1809f3

BrunoRematch:
	checkevent EVENT_BEAT_ELITE_4_BRUNO
	iftrue BrunoAfterRematch
	writetext BrunoBeforeRematchText
	waitbutton
	closetext
	winlosstext UnknownText_0x180b23, $0000
	loadtrainer BRUNO, 2
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_ELITE_4_BRUNO
	loadfont
	writetext BrunoAfterRematchText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock $4, $2, $16
	reloadmappart
	closetext
	setevent EVENT_BRUNOS_ROOM_EXIT_OPEN
	waitsfx
	end

UnknownScript_0x1809f3: ; 0x1809f3
	writetext UnknownText_0x180b3c
	waitbutton
	closetext
	end
; 0x1809f9

BrunoAfterRematch:
	writetext BrunoAfterRematchText
	waitbutton
	closetext
	end

MovementData_0x1809f9: ; 0x1809f9
	step_up
	step_up
	step_up
	step_up
	step_end
; 0x1809fe

BrunoBeforeRematchText:
	text "<PLAYER>."

	para "En tant que membre"
	line "du CONSEIL des 4,"
	cont "je relève ton"
	cont "défi!"

	para "Ca me dérangerait"
	line "que tu sous-estime"
	cont "mes #MON"
	cont "COMBAT."

	para "Prépare-toi!"

	done

BrunoAfterRematchText:
	text "On a fait le"
	line "maximum."

	para "Continue!"

	done

UnknownText_0x1809fe: ; 0x1809fe
	text "Je suis ALDO du"
	line "CONSEIL des 4."

	para "Je m'entraîne à"
	line "l'extrême car je"
	cont "crois en notre"
	cont "potentiel."

	para "C'est comme ça que"
	line "je suis devenu"
	cont "si fort et beau<...>"

	para "<...> Ho!"
	line "Tu m'écoutes?"

	para "T'as pas peur on"
	line "dirait. Très bien<...>"

	para "Prépare toi à te"
	line "battre!"

	para "Hoo hah!"
	done
; 0x180b23

UnknownText_0x180b23: ; 0x180b23
	text "Quoi? Perdu?"
	line "Comment?"
	done
; 0x180b3c

UnknownText_0x180b3c: ; 0x180b3c
	text "Je n'ai plus rien"
	line "à dire<...>"

	para "Va dans la pro-"
	line "chaine salle!"
	done
; 0x180b88

BrunosRoom_MapEventHeader: ; 0x180b88
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $11, $4, 3, GROUP_KOGAS_ROOM, MAP_KOGAS_ROOM
	warp_def $11, $5, 4, GROUP_KOGAS_ROOM, MAP_KOGAS_ROOM
	warp_def $2, $4, 1, GROUP_KARENS_ROOM, MAP_KARENS_ROOM
	warp_def $2, $5, 2, GROUP_KARENS_ROOM, MAP_KARENS_ROOM

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_BRUNO, 11, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, BrunoScript_0x1809c5, -1
; 0x180baf

