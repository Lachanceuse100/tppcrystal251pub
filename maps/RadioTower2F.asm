RadioTower2F_MapScriptHeader: ; 0x5d6fb
	; trigger count
	db 0

	; callback count
	db 0
; 0x5d6fd

UnknownScript_0x5d6fd: ; 0x5d6fd
	end
; 0x5d6fe

SuperNerdScript_0x5d6fe: ; 0x5d6fe
	jumptextfaceplayer UnknownText_0x5d924
; 0x5d701

TeacherScript_0x5d701: ; 0x5d701
	faceplayer
	loadfont
	checkflag ENGINE_BIKE_SHOP_CALL_ENABLED
	iftrue UnknownScript_0x5d70f
	writetext UnknownText_0x5d956
	waitbutton
	closetext
	end
; 0x5d70f

UnknownScript_0x5d70f: ; 0x5d70f
	writetext UnknownText_0x5d983
	waitbutton
	closetext
	end
; 0x5d715

JigglypuffScript_0x5d715: ; 0x5d715
	loadfont
	writetext UnknownText_0x5d9b6
	cry JIGGLYPUFF
	waitbutton
	closetext
	end
; 0x5d71f

BlackBeltScript_0x5d71f: ; 0x5d71f
	jumptextfaceplayer UnknownText_0x5d9cb
; 0x5d722

BlackBeltScript_0x5d722: ; 0x5d722
	jumptextfaceplayer UnknownText_0x5da44
; 0x5d725

TrainerGruntM4: ; 0x5d725
	; bit/flag number
	dw $4f4

	; trainer group && trainer id
	db GRUNTM, 4

	; text when seen
	dw GruntM4SeenText

	; text when trainer beaten
	dw GruntM4BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntM4Script
; 0x5d731

GruntM4Script: ; 0x5d731
	talkaftercancel
	loadfont
	writetext UnknownText_0x5db07
	waitbutton
	closetext
	end
; 0x5d739

TrainerGruntM5: ; 0x5d739
	; bit/flag number
	dw $4f5

	; trainer group && trainer id
	db GRUNTM, 5

	; text when seen
	dw GruntM5SeenText

	; text when trainer beaten
	dw GruntM5BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntM5Script
; 0x5d745

GruntM5Script: ; 0x5d745
	talkaftercancel
	loadfont
	writetext UnknownText_0x5db99
	waitbutton
	closetext
	end
; 0x5d74d

TrainerGruntM6: ; 0x5d74d
	; bit/flag number
	dw $4f6

	; trainer group && trainer id
	db GRUNTM, 6

	; text when seen
	dw GruntM6SeenText

	; text when trainer beaten
	dw GruntM6BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntM6Script
; 0x5d759

GruntM6Script: ; 0x5d759
	talkaftercancel
	loadfont
	writetext UnknownText_0x5dc00
	waitbutton
	closetext
	end
; 0x5d761

TrainerGruntF2: ; 0x5d761
	; bit/flag number
	dw $511

	; trainer group && trainer id
	db GRUNTF, 2

	; text when seen
	dw GruntF2SeenText

	; text when trainer beaten
	dw GruntF2BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntF2Script
; 0x5d76d

GruntF2Script: ; 0x5d76d
	talkaftercancel
	loadfont
	writetext UnknownText_0x5dcd0
	waitbutton
	closetext
	end
; 0x5d775

BuenaScript_0x5d775: ; 0x5d775
	faceplayer
	loadfont
	checkflag ENGINE_BIKE_SHOP_CALL_ENABLED
	iftrue UnknownScript_0x5d865
	checkevent EVENT_MET_BUENA
	iffalse UnknownScript_0x5d800
	checkflag ENGINE_60
	iftrue UnknownScript_0x5d82f
	checkcode VAR_HOUR
	if_less_than $12, UnknownScript_0x5d893
	checkflag ENGINE_5F
	iffalse UnknownScript_0x5d80a
	checkitem BLUE_CARD
	iffalse UnknownScript_0x5d86b
	checkcode VAR_BLUECARDBALANCE
	if_equal $1e, UnknownScript_0x5d87f
	playmusic MUSIC_BUENAS_PASSWORD
	writetext UnknownText_0x5de35
	special Function4ae12
	iffalse UnknownScript_0x5d81e
	writetext UnknownText_0x5de84
	waitbutton
	closetext
	spriteface $b, $3
	checkcode VAR_FACING
	if_not_equal $3, UnknownScript_0x5d7be
	applymovement $0, MovementData_0x5d921
UnknownScript_0x5d7be: ; 0x5d7be
	spriteface $0, $3
	loadfont
	writetext UnknownText_0x5dedd
	waitbutton
	closetext
	spriteface $b, $0
	refreshscreen $0
	special SpecialBuenasPassword
	closetext
	iffalse UnknownScript_0x5d845
	loadfont
	writetext UnknownText_0x5dfc1
	waitbutton
	closetext
	checkcode VAR_BLUECARDBALANCE
	addvar $1
	writevarcode VAR_BLUECARDBALANCE
	waitsfx
	playsound SFX_TRANSACTION
	setflag ENGINE_60
	pause 20
	spriteface $b, $3
	loadfont
	writetext UnknownText_0x5e054
	waitbutton
	closetext
	special Functionc48f
	pause 20
	special RestartMapMusic
	checkcode VAR_BLUECARDBALANCE
	if_equal $1e, UnknownScript_0x5d8a4
	end
; 0x5d800

UnknownScript_0x5d800: ; 0x5d800
	writetext UnknownText_0x5dcf4
	buttonsound
	setevent EVENT_MET_BUENA
	verbosegiveitem BLUE_CARD, 1
UnknownScript_0x5d80a: ; 0x5d80a
	writetext UnknownText_0x5de10
	waitbutton
	closetext
	checkcellnum $25
	iftrue UnknownScript_0x5d81a
	checkevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER
	iftrue UnknownScript_0x5d8cc
UnknownScript_0x5d81a: ; 0x5d81a
	spriteface $b, $3
	end
; 0x5d81e

UnknownScript_0x5d81e: ; 0x5d81e
	writetext UnknownText_0x5df29
	waitbutton
	closetext
	spriteface $b, $3
	special Functionc48f
	pause 20
	special RestartMapMusic
	end
; 0x5d82f

UnknownScript_0x5d82f: ; 0x5d82f
	writetext UnknownText_0x5df6c
	waitbutton
	closetext
	checkcellnum $25
	iftrue UnknownScript_0x5d83f
	checkevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER
	iftrue UnknownScript_0x5d8cc
UnknownScript_0x5d83f: ; 0x5d83f
	spriteface $b, $3
	pause 10
	end
; 0x5d845

UnknownScript_0x5d845: ; 0x5d845
	setflag ENGINE_60
	loadfont
	writetext UnknownText_0x5e01c
	waitbutton
	closetext
	spriteface $b, $3
	pause 20
	loadfont
	writetext UnknownText_0x5e054
	waitbutton
	closetext
	spriteface $b, $3
	special Functionc48f
	pause 20
	special RestartMapMusic
	end
; 0x5d865

UnknownScript_0x5d865: ; 0x5d865
	writetext UnknownText_0x5e0c2
	waitbutton
	closetext
	end
; 0x5d86b

UnknownScript_0x5d86b: ; 0x5d86b
	writetext UnknownText_0x5e192
	waitbutton
	closetext
	checkcellnum $25
	iftrue UnknownScript_0x5d87b
	checkevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER_NO_BLUE_CARD
	iftrue UnknownScript_0x5d8cc
UnknownScript_0x5d87b: ; 0x5d87b
	spriteface $b, $3
	end
; 0x5d87f

UnknownScript_0x5d87f: ; 0x5d87f
	writetext UnknownText_0x5e0f1
	waitbutton
	closetext
	checkcellnum $25
	iftrue UnknownScript_0x5d88f
	checkevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER_NO_BLUE_CARD
	iftrue UnknownScript_0x5d8cc
UnknownScript_0x5d88f: ; 0x5d88f
	spriteface $b, $3
	end
; 0x5d893

UnknownScript_0x5d893: ; 0x5d893
	writetext UnknownText_0x5e131
	waitbutton
	closetext
	checkcellnum $25
	iftrue UnknownScript_0x5d8a3
	checkevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER
	iftrue UnknownScript_0x5d8cc
UnknownScript_0x5d8a3: ; 0x5d8a3
	end
; 0x5d8a4

UnknownScript_0x5d8a4: ; 0x5d8a4
	checkcellnum $25
	iftrue UnknownScript_0x5d8fe
	pause 20
	spriteface $b, $0
	pause 15
	spriteface $0, $1
	pause 15
	checkevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER_NO_BLUE_CARD
	iftrue UnknownScript_0x5d8cc
	showemote $0, $b, 15
	setevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER_NO_BLUE_CARD
	setevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER
	loadfont
	writetext UnknownText_0x5e1ee
	jump UnknownScript_0x5d8d0
; 0x5d8cc

UnknownScript_0x5d8cc: ; 0x5d8cc
	loadfont
	writetext UnknownText_0x5e2bf
UnknownScript_0x5d8d0: ; 0x5d8d0
	askforphonenumber $25
	if_equal $1, UnknownScript_0x5d8f6
	if_equal $2, UnknownScript_0x5d8ed
	writetext UnknownText_0x5e2f3
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	buttonsound
	writetext UnknownText_0x5e310
	waitbutton
	closetext
	spriteface $b, $3
	addcellnum $25
	end
; 0x5d8ed

UnknownScript_0x5d8ed: ; 0x5d8ed
	writetext UnknownText_0x5e33c
	waitbutton
	closetext
	spriteface $b, $3
	end
; 0x5d8f6

UnknownScript_0x5d8f6: ; 0x5d8f6
	writetext UnknownText_0x5e35e
	waitbutton
	closetext
	spriteface $b, $3
UnknownScript_0x5d8fe: ; 0x5d8fe
	end
; 0x5d8ff

ReceptionistScript_0x5d8ff: ; 0x5d8ff
	faceplayer
	loadfont
	checkitem BLUE_CARD
	iffalse UnknownScript_0x5d90f
	writetext UnknownText_0x5e392
	buttonsound
	special SpecialBuenaPrize
	closetext
	end
; 0x5d90f

UnknownScript_0x5d90f: ; 0x5d90f
	writetext UnknownText_0x5e3d8
	buttonsound
	closetext
	end
; 0x5d915

MapRadioTower2FSignpost0Script: ; 0x5d915
	jumptext UnknownText_0x5e426
; 0x5d918

MapRadioTower2FSignpost1Script: ; 0x5d918
	jumptext UnknownText_0x5e430
; 0x5d91b

MapRadioTower2FSignpost5Script: ; 0x5d91b
	jumptext UnknownText_0x5e463
; 0x5d91e

MapRadioTower2FSignpost4Script: ; 0x5d91e
	jumpstd magazinebookshelf
; 0x5d921

MovementData_0x5d921: ; 0x5d921
	slow_step_down
	slow_step_right
	step_end
; 0x5d924

UnknownText_0x5d924: ; 0x5d924
	text "Ecoutez la radio"
	line "n'importe où!"
	cont "A bientôt!"
	done
; 0x5d956

UnknownText_0x5d956: ; 0x5d956
	text "Les berceuses de"
	line "la radio peuvent"
	cont "endormir les"
	cont "#MON."
	done
; 0x5d983

UnknownText_0x5d983: ; 0x5d983
	text "Pourquoi veulent-"
	line "ils contrôler la"
	cont "TOUR RADIO?"
	done
; 0x5d9b6

UnknownText_0x5d9b6: ; 0x5d9b6
	text "RONDOUDOU::"
	line "Douuu<...>"
	done
; 0x5d9cb

UnknownText_0x5d9cb: ; 0x5d9cb
	text "Cet accès est ré-"
	line "servé au personnel"
	cont "autorisé."

	para "Ce n'était pas"
	line "comme ça avant."
	cont "mais le DIRECTEUR"
	cont "ne va pas bien<...>"
	done
; 0x5da44

UnknownText_0x5da44: ; 0x5da44
	text "Vous pouvez vous"
	line "balader."

	para "Le DIRECTEUR est"
	line "redevenu aussi"
	cont "agréable qu'avant!"
	done
; 0x5da9b

GruntM4SeenText: ; 0x5da9b
	text "Il y a trois mois,"
	line "la TEAM ROCKET a"
	cont "été obligée de se"
	cont "dissoudre."

	para "Mais nous revenons"
	line "en force!"
	done
; 0x5daf1

GruntM4BeatenText: ; 0x5daf1
	text "Gueuh! Te vante"
	line "pas trop, toi!"
	done
; 0x5db07

UnknownText_0x5db07: ; 0x5db07
	text "On te laissera pas"
	line "mettre nos plans"
	cont "en péril!"
	done
; 0x5db39

GruntM5SeenText: ; 0x5db39
	text "On est la TEAM"
	line "ROCKET, on est les"
	cont "exploiteurs de"
	cont "#MON!"

	para "On aime être"
	line "méchant et faire"
	cont "peur! Grrr."

	para "T'as peur, là?"
	done
; 0x5db80

GruntM5BeatenText: ; 0x5db80
	text "Tu te prends pour"
	line "un héros?"
	done
; 0x5db99

UnknownText_0x5db99: ; 0x5db99
	text "Tu es fort, mais"
	line "on est trop nom-"
	cont "breux pour toi!"
	done
; 0x5dbcd

GruntM6SeenText: ; 0x5dbcd
	text "Nous avons une"
	line "arme secrète pour"
	cont "envahir la tour!"
	done
; 0x5dbed

GruntM6BeatenText: ; 0x5dbed
	text "Je perds quand"
	line "même!?"
	done
; 0x5dc00

UnknownText_0x5dc00: ; 0x5dc00
	text "L'ADN. BERZERK est"
	line "notre création"
	cont "ultime!"

	para "Mais il y a encore"
	line "des effets"
	cont "secondaires<...>"
	done
; 0x5dc64

GruntF2SeenText: ; 0x5dc64
	text "Hahaha!"

	para "Quel ennui."
	line "C'était trop fa-"

	para "cile d'envahir cet"
	line "endroit!"

	para "Allez, fais moi"
	line "un peu rire!"
	done
; 0x5dcbf

GruntF2BeatenText: ; 0x5dcbf
	text "Qu-qui t'es toi?"
	done
; 0x5dcd0

UnknownText_0x5dcd0: ; 0x5dcd0
	text "Tu as gagné. Je ne"
	line "l'oublierai pas!"
	done
; 0x5dcf4

UnknownText_0x5dcf4: ; 0x5dcf4
	text "BUENA: Salut!"
	line "Je suis BUENA!"

	para "Connais-tu l'émis-"
	line "sion LE MOT DE"
	cont "PASSE?"

	para "Si tu peux me"
	line "donner le mot de"

	para "passe de l'émis-"
	line "sion, tu remportes"
	cont "des points."

	para "Gagne plein de"
	line "points et échange-"

	para "les à la jolie"
	line "fille à côté con-"

	para "tre de fabuleux"
	line "prix!"

	para "Voilà!"

	para "Ta carte à points"
	line "personnelle!"
	done
; 0x5de10

UnknownText_0x5de10: ; 0x5de10
	text "BUENA: Branche-toi"
	line "à l'émission du"
	cont "MOT DE PASSE!"
	done
; 0x5de35

UnknownText_0x5de35: ; 0x5de35
	text "BUENA: Bonjour!"
	line "As-tu écouté mon"
	cont "émission?"

	para "Te souviens-tu du"
	line "mot de passe d'au-"
	cont "jourd'hui?"
	done
; 0x5de84

UnknownText_0x5de84: ; 0x5de84
	text "BUENA: Oh!"
	line "Merci!"

	para "Quel est ton nom,"
	line "déjà?"

	para "<...><PLAY_G>, OK!"

	para "Viens, <PLAY_G>."
	line "Tu es en direct."
	done
; 0x5dedd

UnknownText_0x5dedd: ; 0x5dedd
	text "BUENA: Tout le"
	line "monde est prêt?"

	para "Venez crier le mot"
	line "de passe d'au"
	para "jourd'hui pour"
	line "<PLAY_G>!"
	done
; 0x5df29

UnknownText_0x5df29: ; 0x5df29
	text "BUENA: Reviens"
	line "après avoir écouté"

	para "mon émission, OK?"
	line "A plus tard!"
	done
; 0x5df6c

UnknownText_0x5df6c: ; 0x5df6c
	text "BUENA: Désolée<...>"

	para "Tu n'as qu'un"
	line "essai par jour."

	para "Reviens demain!"
	done
; 0x5dfc1

UnknownText_0x5dfc1: ; 0x5dfc1
	text "BUENA: OUAIIIS!"
	line "C'est exact!"

	para "Tu as bien écouté"
	line "mon émission!"

	para "Tu remportes un"
	line "point! Bravo!"
	done
; 0x5e01c

UnknownText_0x5e01c: ; 0x5e01c
	text "BUENA: Ohh<...>"
	line "Ce n'est pas ça<...>"

	para "Tu as oublié le"
	line "mot de passe?"
	done
; 0x5e054

UnknownText_0x5e054: ; 0x5e054
	text "BUENA: Notre"
	line "candidat était"

	para "<PLAY_G>."
	line "Merci d'être venu!"

	para "Suivez tous mon"
	line "émission!"
	done
; 0x5e0c2

UnknownText_0x5e0c2: ; 0x5e0c2
	text "BUENA: Hein?"
	line "Le mot de passe?"

	para "AU SECOURS!"
	done
; 0x5e0f1

UnknownText_0x5e0f1: ; 0x5e0f1
	text "BUENA: Ta CARTE"
	line "BLEUE est pleine."

	para "Echange tes points"
	line "contre de fabuleux"
	cont "prix."
	done
; 0x5e131

UnknownText_0x5e131: ; 0x5e131
	text "BUENA: Ecoutez le"
	line "MOT DE PASSE tous"

	para "les soirs de 18"
	line "heures à minuit!"

	para "Ecoutez et venez!"
	done
; 0x5e192

UnknownText_0x5e192: ; 0x5e192
	text "BUENA: Tu as"
	line "oublié ta CARTE"
	cont "BLEUE?"

	para "Je ne peux pas te"
	line "créditer de"
	cont "points!"
	done
; 0x5e1ee

UnknownText_0x5e1ee: ; 0x5e1ee
	text "BUENA: Ta CARTE"
	line "BLEUE a atteint"

	para "30 points aujour-"
	line "d'hui! Dingue!"

	para "Euh<...> Il n'y a pas"
	line "de récompense pour"
	cont "ça, mais<...>"

	para "Tu viens souvent"
	line "ici, <PLAY_G>."

	para "J'ai une idée!"

	para "Est-ce que tu veux"
	line "mon numéro?"
	done
; 0x5e2bf

UnknownText_0x5e2bf: ; 0x5e2bf
	text "BUENA: <PLAY_G>,"
	line "est-ce que tu veux"
	cont "mon numéro?"
	done
; 0x5e2f3

UnknownText_0x5e2f3: ; 0x5e2f3
	text "<PLAYER> enregistre"
	line "le numéro de"
	cont "BUENA."
	done
; 0x5e310

UnknownText_0x5e310: ; 0x5e310
	text "BUENA: J'ai hâte"
	line "de discuter avec"
	cont "toi!"
	done
; 0x5e33c

UnknownText_0x5e33c: ; 0x5e33c
	text "BUENA: Ohh<...> Mais<...>"
	line "Dommage<...>"
	done
; 0x5e35e

UnknownText_0x5e35e: ; 0x5e35e
	text "BUENA: <PLAY_G>,"
	line "ton téléphone n'a"

	para "plus de place pour"
	line "moi<...>"
	done
; 0x5e392

UnknownText_0x5e392: ; 0x5e392
	text "Tu peux échanger"
	line "tes points contre"
	cont "un super prix!"
	done
; 0x5e3d8

UnknownText_0x5e3d8: ; 0x5e3d8
	text "Tu ne peux pas"
	line "échanger tes"
	cont "points sans ta"
	cont "CARTE BLEUE."

	para "Ne l'oublie pas!"
	done
; 0x5e426

UnknownText_0x5e426: ; 0x5e426
	text "1ER  VENTES"
	done
; 0x5e430

UnknownText_0x5e430: ; 0x5e430
	text "CHRONIQUE #MON"
	line "DU PROF.CHEN"

	para "L'émission star"
	line "à l'antenne!"
	done
; 0x5e463

UnknownText_0x5e463: ; 0x5e463
	text "La RADIO #MON!"
	line "A l'antenne à tout"
	cont "heure!"
	done
; 0x5e481

RadioTower2F_MapEventHeader: ; 0x5e481
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $0, $0, 1, GROUP_RADIO_TOWER_3F, MAP_RADIO_TOWER_3F
	warp_def $0, $f, 3, GROUP_RADIO_TOWER_1F, MAP_RADIO_TOWER_1F

	; xy triggers
	db 0

	; signposts
	db 6
	signpost 0, 3, $0, MapRadioTower2FSignpost0Script
	signpost 0, 5, $0, MapRadioTower2FSignpost1Script
	signpost 1, 9, $0, MapRadioTower2FSignpost4Script
	signpost 1, 10, $0, MapRadioTower2FSignpost4Script
	signpost 1, 11, $0, MapRadioTower2FSignpost4Script
	signpost 0, 13, $0, MapRadioTower2FSignpost5Script

	; people-events
	db 11
	person_event SPRITE_SUPER_NERD, 10, 10, $8, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, SuperNerdScript_0x5d6fe, EVENT_CIVILIANS_EVACUATED_GOLDENROD
	person_event SPRITE_TEACHER, 6, 21, $5, 0, 1, -1, -1, 8 + PAL_OW_RED, 0, 0, TeacherScript_0x5d701, -1
	person_event SPRITE_ROCKET, 8, 5, $7, 0, 0, -1, -1, 0, 2, 3, TrainerGruntM4, EVENT_ROCKET_TAKEOVER_OF_GOLDENROD
	person_event SPRITE_ROCKET, 8, 12, $6, 0, 0, -1, -1, 0, 2, 3, TrainerGruntM5, EVENT_ROCKET_TAKEOVER_OF_GOLDENROD
	person_event SPRITE_ROCKET, 5, 8, $6, 0, 0, -1, -1, 0, 2, 2, TrainerGruntM6, EVENT_ROCKET_TAKEOVER_OF_GOLDENROD
	person_event SPRITE_ROCKET_GIRL, 9, 14, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerGruntF2, EVENT_ROCKET_TAKEOVER_OF_GOLDENROD
	person_event SPRITE_BLACK_BELT, 5, 4, $6, 0, 0, -1, -1, 0, 0, 0, BlackBeltScript_0x5d71f, EVENT_BLACKBELT_BLOCKS_ACCESS_TO_UPPER_RADIO_TOWER_FLOORS
	person_event SPRITE_BLACK_BELT, 5, 5, $6, 0, 0, -1, -1, 0, 0, 0, BlackBeltScript_0x5d722, EVENT_CIVILIANS_EVACUATED_RADIO_TOWER_UPPER_FLOORS
	person_event SPRITE_JIGGLYPUFF, 5, 16, $16, 0, 0, -1, -1, 0, 0, 0, JigglypuffScript_0x5d715, -1
	person_event SPRITE_BUENA, 9, 18, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, BuenaScript_0x5d775, -1
	person_event SPRITE_RECEPTIONIST, 11, 16, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ReceptionistScript_0x5d8ff, EVENT_CIVILIANS_EVACUATED_GOLDENROD
; 0x5e53e

