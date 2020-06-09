ViridianForestNorthRB_MapScriptHeader: ; 0x1ac2ba
	; trigger count
	db 0

	; callback count
	db 0
; 0x1ac2bc

ViridianForestNorthRB_CooltrainerMScript:
	jumptextfaceplayer _ViridianForestExitText1

ViridianForestNorthRB_GrampsScript:
	jumptextfaceplayer _ViridianForestExitText2

_ViridianForestExitText1: ; 8a6fd (22:66fd)
	text "Plein de #MON"
	line "ne vivent que dans"
	cont "les forêts ou"
	cont "les caves."

	para "Tu dois regarder"
	line "partout pour en"
	cont "avoir de toutes"
	cont "sortes."
	done

_ViridianForestExitText2: ; 8a75d (22:675d)
	text "Tu as vu les"
	line "buissons sur la"
	cont "route?"

	para "Un #MON peut"
	line "le couper avec une"
	cont "capacité spéciale."
	done



ViridianForestNorthRB_MapEventHeader: ; 0x1ac4af
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $07, $04, 3, GROUP_VIRIDIAN_FOREST_RB, MAP_VIRIDIAN_FOREST_RB
	warp_def $07, $05, 3, GROUP_VIRIDIAN_FOREST_RB, MAP_VIRIDIAN_FOREST_RB
	warp_def $00, $05, 6, GROUP_ROUTE_2_RB, MAP_ROUTE_2_RB

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 2
	person_event SPRITE_COOLTRAINER_M, 6, 7, $3, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, ViridianForestNorthRB_CooltrainerMScript, -1
	person_event SPRITE_GRAMPS, 9, 6, $3, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ViridianForestNorthRB_GrampsScript, -1
; 0x1ac554

