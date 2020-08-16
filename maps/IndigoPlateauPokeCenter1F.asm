IndigoPlateauPokeCenter1F_MapScriptHeader: ; 0x180000
	; trigger count
	db 1

	; triggers
	dw UnknownScript_0x180009, $0000

	; callback count
	db 1

	; callbacks

	dbw 5, UnknownScript_0x18000a
; 0x180009

UnknownScript_0x180009: ; 0x180009
	end
; 0x18000a

UnknownScript_0x18000a: ; 0x18000a
	domaptrigger GROUP_WILLS_ROOM, MAP_WILLS_ROOM, $0
	domaptrigger GROUP_KOGAS_ROOM, MAP_KOGAS_ROOM, $0
	domaptrigger GROUP_BRUNOS_ROOM, MAP_BRUNOS_ROOM, $0
	domaptrigger GROUP_KARENS_ROOM, MAP_KARENS_ROOM, $0
	domaptrigger GROUP_LANCES_ROOM, MAP_LANCES_ROOM, $0
	domaptrigger GROUP_HALL_OF_FAME, MAP_HALL_OF_FAME, $0
	domaptrigger GROUP_HALLWAY_OF_FAME, MAP_HALLWAY_OF_FAME, $0
	clearevent EVENT_INDIGO_PLATEAU_ENTRANCE_CLOSED
	clearevent EVENT_WILLS_ROOM_EXIT_OPEN
	clearevent EVENT_WILLS_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_KOGAS_ROOM_EXIT_OPEN
	clearevent EVENT_KOGAS_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_BRUNOS_ROOM_EXIT_OPEN
	clearevent EVENT_KARENS_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_KARENS_ROOM_EXIT_OPEN
	clearevent EVENT_LANCES_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_LANCES_ROOM_EXIT_OPEN
	clearevent EVENT_BEAT_ELITE_4_WILL
	clearevent EVENT_BEAT_ELITE_4_KOGA
	clearevent EVENT_BEAT_ELITE_4_BRUNO
	clearevent EVENT_BEAT_ELITE_4_KAREN
	clearevent EVENT_BEAT_CHAMPION_LANCE
	setevent EVENT_MARY_AND_OAK_IN_LANCES_ROOM
	return
; 0x180053

UnknownScript_0x180053: ; 0x180053
	checkevent EVENT_BEAT_RIVAL_IN_MT_MOON
	iffalse UnknownScript_0x18012b
	checkflag ENGINE_INDIGO_PLATEAU_RIVAL_FIGHT
	iftrue UnknownScript_0x18012b
	checkevent EVENT_BEAT_INDIGO_RIVAL_AT_LEAST_ONCE
	iffalse SkipDayCheck
	checkcode VAR_WEEKDAY
	if_equal SUNDAY, UnknownScript_0x18012b
	if_equal TUESDAY, UnknownScript_0x18012b
	if_equal THURSDAY, UnknownScript_0x18012b
	if_equal FRIDAY, UnknownScript_0x18012b
	if_equal SATURDAY, UnknownScript_0x18012b
SkipDayCheck:
	moveperson $5, $11, $9
	appear $5
	spriteface $0, $0
	showemote $0, $0, 15
	special Functionc48f
	pause 15
	applymovement $5, MovementData_0x180164
	playmusic MUSIC_RIVAL_ENCOUNTER
	spriteface $0, $3
	jump UnknownScript_0x1800ce
; 0x180094

UnknownScript_0x180094: ; 0x180094
	checkevent EVENT_BEAT_RIVAL_IN_MT_MOON
	iffalse UnknownScript_0x18012b
	checkflag ENGINE_INDIGO_PLATEAU_RIVAL_FIGHT
	iftrue UnknownScript_0x18012b
	checkevent EVENT_BEAT_INDIGO_RIVAL_AT_LEAST_ONCE
	iffalse SkipDayCheck2
	checkcode VAR_WEEKDAY
	if_equal SUNDAY, UnknownScript_0x18012b
	if_equal TUESDAY, UnknownScript_0x18012b
	if_equal THURSDAY, UnknownScript_0x18012b
	if_equal FRIDAY, UnknownScript_0x18012b
	if_equal SATURDAY, UnknownScript_0x18012b
SkipDayCheck2:
	appear $5
	spriteface $0, $0
	showemote $0, $0, 15
	special Functionc48f
	pause 15
	applymovement $5, MovementData_0x18016b
	playmusic MUSIC_RIVAL_ENCOUNTER
	spriteface $0, $2
UnknownScript_0x1800ce: ; 0x1800ce
	loadfont
	writetext UnknownText_0x1801f5
	waitbutton
	closetext
	setevent EVENT_SILVER_IN_INDIGO_PLATEAU_POKECENTER
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue UnknownScript_0x1800f3
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue UnknownScript_0x180103
	winlosstext UnknownText_0x180295, UnknownText_0x1802fd
	setlasttalked $5
	loadtrainer RIVAL2, 6
	startbattle
	reloadmapmusic
	returnafterbattle
	jump UnknownScript_0x180113
; 0x1800f3

UnknownScript_0x1800f3: ; 0x1800f3
	winlosstext UnknownText_0x180295, UnknownText_0x1802fd
	setlasttalked $5
	loadtrainer RIVAL2, 4
	startbattle
	reloadmapmusic
	returnafterbattle
	jump UnknownScript_0x180113
; 0x180103

UnknownScript_0x180103: ; 0x180103
	winlosstext UnknownText_0x180295, UnknownText_0x1802fd
	setlasttalked $5
	loadtrainer RIVAL2, 5
	startbattle
	reloadmapmusic
	returnafterbattle
	jump UnknownScript_0x180113
; 0x180113

UnknownScript_0x180113: ; 0x180113
	special DeleteSavedMusic
	playmusic MUSIC_RIVAL_AFTER
	loadfont
	writetext UnknownText_0x1802a4
	waitbutton
	closetext
	spriteface $0, $0
	applymovement $5, MovementData_0x180172
	disappear $5
	dotrigger $0
	playmapmusic
	setflag ENGINE_INDIGO_PLATEAU_RIVAL_FIGHT
	setevent EVENT_BEAT_INDIGO_RIVAL_AT_LEAST_ONCE
UnknownScript_0x18012b: ; 0x18012b
	end
; 0x18012c

NurseScript_0x18012c: ; 0x18012c
	jumpstd pokecenternurse
; 0x18012f

ClerkScript_0x18012f: ; 0x18012f
	loadfont
	pokemart $0, $0020
	closetext
	end
; 0x180136

CooltrainerMScript_0x180136: ; 0x180136
	jumptextfaceplayer UnknownText_0x180178
; 0x180139

GrampsScript_0x180139: ; 0x180139
	faceplayer
	loadfont
	writetext UnknownText_0x180335
	yesorno
	iffalse UnknownScript_0x180154
	writetext UnknownText_0x1803e7
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special Function8c084
	waitsfx
	warp GROUP_NEW_BARK_TOWN, MAP_NEW_BARK_TOWN, $d, $6
	end
; 0x180154

UnknownScript_0x180154: ; 0x180154
	writetext UnknownText_0x180411
	waitbutton
	closetext
	end
; 0x18015a

JynxScript_0x18015a: ; 0x18015a
	loadfont
	writetext UnknownText_0x180433
	cry ABRA
	waitbutton
	closetext
	end
; 0x180164

MovementData_0x180164: ; 0x180164
	step_up
	step_up
	step_up
	step_up
	step_up
	turn_head_left
	step_end
; 0x18016b

MovementData_0x18016b: ; 0x18016b
	step_up
	step_up
	step_up
	step_up
	step_up
	turn_head_right
	step_end
; 0x180172

MovementData_0x180172: ; 0x180172
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end
; 0x180178

UnknownText_0x180178: ; 0x180178
	text "Tu rencontreras le"
	line "CONSEIL des 4 ici,"

	para "à la LIGUE #-"
	line "MON."

	para "Tu devras battre"
	line "les 4 chefs d'af-"

	para "filé, ou tu devras"
	line "tout recommencer."
	done
; 0x1801f5

UnknownText_0x1801f5: ; 0x1801f5
	text "Minute."

	para "Tu vas relever le"
	line "défi de la LIGUE"
	cont "#MON?"

	para "Hors de question!"

	para "Mes #MON sur-"
	line "entraînés vont te"

	para "réduire en"
	line "poussière."

	para "<PLAYER>!"
	line "Je te défie!"
	done
; 0x180295

UnknownText_0x180295: ; 0x180295
	text "<...>"

	para "D'accord, j'ai"
	line "perdu<...>"
	done
; 0x1802a4

UnknownText_0x1802a4: ; 0x1802a4
	text "<...>Bon sang<...> Je"
	line "n'arrive toujours"
	cont "pas à gagner<...>"

	para "Je<...> Je dois plus"
	line "penser à mes"
	cont "#MON<...>"

	para "Pff! T'as pas"
	line "intérêt à perdre!"
	done
; 0x1802fd

UnknownText_0x1802fd: ; 0x1802fd
	text "<...>"

	para "Avec mes parte-"
	line "naires<...>"

	para "Je deviendrais"
	line "le MAITRE!"
	done
; 0x180335

UnknownText_0x180335: ; 0x180335
	text "Ah! Tu défies le"
	line "CONSEIL des 4?"

	para "Tu crois avoir"
	line "les épaules?"

	para "Si tu veux encore"
	line "t'entraîner, mon"
	cont "ABRA peut t'aider."

	para "Il peut te TELE-"
	line "PORTER chez toi."

	para "Veux-tu retourner"
	line "chez toi?"
	done
; 0x1803e7

UnknownText_0x1803e7: ; 0x1803e7
	text "OK, OK. Pense fort"
	line "à ta maison."
	done
; 0x180411

UnknownText_0x180411: ; 0x180411
	text "OK, OK. Bonne"
	line "chance alors!"
	done
; 0x180433

UnknownText_0x180433: ; 0x180433
	text "ABRA: Aabra<...>"
	done
; 0x180441

IndigoPlateauPokeCenter1F_MapEventHeader: ; 0x180441
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $d, $5, 1, GROUP_ROUTE_23, MAP_ROUTE_23
	warp_def $d, $6, 2, GROUP_ROUTE_23, MAP_ROUTE_23
	warp_def $d, $0, 1, GROUP_POKECENTER_2F, MAP_POKECENTER_2F
	warp_def $3, $e, 1, GROUP_WILLS_ROOM, MAP_WILLS_ROOM

	; xy triggers
	db 2
	xy_trigger 0, $4, $10, $0, UnknownScript_0x180053, $0, $0
	xy_trigger 0, $4, $11, $0, UnknownScript_0x180094, $0, $0

	; signposts
	db 0

	; people-events
	db 6
	person_event SPRITE_NURSE, 11, 7, $6, 0, 0, -1, -1, 0, 0, 0, NurseScript_0x18012c, -1
	person_event SPRITE_CLERK, 11, 15, $6, 0, 0, -1, -1, 0, 0, 0, ClerkScript_0x18012f, -1
	person_event SPRITE_COOLTRAINER_M, 15, 15, $2, 2, 2, -1, -1, 0, 0, 0, CooltrainerMScript_0x180136, -1
	person_event SPRITE_SILVER, 13, 20, $7, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_SILVER_IN_INDIGO_PLATEAU_POKECENTER
	person_event SPRITE_GRAMPS, 13, 5, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, GrampsScript_0x180139, EVENT_GRAMPS_WITH_ABRA_IN_INDIGO_PLATEAU_POKECENTER
	person_event SPRITE_JYNX, 13, 4, $16, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, JynxScript_0x18015a, EVENT_GRAMPS_WITH_ABRA_IN_INDIGO_PLATEAU_POKECENTER
; 0x1804b9

