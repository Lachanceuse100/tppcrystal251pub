DarkCaveBlackthornEntrance_MapScriptHeader: ; 0x18c71e
	; trigger count
	db 0

	; callback count
	db 0
; 0x18c720

PharmacistScript_0x18c720: ; 0x18c720
	faceplayer
	loadfont
	checkevent EVENT_GOT_BLACKGLASSES_IN_DARK_CAVE
	iftrue UnknownScript_0x18c735
	writetext UnknownText_0x18c73f
	buttonsound
	verbosegiveitem BLACKGLASSES, 1
	iffalse UnknownScript_0x18c739
	setevent EVENT_GOT_BLACKGLASSES_IN_DARK_CAVE
UnknownScript_0x18c735: ; 0x18c735
	writetext UnknownText_0x18c80c
	waitbutton
UnknownScript_0x18c739: ; 0x18c739
	closetext
	end
; 0x18c73b

ItemFragment_0x18c73b: ; 0x18c73b
	db MAX_REVIVE, 1
; 0x18c73d

ItemFragment_0x18c73d: ; 0x18c73d
	db TM_FLARE_BLITZ, 1
; 0x18c73f

UnknownText_0x18c73f: ; 0x18c73f
	text "Whoa! Tu m'as fait"
	line "peur!"

	para "J'avais mes"
	line "LUNETTES NOIRES<...>"

	para "Je ne t'ai pas"
	line "vu venir."

	para "Ce que je fais"
	line "ici?"

	para "Oh, ne t'en pré-"
	line "occupes pas."

	para "Voilà une paire de"
	line "LUNETTES NOIRES."

	para "Oublie que tu m'as"
	line "vu, OK?"
	done
; 0x18c80c

UnknownText_0x18c80c: ; 0x18c80c
	text "Les LUNET.NOIRES"
	line "augmentent la"
	cont "puissance des"
	cont "capacités du type"
	cont "TENEBRES."
	done
; 0x18c83d

DarkCaveBlackthornEntrance_MapEventHeader: ; 0x18c83d
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $3, $17, 1, GROUP_ROUTE_45, MAP_ROUTE_45
	warp_def $19, $3, 2, GROUP_DARK_CAVE_VIOLET_ENTRANCE, MAP_DARK_CAVE_VIOLET_ENTRANCE

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_PHARMACIST, 7, 11, $3, 0, 0, -1, -1, 0, 0, 0, PharmacistScript_0x18c720, -1
	person_event SPRITE_POKE_BALL, 28, 25, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x18c73b, EVENT_ITEM_DARKCAVEBLACKTHORNENTRANCE_REVIVE
	person_event SPRITE_POKE_BALL, 26, 11, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x18c73d, EVENT_ITEM_DARKCAVEBLACKTHORNENTRANCE_TM13
; 0x18c874

