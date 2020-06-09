Route23RB_MapScriptHeader:
	db 3
	dw .Trigger0, 0
	dw .Trigger1, 0
	dw .Trigger2, 0
	db 0
.Trigger0
	end
.Trigger1
	end
.Trigger2
	end


Route23RB_CascadeBadgeCheckTrigger:
	faceperson $2, $0
	faceperson $0, $2
	scall Route23RBScript_ContinueCascade
	iftrue .permit
	applymovement $0, Movement_PlayerStepsDown_Route23RB
.permit
	end

Route23RB_CascadeBadgeCheckOfficerScript:
	faceplayer
Route23RBScript_ContinueCascade:
	loadfont
	checkflag ENGINE_CASCADEBADGE
	iftrue .permit
	writetext _VictoryRoadGuardText1
	waitbutton
	closetext
	spriteface $2, DOWN
	end

.permit
	writetext _VictoryRoadGuardText2
	playsound SFX_LEVEL_UP
	waitsfx
	buttonsound
	writetext _VictoryRoadGuardText_513a3
	waitbutton
	closetext
	dotrigger $1
	spriteface $2, DOWN
	end

Route23RB_ThunderBadgeCheckOfficerScript:
	faceperson $3, $0
	faceperson $0, $3
	scall Route23RBScript_ContinueThunder
	iftrue .permit
	applymovement $0, Movement_PlayerStepsDown_Route23RB
.permit
	end

Route23RB_ThunderBadgeCheckTrigger:
	faceplayer
Route23RBScript_ContinueThunder:
	loadfont
	checkflag ENGINE_THUNDERBADGE
	iftrue .permit
	writetext _VictoryRoadGuardText3
	waitbutton
	closetext
	spriteface $3, DOWN
	end

.permit
	writetext _VictoryRoadGuardText4
	playsound SFX_LEVEL_UP
	waitsfx
	buttonsound
	writetext _VictoryRoadGuardText_513a3
	waitbutton
	closetext
	dotrigger $2
	spriteface $3, DOWN
	end


Movement_PlayerStepsDown_Route23RB:
	step_down
	step_end

_VictoryRoadGuardText1:
	text "Tu peux seulement"
	line "passer sous"
	cont "présentation du"
	cont "BADGECASCADE"

	para "Tu n'as pas le"
	line "BADGECASCADE!"

	para "Tu dois l'avoir"
	line "pour aller à la"
	cont "LIGUE #MON!"
	done

_VictoryRoadGuardText2:
	text "Tu peux seulement"
	line "passer sous"
	cont "présentation du"
	cont "BADGECASCADE"

	para "Oh! C'est le"
	line "BADGECASCADE!"
	done

_VictoryRoadGuardText_513a3:
	text "Très bien,"
	line "tu peux passer!"
	done

_VictoryRoadGuardText3:
	text "Tu peux seulement"
	line "passer sous"
	cont "présentation du"
	cont "BADGE FOUDRE"

	para "Tu n'as pas le"
	line "BADGE FOUDRE!"

	para "Tu dois l'avoir"
	line "pour aller à la"
	cont "LIGUE #MON!"
	done

_VictoryRoadGuardText4:
	text "Tu peux seulement"
	line "passer sous"
	cont "présentation du"
	cont "BADGE FOUDRE"

	para "Oh! C'est le"
	line "BADGEFOUDRE!"
	done

_Route23Text8:
	text "ROUTE VICTOIRE -"
	line "LIGUE #MON"
	done



Route23RB_MapEventHeader:
	db 0, 0
	db 2
	warp_def $23, $7, 3, GROUP_VICTORY_ROAD_GATE_RB, MAP_VICTORY_ROAD_GATE_RB
	warp_def $23, $8, 4, GROUP_VICTORY_ROAD_GATE_RB, MAP_VICTORY_ROAD_GATE_RB

	db 4
	xy_trigger 0, 31, 6, $0, Route23RB_CascadeBadgeCheckTrigger, 0, 0
	xy_trigger 0, 31, 7, $0, Route23RB_CascadeBadgeCheckTrigger, 0, 0
	xy_trigger 0, 31, 9, $0, Route23RB_CascadeBadgeCheckTrigger, 0, 0
	xy_trigger 1, 15, 9, $0, Route23RB_ThunderBadgeCheckTrigger, 0, 0
	db 0

	db 2
	person_event SPRITE_OFFICER, 35, 12, $6, 0, 0, -1, -1, 0, 0, 0, Route23RB_CascadeBadgeCheckOfficerScript, -1
	person_event SPRITE_OFFICER, 19, 12, $6, 0, 0, -1, -1, 0, 0, 0, Route23RB_ThunderBadgeCheckOfficerScript, -1
