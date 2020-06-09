Route2GateRB_MapScriptHeader: ; 0x9b950
	; trigger count
	db 0

	; callback count
	db 0
; 0x9b952

Route2GateRBScientistScript:
	jumptextfaceplayer Route2GateRBScientistText

Route2GateRBScientistText:
	text "Bonjour, je suis "
	line "un objet non"
	cont "utilisé."

	para "J'ai été mis là"
	line "en pensant que"
	cont "personne ne pou-"
	cont "rrait m'atteindre."

	para "Mais te voilà!"
	line "Bien joué!"

	para "N'oublie pas"
	line "d'éteindre tes"
	cont "codes triche en"
	cont "sortant!"
	done

Route2GateRB_MapEventHeader: ; 0x9b9ca
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $0, $4, 3, GROUP_ROUTE_2_RB, MAP_ROUTE_2_RB
	warp_def $0, $5, 4, GROUP_ROUTE_2_RB, MAP_ROUTE_2_RB
	warp_def $7, $4, 2, GROUP_ROUTE_2_RB, MAP_ROUTE_2_RB
	warp_def $7, $5, 2, GROUP_ROUTE_2_RB, MAP_ROUTE_2_RB

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_SCIENTIST, 8, 10, $4, 2, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, Route2GateRBScientistScript, -1
; 0x9b9f1

