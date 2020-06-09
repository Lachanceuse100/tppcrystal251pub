EcruteakMart_MapScriptHeader: ; 0x99c39
	; trigger count
	db 0

	; callback count
	db 0
; 0x99c3b

ClerkScript_0x99c3b: ; 0x99c3b
	loadfont
	pokemart $0, $000e
	closetext
	end
; 0x99c42

SuperNerdScript_0x99c42: ; 0x99c42
	jumptextfaceplayer UnknownText_0x99c48
; 0x99c45

GrannyScript_0x99c45: ; 0x99c45
	jumptextfaceplayer UnknownText_0x99cd5
; 0x99c48

UnknownText_0x99c48: ; 0x99c48
	text "Mon EVOLI a évoulé"
	line "en MENTALI."

	para "Mais celui de mon"
	line "copain a évolué"
	cont "en NOCTALI."

	para "Je me demande"
	line "pourquoi? On a"

	para "tous les deux"
	line "élevé notre EVOLI"
	cont "de la même façon!"
	done
; 0x99cd5

UnknownText_0x99cd5: ; 0x99cd5
	text "Si tu utilises un"
	line "RAPPEL, le #MON"

	para "K.O. reviendra à"
	line "lui."
	done
; 0x99d12

EcruteakMart_MapEventHeader: ; 0x99d12
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 9, GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY
	warp_def $7, $3, 9, GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_CLERK, 7, 5, $9, 0, 0, -1, -1, 0, 0, 0, ClerkScript_0x99c3b, -1
	person_event SPRITE_SUPER_NERD, 6, 9, $5, 0, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, SuperNerdScript_0x99c42, -1
	person_event SPRITE_GRANNY, 10, 10, $7, 0, 0, -1, -1, 0, 0, 0, GrannyScript_0x99c45, -1
; 0x99d49

