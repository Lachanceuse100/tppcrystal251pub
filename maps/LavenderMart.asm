LavenderMart_MapScriptHeader: ; 0x7eb1a
	; trigger count
	db 0

	; callback count
	db 0
; 0x7eb1c

ClerkScript_0x7eb1c: ; 0x7eb1c
	loadfont
	pokemart $0, $0015
	closetext
	end
; 0x7eb23

PokefanMScript_0x7eb23: ; 0x7eb23
	jumptextfaceplayer UnknownText_0x7eb29
; 0x7eb26

RockerScript_0x7eb26: ; 0x7eb26
	jumptextfaceplayer UnknownText_0x7ebac
; 0x7eb29

UnknownText_0x7eb29: ; 0x7eb29
	text "Le REPOUSSE est"
	line "utile pour explo-"
	cont "rer une caverne."

	para "J'adore me bala-"
	line "der, mais je n'ai"
	cont "pas encore tout"
	cont "vu."
	done
; 0x7ebac

UnknownText_0x7ebac: ; 0x7ebac
	text "On m'a parlé d'un"
	line "artisan qui fabri-"

	para "que des # BALLS"
	line "à ECORCIA, à"

	para "JOHTO. J'aimerais"
	line "bien qu'il m'en"
	cont "fabrique<...>"
	done
; 0x7ec0e

LavenderMart_MapEventHeader: ; 0x7ec0e
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 5, GROUP_LAVENDER_TOWN, MAP_LAVENDER_TOWN
	warp_def $7, $3, 5, GROUP_LAVENDER_TOWN, MAP_LAVENDER_TOWN

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_CLERK, 7, 5, $9, 0, 0, -1, -1, 0, 0, 0, ClerkScript_0x7eb1c, -1
	person_event SPRITE_POKEFAN_M, 10, 10, $5, 0, 2, -1, -1, 8 + PAL_OW_RED, 0, 0, PokefanMScript_0x7eb23, -1
	person_event SPRITE_ROCKER, 6, 13, $3, 0, 0, -1, -1, 0, 0, 0, RockerScript_0x7eb26, -1
; 0x7ec45

