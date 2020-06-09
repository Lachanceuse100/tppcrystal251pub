GoldenrodDeptStore1F_MapScriptHeader: ; 0x5597f
	; trigger count
	db 0

	; callback count
	db 0
; 0x55981

ReceptionistScript_0x55981: ; 0x55981
	jumptextfaceplayer UnknownText_0x55993
; 0x55984

GentlemanScript_0x55984: ; 0x55984
	jumptextfaceplayer UnknownText_0x559b7
; 0x55987

PokefanFScript_0x55987: ; 0x55987
	jumptextfaceplayer UnknownText_0x55a1a
; 0x5598a

BugCatcherScript_0x5598a: ; 0x5598a
	jumptextfaceplayer UnknownText_0x55a3a
; 0x5598d

MapGoldenrodDeptStore1FSignpost0Script: ; 0x5598d
	jumptext UnknownText_0x55a80
; 0x55990

MapGoldenrodDeptStore1FSignpost1Script: ; 0x55990
	jumpstd elevatorbutton
; 0x55993

UnknownText_0x55993: ; 0x55993
	text "Bienvenue au"
	line "CENTRE COMMERCIAL"
	cont "de DOUBLONVILLE."
	done
; 0x559b7

UnknownText_0x559b7: ; 0x559b7
	text "Le CENTRE COMMER-"
	line "CIAL a un tas de"
	cont "bons produits."

	para "Mais certains"
	line "objets ne sont"

	para "disponibles qu'en"
	line "prix à gagner au"
	cont "CASINO."
	done
; 0x55a1a

UnknownText_0x55a1a: ; 0x55a1a
	text "J'ai hâte de faire"
	line "les courses!"
	done
; 0x55a3a

UnknownText_0x55a3a: ; 0x55a3a
	text "Maman est trop"
	line "forte quand elle"
	cont "fait les courses!"

	para "Elle achète tou-"
	line "jours des trucs"
	cont "pas chers."
	done
; 0x55a80

UnknownText_0x55a80: ; 0x55a80
	text "RDC: ACCUEIL"

	para "1ER: BOUTIQUE"
	line "     DRESSEUR"

	para "2EME: COLLECTION"
	line "      DE COMBAT"

	para "3EME: PALAIS DE LA"
	line "      PUISSANCE"

	para "4EME: BOUTIQUE"
	line "      TACTIQUE"

	para "5EME: COIN"
	line "      TRANQUILLE"

	para "TOIT: PANORAMA"
	done
; 0x55b03

GoldenrodDeptStore1F_MapEventHeader: ; 0x55b03
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $7, $7, 9, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY
	warp_def $7, $8, 9, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY
	warp_def $0, $f, 2, GROUP_GOLDENROD_DEPT_STORE_2F, MAP_GOLDENROD_DEPT_STORE_2F
	warp_def $0, $2, 1, GROUP_GOLDENROD_DEPT_STORE_ELEVATOR, MAP_GOLDENROD_DEPT_STORE_ELEVATOR

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 0, 14, $0, MapGoldenrodDeptStore1FSignpost0Script
	signpost 0, 3, $0, MapGoldenrodDeptStore1FSignpost1Script

	; people-events
	db 4
	person_event SPRITE_RECEPTIONIST, 5, 14, $6, 0, 0, -1, -1, 0, 0, 0, ReceptionistScript_0x55981, -1
	person_event SPRITE_POKEFAN_F, 8, 9, $6, 0, 0, -1, -1, 0, 0, 0, PokefanFScript_0x55987, -1
	person_event SPRITE_BUG_CATCHER, 9, 9, $5, 0, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, BugCatcherScript_0x5598a, -1
	person_event SPRITE_GENTLEMAN, 9, 15, $2, 1, 1, -1, -1, 0, 0, 0, GentlemanScript_0x55984, -1
; 0x55b5b

