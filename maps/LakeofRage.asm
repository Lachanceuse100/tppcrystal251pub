LakeofRage_MapScriptHeader: ; 0x70000
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x70010, $0000
	dw UnknownScript_0x70011, $0000

	; callback count
	db 2

	; callbacks

	dbw 5, UnknownScript_0x70012

	dbw 2, WesleyCallback

UnknownScript_0x70010: ; 0x70010
	end
; 0x70011

UnknownScript_0x70011: ; 0x70011
	end
; 0x70012

UnknownScript_0x70012: ; 0x70012
	setflag ENGINE_FLYPOINT_LAKE_OF_RAGE
	return
; 0x70016

WesleyCallback:
	checkcode VAR_WEEKDAY
	if_equal WEDNESDAY, .WesleyAppears
	disappear $b
	return

.WesleyAppears
	appear $b
	return

LanceScript_0x70022: ; 0x70022
	checkevent EVENT_REFUSED_TO_HELP_LANCE_AT_LAKE_OF_RAGE
	iftrue UnknownScript_0x70057
	loadfont
	writetext UnknownText_0x70157
	buttonsound
	faceplayer
	writetext UnknownText_0x701b4
	yesorno
	iffalse UnknownScript_0x7004e
UnknownScript_0x70035: ; 0x70035
	writetext UnknownText_0x702c6
	waitbutton
	closetext
	playsound SFX_WARP_TO
	applymovement $2, MovementData_0x70155
	disappear $2
	clearevent EVENT_LANCE_IN_MAHOGANY_MART
	setevent EVENT_DECIDED_TO_HELP_LANCE
	domaptrigger GROUP_MAHOGANY_MART_1F, MAP_MAHOGANY_MART_1F, $1
	end
; 0x7004e

UnknownScript_0x7004e: ; 0x7004e
	writetext UnknownText_0x70371
	waitbutton
	closetext
	setevent EVENT_REFUSED_TO_HELP_LANCE_AT_LAKE_OF_RAGE
	end
; 0x70057

UnknownScript_0x70057: ; 0x70057
	faceplayer
	loadfont
	writetext UnknownText_0x703a5
	yesorno
	iffalse UnknownScript_0x7004e
	jump UnknownScript_0x70035
; 0x70063

ChargingGyarados:
	writetext RIPGrampsText
	waitbutton
	faceperson $0, $a
GyaradosScript_0x70063: ; 0x70063
	loadfont
	writetext UnknownText_0x703cb
	pause 15
	cry GYARADOS
	closetext
	loadpokedata GYARADOS, 40
	writecode VAR_BATTLETYPE, BATTLETYPE_SHINY
	startbattle
	if_equal $1, UnknownScript_0x7007a
	disappear $a
UnknownScript_0x7007a: ; 0x7007a
	returnafterbattle
	loadfont
	giveitem RED_SCALE, $1
	waitsfx
	writetext UnknownText_0x703df
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	dotrigger $0
	appear $2
	end
; 0x7008e

GrampsScript_0x7008e: ; 0x7008e
	faceplayer
	loadfont
	checkevent EVENT_RED_GYARADOS
	iffalse ChargingGyarados
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue UnknownScript_0x7009c
	writetext UnknownText_0x703f8
	waitbutton
	closetext
	end
; 0x7009c

UnknownScript_0x7009c: ; 0x7009c
	writetext UnknownText_0x70421
	waitbutton
	closetext
	end
; 0x700a2

SuperNerdScript_0x700a2: ; 0x700a2
	jumptextfaceplayer UnknownText_0x70444
; 0x700a5

CooltrainerFScript_0x700a5: ; 0x700a5
	faceplayer
	loadfont
	writetext UnknownText_0x704bb
	checkevent EVENT_RED_GYARADOS
	iftrue .finished_event
	buttonsound
	writetext UnknownText_0x704bb_2
.finished_event
	waitbutton
	closetext
	end
; 0x700a8

MapLakeofRageSignpost0Script: ; 0x700a8
	jumptext UnknownText_0x708d7
; 0x700ab

MapLakeofRageSignpost1Script: ; 0x700ab
	loadfont
	writetext UnknownText_0x70903
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue UnknownScript_0x700b8
	waitbutton
	closetext
	end
; 0x700b8

UnknownScript_0x700b8: ; 0x700b8
	buttonsound
	special MagikarpHouseRecordSign
	closetext
	end
; 0x700be

TrainerFisherAndre: ; 0x700be
	; bit/flag number
	dw $455

	; trainer group && trainer id
	db FISHER, ANDRE

	; text when seen
	dw FisherAndreSeenText

	; text when trainer beaten
	dw FisherAndreBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw FisherAndreScript
; 0x700ca

FisherAndreScript: ; 0x700ca
	talkaftercancel
	loadfont
	writetext UnknownText_0x7058f
	waitbutton
	closetext
	end
; 0x700d2

TrainerFisherRaymond: ; 0x700d2
	; bit/flag number
	dw $456

	; trainer group && trainer id
	db FISHER, RAYMOND

	; text when seen
	dw FisherRaymondSeenText

	; text when trainer beaten
	dw FisherRaymondBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw FisherRaymondScript
; 0x700de

FisherRaymondScript: ; 0x700de
	talkaftercancel
	loadfont
	writetext UnknownText_0x70611
	waitbutton
	closetext
	end
; 0x700e6

TrainerCooltrainermAaron: ; 0x700e6
	; bit/flag number
	dw $549

	; trainer group && trainer id
	db COOLTRAINERM, AARON

	; text when seen
	dw CooltrainermAaronSeenText

	; text when trainer beaten
	dw CooltrainermAaronBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CooltrainermAaronScript
; 0x700f2

CooltrainermAaronScript: ; 0x700f2
	talkaftercancel
	loadfont
	writetext UnknownText_0x7069c
	waitbutton
	closetext
	end
; 0x700fa

TrainerCooltrainerfLois: ; 0x700fa
	; bit/flag number
	dw $55c

	; trainer group && trainer id
	db COOLTRAINERF, LOIS

	; text when seen
	dw CooltrainerfLoisSeenText

	; text when trainer beaten
	dw CooltrainerfLoisBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CooltrainerfLoisScript
; 0x70106

CooltrainerfLoisScript: ; 0x70106
	talkaftercancel
	loadfont
	writetext UnknownText_0x70752
	waitbutton
	closetext
	end
; 0x7010e

WesleyScript:
	faceplayer
	loadfont
	checkevent EVENT_GOT_BLACKBELT_FROM_WESLEY
	iftrue WesleyWednesdayScript
	checkcode VAR_WEEKDAY
	if_not_equal WEDNESDAY, WesleyNotWednesdayScript
	checkevent EVENT_MET_WESLEY_OF_WEDNESDAY
	iftrue .MetWesley
	writetext MeetWesleyText
	buttonsound
	setevent EVENT_MET_WESLEY_OF_WEDNESDAY
.MetWesley
	writetext WesleyGivesGiftText
	buttonsound
	verbosegiveitem BLACKBELT, 1
	iffalse WesleyDoneScript
	setevent EVENT_GOT_BLACKBELT_FROM_WESLEY
	writetext WesleyGaveGiftText
	waitbutton
	closetext
	end

WesleyWednesdayScript:
	writetext WesleyWednesdayText
	waitbutton
WesleyDoneScript:
	closetext
	end

WesleyNotWednesdayScript:
	writetext WesleyNotWednesdayText
	waitbutton
	closetext
	end

ItemFragment_0x70148: ; 0x70148
	db ELIXER, 1
; 0x7014a

ItemFragment_0x7014a: ; 0x7014a
	db TM_FOCUS_BLAST, 1
; 0x7014c

MapLakeofRageSignpostItem2: ; 0x7014c
	dw $00b5
	db FULL_RESTORE

; 0x7014f

MapLakeofRageSignpostItem3: ; 0x7014f
	dw $00b6
	db RARE_CANDY

; 0x70152

MapLakeofRageSignpostItem4: ; 0x70152
	dw $00b7
	db MAX_POTION

; 0x70155

MovementData_0x70155: ; 0x70155
	teleport_from
	step_end
; 0x70157

UnknownText_0x70157: ; 0x70157
	text "Ce lac est rempli"
	line "de LEVIATOR et"
	cont "rien d'autre<...>"

	para "Les MAGICARPES ont"
	line "été forcés"
	cont "d'évoluer<...>"
	done
; 0x701b4

UnknownText_0x701b4: ; 0x701b4
	text "Es-tu ici à cause"
	line "des rumeurs?"

	para "Tu es <PLAYER>?"
	line "Enchanté."
	
	para "Moi c'est PETER,"
	line "un dresseur comme"
	cont "toi."

	para "J'enquête sur les"
	line "récents évènements"
	cont "au LAC COLERE<...>"

	para "Je t'ai com-"
	line "battre, <PLAYER>."

	para "Tu as l'air d'un"
	line "dresseur très"
	cont "talentueux."

	para "Ca te dirait de"
	line "me donner un coup"
	cont "de main?"
	done
; 0x702c6

UnknownText_0x702c6: ; 0x702c6
	text "PETER: Excellent!"

	para "On dirait que"
	line "quelque chose"

	para "force les MAGICAR-"
	line "PE du LAC COLERE à"
	cont "évoluer."

	para "C'est peut-être en"
	line "lien avec le mys-"

	para "térieux signal"
	line "radio d'ACAJOU."

	para "Je t'y attendrai,"
	line "<PLAY_G>."
	done
; 0x70371

UnknownText_0x70371: ; 0x70371
	text "Oh<...> Bon, si tu"
	line "changes d'avis,"
	cont "reviens me voir."
	done
; 0x703a5

UnknownText_0x703a5: ; 0x703a5
	text "PETER: Hum? Vas-tu"
	line "m'aider?"
	done
; 0x703cb

UnknownText_0x703cb: ; 0x703cb
	text "LEVIATOR: Tttooor!"
	done
; 0x703df

UnknownText_0x703df: ; 0x703df
	text "<PLAYER> obtient"
	line "une ECAILLEROUGE."
	done
; 0x703f8

UnknownText_0x703f8: ; 0x703f8
	text "Les LEVIATOR sont"
	line "en colère!"

	para "Mauvais présage!"

	done

RIPGrampsText:
	text "A L'AIDE!!!"
	done
; 0x70421

UnknownText_0x70421: ; 0x70421
	text "Hahaha! Les"
	line "MAGICARPE mordent!"
	done
; 0x70444

UnknownText_0x70444: ; 0x70444
	text "On dit que ce lac"
	line "a été fait par le"
	cont "déchaînement de"
	cont "LEVIATOR."

	para "Je me demande si"
	line "il y a un lien"
	cont "avec leur colère?"
	done
; 0x704bb

UnknownText_0x704bb: ; 0x704bb
	text "Est-ce que j'hal-"
	line "lucine? J'ai vu un"

	para "LEVIATOR ROUGE"
	line "dans le lac<...>"
	done

UnknownText_0x704bb_2:
	text "Oh non!"

	para "Il attaque le"
	line "vieil homme!"
	done
; 0x70522

FisherAndreSeenText: ; 0x70522
	text "Je vais me battre"
	line "avec le #MON"
	
	para "que je viens"
	line "d'attraper!"
	done
; 0x7054e

FisherAndreBeatenText: ; 0x7054e
	text "Je suis un bon"
	line "pêcheur,"

	para "mais je suis mau-"
	line "vais dresseur."
	done
; 0x7058f

UnknownText_0x7058f: ; 0x7058f
	text "Je ne perdrais pas"
	line "à la pêche! Je"

	para "pêche des #MON"
	line "tous les jours!"
	done
; 0x705c0

FisherRaymondSeenText: ; 0x705c0
	text "Après n'avoir"
	line "capturer que des"
	
	para "MAGICARPE ces"
	line "derniers temps,"

	para "J'ai enfin eu une"
	line "grosse prise hier"
	cont "soir!"
	done
; 0x705f7

FisherRaymondBeatenText: ; 0x705f7
	text "Les choses vont"
	line "s'arranger!"
	done
; 0x70611

UnknownText_0x70611: ; 0x70611
	text "Cet ALIGATUEUR va"
	line "m'aider a gravir"
	cont "la TOUR DE COMBAT!"
	done
; 0x70632

CooltrainermAaronSeenText: ; 0x70632
	text "Si deux dresseurs"
	line "se croisent,"
	cont "un duel s'engage."

	para "C'est la loi!"
	done
; 0x70688

CooltrainermAaronBeatenText: ; 0x70688
	text "Whaou<...>"
	line "Beau combat!"
	done
; 0x7069c

UnknownText_0x7069c: ; 0x7069c
	text "Les #MON et"
	line "leur dresseur"

	para "deviennent forts"
	line "en combattant"
	cont "régulièrement."
	done
; 0x706df

CooltrainerfLoisSeenText: ; 0x706df
	text "Qu'est-il arrivé"
	line "au LEVIATOR rouge?"

	para "Il est parti?"

	para "Zut! Je suis venue"
	line "pour rien?"

	para "Bon<...>"
	line "Un combat?"
	done
; 0x70745

CooltrainerfLoisBeatenText: ; 0x70745
	text "Pas mal!"
	done
; 0x70752

UnknownText_0x70752: ; 0x70752
	text "En y repensant,"
	line "j'ai vu un"
	cont "PAPILUSION rose<...>"

	para "Et j'ai aussi"
	line "attraper mon"
	cont "FORTRESS ici."

	para "Met un COUPD'BOULE"
	line "dans les arbres si"
	cont "tu en veux un."
	done
; 0x70784

MeetWesleyText:
	text "HOMER: Alors,"
	line "comment ça va?"

	para "Moi c'est HOMER du"
	line "Mercredi."

	para "Et aujourd'hui<...>"
	line "C'est Mercredi!"
	done

WesleyGivesGiftText:
	text "Enchanté de faire"
	line "ta connaissance."
	para "Voilà un souvenir."
	done

WesleyGaveGiftText:
	text "HOMER: La CEINT."
	line "NOIRE renforce le"
	cont "pouvoir des capa-"
	cont "cités COMBAT."
	done

WesleyWednesdayText:
	text "HOMER: Avant de"
	line "m'avoir trouvé, tu"

	para "as dû rencontrer"
	line "mes frères et"
	cont "soeurs."

	para "Ou tu as eu de la"
	line "chance?"
	done

WesleyNotWednesdayText:
	text "HOMER: Nous ne"
	line "sommes pas"
	cont "Mercredi."

	para "Dommage<...>"
	done

UnknownText_0x708d7: ; 0x708d7
	text "LAC COLERE"

	para "aussi connu comme"
	cont "le LAC LEVIATOR."
	done
; 0x70903

UnknownText_0x70903: ; 0x70903
	text "MAISON DU MAITRE"
	line "PECHEUR"
	done
; 0x70919

LakeofRage_MapEventHeader: ; 0x70919
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $3, $7, 1, GROUP_LAKE_OF_RAGE_HIDDEN_POWER_HOUSE, MAP_LAKE_OF_RAGE_HIDDEN_POWER_HOUSE
	warp_def $1f, $1b, 1, GROUP_LAKE_OF_RAGE_MAGIKARP_HOUSE, MAP_LAKE_OF_RAGE_MAGIKARP_HOUSE

	; xy triggers
	db 0

	; signposts
	db 5
	signpost 27, 21, $0, MapLakeofRageSignpost0Script
	signpost 31, 25, $0, MapLakeofRageSignpost1Script
	signpost 28, 11, $7, MapLakeofRageSignpostItem2
	signpost 4, 4, $7, MapLakeofRageSignpostItem3
	signpost 5, 35, $7, MapLakeofRageSignpostItem4

	; people-events
	db 12
	person_event SPRITE_LANCE, 32, 25, $7, 0, 0, -1, -1, 0, 0, 0, LanceScript_0x70022, EVENT_LANCE_IN_LAKE_OF_RAGE
	person_event SPRITE_GRAMPS, 25, 34, $8, 0, 0, -1, -1, 0, 0, 0, GrampsScript_0x7008e, -1
	person_event SPRITE_SUPER_NERD, 17, 40, $8, 0, 0, -1, -1, 0, 0, 0, SuperNerdScript_0x700a2, -1
	person_event SPRITE_COOLTRAINER_F, 33, 29, $5, 0, 1, -1, -1, 0, 0, 0, CooltrainerFScript_0x700a5, -1
	person_event SPRITE_FISHER, 27, 34, $8, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 1, TrainerFisherAndre, EVENT_LAKE_OF_RAGE_TRAINERS
	person_event SPRITE_FISHER, 30, 28, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 1, TrainerFisherRaymond, EVENT_LAKE_OF_RAGE_TRAINERS
	person_event SPRITE_COOLTRAINER_M, 19, 8, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, TrainerCooltrainermAaron, EVENT_LAKE_OF_RAGE_TRAINERS
	person_event SPRITE_COOLTRAINER_F, 11, 40, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 0, TrainerCooltrainerfLois, EVENT_LAKE_OF_RAGE_TRAINERS
	person_event SPRITE_GYARADOS, 25, 33, $26, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, GyaradosScript_0x70063, EVENT_RED_GYARADOS
	person_event SPRITE_SUPER_NERD, 8, 8, $6, 0, 0, -1, -1, 0, 0, 0, WesleyScript, EVENT_WESLEY_OF_WEDNESDAY
	person_event SPRITE_POKE_BALL, 14, 11, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x70148, EVENT_ITEM_LAKE_OF_RAGE_ELIXIR
	person_event SPRITE_POKE_BALL, 6, 39, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x7014a, EVENT_ITEM_LAKE_OF_RAGE_TM_DETECT
