Route31_MapScriptHeader: ; 0x1a5437
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 5, UnknownScript_0x1a543c
; 0x1a543c

UnknownScript_0x1a543c: ; 0x1a543c
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iffalse UnknownScript_0x1a5443
	return
; 0x1a5443

UnknownScript_0x1a5443: ; 0x1a5443
	specialphonecall $7
	return
; 0x1a5447

TrainerBug_catcherWade1: ; 0x1a5447
	; bit/flag number
	dw $53b

	; trainer group && trainer id
	db BUG_CATCHER, WADE1

	; text when seen
	dw Bug_catcherWade1SeenText

	; text when trainer beaten
	dw Bug_catcherWade1BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bug_catcherWade1Script
; 0x1a5453

Bug_catcherWade1Script: ; 0x1a5453
	writecode VAR_CALLERID, $10
	talkaftercancel
	loadfont
	checkflag ENGINE_WADE
	iftrue UnknownScript_0x1a5493
	checkflag ENGINE_WADE_HAS_ITEM
	iftrue UnknownScript_0x1a5507
	checkcellnum $10
	iftrue UnknownScript_0x1a5558
	checkevent EVENT_ROUTE_31_275
	iftrue UnknownScript_0x1a547c
	writetext UnknownText_0x1a5671
	waitbutton
	setevent EVENT_ROUTE_31_275
	scall UnknownScript_0x1a554c
	jump UnknownScript_0x1a547f
; 0x1a547c

UnknownScript_0x1a547c: ; 0x1a547c
	scall UnknownScript_0x1a5550
UnknownScript_0x1a547f: ; 0x1a547f
	askforphonenumber $10
	if_equal $1, UnknownScript_0x1a5560
	if_equal $2, UnknownScript_0x1a555c
	trainertotext BUG_CATCHER, WADE1, $0
	scall UnknownScript_0x1a5554
	jump UnknownScript_0x1a5558
; 0x1a5493

UnknownScript_0x1a5493: ; 0x1a5493
	scall UnknownScript_0x1a5564
	winlosstext Bug_catcherWade1BeatenText, $0000
	copybytetovar wd9fa
	if_equal $4, UnknownScript_0x1a54b2
	if_equal $3, UnknownScript_0x1a54b8
	if_equal $2, UnknownScript_0x1a54be
	if_equal $1, UnknownScript_0x1a54c4
	if_equal $0, UnknownScript_0x1a54ca
UnknownScript_0x1a54b2: ; 0x1a54b2
	checkevent EVENT_FIRST_TIME_HALL_OF_FAME
	iftrue UnknownScript_0x1a54fe
UnknownScript_0x1a54b8: ; 0x1a54b8
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue UnknownScript_0x1a54f1
UnknownScript_0x1a54be: ; 0x1a54be
	checkflag ENGINE_FLYPOINT_MAHOGANY
	iftrue UnknownScript_0x1a54e4
UnknownScript_0x1a54c4: ; 0x1a54c4
	checkflag ENGINE_FLYPOINT_GOLDENROD
	iftrue UnknownScript_0x1a54d7
UnknownScript_0x1a54ca: ; 0x1a54ca
	loadtrainer BUG_CATCHER, WADE1
	startbattle
	returnafterbattle
	loadvar wd9fa, $1
	clearflag ENGINE_WADE
	end
; 0x1a54d7

UnknownScript_0x1a54d7: ; 0x1a54d7
	loadtrainer BUG_CATCHER, WADE2
	startbattle
	returnafterbattle
	loadvar wd9fa, $2
	clearflag ENGINE_WADE
	end
; 0x1a54e4

UnknownScript_0x1a54e4: ; 0x1a54e4
	loadtrainer BUG_CATCHER, WADE3
	startbattle
	returnafterbattle
	loadvar wd9fa, $3
	clearflag ENGINE_WADE
	end
; 0x1a54f1

UnknownScript_0x1a54f1: ; 0x1a54f1
	loadtrainer BUG_CATCHER, WADE4
	startbattle
	returnafterbattle
	loadvar wd9fa, $4
	clearflag ENGINE_WADE
	end
; 0x1a54fe

UnknownScript_0x1a54fe: ; 0x1a54fe
	loadtrainer BUG_CATCHER, WADE5
	startbattle
	returnafterbattle
	clearflag ENGINE_WADE
	end
; 0x1a5507

UnknownScript_0x1a5507: ; 0x1a5507
	scall UnknownScript_0x1a5568
	checkevent EVENT_WADE_HAS_BERRY
	iftrue UnknownScript_0x1a5522
	checkevent EVENT_WADE_HAS_PSNCUREBERRY
	iftrue UnknownScript_0x1a552b
	checkevent EVENT_WADE_HAS_PRZCUREBERRY
	iftrue UnknownScript_0x1a5534
	checkevent EVENT_WADE_HAS_BITTER_BERRY
	iftrue UnknownScript_0x1a553d
UnknownScript_0x1a5522: ; 0x1a5522
	verbosegiveitem BERRY, 1
	iffalse UnknownScript_0x1a5549
	jump UnknownScript_0x1a5543
; 0x1a552b

UnknownScript_0x1a552b: ; 0x1a552b
	verbosegiveitem PSNCUREBERRY, 1
	iffalse UnknownScript_0x1a5549
	jump UnknownScript_0x1a5543
; 0x1a5534

UnknownScript_0x1a5534: ; 0x1a5534
	verbosegiveitem PRZCUREBERRY, 1
	iffalse UnknownScript_0x1a5549
	jump UnknownScript_0x1a5543
; 0x1a553d

UnknownScript_0x1a553d: ; 0x1a553d
	verbosegiveitem BITTER_BERRY, 1
	iffalse UnknownScript_0x1a5549
UnknownScript_0x1a5543: ; 0x1a5543
	clearflag ENGINE_WADE_HAS_ITEM
	jump UnknownScript_0x1a5558
; 0x1a5549

UnknownScript_0x1a5549: ; 0x1a5549
	jump UnknownScript_0x1a556c
; 0x1a554c

UnknownScript_0x1a554c: ; 0x1a554c
	jumpstd asknumber1m
	end
; 0x1a5550

UnknownScript_0x1a5550: ; 0x1a5550
	jumpstd asknumber2m
	end
; 0x1a5554

UnknownScript_0x1a5554: ; 0x1a5554
	jumpstd registerednumberm
	end
; 0x1a5558

UnknownScript_0x1a5558: ; 0x1a5558
	jumpstd numberacceptedm
	end
; 0x1a555c

UnknownScript_0x1a555c: ; 0x1a555c
	jumpstd numberdeclinedm
	end
; 0x1a5560

UnknownScript_0x1a5560: ; 0x1a5560
	jumpstd phonefullm
	end
; 0x1a5564

UnknownScript_0x1a5564: ; 0x1a5564
	jumpstd rematchm
	end
; 0x1a5568

UnknownScript_0x1a5568: ; 0x1a5568
	jumpstd giftm
	end
; 0x1a556c

UnknownScript_0x1a556c: ; 0x1a556c
	jumpstd packfullm
	end
; 0x1a5570

FisherScript_0x1a5570: ; 0x1a5570
	faceplayer
	loadfont
	checkevent EVENT_GOT_TM50_NIGHTMARE
	iftrue UnknownScript_0x1a55af
	checkevent EVENT_GOT_KENYA
	iftrue UnknownScript_0x1a5584
	writetext UnknownText_0x1a56d9
	waitbutton
	closetext
	end
; 0x1a5584

UnknownScript_0x1a5584: ; 0x1a5584
	writetext UnknownText_0x1a5761
	buttonsound
	checkpokeitem ReceivedSpearowMailText
	if_equal $0, UnknownScript_0x1a55b5
	if_equal $2, UnknownScript_0x1a55c1
	if_equal $3, UnknownScript_0x1a55bb
	if_equal $4, UnknownScript_0x1a55c7
	if_equal $5, NotKenyaScript
	writetext UnknownText_0x1a5790
	buttonsound
	writetext UnknownText_0x1a57ba
	buttonsound
	setevent EVENT_GAVE_KENYA
	verbosegiveitem TM_SUBSTITUTE, 1
	iffalse UnknownScript_0x1a55b3
	setevent EVENT_GOT_TM50_NIGHTMARE
UnknownScript_0x1a55af: ; 0x1a55af
	writetext UnknownText_0x1a5896
	waitbutton
UnknownScript_0x1a55b3: ; 0x1a55b3
	closetext
	end
; 0x1a55b5

NotKenyaScript:
	writetext NotKenyaText
	waitbutton
	closetext
	end

UnknownScript_0x1a55b5: ; 0x1a55b5
	writetext UnknownText_0x1a5921
	waitbutton
	closetext
	end
; 0x1a55bb

UnknownScript_0x1a55bb: ; 0x1a55bb
	writetext UnknownText_0x1a5939
	waitbutton
	closetext
	end
; 0x1a55c1

UnknownScript_0x1a55c1: ; 0x1a55c1
	writetext UnknownText_0x1a5972
	waitbutton
	closetext
	end
; 0x1a55c7

UnknownScript_0x1a55c7: ; 0x1a55c7
	writetext UnknownText_0x1a5991
	waitbutton
	closetext
	end

ReceivedSpearowMailText: ; 0x1a55cd
	db   "L'ANTRE NOIR mène"
	next "à une autre route@"

YoungsterScript_0x1a55ed: ; 0x1a55ed
	jumptextfaceplayer UnknownText_0x1a59d5
; 0x1a55f0

MapRoute31Signpost0Script: ; 0x1a55f0
	jumptext UnknownText_0x1a5a45
; 0x1a55f3

MapRoute31Signpost1Script: ; 0x1a55f3
	jumptext UnknownText_0x1a5a6e
; 0x1a55f6

CooltrainerMScript_0x1a55f6: ; 0x1a55f6
	jumptextfaceplayer UnknownText_0x1a55ff
; 0x1a55f9

FruitTreeScript_0x1a55f9: ; 0x1a55f9
	fruittree $7
; 0x1a55fb

ItemFragment_0x1a55fb: ; 0x1a55fb
	db SUPER_POTION, 1
; 0x1a55fd

ItemFragment_0x1a55fd: ; 0x1a55fd
	db GREAT_BALL, 1
; 0x1a55ff

UnknownText_0x1a55ff: ; 0x1a55ff
	text "L'ANTRE NOIR<...>"

	para "Si un #MON pou-"
	line "vait l'éclairer,"
	cont "je pourrais"
	cont "l'explorer."
	done
; 0x1a5635

Bug_catcherWade1SeenText: ; 0x1a5635
	text "J'ai capturer"
	line "plein de #MON."
	cont "Battons-nous!"
	done
; 0x1a5668

Bug_catcherWade1BeatenText: ; 0x1a5668
	text "Ohhhhh<...>"
	done
; 0x1a5671

UnknownText_0x1a5671: ; 0x1a5671
	text "Tu peux capturer"
	line "des #MON même"

	para "si tu en as déjà"
	line "six."

	para "Le nouveau #MON"
	line "sera envoyé dans"
	cont "la boîte."
	done
; 0x1a56d9

UnknownText_0x1a56d9: ; 0x1a56d9
	text "<...> Hnuurg<...> Hein?"

	para "J'ai trop marché"
	line "pour trouver des"
	cont "#MON."

	para "J'ai mal aux pieds"
	line "et j'ai sommeil<...>"

	para "Si j'étais un"
	line "#MON, je serais"
	cont "facile à capturer<...>"

	para "<...><...><...>Zzzzz<...><...><...>"
	done
; 0x1a5761

UnknownText_0x1a5761: ; 0x1a5761
	text "<...>Zzzz<...> Hein?"

	para "C'est quoi? Une"
	line "LETTRE pour moi?"
	done
; 0x1a5790

UnknownText_0x1a5790: ; 0x1a5790
	text "<PLAYER> remet le"
	line "#MON tenant"
	cont "la LETTRE."
	done
; 0x1a57ba

UnknownText_0x1a57ba: ; 0x1a57ba
	text "Voyons<...>"

	para "L'ANTRE NOIR mène"
	line "à une autre route>...>"

	para "C'est bon à"
	line "savoir."

	para "Merci de l'avoir"
	line "apporté."

	para "Mon ami est un"
	line "gars cool et t'es"
	cont "chic aussi!"

	para "J'aimerais te"
	line "donner quelque"
	cont "chose en retour."

	para "Je sais! Tu peux"
	line "prendre ça!"
	done
; 0x1a5896

UnknownText_0x1a5896: ; 0x1a5896
	text "CT50 est CLONAGE."

	para "Ca laisse une"
	line "poupée combattre"
	para "un #MON et l'"
	line "empêche d'être K.O"
	para "ou de subir un"
	line "statut."

	para "C'est sympa qu'il"
	line "y ait des gens"
	cont "pour faire mon"
	cont "travail."
	done
; 0x1a5921

UnknownText_0x1a5921: ; 0x1a5921
	text "Cette LETTRE n'est"
	line "pas pour moi."
	done
; 0x1a5939

UnknownText_0x1a5939: ; 0x1a5939
	text "Pourquoi ce #-"
	line "MON est spécial?"

	para "Il n'a pas de"
	line "LETTRE."
	done
; 0x1a5972

UnknownText_0x1a5972: ; 0x1a5972
	text "Quoi? Tu ne veux"
	line "rien?"
	done
; 0x1a5991

UnknownText_0x1a5991: ; 0x1a5991
	text "Si je te prends"
	line "ce #MON,"

	para "tu vas utiliser"
	line "quoi en combat?"
	done
; 0x1a59d5

NotKenyaText:
	text "On ne dirait pas"
	line "le bon #MON."
	done

UnknownText_0x1a59d5: ; 0x1a59d5
	text "J'ai trouvé un bon"
	line "#MON dans"
	cont "l'ANTRE NOIR."

	para "Je vais l'élever"
	line "pour battre"
	cont "ALBERT."

	para "C'est le CHAMPION"
	line "de l'ARENE de"
	cont "MAUVILLE."
	done
; 0x1a5a45

UnknownText_0x1a5a45: ; 0x1a5a45
	text "ROUTE 31"

	para "MAUVILLE -"
	line "VILLE GRIOTTE"
	done
; 0x1a5a6e

UnknownText_0x1a5a6e: ; 0x1a5a6e
	text "ANTRE NOIR"
	done
; 0x1a5a79

Route31_MapEventHeader: ; 0x1a5a79
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $6, $4, 3, GROUP_ROUTE_31_VIOLET_GATE, MAP_ROUTE_31_VIOLET_GATE
	warp_def $7, $4, 4, GROUP_ROUTE_31_VIOLET_GATE, MAP_ROUTE_31_VIOLET_GATE
	warp_def $5, $22, 1, GROUP_DARK_CAVE_VIOLET_ENTRANCE, MAP_DARK_CAVE_VIOLET_ENTRANCE

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 5, 7, $0, MapRoute31Signpost0Script
	signpost 5, 31, $0, MapRoute31Signpost1Script

	; people-events
	db 7
	person_event SPRITE_FISHER, 11, 21, $6, 0, 0, -1, -1, 0, 0, 0, FisherScript_0x1a5570, -1
	person_event SPRITE_YOUNGSTER, 9, 13, $2, 1, 1, -1, -1, 0, 0, 0, YoungsterScript_0x1a55ed, -1
	person_event SPRITE_BUG_CATCHER, 17, 25, $8, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 5, TrainerBug_catcherWade1, -1
	person_event SPRITE_COOLTRAINER_M, 12, 37, $2, 1, 1, -1, -1, 0, 0, 0, CooltrainerMScript_0x1a55f6, -1
	person_event SPRITE_FRUIT_TREE, 11, 20, $1, 0, 0, -1, -1, 0, 0, 0, FruitTreeScript_0x1a55f9, -1
	person_event SPRITE_POKE_BALL, 9, 33, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x1a55fb, EVENT_ITEM_ROUTE_31_POTION
	person_event SPRITE_POKE_BALL, 19, 23, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x1a55fd, EVENT_ITEM_ROUTE_31_POKEBALL
; 0x1a5af3

