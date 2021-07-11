PewterMart_MapScriptHeader: ; 0x1a2dc9
	; trigger count
	db 0

	; callback count
	db 0
; 0x1a2dcb

ClerkScript_0x1a2dcb: ; 0x1a2dcb
	loadfont
	pokemart $0, $0013
	closetext
	end
; 0x1a2dd2

YoungsterScript_0x1a2dd2: ; 0x1a2dd2
	jumptextfaceplayer UnknownText_0x1a2dd8
; 0x1a2dd5

SuperNerdScript_0x1a2dd5: ; 0x1a2dd5
	jumptextfaceplayer UnknownText_0x1a2e3a
; 0x1a2dd8

UnknownText_0x1a2dd8: ; 0x1a2dd8
	text "Mate un peu mon"
	line "LEVIATOR!"

	para "C'était un MAGI-"
	line "CARPE avant. C'est"

	para "dingue a quel"
	line "point il est"
	cont "devenu fort!"
	done
; 0x1a2e3a

UnknownText_0x1a2e3a: ; 0x1a2e3a
	text "Il y avait un type"
	line "tout vieux et bi-"
	cont "zarre qui vendait"
	cont "des MAGICARPE."

	para "Il recommandait"
	line "les MAGICARPE du"
	cont "LAC COLERE."
	done
; 0x1a2eae

PewterMart_MapEventHeader: ; 0x1a2eae
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 3, GROUP_PEWTER_CITY, MAP_PEWTER_CITY
	warp_def $7, $3, 3, GROUP_PEWTER_CITY, MAP_PEWTER_CITY

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_CLERK, 7, 5, $9, 0, 0, -1, -1, 0, 0, 0, ClerkScript_0x1a2dcb, -1
	person_event SPRITE_YOUNGSTER, 6, 13, $5, 0, 2, -1, -1, 0, 0, 0, YoungsterScript_0x1a2dd2, -1
	person_event SPRITE_SUPER_NERD, 10, 10, $3, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SuperNerdScript_0x1a2dd5, -1
; 0x1a2ee5

