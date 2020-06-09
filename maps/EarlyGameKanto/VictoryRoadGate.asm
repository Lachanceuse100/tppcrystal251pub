VictoryRoadGateRB_MapScriptHeader: ; 0x9b9f1
	; trigger count
	db 2

	; triggers
	dw .Trigger0, $0000
	dw .Trigger1, $0000

	; callback count
	db 0
; 0x9b9fb

.Trigger0: ; 0x9b9fb
	end
; 0x9b9fc

.Trigger1: ; 0x9b9fc
	end
; 0x9b9fd

VictoryRoadGateRB_BoulderBadgeCheckTrigger:
	spriteface $0, RIGHT
	spriteface $2, LEFT
	scall VictoryRoadGateRB_OfficerScriptAndTriggerContinue
	iftrue .permit
	applymovement $0, VictoryRoadGateRB_PlayerStepsDown
.permit
	end

VictoryRoadGateRB_OfficerScript:
	faceplayer
VictoryRoadGateRB_OfficerScriptAndTriggerContinue:
	loadfont
	checkflag ENGINE_BOULDERBADGE
	iftrue .permit
	writetext _Route22GateText_1e704
	buttonsound
	writetext _Route22GateText_1e715
	playsound SFX_WRONG
	waitsfx
	waitbutton
	closetext
	end

.permit
	writetext _Route22GateText_1e71a
	playsound SFX_LEVEL_UP
	waitsfx
	waitbutton
	closetext
	dotrigger $1
	end

VictoryRoadGateRB_PlayerStepsDown:
	step_down
	step_end

_Route22GateText_1e704:
	text "Seuls les dre-"
	line "sseurs de talent"
	cont "peuvent passer."

	para "Tu n'as pas encore"
	line "le BADGE ROCHE!"
	done

_Route22GateText_1e715:
	text "Les règles sont"
	line "les règles. Tu ne"
	cont "peux pas passer."
	done

_Route22GateText_1e71a:
	text "Oh! Le BADGEROCHE"
	line "Allez-y!"
	done

VictoryRoadGateRB_MapEventHeader: ; 0x9bb9b
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $7, $4, 1, GROUP_ROUTE_22_RB, MAP_ROUTE_22_RB
	warp_def $7, $5, 1, GROUP_ROUTE_22_RB, MAP_ROUTE_22_RB
	warp_def $0, $4, 1, GROUP_ROUTE_23_RB, MAP_ROUTE_23_RB
	warp_def $0, $5, 2, GROUP_ROUTE_23_RB, MAP_ROUTE_23_RB

	; xy triggers
	db 2
	xy_trigger 0, $2, $4, $0, VictoryRoadGateRB_BoulderBadgeCheckTrigger, $0, $0
	xy_trigger 0, $2, $5, $0, VictoryRoadGateRB_BoulderBadgeCheckTrigger, $0, $0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_OFFICER, 6, 10, $8, 0, 0, -1, -1, 0, 0, 0, VictoryRoadGateRB_OfficerScript, -1
; 0x9bbf8



