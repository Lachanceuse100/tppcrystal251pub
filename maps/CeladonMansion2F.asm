CeladonMansion2F_MapScriptHeader: ; 0x7152e
	; trigger count
	db 0

	; callback count
	db 0
; 0x71530

MapCeladonMansion2FSignpost0Script: ; 0x71530
	jumptext UnknownText_0x71539
; 0x71533

MapCeladonMansion2FSignpost1Script: ; 0x71533
	jumptext UnknownText_0x7162c
; 0x71536

MapCeladonMansion2FSignpost2Script: ; 0x71536
	jumpstd difficultbookshelf
; 0x71539

UnknownText_0x71539: ; 0x71539
	text "<PLAYER> allume"
	line "le PC."

	para "<...>"

	para "Pour le PRODUCTEUR"

	para "Quelqu'un était en"
	line "train d'écrire un"
	cont "e-mail<...>"

	para "<...>J'espère que"
	line "vous viendrez à"
	cont "KANTO."

	para "Vous verrez à quel"
	line "point les choses"
	cont "ont changé ici."

	para "Vous verrez même"
	line "des #MON qui"

	para "n'existent pas à"
	line "JOHTO."

	para "<...>"
	done
; 0x7162c

UnknownText_0x7162c: ; 0x7162c
	text "GAME FREAK"
	line "SALLE de REUNION"
	done
; 0x71645

CeladonMansion2F_MapEventHeader: ; 0x71645
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $0, $0, 4, GROUP_CELADON_MANSION_1F, MAP_CELADON_MANSION_1F
	warp_def $0, $1, 2, GROUP_CELADON_MANSION_3F, MAP_CELADON_MANSION_3F
	warp_def $0, $6, 3, GROUP_CELADON_MANSION_3F, MAP_CELADON_MANSION_3F
	warp_def $0, $7, 5, GROUP_CELADON_MANSION_1F, MAP_CELADON_MANSION_1F

	; xy triggers
	db 0

	; signposts
	db 3
	signpost 3, 0, $0, MapCeladonMansion2FSignpost0Script
	signpost 8, 5, $1, MapCeladonMansion2FSignpost1Script
	signpost 3, 2, $0, MapCeladonMansion2FSignpost2Script

	; people-events
	db 0
; 0x7166e

