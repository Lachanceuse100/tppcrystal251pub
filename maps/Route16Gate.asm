Route16Gate_MapScriptHeader: ; 0x733e3
	; trigger count
	db 1

	; triggers
	dw UnknownScript_0x733e9, $0000

	; callback count
	db 0
; 0x733e9

UnknownScript_0x733e9: ; 0x733e9
	end
; 0x733ea

OfficerScript_0x733ea: ; 0x733ea
	jumptextfaceplayer UnknownText_0x73408
; 0x733ed

UnknownScript_0x733ed: ; 0x733ed
	checkitem BICYCLE
	iffalse UnknownScript_0x733f3
	end
; 0x733f3

UnknownScript_0x733f3: ; 0x733f3
	showemote $0, $2, 15
	spriteface $0, $1
	loadfont
	writetext UnknownText_0x73496
	checkevent EVENT_GOT_BICYCLE
	iftrue .dontgiveextrabike
	buttonsound
	writetext Route16CyclingRoadGuardGiveBicycleText
	buttonsound
	verbosegiveitem BICYCLE, 1
	waitbutton
	closetext
	end
.dontgiveextrabike
	waitbutton
	closetext
	applymovement $0, MovementData_0x73405
	end
; 0x73405

MovementData_0x73405: ; 0x73405
	step_right
	turn_head_left
	step_end
; 0x73408

UnknownText_0x73408: ; 0x73408
	text "La PISTE CYCLABLE"
	line "commence ici."

	para "C'est une descente"
	line "facile et très"
	cont "reposante."

	para "Et avant que"
	line "j'oublie."

	para "Gare aux guêpes!"
	done
; 0x73496

UnknownText_0x73496: ; 0x73496
	text "Attends! Stop!"

	para "Tu ne peux pas"
	line "aller sur la PISTE"

	para "CYCLABLE sans"
	line "BICYCLETTE."
	done

Route16CyclingRoadGuardGiveBicycleText:
	text "Grâce à un parte-"
	line "nariat avec le"

	para "CYCLE à GOGO de"
	line "DOUBLONVILLE,"
	
	para "nous avons une"
	line "offre spéciale."

	para "Si tu acceptes"
	line "d'utiliser cette"

	para "BICYCLETTE pour"
	line "voyager, tu peux"
	cont "la garder si tu"
	cont "fais assez de pub."
	done
; 0x734df

Route16Gate_MapEventHeader: ; 0x734df
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $4, $0, 4, GROUP_ROUTE_16, MAP_ROUTE_16
	warp_def $5, $0, 5, GROUP_ROUTE_16, MAP_ROUTE_16
	warp_def $4, $9, 2, GROUP_ROUTE_16, MAP_ROUTE_16
	warp_def $5, $9, 3, GROUP_ROUTE_16, MAP_ROUTE_16

	; xy triggers
	db 2
	xy_trigger 0, $4, $5, $0, UnknownScript_0x733ed, $0, $0
	xy_trigger 0, $5, $5, $0, UnknownScript_0x733ed, $0, $0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_OFFICER, 6, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, OfficerScript_0x733ea, -1
; 0x73516

