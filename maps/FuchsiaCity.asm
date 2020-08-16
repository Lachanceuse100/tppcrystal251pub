FuchsiaCity_MapScriptHeader: ; 0x194b19
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 5, UnknownScript_0x194b1e
; 0x194b1e

UnknownScript_0x194b1e: ; 0x194b1e
	setflag ENGINE_FLYPOINT_FUCHSIA
	checkevent EVENT_SET_BY_OAK_AFTER_16_BADGES
	iftrue UnknownScript_0x194b1e_2
	warpmod 1, GROUP_FUCHSIA_GYM, MAP_FUCHSIA_GYM
	return
UnknownScript_0x194b1e_2:
	warpmod 1, GROUP_FUCHSIA_GYM_2, MAP_FUCHSIA_GYM_2
	return
; 0x194b22

YoungsterScript_0x194b22: ; 0x194b22
	jumptextfaceplayer UnknownText_0x194b45
; 0x194b25

PokefanMScript_0x194b25: ; 0x194b25
	jumptextfaceplayer UnknownText_0x194b83
; 0x194b28

TeacherScript_0x194b28: ; 0x194b28
	jumptextfaceplayer UnknownText_0x194bd3
; 0x194b2b

MapFuchsiaCitySignpost0Script: ; 0x194b2b
	jumptext UnknownText_0x194c22
; 0x194b2e

MapFuchsiaCitySignpost1Script: ; 0x194b2e
	jumptext UnknownText_0x194c4a
; 0x194b31

MapFuchsiaCitySignpostDoorScript:
	jumptext FuchsiaCityDoorText

MapFuchsiaCitySignpost2Script: ; 0x194b31
	jumptext UnknownText_0x194c8b
; 0x194b34

MapFuchsiaCitySignpost3Script: ; 0x194b34
	jumptext UnknownText_0x194cd5
; 0x194b37

MapFuchsiaCitySignpost4Script: ; 0x194b37
	jumptext UnknownText_0x194cf0
; 0x194b3a

MapFuchsiaCitySignpost5Script: ; 0x194b3a
	jumptext UnknownText_0x194d37
; 0x194b3d

MapFuchsiaCitySignpost6Script: ; 0x194b3d
	jumpstd pokecentersign
; 0x194b40

MapFuchsiaCitySignpost7Script: ; 0x194b40
	jumpstd martsign
; 0x194b43

FruitTreeScript_0x194b43: ; 0x194b43
	fruittree $1e
; 0x194b45

UnknownText_0x194b45: ; 0x194b45
	text "Un membre du"
	line "CONSEIL des 4"
	cont "était le"

	para "CHAMPION de l'ARE-"
	line "NE de PARMANIE."
	done
; 0x194b83

UnknownText_0x194b83: ; 0x194b83
	text "La fille de KOGA"
	line "a pris sa succes-"

	para "sion en tant que"
	line "CHAMPIONNE d'ARENE"
	
	para "après son départ"
	line "pour le CONSEIL"
	cont "des 4."
	done
; 0x194bd3

UnknownText_0x194bd3: ; 0x194bd3
	text "Le PARC SAFARI est"
	line "fermé. C'est tris-"

	para "te: c'était l'at-"
	line "traction principa-"
	cont "le de PARMANIE."
	done
; 0x194c22

UnknownText_0x194c22: ; 0x194c22
	text "PARMANIE"

	para "Le rose de la"
	line "passion!"
	done
; 0x194c4a

UnknownText_0x194c4a: ; 0x194c4a
	text "ARENE de PARMANIE"

	para "CHAMPIONNE:"
	line "JEANNINE"

	para "La Ninja aux"
	line "mille poisons."
	done
; 0x194c8b

UnknownText_0x194c8b: ; 0x194c8b
	text "Il y a une"
	line "affiche<...>"

	para "Le BUREAU du PARC"
	line "SAFARI est fermé"
	cont "jusqu'à nouvel"
	cont "ordre."
	done
; 0x194cd5

UnknownText_0x194cd5: ; 0x194cd5
	text "MAISON DU GARDIEN"
	line "du PARC SAFARI"
	done
; 0x194cf0

UnknownText_0x194cf0: ; 0x194cf0
	text "Le GARDIEN voyage"
	line "à l'étranger."

	para "Ainsi, le PARC"
	line "SAFARI est fermé."
	done
; 0x194d37

UnknownText_0x194d37: ; 0x194d37
	text "Ne rien jeter."

	para "Utilisez les"
	line "poubelles."
	done
; 0x194d67

FuchsiaCityDoorText:
	text "La porte est"
	line "fermée<...>"
	done

FuchsiaCity_MapEventHeader: ; 0x194d67
	; filler
	db 0, 0

	; warps
	db 10
	warp_def $d, $5, 2, GROUP_FUCHSIA_MART, MAP_FUCHSIA_MART
	warp_def $d, $16, 1, GROUP_SAFARI_ZONE_MAIN_OFFICE, MAP_SAFARI_ZONE_MAIN_OFFICE
	warp_def $1b, $8, -1, 0, 0 ;Fuchsia Gym
	warp_def $1b, $b, 1, GROUP_FUCHSIA_BILL_SPEECH_HOUSE, MAP_FUCHSIA_BILL_SPEECH_HOUSE
	warp_def $1b, $13, 1, GROUP_FUCHSIA_POKECENTER_1F, MAP_FUCHSIA_POKECENTER_1F
	warp_def $1b, $1b, 1, GROUP_SAFARI_ZONE_WARDENS_HOME, MAP_SAFARI_ZONE_WARDENS_HOME
	warp_def $16, $25, 1, GROUP_ROUTE_15_FUCHSIA_GATE, MAP_ROUTE_15_FUCHSIA_GATE
	warp_def $17, $25, 2, GROUP_ROUTE_15_FUCHSIA_GATE, MAP_ROUTE_15_FUCHSIA_GATE
	warp_def $23, $7, 1, GROUP_ROUTE_19___FUCHSIA_GATE, MAP_ROUTE_19___FUCHSIA_GATE
	warp_def $23, $8, 2, GROUP_ROUTE_19___FUCHSIA_GATE, MAP_ROUTE_19___FUCHSIA_GATE

	; xy triggers
	db 0

	; signposts
	db 9
	signpost 15, 21, $0, MapFuchsiaCitySignpost0Script
	signpost 29, 5, $0, MapFuchsiaCitySignpost1Script
	signpost 15, 25, $0, MapFuchsiaCitySignpost2Script
	signpost 29, 27, $0, MapFuchsiaCitySignpost3Script
	signpost 5, 17, $0, MapFuchsiaCitySignpost4Script
	signpost 3, 18, $0, MapFuchsiaCitySignpostDoorScript
	signpost 15, 13, $0, MapFuchsiaCitySignpost5Script
	signpost 27, 20, $0, MapFuchsiaCitySignpost6Script
	signpost 13, 6, $0, MapFuchsiaCitySignpost7Script

	; people-events
	db 4
	person_event SPRITE_YOUNGSTER, 22, 27, $2, 1, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, YoungsterScript_0x194b22, -1
	person_event SPRITE_POKEFAN_M, 12, 17, $2, 1, 1, -1, -1, 8 + PAL_OW_BROWN, 0, 0, PokefanMScript_0x194b25, -1
	person_event SPRITE_TEACHER, 18, 20, $2, 1, 1, -1, -1, 8 + PAL_OW_RED, 0, 0, TeacherScript_0x194b28, -1
	person_event SPRITE_FRUIT_TREE, 5, 12, $1, 0, 0, -1, -1, 0, 0, 0, FruitTreeScript_0x194b43, -1
; 0x194e00

