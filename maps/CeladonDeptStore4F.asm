CeladonDeptStore4F_MapScriptHeader: ; 0x70f0b
	; trigger count
	db 0

	; callback count
	db 0
; 0x70f0d

ClerkScript_0x70f0d: ; 0x70f0d
	faceplayer
	loadfont
	pokemart $0, $001a
	closetext
	end
; 0x70f15

SuperNerdScript_0x70f15: ; 0x70f15
	jumptextfaceplayer UnknownText_0x70f21
; 0x70f18

YoungsterScript_0x70f18: ; 0x70f18
	jumptextfaceplayer UnknownText_0x70f55
; 0x70f1b

MapCeladonDeptStore4FSignpost0Script: ; 0x70f1b
	jumptext UnknownText_0x70f8c
; 0x70f1e

MapCeladonDeptStore4FSignpost1Script: ; 0x70f1e
	jumpstd elevatorbutton
; 0x70f21

UnknownText_0x70f21: ; 0x70f21
	text "Certains cadeaux"
	line "peuvent renforcer"
	cont "tes #MON."
	done
; 0x70f55

UnknownText_0x70f55: ; 0x70f55
	text "C'est le seul en-"
	line "droit ou l'on peut"

	para "acheter des LETR"
	line "CHARMANT."
	done
; 0x70f8c

UnknownText_0x70f8c: ; 0x70f8c
	text "Exprimez-vous avec"
	line "des cadeaux!"

	para "3EME: CADEAUX DU"
	line "      SAGE"
	done
; 0x70fbc

CeladonDeptStore4F_MapEventHeader: ; 0x70fbc
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $0, $c, 1, GROUP_CELADON_DEPT_STORE_5F, MAP_CELADON_DEPT_STORE_5F
	warp_def $0, $f, 2, GROUP_CELADON_DEPT_STORE_3F, MAP_CELADON_DEPT_STORE_3F
	warp_def $0, $2, 1, GROUP_CELADON_DEPT_STORE_ELEVATOR, MAP_CELADON_DEPT_STORE_ELEVATOR

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 0, 14, $0, MapCeladonDeptStore4FSignpost0Script
	signpost 0, 3, $0, MapCeladonDeptStore4FSignpost1Script

	; people-events
	db 3
	person_event SPRITE_CLERK, 9, 17, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ClerkScript_0x70f0d, -1
	person_event SPRITE_SUPER_NERD, 10, 11, $5, 0, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, SuperNerdScript_0x70f15, -1
	person_event SPRITE_YOUNGSTER, 6, 12, $7, 0, 0, -1, -1, 0, 0, 0, YoungsterScript_0x70f18, -1
; 0x71002

