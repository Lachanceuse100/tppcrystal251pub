VictoryRoadGate_MapScriptHeader: ; 0x9b9f1
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x9b9fb, $0000
	dw UnknownScript_0x9b9fc, $0000

	; callback count
	db 0
; 0x9b9fb

UnknownScript_0x9b9fb: ; 0x9b9fb
	end
; 0x9b9fc

UnknownScript_0x9b9fc: ; 0x9b9fc
	end
; 0x9b9fd

UnknownScript_0x9b9fd: ; 0x9b9fd
	spriteface $0, $2
	jump UnknownScript_0x9ba04
; 0x9ba03

OfficerScript_0x9ba03: ; 0x9ba03
	faceplayer
UnknownScript_0x9ba04: ; 0x9ba04
	loadfont
	writetext UnknownText_0x9ba29
	buttonsound
	checkcode VAR_BADGES
	if_greater_than $7, UnknownScript_0x9ba19
	writetext UnknownText_0x9ba5f
	waitbutton
	closetext
	applymovement $0, MovementData_0x9ba27
	end
; 0x9ba19

UnknownScript_0x9ba19: ; 0x9ba19
	writetext UnknownText_0x9bab4
	waitbutton
	closetext
	dotrigger $1
	end
; 0x9ba21

BlackBeltScript_0x9ba21: ; 0x9ba21
	jumptextfaceplayer UnknownText_0x9baf1
; 0x9ba24

BlackBeltScript_0x9ba24: ; 0x9ba24
	jumptextfaceplayer UnknownText_0x9bb37
; 0x9ba27

MovementData_0x9ba27: ; 0x9ba27
	step_down
	step_end
; 0x9ba29

UnknownText_0x9ba29: ; 0x9ba29
	text "Seuls les dres-"
	line "seurs confirmés"
	cont "peuvent passer.."
	done
; 0x9ba5f

UnknownText_0x9ba5f: ; 0x9ba5f
	text "Vous n'avez pas"
	line "tous les BADGES"
	cont "d'ARENE de JOHTO."

	para "Vous ne pouvez pas"
	line "passer."
	done
; 0x9bab4

UnknownText_0x9bab4: ; 0x9bab4
	text "Oh! Les huit"
	line "BADGES de JOHTO!"

	para "Après vous!"
	done
; 0x9baf1

UnknownText_0x9baf1: ; 0x9baf1
	text "Cette route mène"
	line "au MONT ARGENT."

	para "Tu y verras des"
	line "#MON affreu-"
	cont "sement forts."
	done
; 0x9bb37

UnknownText_0x9bb37: ; 0x9bb37
	text "Tu vas à la LIGUE"
	line "#MON, hein?"

	para "Le CONSEIL des 4"
	line "est super fort,"
	cont "tu vas en baver!"
	done
; 0x9bb9b

VictoryRoadGate_MapEventHeader: ; 0x9bb9b
	; filler
	db 0, 0

	; warps
	db 8
	warp_def $7, $11, 1, GROUP_ROUTE_22, MAP_ROUTE_22
	warp_def $7, $12, 1, GROUP_ROUTE_22, MAP_ROUTE_22
	warp_def $11, $9, 1, GROUP_ROUTE_26, MAP_ROUTE_26
	warp_def $11, $a, 1, GROUP_ROUTE_26, MAP_ROUTE_26
	warp_def $0, $9, 1, GROUP_VICTORY_ROAD, MAP_VICTORY_ROAD
	warp_def $0, $a, 1, GROUP_VICTORY_ROAD, MAP_VICTORY_ROAD
	warp_def $7, $1, 2, GROUP_ROUTE_28, MAP_ROUTE_28
	warp_def $7, $2, 2, GROUP_ROUTE_28, MAP_ROUTE_28

	; xy triggers
	db 1
	xy_trigger 0, $b, $a, $0, UnknownScript_0x9b9fd, $0, $0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_OFFICER, 15, 12, $9, 0, 0, -1, -1, 0, 0, 0, OfficerScript_0x9ba03, -1
	person_event SPRITE_BLACK_BELT, 9, 11, $9, 0, 0, -1, -1, 0, 0, 0, BlackBeltScript_0x9ba21, EVENT_ALLOWED_INTO_ROUTE_28
	person_event SPRITE_BLACK_BELT, 9, 16, $8, 0, 0, -1, -1, 0, 0, 0, BlackBeltScript_0x9ba24, EVENT_FOUGHT_SNORLAX
; 0x9bbf8



