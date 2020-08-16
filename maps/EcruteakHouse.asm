EcruteakHouse_MapScriptHeader: ; 0x98000
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x9800d, $0000
	dw UnknownScript_0x9800e, $0000

	; callback count
	db 1

	; callbacks

	dbw 2, UnknownScript_0x9800f
; 0x9800d

UnknownScript_0x9800d: ; 0x9800d
	end
; 0x9800e

UnknownScript_0x9800e: ; 0x9800e
	end
; 0x9800f

UnknownScript_0x9800f: ; 0x9800f
	checkevent EVENT_FOUGHT_SUICUNE
	iftrue UnknownScript_0x98033
	checkevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	iftrue UnknownScript_0x98033
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue UnknownScript_0x98022
	return
; 0x98022

UnknownScript_0x98022: ; 0x98022
	clearevent EVENT_SAGE_IN_ECRUTEAK_HOUSE
	setevent EVENT_SAGE_IN_ECRUTEAK_HOUSE_2
	setevent EVENT_SAGE_AND_GRAMPS_IN_ECRUTEAK_HOUSE
	checkitem CLEAR_BELL
	iftrue UnknownScript_0x98032
	dotrigger $0
UnknownScript_0x98032: ; 0x98032
	return
; 0x98033

UnknownScript_0x98033: ; 0x98033
	clearevent EVENT_SAGE_AND_GRAMPS_IN_ECRUTEAK_HOUSE
	return
; 0x98037

UnknownScript_0x98037: ; 0x98037
	checkevent EVENT_SAGE_IN_ECRUTEAK_HOUSE_2
	iftrue UnknownScript_0x98061
	applymovement $3, MovementData_0x980c7
	moveperson $2, $4, $6
	appear $2
	pause 5
	disappear $3
	end
; 0x9804c

UnknownScript_0x9804c: ; 0x9804c
	checkevent EVENT_SAGE_IN_ECRUTEAK_HOUSE
	iftrue UnknownScript_0x98061
	applymovement $2, MovementData_0x980cc
	moveperson $3, $5, $6
	appear $3
	pause 5
	disappear $2
	end
; 0x98061

UnknownScript_0x98061: ; 0x98061
	end
; 0x98062

SageScript_0x98062: ; 0x98062
	faceplayer
	loadfont
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue UnknownScript_0x9807c
	writetext OffLimitsWithoutBadge
	buttonsound
	checkflag ENGINE_FOGBADGE
	iftrue UnknownScript_0x98076 ;allowed because badge
	writetext YouHaveToLeave ;off limits without badge, leave
	waitbutton
	closetext
	end
; 0x98076

UnknownScript_0x98076: ; 0x98076
	writetext HaveFogBadge
	waitbutton
	closetext
	end
; 0x9807c

UnknownScript_0x9807c: ; 0x9807c
	checkevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	iftrue UnknownScript_0x980a4 ;go on
	checkevent EVENT_000_STD
	iftrue UnknownScript_0x980aa ;bell chime
	writetext MomentousEvent
	waitbutton
	checkitem CLEAR_BELL
	iftrue UnknownScript_0x98093
	writetext DifficultWiseTrio ;ask to leave
	waitbutton
	closetext
	end
; 0x98093

UnknownScript_0x98093: ; 0x98093
	writetext ClearBell ;have clear bell
	buttonsound
	writetext BellsChimeSoul
	buttonsound
	writetext PleaseGoOn
	waitbutton
	closetext
	dotrigger $1
	setevent EVENT_SAGE_IN_ECRUTEAK_HOUSE_2
	clearevent EVENT_SAGE_IN_ECRUTEAK_HOUSE
	setevent EVENT_000_STD
	end
; 0x980a4

UnknownScript_0x980a4: ; 0x980a4
	writetext PleaseGoOn
	waitbutton
	closetext
	end
; 0x980aa

UnknownScript_0x980aa: ; 0x980aa
	writetext BellsChimeSoul
	waitbutton
	jump UnknownScript_0x980a4
	;closetext
	;end
; 0x980b0

SageScript_0x980b0: ; 0x980b0
	faceplayer
	loadfont
	checkevent EVENT_GOT_CLEAR_BELL
	iftrue UnknownScript_0x980be
	writetext UnknownText_0x9840b
	waitbutton
	closetext
	end
; 0x980be

UnknownScript_0x980be: ; 0x980be
	writetext UnknownText_0x9846f
	waitbutton
	closetext
	end
; 0x980c4

GrampsScript_0x980c4: ; 0x980c4
	jumptextfaceplayer UnknownText_0x984ab
; 0x980c7

MovementData_0x980c7: ; 0x980c7
	fix_facing
	big_step_left
	remove_fixed_facing
	turn_head_down
	step_end
; 0x980cc

MovementData_0x980cc: ; 0x980cc
	fix_facing
	big_step_right
	remove_fixed_facing
	turn_head_down
	step_end
; 0x980d1

OffLimitsWithoutBadge: ; 0x980d1
	text "La TOUR FERRAILLE"
	line "est hors-limite à"

	para "ceux qui n'ont pas"
	line "le BADGE de l'"
	cont "ARENE de ROSALIA."
	done

YouHaveToLeave:
	text "Désolé, mais vous"
	line "devez partir."
	done
; 0x98131

HaveFogBadge: ; 0x98131
	;text "TIN TOWER is off"
	;line "limits to anyone"

	;para "without ECRUTEAK"
	;line "GYM's BADGE."

	text "Ah!"

	para "Le BADGE BRUME!"
	line "Vous pouvez"
	cont "passer.."
	done
; 0x981a4

MomentousEvent: ; 0x981a4
	text "Il se passe quel-"
	line "que chose ici."

	para "Je dois vous de-"
	line "mander de partir."
	done

DifficultWiseTrio:
	text "<...>Ce qui apaise"
	line "l'âme<...>"

	para "C'est parfois dif-"
	line "ficile de compren-"

	para "dre le TRIO des"
	line "SAGES<...>"
	done
; 0x98250

ClearBell: ; 0x98250
	;text "A momentous event"
	;line "has occurred."

	;para "I beg your pardon,"
	;line "but I must ask you"
	;cont "to leave."

	text $56, $56, $56

	para "Ah!"

	para "Le son du GLAS"
	line "TRANSPARENT!"

	para "Si<...> Si sublime!"

	para "Je n'ai jamais"
	line "rien entendu"
	cont "d'aussi joli!"
	done

BellsChimeSoul:
	text "Le son du glas"
	line "reflète l'âme de"
	cont "son porteur."

	para "Toi<...>"

	para "Tu peux accéder à"
	line "la TOUR FERRAILLE."

	done
; 0x9837e

PleaseGoOn: ; 0x9837e
	text "Va."
	done
; 0x98391

;UnknownText_0x98391: ; 0x98391
;	text "That bell's chime"
;	line "is indicative of"
;	cont "the bearer's soul."

;	para "You<...>"

;	para "You may be able to"
;	line "make it through"
;	cont "TIN TOWER."

;	para "Please, do go on."
;	done
; 0x9840b

UnknownText_0x9840b: ; 0x9840b
	text "La TOUR FERRAILLE"
	line "est d'une pure"
	cont "beauté."

	para "Elle apaise tous"
	line "ceux qui la"
	cont "regardent."
	done
; 0x9846f

UnknownText_0x9846f: ; 0x9846f
	text "La TOUR FERRAILLE"
	line "tremble! Un #"

	para "MON a du se poser"
	line "au sommet!"
	done
; 0x984ab

UnknownText_0x984ab: ; 0x984ab
	text "Deux tours<...>"
	line "Deux #MON<...>"

	para "Mais lorsqu'une"
	line "d'entre elles a"

	para "brûlé, les deux"
	line "#MON se sont"
	cont "envolés et ne sont"
	cont "jamais revenus."
	done
; 0x98502

EcruteakHouse_MapEventHeader: ; 0x98502
	; filler
	db 0, 0

	; warps
	db 5
	warp_def $11, $4, 3, GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY
	warp_def $11, $5, 3, GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY
	warp_def $3, $5, 4, GROUP_ECRUTEAK_HOUSE, MAP_ECRUTEAK_HOUSE
	warp_def $f, $11, 3, GROUP_ECRUTEAK_HOUSE, MAP_ECRUTEAK_HOUSE
	warp_def $3, $11, 3, GROUP_WISE_TRIOS_ROOM, MAP_WISE_TRIOS_ROOM

	; xy triggers
	db 2
	xy_trigger 0, $7, $4, $0, UnknownScript_0x98037, $0, $0
	xy_trigger 0, $7, $5, $0, UnknownScript_0x9804c, $0, $0

	; signposts
	db 0

	; people-events
	db 4
	person_event SPRITE_SAGE, 10, 8, $6, 0, 0, -1, -1, 0, 0, 0, SageScript_0x98062, EVENT_SAGE_IN_ECRUTEAK_HOUSE
	person_event SPRITE_SAGE, 10, 9, $6, 0, 0, -1, -1, 0, 0, 0, SageScript_0x98062, EVENT_SAGE_IN_ECRUTEAK_HOUSE_2
	person_event SPRITE_SAGE, 13, 10, $2, 1, 1, -1, -1, 0, 0, 0, SageScript_0x980b0, EVENT_SAGE_AND_GRAMPS_IN_ECRUTEAK_HOUSE
	person_event SPRITE_GRAMPS, 15, 7, $2, 1, 1, -1, -1, 0, 0, 0, GrampsScript_0x980c4, EVENT_SAGE_AND_GRAMPS_IN_ECRUTEAK_HOUSE
; 0x98565

