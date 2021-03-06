WillsRoom_MapScriptHeader: ; 0x1804b9
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x1804c6, $0000
	dw UnknownScript_0x1804ca, $0000

	; callback count
	db 1

	; callbacks

	dbw 1, UnknownScript_0x1804cb
; 0x1804c6

UnknownScript_0x1804c6: ; 0x1804c6
	priorityjump UnknownScript_0x1804e0
	end
; 0x1804ca

UnknownScript_0x1804ca: ; 0x1804ca
	end
; 0x1804cb

UnknownScript_0x1804cb: ; 0x1804cb
	checkevent EVENT_INDIGO_PLATEAU_ENTRANCE_CLOSED
	iffalse UnknownScript_0x1804d5
	changeblock $4, $e, $2a
UnknownScript_0x1804d5: ; 0x1804d5
	checkevent EVENT_WILLS_ROOM_EXIT_OPEN
	iffalse UnknownScript_0x1804df
	changeblock $4, $2, $16
UnknownScript_0x1804df: ; 0x1804df
	return
; 0x1804e0

UnknownScript_0x1804e0: ; 0x1804e0
	applymovement $0, MovementData_0x18052c
	refreshscreen $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock $4, $e, $2a
	reloadmappart
	closetext
	dotrigger $1
	setevent EVENT_INDIGO_PLATEAU_ENTRANCE_CLOSED
	waitsfx
	end
; 0x1804f8

WillScript_0x1804f8: ; 0x1804f8
	faceplayer
	loadfont
	checkevent EVENT_OAK_DEFEATED
	iftrue WillRematch
	checkevent EVENT_BEAT_ELITE_4_WILL
	iftrue UnknownScript_0x180526
	writetext UnknownText_0x180531
	waitbutton
	closetext
	winlosstext UnknownText_0x18062c, $0000
	loadtrainer WILL, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_ELITE_4_WILL
	loadfont
	writetext UnknownText_0x180644
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock $4, $2, $16
	reloadmappart
	closetext
	setevent EVENT_WILLS_ROOM_EXIT_OPEN
	waitsfx
	end
; 0x180526

UnknownScript_0x180526: ; 0x180526
	writetext UnknownText_0x180644
	waitbutton
	closetext
	end
; 0x18052c

WillRematch:
	checkevent EVENT_BEAT_ELITE_4_WILL
	iftrue WillAfterRematch
	writetext WillBeforerematchText
	waitbutton
	closetext
	winlosstext UnknownText_0x18062c, $0000
	loadtrainer WILL, 2
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_ELITE_4_WILL
	loadfont
	writetext WillAfterRematchText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock $4, $2, $16
	reloadmappart
	closetext
	setevent EVENT_WILLS_ROOM_EXIT_OPEN
	waitsfx
	end

WillAfterRematch:
	writetext WillAfterRematchText
	waitbutton
	closetext
	end

MovementData_0x18052c: ; 0x18052c
	step_up
	step_up
	step_up
	step_up
	step_end
; 0x180531

WillBeforerematchText:
	text "Te voilà enfin."

	para "J'ai observé tes"
	line "techniques de"
	cont "combat."

	para "Je suis prêt"

	para "Prépare toi au"
	line "combat!"
	done

WillAfterRematchText:
	text "J'ai utilisé toute"
	line "ma puissance."

	para "Je n'ai pas de"
	line "regrets."
	done

UnknownText_0x180531: ; 0x180531
	text "Bienvenue à la"
	line "LIGUE #MON,"
	cont "<PLAYER>."

	para "Je me présente:"
	line "Je suis CLEMENT."

	para "Je sais tout."
	line "J'ai tout vu."

	para "Mes #MON PSY"
	line "sont trop forts."
	
	para "Le CONSEIL des 4"
	line "m'a accueilli en"
	cont "son sein."

	para "Rien de plus nor-"
	line "mal, après tout."

	para "Je ne connais que"
	line "la victoire!"
	done
; 0x18062c

UnknownText_0x18062c: ; 0x18062c
	text "C'est<...>"
	line "Incroyable<...>"
	done
; 0x180644

UnknownText_0x180644: ; 0x180644
	text "Malgré ma défaite,"
	line "je ne changerais"
	cont "pas ma route."

	para "Je continuerais de"
	line "me battre jusqu'à"
	cont "être au sommet!"

	para "<PLAYER><...>"
	line "Continue ta route"

	para "et découvre la"
	line "force du CONSEIL"
	cont "des 4!"
	done
; 0x1806f9

WillsRoom_MapEventHeader: ; 0x1806f9
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $11, $5, 4, GROUP_INDIGO_PLATEAU_POKECENTER_1F, MAP_INDIGO_PLATEAU_POKECENTER_1F
	warp_def $2, $4, 1, GROUP_KOGAS_ROOM, MAP_KOGAS_ROOM
	warp_def $2, $5, 2, GROUP_KOGAS_ROOM, MAP_KOGAS_ROOM

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_WILL, 11, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, WillScript_0x1804f8, -1
; 0x18071b

