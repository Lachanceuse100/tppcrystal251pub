Route29_MapScriptHeader: ; 0x1a0f4c
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x1a0f59, $0000
	dw UnknownScript_0x1a0f5a, $0000

	; callback count
	db 1

	; callbacks

	dbw 2, TuscanyCallback

UnknownScript_0x1a0f59: ; 0x1a0f59
	end
; 0x1a0f5a

UnknownScript_0x1a0f5a: ; 0x1a0f5a
	end
; 0x1a0f5b

TuscanyCallback:
	checkflag ENGINE_ZEPHYRBADGE
	iftrue .DoesTuscanyAppear

.TuscanyDisappears
	disappear $8
	return

.DoesTuscanyAppear
	checkcode VAR_WEEKDAY
	if_not_equal TUESDAY, .TuscanyDisappears
	appear $8
	return

UnknownScript_0x1a0f6d: ; 0x1a0f6d
	spriteface $2, $1
	showemote $0, $2, 15
	applymovement $2, MovementData_0x1a108d
	spriteface $0, $2
	setevent EVENT_DUDE_TALKED_TO_YOU
	loadfont
	writetext UnknownText_0x1a10df
	yesorno
	iffalse UnknownScript_0x1a0fd9
	closetext
	follow $2, $0
	applymovement $2, MovementData_0x1a109a
	stopfollow
	loadpokedata SENTRET, 18
	catchtutorial BATTLETYPE_TUTORIAL
	spriteface $2, $1
	loadfont
	writetext UnknownText_0x1a114d
	waitbutton
	closetext
	dotrigger $0
	setevent EVENT_LEARNED_TO_CATCH_POKEMON
	end
; 0x1a0fa3

UnknownScript_0x1a0fa3: ; 0x1a0fa3
	spriteface $2, $1
	showemote $0, $2, 15
	applymovement $2, MovementData_0x1a1094
	spriteface $0, $2
	setevent EVENT_DUDE_TALKED_TO_YOU
	loadfont
	writetext UnknownText_0x1a10df
	yesorno
	iffalse UnknownScript_0x1a0fe5
	closetext
	follow $2, $0
	applymovement $2, MovementData_0x1a10a1
	stopfollow
	loadpokedata SENTRET, 18
	catchtutorial BATTLETYPE_TUTORIAL
	spriteface $2, $1
	loadfont
	writetext UnknownText_0x1a114d
	waitbutton
	closetext
	dotrigger $0
	setevent EVENT_LEARNED_TO_CATCH_POKEMON
	end
; 0x1a0fd9

UnknownScript_0x1a0fd9: ; 0x1a0fd9
	writetext UnknownText_0x1a1197
	waitbutton
	closetext
	applymovement $2, MovementData_0x1a109a
	dotrigger $0
	end
; 0x1a0fe5

UnknownScript_0x1a0fe5: ; 0x1a0fe5
	writetext UnknownText_0x1a1197
	waitbutton
	closetext
	applymovement $2, MovementData_0x1a10a1
	dotrigger $0
	end
; 0x1a0ff1

CooltrainerMScript_0x1a0ff1: ; 0x1a0ff1
	faceplayer
	loadfont
	checkcode VAR_BOXSPACE
	if_equal $0, UnknownScript_0x1a101c
	checkevent EVENT_LEARNED_TO_CATCH_POKEMON
	iftrue UnknownScript_0x1a101c
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iffalse UnknownScript_0x1a101c
	writetext UnknownText_0x1a11e3
	yesorno
	iffalse UnknownScript_0x1a1022
	closetext
	loadpokedata SENTRET, 15
	catchtutorial BATTLETYPE_TUTORIAL
	loadfont
	writetext UnknownText_0x1a114d
	waitbutton
	closetext
	setevent EVENT_LEARNED_TO_CATCH_POKEMON
	end
; 0x1a101c

UnknownScript_0x1a101c: ; 0x1a101c
	writetext UnknownText_0x1a10a7
	waitbutton
	closetext
	end
; 0x1a1022

UnknownScript_0x1a1022: ; 0x1a1022
	writetext UnknownText_0x1a1197
	waitbutton
	closetext
	end
; 0x1a1028

YoungsterScript_0x1a1028: ; 0x1a1028
	jumptextfaceplayer UnknownText_0x1a1214
; 0x1a102b

TeacherScript_0x1a102b: ; 0x1a102b
	jumptextfaceplayer UnknownText_0x1a126c
; 0x1a102e

FisherScript_0x1a102e: ; 0x1a102e
	jumptextfaceplayer UnknownText_0x1a12d9
; 0x1a1031

CooltrainerMScript_0x1a1031: ; 0x1a1031
	faceplayer
	loadfont
	checktime $2
	iftrue UnknownScript_0x1a103d
	checktime $4
	iftrue UnknownScript_0x1a1043
UnknownScript_0x1a103d: ; 0x1a103d
	writetext UnknownText_0x1a134c
	waitbutton
	closetext
	end
; 0x1a1043

UnknownScript_0x1a1043: ; 0x1a1043
	writetext UnknownText_0x1a137c
	waitbutton
	closetext
	end
; 0x1a1049

TuscanyScript:
	faceplayer
	loadfont
	checkevent EVENT_GOT_PINK_BOW_FROM_TUSCANY
	iftrue TuscanyTuesdayScript
	checkcode VAR_WEEKDAY
	if_not_equal TUESDAY, TuscanyNotTuesdayScript
	checkevent EVENT_MET_TUSCANY_OF_TUESDAY
	iftrue .MetTuscany
	writetext MeetTuscanyText
	buttonsound
	setevent EVENT_MET_TUSCANY_OF_TUESDAY
.MetTuscany
	writetext TuscanyGivesGiftText
	buttonsound
	verbosegiveitem POLKADOT_BOW, 1
	iffalse TuscanyDoneScript
	setevent EVENT_GOT_PINK_BOW_FROM_TUSCANY
	writetext TuscanyGaveGiftText
	waitbutton
	closetext
	end

TuscanyTuesdayScript:
	writetext TuscanyTuesdayText
	waitbutton
TuscanyDoneScript:
	closetext
	end

TuscanyNotTuesdayScript:
	writetext TuscanyNotTuesdayText
	waitbutton
	closetext
	end

MapRoute29Signpost0Script: ; 0x1a1083
	jumptext UnknownText_0x1a158e
; 0x1a1086

MapRoute29Signpost1Script: ; 0x1a1086
	jumptext UnknownText_0x1a15b9
; 0x1a1089

FruitTreeScript_0x1a1089: ; 0x1a1089
	fruittree $1
; 0x1a108b

ItemFragment_0x1a108b: ; 0x1a108b
	db SUPER_POTION, 1
; 0x1a108d

MovementData_0x1a108d: ; 0x1a108d
	step_up
	step_up
	step_up
	step_up
	step_right
	step_right
	step_end
; 0x1a1094

MovementData_0x1a1094: ; 0x1a1094
	step_up
	step_up
	step_up
	step_right
	step_right
	step_end
; 0x1a109a

MovementData_0x1a109a: ; 0x1a109a
	step_left
	step_left
	step_down
	step_down
	step_down
	step_down
	step_end
; 0x1a10a1

MovementData_0x1a10a1: ; 0x1a10a1
	step_left
	step_left
	step_down
	step_down
	step_down
	step_end
; 0x1a10a7

UnknownText_0x1a10a7: ; 0x1a10a7
	text "Les #MON se"
	line "cachent dans les"
	cont "hautes herbes."

	para "Qui sait quand ils"
	line "peuvent surgir<...>"
	done
; 0x1a10df

UnknownText_0x1a10df: ; 0x1a10df
	text "Je t'ai vu"
	line "plusieurs fois."

	para "Combien de #MON"
	line "as-tu attrapé?"

	para "Veux-tu que je te"
	line "montre comment"
	cont "capturer des"
	cont "#MON?"
	done
; 0x1a114d

UnknownText_0x1a114d: ; 0x1a114d
	text "Et voilà comment"
	line "on fait."

	para "Si tu les affai-"
	line "blis d'abord, les"
	cont "#MON sont plus"
	cont "facile à attraper."
	done
; 0x1a1197

UnknownText_0x1a1197: ; 0x1a1197
	text "Oh. D'accord."

	para "Bref, pour attra-"
	line "per des #MON,"

	para "Il faut beaucoup"
	line "marcher."
	done
; 0x1a11e3

UnknownText_0x1a11e3: ; 0x1a11e3
	text "Hein? Tu veux que"
	line "je te montre"
	cont "comment capturer"
	cont "des #MON?"
	done
; 0x1a1214

UnknownText_0x1a1214: ; 0x1a1214
	text "Hé. Comment vont"
	line "tes #MON?"

	para "Si ils sont affai-"
	line "blis, ne traînent"

	para "pas trop dans les"
	line "hautes herbes."
	done
; 0x1a126c

UnknownText_0x1a126c: ; 0x1a126c
	text "Tu vois ces"
	line "rebords? Ils font"
	cont "peur mais tu peux"
	cont "retourner a BOURG"
	cont "GEON sans marcher"
	cont "dans l'herbe."
	done
; 0x1a12d9

UnknownText_0x1a12d9: ; 0x1a12d9
	text "Je voulais faire"
	line "une pause, alors"

	para "j'ai sauvegarder"
	line "ma progression."
	done
; 0x1a1316

; possibly unused
;UnknownText_0x1a1316: ; 0x1a1316
;	text "I'm waiting for"
;	line "#MON that"

;	para "appear only in the"
;	line "daytime."
;	done
; 0x1a134c

UnknownText_0x1a134c: ; 0x1a134c
	text "J'attends ce"
	line "#MON qui"

	para "n'apparaît que"
	line "la nuit."
	done
; 0x1a137c

UnknownText_0x1a137c: ; 0x1a137c
	text "J'attends ce"
	line "#MON qui"

	para "n'apparaît que"
	line "le matin."
	done
; 0x1a13b2

MeetTuscanyText:
	text "MARIE: Je crois"
	line "que c'est la"

	para "première fois que"
	line "l'on se rencontre?"

	para "Permet-moi de me"
	line "présenter."

	para "Je suis MARIE du"
	line "Mardi."
	done

TuscanyGivesGiftText:
	text "Je te prie de bien"
	line "vouloir accepter"

	para "ce cadeau, un"
	line "RUBAN A POIS."
	done

TuscanyGaveGiftText:
	text "MARIE: N'est-ce"
	line "pas adorable?"

	para "Ca renforce les"
	line "capacités NORMAL."

	para "Je suis certaine"
	line "que ça te sera"
	cont "utile."
	done

TuscanyTuesdayText:
	text "MARIE: As-tu ren-"
	line "contré LUCIE, ma"
	cont "soeur aîné?"

	para "Ou mon petit"
	line "frère, HOMER?"

	para "Je suis la seconde"
	line "de sept enfants."
	done

TuscanyNotTuesdayText:
	text "MARIE: Nous ne"
	line "sommes pas Mardi,"
	cont "hélas<...>"
	done

UnknownText_0x1a158e: ; 0x1a158e
	text "ROUTE 29"

	para "VILLE GRIOTTE -"
	line "BOURG GEON"
	done
; 0x1a15b9

UnknownText_0x1a15b9: ; 0x1a15b9
	text "ROUTE 29"

	para "VILLE GRIOTTE -"
	line "BOURG GEON"
	done
; 0x1a15e4

Route29_MapEventHeader: ; 0x1a15e4
	; filler
	db 0, 0

	; warps
	db 1
	warp_def $1, $1b, 3, GROUP_ROUTE_29_46_GATE, MAP_ROUTE_29_46_GATE

	; xy triggers
	db 0
	;xy_trigger 1, $8, $35, $0, UnknownScript_0x1a0f6d, $0, $0
	;xy_trigger 1, $9, $35, $0, UnknownScript_0x1a0fa3, $0, $0

	; signposts
	db 2
	signpost 7, 51, $0, MapRoute29Signpost0Script
	signpost 5, 3, $0, MapRoute29Signpost1Script

	; people-events
	db 8
	person_event SPRITE_COOLTRAINER_M, 16, 54, $3, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, CooltrainerMScript_0x1a0ff1, -1
	person_event SPRITE_YOUNGSTER, 20, 31, $4, 1, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, YoungsterScript_0x1a1028, -1
	person_event SPRITE_TEACHER, 15, 19, $5, 0, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, TeacherScript_0x1a102b, -1
	person_event SPRITE_FRUIT_TREE, 6, 16, $1, 0, 0, -1, -1, 0, 0, 0, FruitTreeScript_0x1a1089, -1
	person_event SPRITE_FISHER, 7, 29, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, FisherScript_0x1a102e, -1
	person_event SPRITE_COOLTRAINER_M, 8, 17, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, CooltrainerMScript_0x1a1031, -1
	person_event SPRITE_TEACHER, 16, 33, $3, 0, 0, -1, -1, 0, 0, 0, TuscanyScript, EVENT_TUSCANY_OF_TUESDAY
	person_event SPRITE_POKE_BALL, 6, 52, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x1a108b, EVENT_ITEM_ROUTE_29_POTION
