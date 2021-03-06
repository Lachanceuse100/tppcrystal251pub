TrainerHouseB1F_MapScriptHeader: ; 0x9b384
	; trigger count
	db 1

	; triggers
	dw UnknownScript_0x9b38a, $0000

	; callback count
	db 0
; 0x9b38a

UnknownScript_0x9b38a: ; 0x9b38a
	end
; 0x9b38b

UnknownScript_0x9b38b: ; 0x9b38b
	spriteface $0, $1
	loadfont
	checkflag ENGINE_FOUGHT_IN_TRAINER_HALL_TODAY
	iftrue UnknownScript_0x9b3f7
	writetext UnknownText_0x9b420
	buttonsound
	special SpecialTrainerHouse
	iffalse UnknownScript_0x9b3a6
	trainertotext CAL, CAL2, $0
	jump UnknownScript_0x9b3aa
; 0x9b3a6

UnknownScript_0x9b3a6: ; 0x9b3a6
	trainertotext CAL, 4, $0
UnknownScript_0x9b3aa: ; 0x9b3aa
	writetext UnknownText_0x9b46a
	buttonsound
	writetext UnknownText_0x9b487
	yesorno
	iffalse UnknownScript_0x9b3ed
	setflag ENGINE_FOUGHT_IN_TRAINER_HALL_TODAY
	writetext UnknownText_0x9b4a2
	waitbutton
	closetext
	applymovement $0, MovementData_0x9b401
	loadfont
	special SpecialTrainerHouse
	iffalse UnknownScript_0x9b3dc
	writetext UnknownText_0x9b587
	waitbutton
	closetext
	winlosstext UnknownText_0x9b578, $0000
	setlasttalked $3
	loadtrainer CAL, CAL2
	startbattle
	returnafterbattle
	iffalse UnknownScript_0x9b3e8
UnknownScript_0x9b3dc: ; 0x9b3dc
	writetext ADJNNW_Text_1
	waitbutton
	closetext
	winlosstext ADJNNW_Text_2, $0000
	setlasttalked $3
	loadtrainer CAL, 4 ; AJDNNW
	startbattle
	returnafterbattle
UnknownScript_0x9b3e8: ; 0x9b3e8
	applymovement $0, MovementData_0x9b40f
	end
; 0x9b3ed

UnknownScript_0x9b3ed: ; 0x9b3ed
	writetext UnknownText_0x9b4d6
	waitbutton
	closetext
	applymovement $0, MovementData_0x9b41d
	end
; 0x9b3f7

UnknownScript_0x9b3f7: ; 0x9b3f7
	writetext UnknownText_0x9b51d
	waitbutton
	closetext
	applymovement $0, MovementData_0x9b41d
	end
; 0x9b401

MovementData_0x9b401: ; 0x9b401
	step_left
	step_left
	step_left
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_left
	turn_head_right
	step_end
; 0x9b40f

MovementData_0x9b40f: ; 0x9b40f
	step_up
	step_up
	step_up
	step_right
	step_up
	step_up
	step_up
	step_up
	step_up
	step_right
	step_right
	step_right
	step_right
	step_end
; 0x9b41d

MovementData_0x9b41d: ; 0x9b41d
	step_right
	turn_head_left
	step_end
; 0x9b420

UnknownText_0x9b420: ; 0x9b420
	text "Bienvenue au HALL"
	line "d'ENTRAINEMENT."

	para "On peut y affron-"
	line "ter un adversaire"
	cont "par jour."
	done
; 0x9b46a

UnknownText_0x9b46a: ; 0x9b46a
	text_from_ram StringBuffer3
	text " est"
	line "l'adversaire du"
	cont "jour."
	done
; 0x9b487

UnknownText_0x9b487: ; 0x9b487
	text "Voulez-vous com-"
	line "battre?"
	done
; 0x9b4a2

UnknownText_0x9b4a2: ; 0x9b4a2
	text "Passez s'il vous"
	line "plaît."

	para "Vous pouvez com-"
	line "mencer tout de"
	cont "suite."
	done
; 0x9b4d6

UnknownText_0x9b4d6: ; 0x9b4d6
	text "Seuls les dres-"
	line "seurs allant com-"

	para "battre sont auto-"
	line "risés à entrer."
	done
; 0x9b51d

UnknownText_0x9b51d: ; 0x9b51d
	text "Excusez-moi! Ce"
	line "serait votre 2ème"
	cont "fois aujourd'hui."

	para "Vous ne pouvez"
	line "entrer qu'une fois"
	cont "par jour."
	done
; 0x9b578

UnknownText_0x9b578: ; 0x9b578
	text "Perdu<...>"
	line "Et zut<...>"
	done
; 0x9b587

UnknownText_0x9b587: ; 0x9b587
	text "J'ai voyagé jus-"
	line "qu'ici pour t'af-"
	cont "fronter."
	done
; 0x9b5b8

ADJNNW_Text_1:
	text "bdroitebastart"
	done

ADJNNW_Text_2:
	text "start9"
	done

TrainerHouseB1F_MapEventHeader: ; 0x9b5b8
	; filler
	db 0, 0

	; warps
	db 1
	warp_def $4, $9, 3, GROUP_TRAINER_HOUSE_1F, MAP_TRAINER_HOUSE_1F

	; xy triggers
	db 1
	xy_trigger 0, $3, $7, $0, UnknownScript_0x9b38b, $0, $0

	; signposts
	db 0

	; people-events
	db 2
	person_event SPRITE_RECEPTIONIST, 5, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ObjectEvent, -1
	person_event SPRITE_AJDNNW, 15, 10, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, ObjectEvent, -1
; 0x9b5e5

