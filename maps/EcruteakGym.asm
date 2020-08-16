EcruteakGym_MapScriptHeader: ; 0x99d49
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x99d53, $0000
	dw UnknownScript_0x99d57, $0000

	; callback count
	db 0
; 0x99d53

UnknownScript_0x99d53: ; 0x99d53
	priorityjump UnknownScript_0x99dc6
	end
; 0x99d57

UnknownScript_0x99d57: ; 0x99d57
	end
; 0x99d58

MortyScript_0x99d58: ; 0x99d58
	faceplayer
	loadfont
	checkevent EVENT_MORTY_REMATCH
	iftrue MortyAfterRematch
	checkevent EVENT_SET_BY_OAK_AFTER_16_BADGES
	iftrue MortyRematchScript
	checkevent EVENT_BEAT_MORTY
	iftrue UnknownScript_0x99d8c
	writetext UnknownText_0x99e65
	waitbutton
	closetext
	winlosstext UnknownText_0x9a00a, $0000
	loadtrainer MORTY, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_MORTY
	loadfont
	writetext UnknownText_0x9a043
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_FOGBADGE
	checkcode VAR_BADGES
	scall UnknownScript_0x99db7
	domaptrigger GROUP_ECRUTEAK_HOUSE, MAP_ECRUTEAK_HOUSE, $1
	setevent EVENT_SAGE_IN_ECRUTEAK_HOUSE
	setevent EVENT_SAGE_IN_ECRUTEAK_HOUSE_2
UnknownScript_0x99d8c: ; 0x99d8c
	checkevent EVENT_GOT_TM30_SHADOW_BALL
	iftrue UnknownScript_0x99db1
	setevent EVENT_BEAT_SAGE_JEFFREY
	setevent EVENT_BEAT_SAGE_PING
	setevent EVENT_BEAT_MEDIUM_MARTHA
	setevent EVENT_BEAT_MEDIUM_GRACE
	writetext UnknownText_0x9a059
	buttonsound
	verbosegiveitem TM_SHADOW_CLAW, 1
	iffalse UnknownScript_0x99db5
	setevent EVENT_GOT_TM30_SHADOW_BALL
	writetext UnknownText_0x9a0ec
	waitbutton
	closetext
	end
; 0x99db1

MortyAfterRematch:
	writetext MortyAfterRematchText
	waitbutton
	closetext
	end

MortyRematchScript:
	checkevent EVENT_FOUGHT_HO_OH
	iffalse MortyReject
	writetext MortyRematchTextBefore
	waitbutton
	closetext
	winlosstext MortyRematchBeatenText, $0000
	loadtrainer MORTY, 2
	startbattle
	returnafterbattle
	setevent EVENT_MORTY_REMATCH
	loadfont
	jump MortyAfterRematch

UnknownScript_0x99db1: ; 0x99db1
	writetext UnknownText_0x9a145
	waitbutton
UnknownScript_0x99db5: ; 0x99db5
	closetext
	end
; 0x99db7

MortyReject:
	checkevent EVENT_FOUGHT_SUICUNE
	iffalse MortyRejectSuicuneInTower
	special SpecialBeastsCheck
	iffalse MortyRejectTowerClosed
	writetext MortyRejectTowerOpen
	waitbutton
	closetext
	end

MortyRejectSuicuneInTower:
	writetext MortyRejectSuicuneInTowerText
	waitbutton
	closetext
	end

MortyRejectSuicuneInTowerText:
	text "Il se passe quel-"
	line "que chose à la"
	cont "TOUR FERAILLE."

	para "Oh? C'est le"
	line "GLAS TRANSP.!"

	para "Le son de ce glas"
	line "peut dompter les"

	para "bêtes les plus"
	line "féroces."

	para "Peut-être qu'il"
	line "calmera la bête de"
	cont "la TOUR FERAILLE."
	done

MortyRejectTowerClosed:
	writetext MortyRejectTowerClosedText
	waitbutton
	closetext
	end


MortyRejectTowerClosedText:
	text "RAIKOU, ENTEI, et"
	line "SUICUNE<...>"

	para "Le jour de notre"
	line "rencontre à la"
	cont "TOUR CENDRE,"

	line "Ils ont fuit en ta"
	cont "présence."

	para "Les légendes par-"
	line "lent de 3 #MON"

	para "ayant péri dans"
	line "l'incendie de la"
	cont "tour."

	para "Peut-être<...>"

	para "Seraient-ils les"
	line "réincarnations de"
	cont "ces #MON?"

	para "Le #MON arc-en-"
	line "ciel attend-il"
	cont "leurs retour?"
	done

MortyRejectTowerOpen:
	text "Je<...> Je n'y crois"
	line "pas!"

	para "Il est ici!"

	para "Le #MON arc-en-"
	line "ciel est revenu!"

	para "But<...>"

	para "J'admet que je ne"
	line "suis pas celui qui"

	para "mérite de le"
	line "rencontrer<...>"

	para "<PLAYER>!"

	para "Tu as capturé les"
	line "3 bêtes, pas vrai?"

	para "Le #MON arc-en-"
	line "ciel apparaîtra"
	cont "sûrement devant"
	cont "toi!"

	para "Pars a la TOUR"
	line "FERAILLE!"

	para "Accomplis le rêve"
	line "de ma vie!"
	done

UnknownScript_0x99db7: ; 0x99db7
	if_equal $7, UnknownScript_0x99dc3
	if_equal $6, UnknownScript_0x99dc0
	end
; 0x99dc0

UnknownScript_0x99dc0: ; 0x99dc0
	jumpstd goldenrodrockets
; 0x99dc3

UnknownScript_0x99dc3: ; 0x99dc3
	jumpstd radiotowerrockets
; 0x99dc6

UnknownScript_0x99dc6: ; 0x99dc6
	applymovement $0, MovementData_0x99e5d
	applymovement $8, MovementData_0x99e63
	loadfont
	writetext UnknownText_0x9a49c
	waitbutton
	closetext
	follow $0, $8
	applymovement $0, MovementData_0x99e5f
	stopfollow
	special Function8c084
	playsound SFX_ENTER_DOOR
	waitsfx
	warp GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY, $6, $1b
	end
; 0x99de9

TrainerSageJeffrey: ; 0x99de9
	; bit/flag number
	dw $415

	; trainer group && trainer id
	db SAGE, JEFFREY

	; text when seen
	dw SageJeffreySeenText

	; text when trainer beaten
	dw SageJeffreyBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SageJeffreyScript
; 0x99df5

SageJeffreyScript: ; 0x99df5
	talkaftercancel
	loadfont
	writetext UnknownText_0x9a263
	waitbutton
	closetext
	end
; 0x99dfd

TrainerSagePing: ; 0x99dfd
	; bit/flag number
	dw $416

	; trainer group && trainer id
	db SAGE, PING

	; text when seen
	dw SagePingSeenText

	; text when trainer beaten
	dw SagePingBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SagePingScript
; 0x99e09

SagePingScript: ; 0x99e09
	talkaftercancel
	loadfont
	writetext UnknownText_0x9a2b7
	waitbutton
	closetext
	end
; 0x99e11

TrainerMediumMartha: ; 0x99e11
	; bit/flag number
	dw $58b

	; trainer group && trainer id
	db MEDIUM, MARTHA

	; text when seen
	dw MediumMarthaSeenText

	; text when trainer beaten
	dw MediumMarthaBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw MediumMarthaScript
; 0x99e1d

MediumMarthaScript: ; 0x99e1d
	talkaftercancel
	loadfont
	writetext UnknownText_0x9a318
	waitbutton
	closetext
	end
; 0x99e25

TrainerMediumGrace: ; 0x99e25
	; bit/flag number
	dw $58c

	; trainer group && trainer id
	db MEDIUM, GRACE

	; text when seen
	dw MediumGraceSeenText

	; text when trainer beaten
	dw MediumGraceBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw MediumGraceScript
; 0x99e31

MediumGraceScript: ; 0x99e31
	talkaftercancel
	loadfont
	writetext UnknownText_0x9a38a
	waitbutton
	closetext
	end
; 0x99e39

EcruteakGymGuyScript: ; 0x99e39
	faceplayer
	loadfont
	checkevent EVENT_BEAT_MORTY
	iftrue .EcruteakGymGuyWinScript
	writetext EcruteakGymGuyText
	waitbutton
	closetext
	end

.EcruteakGymGuyWinScript
	writetext EcruteakGymGuyWinText
	waitbutton
	closetext
	end
; 0x99e4d

MapEcruteakGymSignpost1Script: ; 0x99e4d
	checkflag ENGINE_FOGBADGE
	iftrue UnknownScript_0x99e56
	jumpstd gymstatue1
; 0x99e56

UnknownScript_0x99e56: ; 0x99e56
	trainertotext MORTY, 1, $1
	jumpstd gymstatue2
; 0x99e5d

MovementData_0x99e5d: ; 0x99e5d
	step_up
	step_end
; 0x99e5f

MovementData_0x99e5f: ; 0x99e5f
	fix_facing
	slow_step_down
	remove_fixed_facing
	step_end
; 0x99e63

MovementData_0x99e63: ; 0x99e63
	slow_step_down
	step_end
; 0x99e65

UnknownText_0x99e65: ; 0x99e65
	text "Bienvenue."

	para "Ici à ROSALIA,"
	line "les #MON sont"
	cont "vénérés."

	para "On dit qu'un"
	line "#MON aux cou-"

	para "leurs de l'arc-en-"
	line "ciel apparaîtra"

	para "face à un dresseur"
	line "d'exception."

	para "Je crois en la"
	line "légende et ainsi"

	para "je m'entraîne jour"
	line "et nuit en secret."

	para "Je peux désormais"
	line "voir ce que d'"
	cont "autres ne voient"
	cont "pas."

	para "Encore un peu<...>"

	para "Encore un peu et"
	line "je pourrai voir"

	para "ce #MON aux"
	line "plumes arc-en-"
	cont "ciel."

	para "Et avec ce combat,"
	line "ma puissance sera"
	cont "à son apogée!"
	done
; 0x9a00a

MortyRematchTextBefore:
	text "Bienvenue,"
	line "<PLAY_G>."

	para "<...>La légende était"
	line "donc vraie, HO-OH"
	cont "t'a choisi<...>"

	para "Mais je n'ai pas"
	line "perdu de vue mon"
	cont "futur."

	para "Montre moi la pui-"
	line "ssance que je"
	cont "souhaitais défier!"
	done

MortyRematchBeatenText:
	text "Comment est-ce"
	line "possible<...>?"
	done

MortyAfterRematchText:
	text "Nos potentiels"
	line "ne sont pas si"
	cont "differents."

	para "Mais tu as quelque"
	line "chose<...>"

	para "Quelque chose de"
	line "plus<...>"
	done

UnknownText_0x9a00a: ; 0x9a00a
	text "Toujours rien<...>"

	para "Je ne suis pas"
	line "encore assez bon."

	para "Très bien, ce"
	line "BADGE est à toi."
	done
; 0x9a043

UnknownText_0x9a043: ; 0x9a043
	text "<PLAYER> reçoit"
	line "le BADGE BRUME."
	done
; 0x9a059

UnknownText_0x9a059: ; 0x9a059
	text "En possédant le"
	line "BADGE BRUME, tes"
	cont "#MON pourront"
	cont "utiliser SURF"
	cont "partout."

	para "Prends aussi ceci."
	done
; 0x9a0ec

UnknownText_0x9a0ec: ; 0x9a0ec
	text "C'est GRIFFE"
	line "OMBRE."

	para "Une attaque redou-"
	line "table ayant plus"
	cont "de chance d'infli-"
	cont "ger un coup"
	cont "critique."

	para "Utilise là si elle"
	line "te plaît."
	done
; 0x9a145

UnknownText_0x9a145: ; 0x9a145
	text "Je vois<...>"

	para "Ton voyage a été"
	line "long et"
	cont "mouvementé."

	para "Et tu as vu plus"
	line "de choses que moi."

	para "Je t'envie pour"
	line "ça<...>"
	done
; 0x9a1bd

SageJeffreySeenText: ; 0x9a1bd
	text "Contrairement à la"
	line "plupart des dre-"
	cont "sseurs ici,"

	para "Mon amitié avec"
	line "mes #MON s'est"
	cont "construit sur une"
	cont "très longue"
	cont "période."

	para "Voilà le secret"
	line "pour être plus"
	cont "fort!"
	done
; 0x9a23d

SageJeffreyBeatenText: ; 0x9a23d
	text "J'ai connu tant de"
	line "victoires et"
	cont "défaites."
	done
; 0x9a263

UnknownText_0x9a263: ; 0x9a263
	text "Notre lien n'est"
	line "pas assez fort<...>"
	done
; 0x9a27e

SagePingSeenText: ; 0x9a27e
	text "Tu t'es préparé"
	line "pour les #MON"
	cont "de type SPECTRE?"

	para "Tu vas avoir une"
	line "sacré surprise!"
	done
; 0x9a2a7

SagePingBeatenText: ; 0x9a2a7
	text "Ah! Bien joué!"
	done
; 0x9a2b7

UnknownText_0x9a2b7: ; 0x9a2b7
	text "Seul MORTIMER uti-"
	line "lise des #MON"
	cont "SPECTRE."

	para "Pourtant, aucun de"
	line "nous ne lui arrive"
	cont "à la cheville."
	done
; 0x9a2fb

MediumMarthaSeenText: ; 0x9a2fb
	text "La défense est la"
	line "meilleure attaque!"
	done
; 0x9a309

MediumMarthaBeatenText: ; 0x9a309
	text "Ou pas<...>"
	done
; 0x9a318

UnknownText_0x9a318: ; 0x9a318
	text "MORTIMER est"
	line "redoutable."

	para "Il change ses"
	line "#MON en"
	cont "fonction du talent"
	cont "de son adversaire."
	done
; 0x9a33e

MediumGraceSeenText: ; 0x9a33e
	text "Les TENEBRES ont"
	line "un avantage contre"
	cont "les #MON"
	cont "SPECTRE."

	para "Un jour, MORTIMER"
	line "sera vaincu!"
	done
; 0x9a37f

MediumGraceBeatenText: ; 0x9a37f
	text "Que-quoi?"
	done
; 0x9a38a

UnknownText_0x9a38a: ; 0x9a38a
	text "Si je ne peux pas"
	line "te battre<...>"

	para "Comment puis-je"
	line "vaincre MORTIMER?"
	done
; 0x9a3e8

EcruteakGymGuyText: ; 0x9a3e8
	text "Cette arène était"
	line "autrefois du type"
	cont "SPECTRE"

	para "Mais ces derniers"
	line "temps, elle s'est"

	para "mélangée aux dre-"
	line "sseurs de type"
	cont "TENEBRES."

	done
; 0x9a452

EcruteakGymGuyWinText: ; 0x9a452
	text "Waouh, <PLAYER>."
	line "Tu as été génial!"

	para "J'étais terrorisé,"
	line "je me suis caché"
	cont "dans un coin!"
	done
; 0x9a49c

UnknownText_0x9a49c: ; 0x9a49c
	text "MORTIMER, le CHAM-"
	line "PION, est absent."

	para "Tu dois partir."

	para "Hohohoho."
	done
; 0x9a4e9

EcruteakGym_MapEventHeader: ; 0x9a4e9
	; filler
	db 0, 0

	; warps
	db 33
	warp_def $11, $4, 10, GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY
	warp_def $11, $5, 10, GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY
	warp_def $e, $4, 4, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $4, $2, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $4, $3, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $4, $4, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $5, $4, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $4, $6, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $4, $7, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $6, $2, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $6, $3, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $6, $4, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $6, $5, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $6, $7, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $7, $7, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $8, $4, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $8, $5, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $8, $6, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $8, $7, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $8, $2, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $9, $2, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $a, $2, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $b, $2, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $a, $4, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $a, $5, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $c, $2, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $c, $3, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $c, $4, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $c, $5, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $a, $7, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $b, $7, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $c, $7, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	warp_def $d, $7, 3, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 15, 3, $0, MapEcruteakGymSignpost1Script
	signpost 15, 6, $0, MapEcruteakGymSignpost1Script

	; people-events
	db 8
	person_event SPRITE_MORTY, 5, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, MortyScript_0x99d58, EVENT_SET_BY_OAK_AFTER_16_BADGES
	person_event SPRITE_SAGE, 11, 6, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 1, TrainerSageJeffrey, -1
	person_event SPRITE_SAGE, 17, 7, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerSagePing, -1
	person_event SPRITE_GRANNY, 9, 11, $8, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 1, TrainerMediumMartha, -1
	person_event SPRITE_GRANNY, 13, 11, $8, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 1, TrainerMediumGrace, -1
	person_event SPRITE_GYM_GUY, 19, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, EcruteakGymGuyScript, -1
	person_event SPRITE_GRAMPS, 18, 8, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ObjectEvent, EVENT_MORTY_RETURNED_TO_ECRUTEAK_GYM
	person_event SPRITE_MORTY, 19, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, MortyScript_0x99d58, EVENT_MORTY_IS_AT_BACK_OF_GYM
; 0x9a5f9

