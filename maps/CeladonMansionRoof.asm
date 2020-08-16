CeladonMansionRoof_MapScriptHeader: ; 0x71a37
	; trigger count
	db 0

	; callback count
	db 0
; 0x71a39

FisherScript_0x71a39: ; 0x71a39
	jumptextfaceplayer UnknownText_0x71a3f
; 0x71a3c

MapCeladonMansionRoofSignpost0Script: ; 0x71a3c
	jumptext UnknownText_0x71aa1
; 0x71a3f

UnknownText_0x71a3f: ; 0x71a3f
	text "J'adore la vue"
	line "des lieux qui sont"
	cont "très haut!"
	done
; 0x71aa1

UnknownText_0x71aa1: ; 0x71aa1
	text "Un graffiti sur le"
	line "mur<...>"

	para "<PLAYER> dessine"
	line "une moustache!"
	done
; 0x71ad4

CeladonMansionRoof_MapEventHeader: ; 0x71ad4
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $1, $1, 1, GROUP_CELADON_MANSION_3F, MAP_CELADON_MANSION_3F
	warp_def $1, $6, 4, GROUP_CELADON_MANSION_3F, MAP_CELADON_MANSION_3F
	warp_def $5, $2, 1, GROUP_CELADON_MANSION_ROOF_HOUSE, MAP_CELADON_MANSION_ROOF_HOUSE

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 1, 6, $4, MapCeladonMansionRoofSignpost0Script

	; people-events
	db 1
	person_event SPRITE_FISHER, 9, 11, $4, 1, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, FisherScript_0x71a39, -1
; 0x71afb

