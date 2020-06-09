IlexForest_MapScriptHeader: ; 0x6eafe
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 2, UnknownScript_0x6eb03
; 0x6eb03

UnknownScript_0x6eb03: ; 0x6eb03
	checkevent EVENT_GOT_HM01_CUT
	iftrue UnknownScript_0x6eb34
	copybytetovar FarfetchdPosition
	if_equal $1, UnknownScript_0x6eb35
	if_equal $2, UnknownScript_0x6eb3c
	if_equal $3, UnknownScript_0x6eb43
	if_equal $4, UnknownScript_0x6eb4a
	if_equal $5, UnknownScript_0x6eb51
	if_equal $6, UnknownScript_0x6eb58
	if_equal $7, UnknownScript_0x6eb5f
	if_equal $8, UnknownScript_0x6eb66
	if_equal $9, UnknownScript_0x6eb6d
	if_equal $a, UnknownScript_0x6eb74
UnknownScript_0x6eb34: ; 0x6eb34
	return
; 0x6eb35

UnknownScript_0x6eb35: ; 0x6eb35
	moveperson $2, $e, $1f
	appear $2
	return
; 0x6eb3c

UnknownScript_0x6eb3c: ; 0x6eb3c
	moveperson $2, $f, $19
	appear $2
	return
; 0x6eb43

UnknownScript_0x6eb43: ; 0x6eb43
	moveperson $2, $14, $18
	appear $2
	return
; 0x6eb4a

UnknownScript_0x6eb4a: ; 0x6eb4a
	moveperson $2, $1d, $16
	appear $2
	return
; 0x6eb51

UnknownScript_0x6eb51: ; 0x6eb51
	moveperson $2, $1c, $1f
	appear $2
	return
; 0x6eb58

UnknownScript_0x6eb58: ; 0x6eb58
	moveperson $2, $18, $23
	appear $2
	return
; 0x6eb5f

UnknownScript_0x6eb5f: ; 0x6eb5f
	moveperson $2, $16, $1f
	appear $2
	return
; 0x6eb66

UnknownScript_0x6eb66: ; 0x6eb66
	moveperson $2, $f, $1d
	appear $2
	return
; 0x6eb6d

UnknownScript_0x6eb6d: ; 0x6eb6d
	moveperson $2, $a, $23
	appear $2
	return
; 0x6eb74

UnknownScript_0x6eb74: ; 0x6eb74
	moveperson $2, $6, $1c
	appear $2
	return
; 0x6eb7b

YoungsterScript_0x6eb7b: ; 0x6eb7b
	faceplayer
	loadfont
	checkevent EVENT_RETURNED_FARFETCHD_TO_CHARCOAL_MAN
	iftrue UnknownScript_0x6eb89
	writetext UnknownText_0x6ef5c
	waitbutton
	closetext
	end
; 0x6eb89

UnknownScript_0x6eb89: ; 0x6eb89
	writetext UnknownText_0x6f019
	waitbutton
	closetext
	end
; 0x6eb8f

BirdScript_0x6eb8f: ; 0x6eb8f
	copybytetovar FarfetchdPosition
	if_equal $1, UnknownScript_0x6ebba
	if_equal $2, UnknownScript_0x6ebd9
	if_equal $3, UnknownScript_0x6ec02
	if_equal $4, UnknownScript_0x6ec2b
	if_equal $5, UnknownScript_0x6ec54
	if_equal $6, UnknownScript_0x6eca7
	if_equal $7, UnknownScript_0x6ecd0
	if_equal $8, UnknownScript_0x6ed0e
	if_equal $9, UnknownScript_0x6ed50
	if_equal $a, UnknownScript_0x6ed96
UnknownScript_0x6ebba: ; 0x6ebba
	faceplayer
	loadfont
	writetext UnknownText_0x6f06f
	buttonsound
	writetext UnknownText_0x6f086
	cry FARFETCH_D
	waitbutton
	closetext
	applymovement $2, MovementData_0x6ee8f
	moveperson $2, $f, $19
	disappear $2
	appear $2
	loadvar FarfetchdPosition, $2
	end
; 0x6ebd9

UnknownScript_0x6ebd9: ; 0x6ebd9
	scall UnknownScript_0x6eda1
	if_equal $0, UnknownScript_0x6ebf1
	applymovement $2, MovementData_0x6ee95
	moveperson $2, $14, $18
	disappear $2
	appear $2
	loadvar FarfetchdPosition, $3
	end
; 0x6ebf1

UnknownScript_0x6ebf1: ; 0x6ebf1
	applymovement $2, MovementData_0x6ee9e
	moveperson $2, $f, $1d
	disappear $2
	appear $2
	loadvar FarfetchdPosition, $8
	end
; 0x6ec02

UnknownScript_0x6ec02: ; 0x6ec02
	scall UnknownScript_0x6eda1
	if_equal $2, UnknownScript_0x6ec1a
	applymovement $2, MovementData_0x6eea4
	moveperson $2, $1d, $16
	disappear $2
	appear $2
	loadvar FarfetchdPosition, $4
	end
; 0x6ec1a

UnknownScript_0x6ec1a: ; 0x6ec1a
	applymovement $2, MovementData_0x6eeab
	moveperson $2, $f, $19
	disappear $2
	appear $2
	loadvar FarfetchdPosition, $2
	end
; 0x6ec2b

UnknownScript_0x6ec2b: ; 0x6ec2b
	scall UnknownScript_0x6eda1
	if_equal $1, UnknownScript_0x6ec43
	applymovement $2, MovementData_0x6eeb1
	moveperson $2, $1c, $1f
	disappear $2
	appear $2
	loadvar FarfetchdPosition, $5
	end
; 0x6ec43

UnknownScript_0x6ec43: ; 0x6ec43
	applymovement $2, MovementData_0x6eeb8
	moveperson $2, $14, $18
	disappear $2
	appear $2
	loadvar FarfetchdPosition, $3
	end
; 0x6ec54

UnknownScript_0x6ec54: ; 0x6ec54
	scall UnknownScript_0x6eda1
	if_equal $1, UnknownScript_0x6ec85
	if_equal $2, UnknownScript_0x6ec74
	if_equal $3, UnknownScript_0x6ec96
	applymovement $2, MovementData_0x6eebd
	moveperson $2, $18, $23
	disappear $2
	appear $2
	loadvar FarfetchdPosition, $6
	end
; 0x6ec74

UnknownScript_0x6ec74: ; 0x6ec74
	applymovement $2, MovementData_0x6eec7
	moveperson $2, $16, $1f
	disappear $2
	appear $2
	loadvar FarfetchdPosition, $7
	end
; 0x6ec85

UnknownScript_0x6ec85: ; 0x6ec85
	applymovement $2, MovementData_0x6eecc
	moveperson $2, $1d, $16
	disappear $2
	appear $2
	loadvar FarfetchdPosition, $4
	end
; 0x6ec96

UnknownScript_0x6ec96: ; 0x6ec96
	applymovement $2, MovementData_0x6eed2
	moveperson $2, $1d, $16
	disappear $2
	appear $2
	loadvar FarfetchdPosition, $4
	end
; 0x6eca7

UnknownScript_0x6eca7: ; 0x6eca7
	scall UnknownScript_0x6eda1
	if_equal $3, UnknownScript_0x6ecbf
	applymovement $2, MovementData_0x6eee6
	moveperson $2, $16, $1f
	disappear $2
	appear $2
	loadvar FarfetchdPosition, $7
	end
; 0x6ecbf

UnknownScript_0x6ecbf: ; 0x6ecbf
	applymovement $2, MovementData_0x6eeef
	moveperson $2, $1c, $1f
	disappear $2
	appear $2
	loadvar FarfetchdPosition, $5
	end
; 0x6ecd0

UnknownScript_0x6ecd0: ; 0x6ecd0
	scall UnknownScript_0x6eda1
	if_equal $0, UnknownScript_0x6ecfd
	if_equal $2, UnknownScript_0x6ecec
	applymovement $2, MovementData_0x6eef8
	moveperson $2, $f, $1d
	disappear $2
	appear $2
	loadvar FarfetchdPosition, $8
	end
; 0x6ecec

UnknownScript_0x6ecec: ; 0x6ecec
	applymovement $2, MovementData_0x6ef00
	moveperson $2, $18, $23
	disappear $2
	appear $2
	loadvar FarfetchdPosition, $6
	end
; 0x6ecfd

UnknownScript_0x6ecfd: ; 0x6ecfd
	applymovement $2, MovementData_0x6ef09
	moveperson $2, $1c, $1f
	disappear $2
	appear $2
	loadvar FarfetchdPosition, $5
	end
; 0x6ed0e

UnknownScript_0x6ed0e: ; 0x6ed0e
	scall UnknownScript_0x6eda1
	if_equal $1, UnknownScript_0x6ed3f
	if_equal $2, UnknownScript_0x6ed3f
	if_equal $3, UnknownScript_0x6ed2e
	applymovement $2, MovementData_0x6ef10
	moveperson $2, $a, $23
	disappear $2
	appear $2
	loadvar FarfetchdPosition, $9
	end
; 0x6ed2e

UnknownScript_0x6ed2e: ; 0x6ed2e
	applymovement $2, MovementData_0x6ef18
	moveperson $2, $16, $1f
	disappear $2
	appear $2
	loadvar FarfetchdPosition, $7
	end
; 0x6ed3f

UnknownScript_0x6ed3f: ; 0x6ed3f
	applymovement $2, MovementData_0x6ef1e
	moveperson $2, $f, $19
	disappear $2
	appear $2
	loadvar FarfetchdPosition, $2
	end
; 0x6ed50

UnknownScript_0x6ed50: ; 0x6ed50
	scall UnknownScript_0x6eda1
	if_equal $0, UnknownScript_0x6ed85
	if_equal $3, UnknownScript_0x6ed74
	applymovement $2, MovementData_0x6ef23
	moveperson $2, $6, $1c
	disappear $2
	appear $2
	loadvar FarfetchdPosition, $a
	appear $4
	setevent EVENT_CHARCOAL_MASTER_IN_CHARCOAL_KILN
	setevent EVENT_RETURNED_FARFETCHD_TO_CHARCOAL_MAN
	end
; 0x6ed74

UnknownScript_0x6ed74: ; 0x6ed74
	applymovement $2, MovementData_0x6ef33
	moveperson $2, $f, $1d
	disappear $2
	appear $2
	loadvar FarfetchdPosition, $8
	end
; 0x6ed85

UnknownScript_0x6ed85: ; 0x6ed85
	applymovement $2, MovementData_0x6ef3d
	moveperson $2, $f, $1d
	disappear $2
	appear $2
	loadvar FarfetchdPosition, $8
	end
; 0x6ed96

UnknownScript_0x6ed96: ; 0x6ed96
	faceplayer
	loadfont
	writetext UnknownText_0x6f086
	cry FARFETCH_D
	waitbutton
	closetext
	end
; 0x6eda1

UnknownScript_0x6eda1: ; 0x6eda1
	faceplayer
	loadfont
	writetext UnknownText_0x6f086
	cry FARFETCH_D
	waitbutton
	closetext
	checkcode VAR_FACING
	end
; 0x6edae

BlackBeltScript_0x6edae: ; 0x6edae
	faceplayer
	loadfont
	checkevent EVENT_GOT_HM01_CUT
	iftrue UnknownScript_0x6edd8
	writetext UnknownText_0x6f099
	buttonsound
	verbosegiveitem HM_CUT, 1
	setevent EVENT_GOT_HM01_CUT
	writetext UnknownText_0x6f141
	waitbutton
	closetext
	setevent EVENT_ILEX_FOREST_FARFETCHD
	setevent EVENT_APPRENTICE_IN_ILEX_FOREST
	setevent EVENT_CHARCOAL_MASTER_IN_ILEX_FOREST
	clearevent EVENT_FARFETCHD_IN_CHARCOAL_KILN
	clearevent EVENT_APPRENTICE_IN_CHARCOAL_KILN
	clearevent EVENT_CHARCOAL_MASTER_IN_CHARCOAL_KILN
	end
; 0x6edd8

UnknownScript_0x6edd8: ; 0x6edd8
	writetext UnknownText_0x6f1c0
	waitbutton
	closetext
	end
; 0x6edde

RockerScript_0x6edde: ; 0x6edde
	faceplayer
	loadfont
	checkevent EVENT_GOT_TM02_HEADBUTT
	iftrue UnknownScript_0x6edf3
	writetext UnknownText_0x6f21b
	buttonsound
	verbosegiveitem TM_ZEN_HEADBUTT, 1
	iffalse UnknownScript_0x6edf7
	setevent EVENT_GOT_TM02_HEADBUTT
UnknownScript_0x6edf3: ; 0x6edf3
	writetext UnknownText_0x6f26d
	waitbutton
UnknownScript_0x6edf7: ; 0x6edf7
	closetext
	end
; 0x6edf9

TrainerBug_catcherWayne: ; 0x6edf9
	; bit/flag number
	dw $5c0

	; trainer group && trainer id
	db BUG_CATCHER, WAYNE

	; text when seen
	dw Bug_catcherWayneSeenText

	; text when trainer beaten
	dw Bug_catcherWayneBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bug_catcherWayneScript
; 0x6ee05

Bug_catcherWayneScript: ; 0x6ee05
	talkaftercancel
	loadfont
	writetext UnknownText_0x6f571
	waitbutton
	closetext
	end
; 0x6ee0d

LassScript_0x6ee0d: ; 0x6ee0d
	jumptextfaceplayer UnknownText_0x6f2af
; 0x6ee10

ItemFragment_0x6ee10: ; 0x6ee10
	db REVIVE, 1
; 0x6ee12

ItemFragment_0x6ee12: ; 0x6ee12
	db X_ATTACK, 1
; 0x6ee14

ItemFragment_0x6ee14: ; 0x6ee14
	db STICK, 1
; 0x6ee16

ItemFragment_0x6ee16: ; 0x6ee16
	db ETHER, 1
; 0x6ee18

MapIlexForestSignpostItem1: ; 0x6ee18
	dw $0088
	db ETHER

; 0x6ee1b

MapIlexForestSignpostItem2: ; 0x6ee1b
	dw $0089
	db HYPER_POTION

; 0x6ee1e

MapIlexForestSignpostItem3: ; 0x6ee1e
	dw $008a
	db FULL_HEAL
; 0x6ee21

UnknownScript_0x6ee21: ; 0x6ee21
	jumpstd strengthboulder
; 0x6ee24

MapIlexForestSignpost0Script: ; 0x6ee24
	jumptext UnknownText_0x6f2de
; 0x6ee27

MapIlexForestSignpost4Script: ; 0x6ee27
	checkevent EVENT_GOT_GS_BALL_BACK_FROM_KURT
	iftrue UnknownScript_0x6ee30
	jump UnknownScript_0x6ee35
; 0x6ee30

UnknownScript_0x6ee30: ; 0x6ee30
	checkitem GS_BALL
	iftrue UnknownScript_0x6ee38
UnknownScript_0x6ee35: ; 0x6ee35
	jumptext UnknownText_0x6f358
; 0x6ee38

UnknownScript_0x6ee38: ; 0x6ee38
	loadfont
	writetext UnknownText_0x6f394
	yesorno
	iftrue UnknownScript_0x6ee42
	closetext
	end
; 0x6ee42

UnknownScript_0x6ee42: ; 0x6ee42
	takeitem GS_BALL, 1
	clearevent EVENT_GOT_GS_BALL_BACK_FROM_KURT
	setevent EVENT_KURT_OUTSIDE_IN_AZALEA_TOWN
	disappear $8
	clearevent EVENT_LASS_IN_ILEX_FOREST_ROUTE_34_GATE
	writetext UnknownText_0x6f43b
	waitbutton
	closetext
	pause 20
	showemote $0, $0, 20
	special Functionc48f
	applymovement $0, MovementData_0x6ef58
	pause 30
	spriteface $0, $0
	pause 20
	clearflag ENGINE_HAVE_EXAMINED_GS_BALL
	special Function4989a
	loadpokedata CELEBI, 100
	startbattle
	writebyte CELEBI
	special SpecialMonCheck
	iffalse Script_ReturnCelebiRelatedItems
	returnafterbattle
	special RestartMapMusic
	pause 20
	special Function49bf9
	iffalse UnknownScript_0x6ee8e
	appear $7
	applymovement $7, MovementData_0x6ef4e
	loadfont
	writetext UnknownText_0x6f452
	waitbutton
	closetext
	applymovement $7, MovementData_0x6ef53
	disappear $7
UnknownScript_0x6ee8e: ; 0x6ee8e
	setevent EVENT_FOUGHT_CELEBI
	end
; 0x6ee8f

Script_ReturnCelebiRelatedItems:
	giveitem GS_BALL, 1
	setevent EVENT_GOT_GS_BALL_BACK_FROM_KURT
	clearevent EVENT_KURT_OUTSIDE_IN_AZALEA_TOWN
	appear $8
	setevent EVENT_LASS_IN_ILEX_FOREST_ROUTE_34_GATE
	returnafterbattle
	special RestartMapMusic
	loadfont
	writetext Text_ReturnCelebiRelatedItems
	waitbutton
	closetext
	end

MovementData_0x6ee8f: ; 0x6ee8f
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	step_end
; 0x6ee95

MovementData_0x6ee95: ; 0x6ee95
	big_step_up
	big_step_up
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_down
	step_end
; 0x6ee9e

MovementData_0x6ee9e: ; 0x6ee9e
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	step_end
; 0x6eea4

MovementData_0x6eea4: ; 0x6eea4
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	step_end
; 0x6eeab

MovementData_0x6eeab: ; 0x6eeab
	big_step_up
	big_step_left
	big_step_left
	big_step_left
	big_step_left
	step_end
; 0x6eeb1

MovementData_0x6eeb1: ; 0x6eeb1
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	step_end
; 0x6eeb8

MovementData_0x6eeb8: ; 0x6eeb8
	big_step_left
	jump_step_left
	big_step_left
	big_step_left
	step_end
; 0x6eebd

MovementData_0x6eebd: ; 0x6eebd
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	big_step_left
	big_step_left
	big_step_left
	big_step_left
	step_end
; 0x6eec7

MovementData_0x6eec7: ; 0x6eec7
	big_step_left
	big_step_left
	big_step_left
	big_step_left
	step_end
; 0x6eecc

MovementData_0x6eecc: ; 0x6eecc
	big_step_up
	big_step_up
	big_step_up
	big_step_right
	big_step_up
	step_end
; 0x6eed2

MovementData_0x6eed2: ; 0x6eed2
	big_step_right
	turn_head_up
	db $3e ; movement
	turn_head_down
	db $3e ; movement
	turn_head_up
	db $3e ; movement
	big_step_down
	big_step_down
	fix_facing
	jump_step_up
	accelerate_last
	accelerate_last
	remove_fixed_facing
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	step_end
; 0x6eee6

MovementData_0x6eee6: ; 0x6eee6
	big_step_left
	big_step_left
	big_step_left
	big_step_up
	big_step_up
	big_step_right
	big_step_up
	big_step_up
	step_end
; 0x6eeef

MovementData_0x6eeef: ; 0x6eeef
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	step_end
; 0x6eef8

MovementData_0x6eef8: ; 0x6eef8
	big_step_up
	big_step_up
	big_step_left
	big_step_left
	big_step_left
	big_step_left
	big_step_left
	step_end
; 0x6ef00

MovementData_0x6ef00: ; 0x6ef00
	big_step_down
	big_step_down
	big_step_left
	big_step_down
	big_step_down
	big_step_right
	big_step_right
	big_step_right
	step_end
; 0x6ef09

MovementData_0x6ef09: ; 0x6ef09
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	step_end
; 0x6ef10

MovementData_0x6ef10: ; 0x6ef10
	big_step_down
	big_step_left
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	step_end
; 0x6ef18

MovementData_0x6ef18: ; 0x6ef18
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	step_end
; 0x6ef1e

MovementData_0x6ef1e: ; 0x6ef1e
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	step_end
; 0x6ef23

MovementData_0x6ef23: ; 0x6ef23
	big_step_left
	big_step_left
	fix_facing
	jump_step_right
	accelerate_last
	accelerate_last
	remove_fixed_facing
	big_step_left
	big_step_left
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	step_end
; 0x6ef33

MovementData_0x6ef33: ; 0x6ef33
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	step_end
; 0x6ef3d

MovementData_0x6ef3d: ; 0x6ef3d
	big_step_left
	big_step_left
	fix_facing
	jump_step_right
	accelerate_last
	accelerate_last
	remove_fixed_facing
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	step_end
; 0x6ef4e

MovementData_0x6ef4e: ; 0x6ef4e
	step_up
	step_up
	step_up
	step_up
	step_end
; 0x6ef53

MovementData_0x6ef53: ; 0x6ef53
	step_down
	step_down
	step_down
	step_down
	step_end
; 0x6ef58

MovementData_0x6ef58: ; 0x6ef58
	fix_facing
	slow_step_down
	remove_fixed_facing
	step_end
; 0x6ef5c

UnknownText_0x6ef5c: ; 0x6ef5c
	text "Oh non<...> Mon chef"
	line "va être furieux!"

	para "Le CANARTICHO qui"
	line "coupe des arbres"

	para "pour faire du"
	line "charbon est parti."

	para "Je ne peux pas le"
	line "chercher dans le"
	cont "BOIS AUX CHENES."

	para "Il fait si noir et"
	line "c'est si grand<...>"

	para "J'ai peur!"
	done
; 0x6f019

UnknownText_0x6f019: ; 0x6f019
	text "Woah! Merci"
	line "beaucoup!"

	para "Le #MON de mon"
	line "chef ne m'obéit"
	cont "pas parce que je"
	cont "n'ai pas le bon"
	cont "BADGE."
	done
; 0x6f06f

UnknownText_0x6f06f: ; 0x6f06f
	text "C'est le #MON"
	line "perdu!"
	done
; 0x6f086

UnknownText_0x6f086: ; 0x6f086
	text "CANARTICHO: Kwaa!"
	done
; 0x6f099

UnknownText_0x6f099: ; 0x6f099
	text "Ah! CANARTICHO!"

	para "Tu nous l'as"
	line "retrouvé?"

	para "Sans lui, on ne"
	line "peut pas COUPER"

	para "les arbres pour"
	line "faire du charbon."

	para "Merci!"

	para "Comment te"
	line "remercier<...>"

	para "Je sais!"
	line "Prends ceci."
	done
; 0x6f141

UnknownText_0x6f141: ; 0x6f141
	text "C'est la CS COUPE"
	line "Apprends-la à un"

	para "#MON pour cou-"
	line "per les buissons."

	para "Il te faut le"
	line "BADGE de l'ARENE"

	para "d'ECORCIA pour"
	line "l'utiliser."
	done
; 0x6f1c0

UnknownText_0x6f1c0: ; 0x6f1c0
	text "Veux-tu devenir"
	line "pro du charbon"
	cont "comme moi?"

	para "Tu verras, c'est"
	line "cool!"
	done
; 0x6f21b

UnknownText_0x6f21b: ; 0x6f21b
	text "Ce que je fais?"

	para "Je secoue les"
	line "arbres avec la"
	cont "capacité"
	cont "PSYKOUD'BOUL."

	para "C'est marrant."
	line "Tiens, essaye!"
	done
; 0x6f26d

UnknownText_0x6f26d: ; 0x6f26d
	text "Secoue les arbres"
	line "avec PSYKOUD'BOUL!"

	para "Des #MON endor-"
	line "mis en tombe"
	cont "parfois."

	para "Un COUP D'BOULE"
	line "normal marche"
	cont "aussi."
	done
; 0x6f2af

UnknownText_0x6f2af: ; 0x6f2af
	text "Est-ce quelque"
	line "chose est arrivé"
	cont "au gardien de la"
	cont "forêt?"
	done
; 0x6f2de

UnknownText_0x6f2de: ; 0x6f2de
	text "Le BOIS AUX CHENES"
	line "est si dense que"

	para "les feuilles ca-"
	line "chent le ciel."

	para "Attention aux"
	line "objets qui ont pu"
	cont "être perdus."
	done
; 0x6f358

UnknownText_0x6f358: ; 0x6f358
	text "AUTEL du"
	line "BOIS AU CHENE<...>"

	para "En l'honneur du"
	line "protecteur de la"
	cont "forêt<...>"
	done
; 0x6f394

UnknownText_0x6f394: ; 0x6f394
	text "AUTEL du"
	line "BOIS AU CHENE<...>"

	para "En l'honneur du"
	line "protecteur de la"
	cont "forêt<...>"

	para "Oh? Qu'est-ce que"
	cont "c'est?"

	para "Il y a un trou."
	line "On dirait que la"
	cont "GS BALL y rentre."

	para "Voulez-vous mettre"
	line "la GS BALL ici?"
	done
; 0x6f43b

UnknownText_0x6f43b: ; 0x6f43b
	text "<PLAYER> dépose la"
	line "GS BALL."
	done
; 0x6f452

UnknownText_0x6f452: ; 0x6f452
	text "Waouh, c'était"
	line "quelque chose!"

	para "<PLAYER>, c'était"
	line "fantastique."
	cont "Merci!"

	para "Les légendes sur"
	line "cet AUTEL étaient"
	cont "donc vraies<...>"

	para "Ce que j'ai vu"
	line "m'a inspiré."

	para "Je vais me motiver"
	line "pour fabriquer de"
	cont "meilleures BALLS!"
	done
; 0x6f515

Bug_catcherWayneSeenText: ; 0x6f515
	text "Ne me surprends"
	line "pas comme ça."

	para "Tu as apeuré un"
	line "#MON!"
	done
; 0x6f551

Bug_catcherWayneBeatenText: ; 0x6f551
	text "Je n'avais jamais"
	line "vu ce #MON<...>"
	done
; 0x6f571

UnknownText_0x6f571: ; 0x6f571
	text "Un #MON que je"
	line "n'avais jamais vu"

	para "est tombé de l'"
	line "arbre quand j'ai"
	cont "utilisé"
	cont "COUP D'BOULE."

	para "Je devrais essayer"
	line "ça dans d'autres"
	cont "endroits."
	done
; 0x6f5e7

Text_ReturnCelebiRelatedItems:
	text "<PLAY_G> ramasse"
	line "la GS BALL."
	done

IlexForest_MapEventHeader: ; 0x6f5e7
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $5, $1, 3, GROUP_ROUTE_34_ILEX_FOREST_GATE, MAP_ROUTE_34_ILEX_FOREST_GATE
	warp_def $2a, $3, 1, GROUP_ILEX_FOREST_AZALEA_GATE, MAP_ILEX_FOREST_AZALEA_GATE
	warp_def $2b, $3, 2, GROUP_ILEX_FOREST_AZALEA_GATE, MAP_ILEX_FOREST_AZALEA_GATE

	; xy triggers
	db 0

	; signposts
	db 5
	signpost 17, 3, $0, MapIlexForestSignpost0Script
	signpost 7, 11, $7, MapIlexForestSignpostItem1
	signpost 14, 22, $7, MapIlexForestSignpostItem2
	signpost 17, 1, $7, MapIlexForestSignpostItem3
	signpost 22, 8, $1, MapIlexForestSignpost4Script

	; people-events
	db 11
	person_event SPRITE_BIRD, 35, 18, $3, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, BirdScript_0x6eb8f, EVENT_ILEX_FOREST_FARFETCHD
	person_event SPRITE_YOUNGSTER, 32, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, YoungsterScript_0x6eb7b, EVENT_APPRENTICE_IN_ILEX_FOREST
	person_event SPRITE_BLACK_BELT, 32, 9, $9, 0, 0, -1, -1, 0, 0, 0, BlackBeltScript_0x6edae, EVENT_CHARCOAL_MASTER_IN_ILEX_FOREST
	person_event SPRITE_ROCKER, 18, 19, $9, 0, 0, -1, -1, 0, 0, 0, RockerScript_0x6edde, -1
	person_event SPRITE_POKE_BALL, 36, 24, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x6ee10, EVENT_ITEM_ILEX_FOREST_REVIVE
	person_event SPRITE_KURT, 33, 12, $7, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_KURT_IN_ILEX_FOREST
	person_event SPRITE_LASS, 28, 7, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, LassScript_0x6ee0d, EVENT_LASS_IN_ILEX_FOREST_ROUTE_34_GATE_2
	person_event SPRITE_YOUNGSTER, 5, 16, $7, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 0, TrainerBug_catcherWayne, -1
	person_event SPRITE_POKE_BALL, 21, 13, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x6ee12, EVENT_ITEM_ILEX_FOREST_X_ATTACK
	person_event SPRITE_POKE_BALL, 11, 21, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x6ee14, EVENT_ITEM_ILEX_FOREST_ANTIDOTE
	person_event SPRITE_POKE_BALL, 5, 31, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x6ee16, EVENT_ITEM_ILEX_FOREST_ETHER
; 0x6f6a4



