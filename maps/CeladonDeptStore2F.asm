CeladonDeptStore2F_MapScriptHeader: ; 0x70bab
	; trigger count
	db 0

	; callback count
	db 0
; 0x70bad

ClerkScript_0x70bad: ; 0x70bad
	faceplayer
	loadfont
	pokemart $0, $0017
	closetext
	end
; 0x70bb5

ClerkScript_0x70bb5: ; 0x70bb5
	faceplayer
	loadfont
	pokemart $0, $0018
	closetext
	end
; 0x70bbd

PokefanMScript_0x70bbd: ; 0x70bbd
	jumptextfaceplayer UnknownText_0x70bc9
; 0x70bc0

YoungsterScript_0x70bc0: ; 0x70bc0
	jumptextfaceplayer UnknownText_0x70c3e
; 0x70bc3

MapCeladonDeptStore2FSignpost0Script: ; 0x70bc3
	jumptext UnknownText_0x70c9c
; 0x70bc6

MapCeladonDeptStore2FSignpost1Script: ; 0x70bc6
	jumpstd elevatorbutton
; 0x70bc9

UnknownText_0x70bc9: ; 0x70bc9
	text "Je suis un dres-"
	line "seur depuis peu."

	para "Mon fils m'a un"
	line "peu poussé."

	para "C'est dingue tous"
	line "les objets qui"
	cont "existent!"
	done
; 0x70c3e

UnknownText_0x70c3e: ; 0x70c3e
	text "Mon père a du mal"
	line "a retenir tous les"

	para "objets et leurs"
	line "fonctions<...>"
	done
; 0x70c9c

UnknownText_0x70c9c: ; 0x70c9c
	text "De bons objets"
	line "pour de bons dres-"
	cont "seurs!"

	para "1ER:  MARCHE DU"
	line "      DRESSEUR"
	done
; 0x70cd4

CeladonDeptStore2F_MapEventHeader: ; 0x70cd4
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $0, $c, 1, GROUP_CELADON_DEPT_STORE_3F, MAP_CELADON_DEPT_STORE_3F
	warp_def $0, $f, 3, GROUP_CELADON_DEPT_STORE_1F, MAP_CELADON_DEPT_STORE_1F
	warp_def $0, $2, 1, GROUP_CELADON_DEPT_STORE_ELEVATOR, MAP_CELADON_DEPT_STORE_ELEVATOR

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 0, 14, $0, MapCeladonDeptStore2FSignpost0Script
	signpost 0, 3, $0, MapCeladonDeptStore2FSignpost1Script

	; people-events
	db 4
	person_event SPRITE_CLERK, 9, 17, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ClerkScript_0x70bad, -1
	person_event SPRITE_CLERK, 9, 18, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ClerkScript_0x70bb5, -1
	person_event SPRITE_POKEFAN_M, 6, 9, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, PokefanMScript_0x70bbd, -1
	person_event SPRITE_YOUNGSTER, 6, 10, $8, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, YoungsterScript_0x70bc0, -1
; 0x70d27

