Route40BattleTowerGate_MapScriptHeader: ; 0x9f660
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 2, UnknownScript_0x9f665
; 0x9f665

UnknownScript_0x9f665: ; 0x9f665
	clearevent EVENT_BATTLE_TOWER_SPRITE_SET_INIT
	return
; 0x9f669

RockerScript_0x9f669: ; 0x9f669
	jumptextfaceplayer UnknownText_0x9f716
; 0x9f66c

TwinScript_0x9f66c: ; 0x9f66c
	jumptextfaceplayer UnknownText_0x9f7c8
; 0x9f66f

UnknownText_0x9f66f: ; 0x9f66f
	text "Toi aussi tu es"
	line "là pour voir la"
	cont "TOUR DE COMBAT?"

	para "Mais on ne peut"
	line "pas encore y"
	cont "aller."
	done
; 0x9f6ba

UnknownText_0x9f6ba: ; 0x9f6ba
	text "La TOUR DE COMBAT"
	line "est ouverte."

	para "Je veux y aller"
	line "mais je n'ai pas"

	para "pensé à une bonne"
	line "phrase de"
	cont "victoire<...>"
	done
; 0x9f716

UnknownText_0x9f716: ; 0x9f716
	text "Tu vas à la"
	line "TOUR DE COMBAT?"

	para "C'est un secret"
	line "mais si tu gagnes"

	para "plein de fois, tu"
	line "peux remporter des"
	cont "trucs spéciaux."
	done
; 0x9f783

UnknownText_0x9f783: ; 0x9f783
	text "Je vais entraîner"
	line "mon #MON pour"

	para "être prêt pour la"
	line "TOUR DE COMBAT."
	done
; 0x9f7c8

UnknownText_0x9f7c8: ; 0x9f7c8
	text "Mes #MON ont"
	line "tous des niveaux"
	cont "différents<...>"

	para "Je dois les"
	line "entraîner!"
	done
; 0x9f81e

Route40BattleTowerGate_MapEventHeader: ; 0x9f81e
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $7, $4, 1, GROUP_ROUTE_40, MAP_ROUTE_40
	warp_def $7, $5, 1, GROUP_ROUTE_40, MAP_ROUTE_40
	warp_def $0, $4, 1, GROUP_BATTLE_TOWER_OUTSIDE, MAP_BATTLE_TOWER_OUTSIDE
	warp_def $0, $5, 2, GROUP_BATTLE_TOWER_OUTSIDE, MAP_BATTLE_TOWER_OUTSIDE

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 2
	person_event SPRITE_ROCKER, 7, 7, $3, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, RockerScript_0x9f669, EVENT_BATTLE_TOWER_SPRITE_SET_INIT
	person_event SPRITE_TWIN, 9, 11, $4, 1, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, TwinScript_0x9f66c, -1
; 0x9f852

