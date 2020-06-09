KarensRoom_MapScriptHeader: ; 0x180baf
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x180bbc, $0000
	dw UnknownScript_0x180bc0, $0000

	; callback count
	db 1

	; callbacks

	dbw 1, UnknownScript_0x180bc1
; 0x180bbc

UnknownScript_0x180bbc: ; 0x180bbc
	priorityjump UnknownScript_0x180bd6
	end
; 0x180bc0

UnknownScript_0x180bc0: ; 0x180bc0
	end
; 0x180bc1

UnknownScript_0x180bc1: ; 0x180bc1
	checkevent EVENT_KARENS_ROOM_ENTRANCE_CLOSED
	iffalse UnknownScript_0x180bcb
	changeblock $4, $e, $2a
UnknownScript_0x180bcb: ; 0x180bcb
	checkevent EVENT_KARENS_ROOM_EXIT_OPEN
	iffalse UnknownScript_0x180bd5
	changeblock $4, $2, $16
UnknownScript_0x180bd5: ; 0x180bd5
	return
; 0x180bd6

UnknownScript_0x180bd6: ; 0x180bd6
	applymovement $0, MovementData_0x180c22
	refreshscreen $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock $4, $e, $2a
	reloadmappart
	closetext
	dotrigger $1
	setevent EVENT_KARENS_ROOM_ENTRANCE_CLOSED
	waitsfx
	end
; 0x180bee

KarenScript_0x180bee: ; 0x180bee
	faceplayer
	loadfont
	checkevent EVENT_OAK_DEFEATED
	iftrue KarenRematch
	checkevent EVENT_BEAT_ELITE_4_KAREN
	iftrue UnknownScript_0x180c1c
	writetext UnknownText_0x180c27
	waitbutton
	closetext
	winlosstext UnknownText_0x180cf8, $0000
	loadtrainer KAREN, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_ELITE_4_KAREN
	loadfont
	writetext UnknownText_0x180d29
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock $4, $2, $16
	reloadmappart
	closetext
	setevent EVENT_KARENS_ROOM_EXIT_OPEN
	waitsfx
	end
; 0x180c1c

UnknownScript_0x180c1c: ; 0x180c1c
	writetext UnknownText_0x180d29
	waitbutton
	closetext
	end
; 0x180c22

KarenRematch:
	checkevent EVENT_BEAT_ELITE_4_KAREN
	iftrue KarenAfterRematch
	writetext KarenBeforeRematchText
	waitbutton
	closetext
	winlosstext UnknownText_0x180cf8, $0000
	loadtrainer KAREN, 2
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_ELITE_4_KAREN
	loadfont
	writetext KarenAfterRematchText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock $4, $2, $16
	reloadmappart
	closetext
	setevent EVENT_KARENS_ROOM_EXIT_OPEN
	waitsfx
	end

KarenAfterRematch: ; 0x180c1c
	writetext KarenAfterRematchText
	waitbutton
	closetext
	end

KarenBeforeRematchText:
	text "Tu en as fait du"
	line "chemin pour m'at-"
	cont "teindre, je suis"
	cont "impressionnée."

	para "Tu as assemblé une"
	line "équipe charmante."

	para "Cela promet un"
	line "beau combat."

	para "Commençons!"
	done

KarenAfterRematchText:
	text "Je ne dévierais"
	line "pas de mon chemin."

	para "PETER à hâte de te"
	line "revoir."

	done

MovementData_0x180c22: ; 0x180c22
	step_up
	step_up
	step_up
	step_up
	step_end
; 0x180c27


UnknownText_0x180c27: ; 0x180c27
	text "Je suis MARION du"
	line "CONSEIL des 4."

	para "C'est toi <PLAYER>?"
	line "C'est marrant."

	para "Moi j'aime les"
	line "#MON TENEBRES."

	para "Leur look noir et,"
	line "méchant est trop"

	para "cool. Et ils sont"
	line "forts aussi!"

	para "Tu crois pouvoir"
	line "les battre? Allez,"
	cont "essaie pour voir."

	para "C'est parti."
	done
; 0x180cf8

UnknownText_0x180cf8: ; 0x180cf8
	text "Mmmm<...> Pas mal du"
	line "tout."
	done
; 0x180d29

UnknownText_0x180d29: ; 0x180d29
	text "#MON puissants."

	para "#MON faibles."

	para "Ce n'est que la"
	line "visions des sim-"
	cont "ples d'esprit."

	para "Les bons dresseurs"
	line "gagnent avec leurs"
	cont "#MON favoris."

	para "J'aime ton style,"
	line "tu comprends ce"
	cont "qui est important."

	para "Allez, va<...>"
	line "Le MAITRE attend."
	done
; 0x180e05

KarensRoom_MapEventHeader: ; 0x180e05
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $11, $4, 3, GROUP_BRUNOS_ROOM, MAP_BRUNOS_ROOM
	warp_def $11, $5, 4, GROUP_BRUNOS_ROOM, MAP_BRUNOS_ROOM
	warp_def $2, $4, 1, GROUP_LANCES_ROOM, MAP_LANCES_ROOM
	warp_def $2, $5, 2, GROUP_LANCES_ROOM, MAP_LANCES_ROOM

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_KAREN, 11, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, KarenScript_0x180bee, -1
; 0x180e2c

