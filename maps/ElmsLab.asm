ElmsLab_MapScriptHeader: ; 0x78b5d
	; trigger count
	db 6

	; triggers
	dw UnknownScript_0x78b7a, $0000
	dw UnknownScript_0x78b7e, $0000
	dw UnknownScript_0x78b7f, $0000
	dw UnknownScript_0x78b80, $0000
	dw UnknownScript_0x78b81, $0000
	dw UnknownScript_0x78b82, $0000

	; callback count
	db 1

	; callbacks

	dbw 2, UnknownScript_0x78b83
; 0x78b7a

UnknownScript_0x78b7a: ; 0x78b7a
	priorityjump UnknownScript_0x78b8c
	end
; 0x78b7e

UnknownScript_0x78b7e: ; 0x78b7e
	end
; 0x78b7f

UnknownScript_0x78b7f: ; 0x78b7f
	end
; 0x78b80

UnknownScript_0x78b80: ; 0x78b80
	end
; 0x78b81

UnknownScript_0x78b81: ; 0x78b81
	end
; 0x78b82

UnknownScript_0x78b82: ; 0x78b82
	end
; 0x78b83

UnknownScript_0x78b83: ; 0x78b83
	checktriggers
	iftrue UnknownScript_0x78b8b
	moveperson $2, $3, $4
UnknownScript_0x78b8b: ; 0x78b8b
	return
; 0x78b8c

UnknownScript_0x78b8c: ; 0x78b8c
	applymovement $0, MovementData_0x78f67
	showemote $0, $2, 15
	spriteface $2, $3
	loadfont
	writetext UnknownText_0x78fb6
UnknownScript_0x78b9b: ; 0x78b9b
	yesorno
	iftrue UnknownScript_0x78ba5
	writetext UnknownText_0x7911a
	jump UnknownScript_0x78b9b
; 0x78ba5

UnknownScript_0x78ba5: ; 0x78ba5
	writetext UnknownText_0x790fa
	buttonsound
	writetext UnknownText_0x7913a
	waitbutton
	closetext
	playsound SFX_GLASS_TING
	pause 30
	showemote $0, $2, 10
	spriteface $2, $0
	loadfont
	writetext UnknownText_0x791ae
	waitbutton
	closetext
	loadfont
	spriteface $2, $3
	writetext UnknownText_0x791df
	waitbutton
	closetext
	applymovement $2, MovementData_0x78fa0
	spriteface $0, $1
	applymovement $2, MovementData_0x78fa2
	spriteface $0, $3
	loadfont
	writetext UnknownText_0x792ff
	waitbutton
	dotrigger $1
	closetext
	end
; 0x78be0

ProfElmScript: ; 0x78be0
	faceplayer
	loadfont
	checkevent EVENT_GOT_SS_TICKET_FROM_ELM
	iftrue UnknownScript_0x78bee
	checkevent EVENT_FIRST_TIME_HALL_OF_FAME
	iftrue ElmGiveTicketScript
UnknownScript_0x78bee: ; 0x78bee
	checkevent EVENT_GOT_MASTER_BALL_FROM_ELM
	iftrue UnknownScript_0x78bfa
	checkflag ENGINE_RISINGBADGE
	iftrue ElmGiveMasterBallScript
UnknownScript_0x78bfa: ; 0x78bfa
	checkevent EVENT_GOT_EVERSTONE_FROM_ELM
	iftrue UnknownScript_0x78e16
	checkevent EVENT_SHOWED_TOGEPI_TO_ELM
	iftrue UnknownScript_0x78e03
	checkevent EVENT_TOLD_ELM_ABOUT_TOGEPI_OVER_THE_PHONE
	iffalse UnknownScript_0x78c35
	writebyte TOGEPI
	special Functionc284
	iftrue ShowElmTogepiScript
	writebyte TOGETIC
	special Functionc284
	iftrue ShowElmTogepiScript
	writetext UnknownText_0x79a40
	waitbutton
	closetext
	end
; 0x78c22

UnknownScript_0x78c22: ; 0x78c22
	writebyte TOGEPI
	special Functionc284
	iftrue ShowElmTogepiScript
	writebyte TOGETIC
	special Functionc284
	iftrue ShowElmTogepiScript
	jump UnknownScript_0x78c41
; 0x78c35

UnknownScript_0x78c35: ; 0x78c35
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	iffalse UnknownScript_0x78c41
	checkevent EVENT_TOGEPI_HATCHED
	iftrue UnknownScript_0x78c22
UnknownScript_0x78c41: ; 0x78c41
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE ; why are we checking it again?
	iftrue ElmWaitingEggHatchScript
	checkflag ENGINE_ZEPHYRBADGE
	iftrue ElmAideHasEggScript
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue ElmStudyingEggScript
	checkevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	iftrue ElmAfterTheftScript
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue ElmDescribesMrPokemonScript
	writetext UnknownText_0x79375
	waitbutton
	closetext
	end
; 0x78c65

LabTryToLeaveScript: ; 0x78c65
	spriteface $2, $0
	loadfont
	writetext LabWhereGoingText
	waitbutton
	closetext
	applymovement $0, MovementData_0x78f70
	end
; 0x78c73

CyndaquilPokeBallScript: ; 0x78c73
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	checkcode VAR_PARTYCOUNT
	if_not_equal 6, .okay
	checkcode VAR_BOXSPACE
	if_equal 0, ElmsLabNoRoomScript
.okay
	spriteface $2, $0
	refreshscreen $0
	pokepic CYNDAQUIL
	cry CYNDAQUIL
	waitbutton
	closepokepic
	loadfont
	writetext TakeCyndaquilText
	yesorno
	iffalse DidntChooseStarterScript
	disappear $4
	setevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	writetext ChoseStarterText
	buttonsound
	waitsfx
	pokenamemem CYNDAQUIL, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke CYNDAQUIL, 20, GOLD_BERRY, 0
	closetext
	checkcode VAR_FACING
	if_equal $3, ElmDirectionsScript
	applymovement $0, AfterCyndaquilMovement
	jump ElmDirectionsScript

TotodilePokeBallScript: ; 0x78cb5
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	checkcode VAR_PARTYCOUNT
	if_not_equal 6, .okay
	checkcode VAR_BOXSPACE
	if_equal 0, ElmsLabNoRoomScript
.okay
	spriteface $2, $0
	refreshscreen $0
	pokepic TOTODILE
	cry TOTODILE
	waitbutton
	closepokepic
	loadfont
	writetext TakeTotodileText
	yesorno
	iffalse DidntChooseStarterScript
	disappear $5
	setevent EVENT_GOT_TOTODILE_FROM_ELM
	writetext ChoseStarterText
	buttonsound
	waitsfx
	pokenamemem TOTODILE, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke TOTODILE, 20, GOLD_BERRY, 0
	closetext
	applymovement $0, AfterTotodileMovement
	jump ElmDirectionsScript

ChikoritaPokeBallScript: ; 0x78cf1
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	checkcode VAR_PARTYCOUNT
	if_not_equal 6, .okay
	checkcode VAR_BOXSPACE
	if_equal 0, ElmsLabNoRoomScript
.okay
	spriteface $2, $0
	refreshscreen $0
	pokepic CHIKORITA
	cry CHIKORITA
	waitbutton
	closepokepic
	loadfont
	writetext TakeChikoritaText
	yesorno
	iffalse DidntChooseStarterScript
	disappear $6
	setevent EVENT_GOT_CHIKORITA_FROM_ELM
	writetext ChoseStarterText
	buttonsound
	waitsfx
	pokenamemem CHIKORITA, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke CHIKORITA, 20, GOLD_BERRY, 0
	closetext
	applymovement $0, AfterChikoritaMovement
	jump ElmDirectionsScript

DidntChooseStarterScript: ; 0x78d2d
	writetext DidntChooseStarterText
	waitbutton
	closetext
	end
; 0x78d33
ElmsLabNoRoomScript:
	loadfont
	writetext ElmsLabNoRoomText
	waitbutton
	closetext
	end

ElmDirectionsScript: ; 0x78d33
	spriteface $0, $1
	loadfont
	writetext ElmDirectionsText1
	waitbutton
	closetext
	addcellnum $4
	loadfont
	writetext GotElmsNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	waitbutton
	closetext
	spriteface $2, $2
	loadfont
	writetext ElmDirectionsText2
	waitbutton
	closetext
	spriteface $2, $0
	loadfont
	writetext ElmDirectionsText3
	waitbutton
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_ELM
	setevent EVENT_SILVER_IN_CHERRYGROVE_CITY
	dotrigger $5
	domaptrigger GROUP_NEW_BARK_TOWN, MAP_NEW_BARK_TOWN, $1
	end
; 0x78d67

ElmDescribesMrPokemonScript: ; 0x78d67
	writetext ElmDescribesMrPokemonText
	waitbutton
	closetext
	end
; 0x78d6d

LookAtElmPokeBallScript: ; 0x78d6d
	loadfont
	writetext ElmPokeBallText
	waitbutton
	closetext
	end
; 0x78d74

MapElmsLabSignpost0Script: ; 0x78d74
	loadfont
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue UnknownScript_0x78d81
	writetext UnknownText_0x79690
	waitbutton
	closetext
	end
; 0x78d81

UnknownScript_0x78d81: ; 0x78d81
	writetext UnknownText_0x796aa
	yesorno
	iftrue UnknownScript_0x78d8a
	closetext
	end
; 0x78d8a

UnknownScript_0x78d8a: ; 0x78d8a
	special Function1060a2
	special HealParty
	special SaveMusic
	playmusic MUSIC_NONE
	writebyte $1
	special HealMachineAnim
	pause 30
	special RestoreMusic
	closetext
	end
; 0x78d9f

ElmAfterTheftDoneScript: ; 0x78d9f
	waitbutton
	closetext
	end
; 0x78da2

ElmAfterTheftScript: ; 0x78da2
	writetext ElmAfterTheftText1
	checkitem MYSTERY_EGG
	iffalse ElmAfterTheftDoneScript
	buttonsound
	writetext ElmAfterTheftText2
	waitbutton
	takeitem MYSTERY_EGG, 1
	scall ElmJumpBackScript1
	writetext ElmAfterTheftText3
	waitbutton
	scall ElmJumpBackScript2
	writetext ElmAfterTheftText4
	buttonsound
	writetext ElmAfterTheftText5
	buttonsound
	setevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	domaptrigger GROUP_ROUTE_29, MAP_ROUTE_29, $1
	clearevent EVENT_YOUNGSTER_JOEY_ON_ROUTE_30
	setevent EVENT_YOUNGSTERS_BATTLE_ON_ROUTE_30
	writetext ElmAfterTheftText6
	waitbutton
	closetext
	dotrigger $6
	end
; 0x78ddc

ElmStudyingEggScript: ; 0x78ddc
	writetext ElmStudyingEggText
	waitbutton
	closetext
	end
; 0x78de2

ElmAideHasEggScript: ; 0x78de2
	writetext ElmAideHasEggText
	waitbutton
	closetext
	end
; 0x78de8

ElmWaitingEggHatchScript: ; 0x78de8
	writetext ElmWaitingEggHatchText
	waitbutton
	closetext
	end
; 0x78dee

ShowElmTogepiScript: ; 0x78dee
	writetext ShowElmTogepiText1
	waitbutton
	closetext
	showemote $0, $2, 15
	setevent EVENT_SHOWED_TOGEPI_TO_ELM
	loadfont
	writetext ShowElmTogepiText2
	buttonsound
	writetext ShowElmTogepiText3
	buttonsound
UnknownScript_0x78e03: ; 0x78e03
	writetext ElmGiveEverstoneText1
	buttonsound
	verbosegiveitem EVERSTONE, 1
	iffalse UnknownScript_0x78e1a
	writetext ElmGiveEverstoneText2
	waitbutton
	closetext
	setevent EVENT_GOT_EVERSTONE_FROM_ELM
	end
; 0x78e16

UnknownScript_0x78e16: ; 0x78e16
	writetext UnknownText_0x79c37
	waitbutton
UnknownScript_0x78e1a: ; 0x78e1a
	closetext
	end
; 0x78e1c

ElmGiveMasterBallScript: ; 0x78e1c
	writetext ElmGiveMasterBallText1
	buttonsound
	verbosegiveitem MASTER_BALL, 1
	iffalse .notdone
	setevent EVENT_GOT_MASTER_BALL_FROM_ELM
	writetext ElmGiveMasterBallText2
	waitbutton
.notdone
	closetext
	end
; 0x78e2f

ElmGiveTicketScript: ; 0x78e2f
	writetext ElmGiveTicketText1
	buttonsound
	verbosegiveitem S_S_TICKET, 1
	setevent EVENT_GOT_SS_TICKET_FROM_ELM
	writetext ElmGiveTicketText2
	waitbutton
	closetext
	end
; 0x78e3f

ElmJumpBackScript1: ; 0x78e3f
	closetext
	checkcode VAR_FACING
	if_equal $0, UnknownScript_0x78e6d
	if_equal $1, UnknownScript_0x78e67
	if_equal $2, UnknownScript_0x78e73
	if_equal $3, UnknownScript_0x78e79
	end
; 0x78e53

ElmJumpBackScript2: ; 0x78e53
	closetext
	checkcode VAR_FACING
	if_equal $0, UnknownScript_0x78e67
	if_equal $1, UnknownScript_0x78e6d
	if_equal $2, UnknownScript_0x78e79
	if_equal $3, UnknownScript_0x78e73
	end
; 0x78e67

UnknownScript_0x78e67: ; 0x78e67
	applymovement $2, MovementData_0x78f90
	loadfont
	end
; 0x78e6d

UnknownScript_0x78e6d: ; 0x78e6d
	applymovement $2, MovementData_0x78f94
	loadfont
	end
; 0x78e73

UnknownScript_0x78e73: ; 0x78e73
	applymovement $2, MovementData_0x78f98
	loadfont
	end
; 0x78e79

UnknownScript_0x78e79: ; 0x78e79
	applymovement $2, MovementData_0x78f9c
	loadfont
	end
; 0x78e7f

UnknownScript_0x78e7f: ; 0x78e7f
	applymovement $3, MovementData_0x78f7e
	spriteface $0, $0
	scall UnknownScript_0x78e9d
	applymovement $3, MovementData_0x78f87
	end
; 0x78e8e

UnknownScript_0x78e8e: ; 0x78e8e
	applymovement $3, MovementData_0x78f82
	spriteface $0, $0
	scall UnknownScript_0x78e9d
	applymovement $3, MovementData_0x78f8b
	end
; 0x78e9d

UnknownScript_0x78e9d: ; 0x78e9d
	loadfont
	writetext UnknownText_0x79f38
	buttonsound
	verbosegiveitem SUPER_POTION, 1
	writetext UnknownText_0x79f65
	waitbutton
	closetext
	dotrigger $2
	end
; 0x78ead

UnknownScript_0x78ead: ; 0x78ead
	applymovement $3, MovementData_0x78f7e
	spriteface $0, $0
	scall UnknownScript_0x78ecb
	applymovement $3, MovementData_0x78f87
	end
; 0x78ebc

UnknownScript_0x78ebc: ; 0x78ebc
	applymovement $3, MovementData_0x78f82
	spriteface $0, $0
	scall UnknownScript_0x78ecb
	applymovement $3, MovementData_0x78f8b
	end
; 0x78ecb

UnknownScript_0x78ecb: ; 0x78ecb
	loadfont
	writetext UnknownText_0x7a078
	buttonsound
	itemtotext GREAT_BALL, $1
	scall UnknownScript_0x78ee2
	giveitem GREAT_BALL, $5
	writetext UnknownText_0x7a09a
	buttonsound
	itemnotify
	closetext
	dotrigger $2
	end
; 0x78ee2

UnknownScript_0x78ee2: ; 0x78ee2
	jumpstd receiveitem
	end
; 0x78ee6

ElmsAideScript: ; 0x78ee6
	faceplayer
	loadfont
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	iftrue UnknownScript_0x78f0c
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue UnknownScript_0x78f06
	checkevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	iftrue UnknownScript_0x78f00
	writetext UnknownText_0x79f65
	waitbutton
	closetext
	end
; 0x78f00

UnknownScript_0x78f00: ; 0x78f00
	writetext UnknownText_0x79f95
	waitbutton
	closetext
	end
; 0x78f06

UnknownScript_0x78f06: ; 0x78f06
	writetext UnknownText_0x7a09a
	waitbutton
	closetext
	end
; 0x78f0c

UnknownScript_0x78f0c: ; 0x78f0c
	writetext UnknownText_0x79c65
	waitbutton
	closetext
	end
; 0x78f12

UnknownScript_0x78f12: ; 0x78f12
	applymovement $0, MovementData_0x78f72
; 0x78f16

MeetCopScript: ; 0x78f16
	applymovement $0, MovementData_0x78f74
CopScript: ; 0x78f1a
	spriteface $7, $2
	loadfont
	writetext UnknownText_0x7a0f0
	buttonsound
	special SpecialNameRival
	writetext UnknownText_0x7a1c0
	waitbutton
	closetext
	applymovement $7, MovementData_0x78f78
	disappear $7
	dotrigger $2
	end
; 0x78f33

MapElmsLabSignpost14Script: ; 0x78f33
	loadfont
	checkflag ENGINE_FLYPOINT_VIOLET
	iftrue UnknownScript_0x78f49
	checkevent EVENT_ELM_CALLED_ABOUT_STOLEN_POKEMON
	iftrue UnknownScript_0x78f43
	jump UnknownScript_0x78f49
; 0x78f43

UnknownScript_0x78f43: ; 0x78f43
	writetext UnknownText_0x7a231
	waitbutton
	closetext
	end
; 0x78f49

UnknownScript_0x78f49: ; 0x78f49
	writetext UnknownText_0x7a1fd
	waitbutton
	closetext
	end
; 0x78f4f

MapElmsLabSignpost5Script: ; 0x78f4f
	jumptext UnknownText_0x7a24c
; 0x78f52

MapElmsLabSignpost6Script: ; 0x78f52
	jumptext UnknownText_0x7a28a
; 0x78f55

MapElmsLabSignpost7Script: ; 0x78f55
	jumptext UnknownText_0x7a2c6
; 0x78f58

MapElmsLabSignpost8Script: ; 0x78f58
	jumptext UnknownText_0x7a315
; 0x78f5b

MapElmsLabSignpost13Script: ; 0x78f5b
	jumptext UnknownText_0x7a370
; 0x78f5e

MapElmsLabSignpost15Script: ; 0x78f5e
	loadfont
	writetext UnknownText_0x7a3a6
	yesorno
	iffalse .skip
	special Function1559a
.skip
	closetext
	end
; 0x78f61

UnknownScript_0x78f61: ; 0x78f61
	jumpstd trashcan
; 0x78f64

MapElmsLabSignpost12Script: ; 0x78f64
	jumpstd difficultbookshelf
; 0x78f67

MovementData_0x78f67: ; 0x78f67
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	turn_head_left
	step_end
; 0x78f70

MovementData_0x78f70: ; 0x78f70
	step_up
	step_end
; 0x78f72

MovementData_0x78f72: ; 0x78f72
	step_left
	step_end
; 0x78f74

MovementData_0x78f74: ; 0x78f74
	step_up
	step_up
	turn_head_right
	step_end
; 0x78f78

MovementData_0x78f78: ; 0x78f78
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end
; 0x78f7e

MovementData_0x78f7e: ; 0x78f7e
	step_right
	step_right
	turn_head_up
	step_end
; 0x78f82

MovementData_0x78f82: ; 0x78f82
	step_right
	step_right
	step_right
	turn_head_up
	step_end
; 0x78f87

MovementData_0x78f87: ; 0x78f87
	step_left
	step_left
	turn_head_down
	step_end
; 0x78f8b

MovementData_0x78f8b: ; 0x78f8b
	step_left
	step_left
	step_left
	turn_head_down
	step_end
; 0x78f90

MovementData_0x78f90: ; 0x78f90
	fix_facing
	big_step_up
	remove_fixed_facing
	step_end
; 0x78f94

MovementData_0x78f94: ; 0x78f94
	fix_facing
	big_step_down
	remove_fixed_facing
	step_end
; 0x78f98

MovementData_0x78f98: ; 0x78f98
	fix_facing
	big_step_left
	remove_fixed_facing
	step_end
; 0x78f9c

MovementData_0x78f9c: ; 0x78f9c
	fix_facing
	big_step_right
	remove_fixed_facing
	step_end
; 0x78fa0

MovementData_0x78fa0: ; 0x78fa0
	step_up
	step_end
; 0x78fa2

MovementData_0x78fa2: ; 0x78fa2
	step_right
	step_right
	step_up
	turn_head_down
	step_end
; 0x78fa7

AfterCyndaquilMovement: ; 0x78fa7
	step_left
	step_up
	turn_head_up
	step_end
; 0x78fab

AfterTotodileMovement: ; 0x78fab
	step_left
	step_left
	step_up
	turn_head_up
	step_end
; 0x78fb0

AfterChikoritaMovement: ; 0x78fb0
	step_left
	step_left
	step_left
	step_up
	turn_head_up
	step_end
; 0x78fb6

UnknownText_0x78fb6: ; 0x78fb6
	text "Oh, bonjour. Tu"
	line "dois être <PLAY_G>!"

	para "Ta mère m'a parlé"
	line "de toi quand elle"
	cont "est arrivée."

	para "Je suis le PROF."
	line "ORME. Ravi de te"
	cont "rencontrer!"

	para "ORME: Puis-je te"
	line "demander une"
	cont "faveur?"

	para "Je mène une nou-"
	line "velle recherche."
	cont "#MON."

	para "Je me demandais si"
	line "tu pouvais m'aider"
	cont "<PLAY_G>."

	para "Vois-tu<...>"

	para "J'écris un papier"
	line "que je veux pré-"
	cont "senter à une"
	cont "conférence."

	para "Mais il y a encore"
	line "des choses que je"
	cont "ne comprends pas."

	para "Donc!"

	para "J'aimerais que tu"
	line "élèves un #MON"
	cont "que j'ai récemment"
	cont "attrapé."
	done
; 0x790fa

UnknownText_0x790fa: ; 0x790fa
	text "Merci, <PLAY_G>!"

	para "Tu es d'une grande"
	line "aide!"
	done
; 0x7911a

UnknownText_0x7911a: ; 0x7911a
	text "Mais<...> J'ai besoin"
	line "de ton aide!"
	done
; 0x7913a

UnknownText_0x7913a: ; 0x7913a
	text "Quand j'annonce-"
	line "rais mes trou-"
	cont "vailles, nous"
	cont "pourrons en savoir"
	cont "plus sur les"
	cont "nombreux mystères"
	cont "des #MON."

	para "Tu peux compter"
	line "là-dessus!"
	done
; 0x791ae

UnknownText_0x791ae: ; 0x791ae
	text "Oh, j'ai reçu un"
	line "e-mail!"

	para $56, $56, $56
	line "Hm<...> Oui<...>"

	para "D'accord<...>"
	done
; 0x791df

UnknownText_0x791df: ; 0x791df
	text "Ecoute."

	para "J'ai une connai-"
	line "ssance connu sous"
	cont "le nom de"
	cont "M.#MON"

	para "Il se vante tou-"
	line "jours de ses décou"
	cont "vertes bizarres."

	para "Il m'a envoyé un"
	line "e-mail en disant"
	cont "que cette fois,"
	cont "c'est la bonne."

	para "C'est intriguant"
	line "mais nous sommes"
	cont "occupés avec nos"
	cont "recherches<...>"

	para "Ah!"

	para "Je sais!"

	para "<PLAY_G>, peux-tu"
	line "y aller pour moi?"
	done
; 0x792ff

UnknownText_0x792ff: ; 0x792ff
	text "Je veux que tu"
	line "élèves un des"

	para "#MON de"
	line "ces # BALLS."

	para "Tu seras son"
	line "premier partenaire"
	cont "<PLAY_G>!"

	para "Vas-y, choisis!"
	done
; 0x79375

UnknownText_0x79375: ; 0x79375
	text "Si un #MON"
	line "sauvage apparaît,"
	cont "laisse ton #MON"
	cont "le combattre."
	done
; 0x793a7

LabWhereGoingText: ; 0x793a7
	text "ORME: Attends!"
	line "Ou vas-tu?"
	done
; 0x793c8

TakeCyndaquilText: ; 0x793c8
	text "ORME: Tu veux"
	line "HERICENDRE, le"
	cont "#MON feu?"
	done
; 0x793f3

TakeTotodileText: ; 0x793f3
	text "ORME: Tu veux"
	line "KAIMINUS, le"
	cont "#MON eau?"
	done
; 0x7941f

TakeChikoritaText: ; 0x7941f
	text "ORME: Tu veux"
	line "GERMINION, le"
	cont "#MON plante?"
	done
; 0x7944d

DidntChooseStarterText: ; 0x7944d
	text "ORME: Prends ton"
	line "temps."

	para "Ton partenaire est"
	line "important."
	done
; 0x79487

ChoseStarterText: ; 0x79487
	text "ORME: Je pense que"
	line "c'est un bon"
	cont "#MON!"
	done
; 0x794ad

ReceivedStarterText: ; 0x794ad
	text "<PLAYER> reçoit"
	line "@"
	text_from_ram StringBuffer3
	text "!"
	done
; 0x794c0

ElmDirectionsText1: ; 0x794c0
	text "M.#MON vit un"
	line "peu après VILLE"
	cont "GRIOTTE. La ville"
	cont "d'a côté."

	para "C'est un chemin"
	line "direct, tu ne peux"
	cont "pas le rater."

	para "Mais au cas ou,"
	line "voici mon numéro."

	para "Appelle moi si il"
	line "y a quoi que ce"
	cont "soit."
	done
; 0x79581

ElmDirectionsText2: ; 0x79581
	text "Si ton #MON est"
	line "blessé, soigne-le"
	cont "avec cette"
	cont "machine."

	para "Utilise la quand"
	line "tu veux."
	done
; 0x795db

ElmDirectionsText3: ; 0x795db
	text "<PLAY_G>, je"
	line "compte sur toi!"
	done
; 0x795f3

GotElmsNumberText: ; 0x795f3
	text "<PLAYER> a le"
	line "numéro de PROF."
	cont "ORME."
	done
; 0x7960d

ElmDescribesMrPokemonText: ; 0x7960d
	text "M.#MON part"
	line "partout et trouve"
	cont "des raretés."

	para "Dommage que rien"
	line "n'est était utile"
	cont "jusqu'ici<...>"
	done
; 0x79668

ElmPokeBallText: ; 0x79668
	text "Un #MON attrapé"
	line "par le PROF.ORME."
	done
; 0x79690

UnknownText_0x79690: ; 0x79690
	text "Je me demande ce"
	line "que ça fait?"
	done
; 0x796aa

UnknownText_0x796aa: ; 0x796aa
	text "Voulez-vous"
	line "soigner vos"
	cont "#MON?"
	done
; 0x796cd

ElmAfterTheftText1: ; 0x796cd
	text "ORME: <PLAY_G>,"
	line "c'est terrible<...>"

	para "Ah, oui, quel"
	line "était la grande"
	cont "découverte de M."
	cont "#MON?"
	done
; 0x79712

ElmAfterTheftText2: ; 0x79712
	text "<PLAYER> remet"
	line "l'OEUF MYSTERE au"
	cont "PROF.ORME."
	done
; 0x79739

ElmAfterTheftText3: ; 0x79739
	text "ORME: Ca?"
	done
; 0x79745

ElmAfterTheftText4: ; 0x79745
	text "Mais<...> c'est un"
	line "OEUF #MON?"

	para "Si c'est vrai,"
	line "c'est une grande"
	cont "découverte!"
	done
; 0x79780

ElmAfterTheftText5: ; 0x79780
	text "ORME: Quoi?!?"

	para "Le PROF.CHEN t'a"
	line "donné un #DEX?"

	para "<PLAY_G>, c'est"
	line "vrai? C'est"
	cont "incroyable!"

	para "Il sait voir le"
	line "grand potentiel"
	cont "des gens en tant"
	cont "que dresseurs."

	para "Woah, <PLAY_G>. Tu"
	line "as peut-être le"
	cont "talent pour deve-"
	cont "nir CHAMPION."

	para "Tu sembles bien"
	line "t'entendre avec"
	cont "ton #MON!"

	para "Tu devrais relever"
	line "les défis des"
	cont "ARENES #MON."

	para "La plus proche"
	line "serait celle de"
	cont "MAUVILLE."
	done
; 0x798cf

ElmAfterTheftText6: ; 0x798cf
	text "<...><PLAY_G>. la"
	line "route vers le"
	cont "championnat sera"
	cont "longue."

	para "Avant de partir,"
	line "va parler à ta"
	cont "MAMAN."
	done
; 0x7993c

ElmStudyingEggText: ; 0x7993c
	text "ORME: N'abandonne"
	line "pas!"

	para "Je t'appelle si je"
	line "découvre quelque"
	cont "chose sur l'OEUF."
	done
; 0x7997d

ElmAideHasEggText: ; 0x7997d
	text "ORME: <PLAY_G>?"
	line "Tu n'as pas vu"
	cont "mon assistant?"

	para "Il aurait du te"
	line "remettre l'OEUF"
	cont "au centre #MON"
	cont "de MAUVILLE."

	para "Tu l'as peut-être"
	line "raté, retournes-y"
	cont "voir."
	done
; 0x79a1b

ElmWaitingEggHatchText: ; 0x79a1b
	text "ORME: Alors, cet"
	line "OEUF a changé?"
	done
; 0x79a40

UnknownText_0x79a40: ; 0x79a40
	text "<PLAY_G>? J'ai cru"
	line "que cet OEUF avait"
	cont "éclos?"

	para "Ou est le #MON?"
	done
; 0x79a72

ShowElmTogepiText1: ; 0x79a72
	text "ORME: <PLAY_G>, tu"
	line "as l'air d'aller"
	cont "bien!"
	done
; 0x79a8b

ShowElmTogepiText2: ; 0x79a8b
	text "Quoi?"
	line "Ce #MON!?!"
	done
; 0x79a9f

ShowElmTogepiText3: ; 0x79a9f
	text "L'OEUF à éclos!"
	line "Donc les #MON"
	cont "naissent des OEUF<...>"

	para "Non, peut-être pas"
	line "tous les #MON."

	para "Il y a encore"
	line "tellement de re-"
	cont "cherches à faire."
	done
; 0x79b1c

ElmGiveEverstoneText1: ; 0x79b1c
	text "Merci, <PLAY_G>!"
	line "Tu m'aides à"
	cont "dévoiler les"
	cont "mystères des"
	cont "#MON!"

	para "Je veux te donner"
	line "ceci en"
	cont "remerciement."
	done
; 0x79b8d

ElmGiveEverstoneText2: ; 0x79b8d
	text "C'est une PIERRE"
	line "STASE."

	para "Certaines espèces"
	line "de #MON"
	cont "évoluent quand ils"
	cont "atteignent le bon"
	cont "niveau."

	para "Un #MON tenant"
	line "une PIERRE STASE"
	cont "n'évoluera pas."

	para "Donne le à un"
	line "#MON que tu ne"
	cont "veux pas évoluer."
	done
; 0x79c37

UnknownText_0x79c37: ; 0x79c37
	text "ORME: <PLAY_G>, Je"
	line "t'appelle si il y"
	cont "a quelque chose."
	done
; 0x79c65

UnknownText_0x79c65: ; 0x79c65
	text "<...>soupir<...> Ce"
	line "#MON volé."

	para "Je me demande"
	line "comment il va."

	para "On dit qu'un #-"
	line "MON élevé par une"
	cont "mauvaise personne"
	cont "devient aussi"
	cont "mauvais."
	done
; 0x79cd0

ElmGiveMasterBallText1: ; 0x79cd0
	text "ORME: <PLAY_G>!"

	para "Grâce à toi, mes"
	para "recherches avan-"
	line "cent bien!"

	para "Prends ceci pour"
	line "te remercier."
	done
; 0x79d31

ElmGiveMasterBallText2: ; 0x79d31
	text "La MASTER BALL est"
	line "la meilleure!"

	para "Cette BALL capture"
	line "tous les #MON"
	cont "sans rater!"

	para "Elle n'est donnée"
	line "qu'au chercheurs"
	cont "#MON reconnus."

	para "Mais je pense que"
	line "tu peux en faire"

	para "meilleur usage que"
	line "moi, <PLAY_G>!"
	done
; 0x79df3

ElmGiveTicketText1: ; 0x79df3
	text "ORME: <PLAY_G>!"
	line "Te voilà!"

	para "Je t'ai appelé car"
	line "j'ai quelque chose"
	cont "pour toi."

	para "C'est un PASSE"
	line "BATEAU."

	para "Now you can catch"
	line "#MON in KANTO."
	done
; 0x79e6f

ElmGiveTicketText2: ; 0x79e6f
	text "Ce bâteau part de"
	line "OLIVILLE."

	para "Mais tu le sais"
	line "déjà, <PLAY_G>."

	para "Après tout, tu as"
	line "voyagé partout"
	cont "avec tes #MON."

	para "Passe le bonjour"
	line "au PROF.CHEN à"
	cont "KANTO."
	done
; 0x79f0b

UnknownText_0x79f0b: ; 0x79f0b
	text "C'est l'OEUF #"
	line "MON étudié par"
	cont "le PROF.ORME."
	done
; 0x79f38

UnknownText_0x79f38: ; 0x79f38
	text "<PLAY_G>, je veux"
	line "que tu ais ceci"
	cont "pour ta course."
	done
; 0x79f65

UnknownText_0x79f65: ; 0x79f65
	text "Nous ne sommes que"
	line "deux donc nous"
	cont "sommes toujours"
	cont "occupés."
	done
; 0x79f95

UnknownText_0x79f95: ; 0x79f95
	text "Il y a eu un gros"
	line "bruit dehors<...>"

	para "Quand on est allé"
	line "voir, un #MON"
	cont "à été volé"

	para "Comment quelqu'un"
	line "peut-il faire ça?"

	text "<...>soupir<...> Ce"
	line "#MON volé."

	para "Je me demande"
	line "comment il va."

	para "On dit qu'un #-"
	line "MON élevé par une"
	cont "mauvaise personne"
	cont "devient aussi"
	cont "mauvais."
	done
; 0x7a078

UnknownText_0x7a078: ; 0x7a078
	text "<PLAY_G>!"

	para "Utilise ça dans"
	line "ta quête!"
	done
; 0x7a09a

UnknownText_0x7a09a: ; 0x7a09a
	text "Elles sont mieux"
	line "que les #BALLS"
	cont "classique."

	para "C'est plus facile"
	line "d'attraper des"
	cont "#MON avec."
	done
; 0x7a0f0

UnknownText_0x7a0f0: ; 0x7a0f0
	text "J'ai entendu qu'un"
	line "#MON à été"
	cont "volé<...>"

	para "Je récolte des in-"
	line "formations auprès"
	cont "du PROF.ORME."

	para "Apparemment, c'est"
	line "un jeune homme aux"
	cont "longs cheveux"
	cont "rouges."

	para "Quoi?"

	para "Tu as combattu un"
	line "dresseur comme ça?"

	para "Tu as obtenu"
	line "son nom?"
	done
; 0x7a1c0

UnknownText_0x7a1c0: ; 0x7a1c0
	text "OK! Donc il"
	line "s'appelle <RIVAL>."

	para "Merci de nous"
	line "aider dans notre"
	cont "enquête!"
	done
; 0x7a1fd

UnknownText_0x7a1fd: ; 0x7a1fd
	text "La fenêtre est"
	line "ouverte."

	para "Il y a une légère"
	line "brise de vent."
	done
; 0x7a231

UnknownText_0x7a231: ; 0x7a231
	text "Il est entré par"
	line "ici!"
	done
; 0x7a24c

UnknownText_0x7a24c: ; 0x7a24c
	text "<PLAYER> ouvre un"
	line "livre."

	para "Astuce de"
	line "voyage 1:"

	para "Appuie sur START"
	line "pour ouvrir le"
	cont "MENU."
	done
; 0x7a28a

UnknownText_0x7a28a: ; 0x7a28a
	text "<PLAYER> ouvre un"
	line "livre."

	para "Astuce de"
	line "voyage 2:"

	para "Enregistrez vote"
	line "progression avec"
	cont "SAUVER."
	done
; 0x7a2c6

UnknownText_0x7a2c6: ; 0x7a2c6
	text "<PLAYER> ouvre un"
	line "livre."

	para "Astuce de"
	line "voyage 3:"

	para "Ouvre votre SAC et"
	line "appuyez sur SELECT"
	cont "pour le réorgani-"
	cont "ser."
	done
; 0x7a315

UnknownText_0x7a315: ; 0x7a315
	text "<PLAYER> ouvre un"
	line "livre."

	para "Astuce de"
	line "voyage 4:"


	para "Vérifiez vos CAPA-"
	line "CITES. Appuyez sur"
	cont "A pour changer l'"
	cont "ordre des"
	cont "capacités."
	done
; 0x7a370

UnknownText_0x7a370: ; 0x7a370
	text "L'emballage du"
	line "repas du PROF.ORME"
	cont "est là-dedans<...>"
	done
; 0x7a3a6

UnknownText_0x7a3a6: ; 0x7a3a6
	text "OBSERVATIONS SUR"
	line "L'EVOLUTION DES"
	cont "#MON"

	para "<...>est écrit sur"
	line "l'écran<...>"

	para "Déconnecter le"
	line "PROF.ORME et uti-"
	cont "liser le PC?"
	done
; 0x7a3de

ElmsLabNoRoomText:
	text "Plus de place dans"
	line "la boîte ou le PC."
	done

ElmsLab_MapEventHeader: ; 0x7a3de
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $b, $4, 1, GROUP_NEW_BARK_TOWN, MAP_NEW_BARK_TOWN
	warp_def $b, $5, 1, GROUP_NEW_BARK_TOWN, MAP_NEW_BARK_TOWN

	; xy triggers
	db 8
	xy_trigger 1, $6, $4, $0, LabTryToLeaveScript, $0, $0
	xy_trigger 1, $6, $5, $0, LabTryToLeaveScript, $0, $0
	xy_trigger 3, $5, $4, $0, MeetCopScript, $0, $0
	xy_trigger 3, $5, $5, $0, UnknownScript_0x78f12, $0, $0
	xy_trigger 5, $8, $4, $0, UnknownScript_0x78e7f, $0, $0
	xy_trigger 5, $8, $5, $0, UnknownScript_0x78e8e, $0, $0
	xy_trigger 6, $8, $4, $0, UnknownScript_0x78ead, $0, $0
	xy_trigger 6, $8, $5, $0, UnknownScript_0x78ebc, $0, $0

	; signposts
	db 16
	signpost 1, 2, $0, MapElmsLabSignpost0Script
	signpost 1, 6, $0, MapElmsLabSignpost12Script
	signpost 1, 7, $0, MapElmsLabSignpost12Script
	signpost 1, 8, $0, MapElmsLabSignpost12Script
	signpost 1, 9, $0, MapElmsLabSignpost12Script
	signpost 7, 0, $0, MapElmsLabSignpost5Script
	signpost 7, 1, $0, MapElmsLabSignpost6Script
	signpost 7, 2, $0, MapElmsLabSignpost7Script
	signpost 7, 3, $0, MapElmsLabSignpost8Script
	signpost 7, 6, $0, MapElmsLabSignpost12Script
	signpost 7, 7, $0, MapElmsLabSignpost12Script
	signpost 7, 8, $0, MapElmsLabSignpost12Script
	signpost 7, 9, $0, MapElmsLabSignpost12Script
	signpost 3, 9, $0, MapElmsLabSignpost13Script
	signpost 0, 5, $0, MapElmsLabSignpost14Script
	signpost 5, 3, $2, MapElmsLabSignpost15Script

	; people-events
	db 6
	person_event SPRITE_ELM, 6, 9, $6, 0, 0, -1, -1, 0, 0, 0, ProfElmScript, -1
	person_event SPRITE_SCIENTIST, 13, 6, $3, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ElmsAideScript, EVENT_ELMS_AIDE_IN_LAB
	person_event SPRITE_POKE_BALL, 7, 10, $1, 0, 0, -1, -1, 0, 0, 0, CyndaquilPokeBallScript, EVENT_CYNDAQUIL_POKEBALL
	person_event SPRITE_POKE_BALL, 7, 11, $1, 0, 0, -1, -1, 0, 0, 0, TotodilePokeBallScript, EVENT_TOTODILE_POKEBALL
	person_event SPRITE_POKE_BALL, 7, 12, $1, 0, 0, -1, -1, 0, 0, 0, ChikoritaPokeBallScript, EVENT_CHIKORITA_POKEBALL
	person_event SPRITE_OFFICER, 7, 9, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, CopScript, EVENT_OFFICER_IN_ELMS_LAB
; 0x7a4cc

