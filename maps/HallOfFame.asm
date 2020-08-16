HallOfFame_MapScriptHeader: ; 0x181445
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x18144f, $0000
	dw UnknownScript_0x181453, $0000

	; callback count
	db 0
; 0x18144f

UnknownScript_0x18144f: ; 0x18144f
	priorityjump UnknownScript_0x181454
	end
; 0x181453

UnknownScript_0x181453: ; 0x181453
	end
; 0x181454

UnknownScript_0x181454: ; 0x181454
	;disappear $3
	follow $2, $0
	applymovement $2, MovementData_0x181499
	stopfollow
	spriteface $0, $3
	loadfont
	writetext UnknownText_0x1814a6
	waitbutton
	closetext
	spriteface $2, $1
	applymovement $0, MovementData_0x1814a4
	dotrigger $1
	pause 15
	writebyte $2
	special HealMachineAnim
	checkevent EVENT_FIRST_TIME_HALL_OF_FAME
	iftrue .SkipBillFlag
	setevent EVENT_BILL_IN_GOLDENROD_BILLS_HOUSE
.SkipBillFlag
	setevent EVENT_FIRST_TIME_HALL_OF_FAME
	setevent EVENT_GRAMPS_WITH_ABRA_IN_INDIGO_PLATEAU_POKECENTER
	setevent EVENT_SILVER_IN_SPROUT_TOWER
	clearevent EVENT_RED_IN_SILVER_CAVE
	setevent EVENT_OLIVINE_PORT_NO_SERVICE_CROWD
	clearevent EVENT_OLIVINE_PORT_IN_SERVICE_CROWD
	domaptrigger GROUP_SPROUT_TOWER_3F, MAP_SPROUT_TOWER_3F, $1
	domaptrigger GROUP_SILVER_CAVE_OUTSIDE, MAP_SILVER_CAVE_OUTSIDE, $0
	special HealParty
	checkevent EVENT_GOT_SS_TICKET_FROM_ELM
	iftrue UnknownScript_0x181497
	specialphonecall $5
UnknownScript_0x181497: ; 0x181497
	halloffame
	end
; 0x181499

MovementData_0x181499: ; 0x181499
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_right
	turn_head_left
	step_end
; 0x1814a4

MovementData_0x1814a4: ; 0x1814a4
	slow_step_up
	step_end
; 0x1814a6

UnknownText_0x1814a6: ; 0x1814a6

	text "CHEN: Hum-hum!"
	line "Félicitations"
	cont "<PLAY_G>!"

	para "Cet étage est"
	line "réservé aux célé-"
	cont "brités #MON!"

	para "Les maîtres de la"
	line "LIGUE sont consa-"
	cont "crés ici!"

	para "Leurs #MON sont"
	line "enregistrés en"
	cont "tant que"
	cont "CELEBRITES!"

	para "<PLAY_G>! Ton"
	line "périple fut long"
	cont "jusqu'à la"
	cont "victoire!"

	para "Encore bravo."
	line "Toi et tes chers"
	cont "#MON êtes tous"
	cont "célèbres!"
	done



HallOfFame_MapEventHeader: ; 0x181678
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $d, $4, 3, GROUP_HALLWAY_OF_FAME, MAP_HALLWAY_OF_FAME
	warp_def $d, $5, 4, GROUP_HALLWAY_OF_FAME, MAP_HALLWAY_OF_FAME

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	; db 2
	db 1
	person_event SPRITE_OAK, 16, 8, $7, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, -1
	; person_event SPRITE_ELM, 12, 8, $7, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_ELM_VISIBLE_IN_HALLOFFAME
; 0x181695





