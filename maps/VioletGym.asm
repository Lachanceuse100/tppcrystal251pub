VioletGym_MapScriptHeader: ; 0x683c0
	; trigger count
	db 0

	; callback count
	db 0
; 0x683c2

FalknerScript_0x683c2: ; 0x683c2
	faceplayer
	loadfont
	checkevent EVENT_BEAT_ELM
	iftrue FalknerPostgameRematchScript
	checkevent EVENT_FALKNER_REMATCH
	iftrue FalknerAfterRematch
	checkevent EVENT_SET_BY_OAK_AFTER_16_BADGES
	iftrue FalknerRematchScript
	checkevent EVENT_BEAT_FALKNER
	iftrue UnknownScript_0x683ec
	writetext UnknownText_0x68473
	waitbutton
	closetext
	winlosstext UnknownText_0x6854a, $0000
	loadtrainer FALKNER, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_FALKNER
	loadfont
	writetext UnknownText_0x685af
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_ZEPHYRBADGE
	checkcode VAR_BADGES
	scall UnknownScript_0x68418
UnknownScript_0x683ec: ; 0x683ec
	checkevent EVENT_GOT_TM31_MUD_SLAP
	iftrue UnknownScript_0x68412
	setevent EVENT_BEAT_BIRD_KEEPER_ROD
	setevent EVENT_BEAT_BIRD_KEEPER_ABE
	domaptrigger GROUP_ELMS_LAB, MAP_ELMS_LAB, $2
	specialphonecall $3
	writetext UnknownText_0x685c8
	buttonsound
	verbosegiveitem TM_SKY_ATTACK, 1
	iffalse UnknownScript_0x68416
	setevent EVENT_GOT_TM31_MUD_SLAP
	writetext UnknownText_0x68648
	waitbutton
	closetext
	end
; 0x68412

FalknerRematchScript:
	checkevent EVENT_FOUGHT_ARTICUNO
	iffalse FalknerReject
	checkevent EVENT_FOUGHT_ZAPDOS
	iffalse FalknerReject
	checkevent EVENT_FOUGHT_MOLTRES
	iffalse FalknerReject
	writetext FalknerRematchTextBefore
	waitbutton
	closetext
	winlosstext FalknerRematchBeatenText, $0000
	loadtrainer FALKNER, 2
	startbattle
	returnafterbattle
	setevent EVENT_FALKNER_REMATCH
	loadfont

FalknerAfterRematch:
	writetext FalknerAfterRematchText
	waitbutton
	closetext
	end

FalknerReject:
	writetext FalknerRejectText
	waitbutton
	closetext
	end

FalknerPostgameRematchScript:
    writetext FalknerPostgameRematchText
    yesorno
    iffalse .return
    closetext
    loadtrainer FALKNER, 2
    winlosstext FalknerPostgameBeatenText, 0
    startbattle
    returnafterbattle
    loadfont
    writetext FalknerPostgameAfterText
    waitbutton
.return
    closetext
    end
	
FalknerRejectText:
	text "ARTIKODIN<...>"

	para "ELECHTOR<...>"

	para "SULFURA<...>"

	para "Dompter ces #-"
	line "MON oiseaux légen-"
	cont "daires est le test"
	cont "utile de puissance"
	cont "dans ma famille"
	cont "depuis des généra-"
	cont "tions."
	
	para "Tu dois compléter"
	line "ton #DEX,"
	cont "pas vrai?"

	para "Tu devrais donc"
	line "relever ce défi."

	para "Trouve les oiseaux"
	line "légendaires et"
	cont "attrape les ou ils"
	cont "se perchent!"

	para "Une fois cette"
	line "tâche accomplie,"
	cont "reviens ici."

	para "Reviens me montrer"
	line "jusqu'où tu peux"
	cont "voler!"
	done

UnknownScript_0x68412: ; 0x68412
	writetext UnknownText_0x68735
	waitbutton
UnknownScript_0x68416: ; 0x68416
	closetext
	end
; 0x68418

UnknownScript_0x68418: ; 0x68418
	if_equal $7, UnknownScript_0x68424
	if_equal $6, UnknownScript_0x68421
	end
; 0x68421

UnknownScript_0x68421: ; 0x68421
	jumpstd goldenrodrockets
; 0x68424

UnknownScript_0x68424: ; 0x68424
	jumpstd radiotowerrockets
; 0x68427

TrainerBird_keeperRod: ; 0x68427
	; bit/flag number
	dw $3fb

	; trainer group && trainer id
	db BIRD_KEEPER, ROD

	; text when seen
	dw Bird_keeperRodSeenText

	; text when trainer beaten
	dw Bird_keeperRodBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bird_keeperRodScript
; 0x68433

Bird_keeperRodScript: ; 0x68433
	talkaftercancel
	loadfont
	writetext UnknownText_0x68837
	waitbutton
	closetext
	end
; 0x6843b

TrainerBird_keeperAbe: ; 0x6843b
	; bit/flag number
	dw $3fc

	; trainer group && trainer id
	db BIRD_KEEPER, ABE

	; text when seen
	dw Bird_keeperAbeSeenText

	; text when trainer beaten
	dw Bird_keeperAbeBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bird_keeperAbeScript
; 0x68447

Bird_keeperAbeScript: ; 0x68447
	talkaftercancel
	loadfont
	writetext UnknownText_0x688c7
	waitbutton
	closetext
	end
; 0x6844f

VioletGymGuyScript: ; 0x6844f
	faceplayer
	loadfont
	checkevent EVENT_BEAT_FALKNER
	iftrue .VioletGymGuyWinScript
	writetext VioletGymGuyText
	waitbutton
	closetext
	end

.VioletGymGuyWinScript
	writetext VioletGymGuyWinText
	waitbutton
	closetext
	end
; 0x68463

MapVioletGymSignpost1Script: ; 0x68463
	checkflag ENGINE_ZEPHYRBADGE
	iftrue UnknownScript_0x6846c
	jumpstd gymstatue1
; 0x6846c

UnknownScript_0x6846c: ; 0x6846c
	trainertotext FALKNER, 1, $1
	jumpstd gymstatue2
; 0x68473

UnknownText_0x68473: ; 0x68473
	text "Je suis ALBERT, le"
	line "CHAMPION d'ARENE"
	cont "de MAUVILLE!"

	para "Tout le monde dit"
	line "que les #MON"

	para "oiseaux grillent"
	line "sous une"
	cont "étincelle<...>"

	para "Je n'autorise per-"
	line "sonne à insulter"
	cont "les #MON!"

	para "Tu vas voir la"
	line "vraie puissance"

	para "des magnifiques"
	line "#MON oiseaux!"
	done
; 0x6854a

FalknerRematchTextBefore:
	text "Bon retour."

	para "Il y a longtemps,"
	line "mon père a dompté"
	
	para "les #MON"
	line "oiseaux ultimes."

	para "Toi qui a égalé"
	line "cet exploit. Toi"
	para "qui te tiens"
	line "devant moi."

	para "Laisse nous te"
	line "montrer notre"
	cont "vraie puissance."
	done

FalknerRematchBeatenText:
	text "<...>Non, même les"
	line "#MON oiseaux"
	cont "légendaires<...>"
	done

FalknerAfterRematchText:
	text "Une défaite est"
	line "une défaite."

	para "Tu es vraiment"
	line "fort."

	para "Je continuerais"
	line "de m'entraîner et"
	para "je serais le plus"
	line "grand ORNITHOLOGUE"
	cont "#MON de tous"
	cont "les temps."

	done

FalknerPostgameRematchText:
	text "Rebonjour."

	para "Tu t'es entraîné,"
	line "je vois<...>"

	para "Souhaites-tu"
	line "encore combattre?"

	done
	
FalknerPostgameBeatenText:
	text "Mes #MON"
	line "oiseaux<...>"
	
	para "Nous ne sommes"
	line "toujours pas"
	cont "assez forts."
	done
	
FalknerPostgameAfterText:

	text "Ta puissance est"
	line "fantastique!"

	para "Pas étonnant que"
	line "même les #MON"
	cont "légendaires se"
	cont "soumettent à ta"
	cont "puissance."
	done

UnknownText_0x6854a: ; 0x6854a
	text "<...>Non! Les"
	line "#MON adorés de"
	cont "mon papa<...>"

	para "Très bien."
	line "Prends ceci."

	para "C'est le BADGE"
	line "ZEPHYR officiel de"
	cont "la LIGUE #MON."
	done
; 0x685af

UnknownText_0x685af: ; 0x685af
	text "<PLAYER> reçoit le"
	line "BADGE ZEPHYR."
	done
; 0x685c8

UnknownText_0x685c8: ; 0x685c8
	text "Le BADGE ZEPHYR"
	line "augmente l'ATTAQUE"
	cont "des #MON."

	para "Il permet aussi"
	line "aux #MON"
	cont "d'utiliser VOL"
	cont "en dehors des"
	cont "combats."

	para "Tiens, prends ça"
	line "aussi."
	done
; 0x68648

UnknownText_0x68648: ; 0x68648
	text "La CT31 contient"
	line "PIQUE."

	para "C'est l'attaque de"
	line "type VOL la plus"
	cont "puissante!"

	para "Elle charge une"
	line "énergie terri-"
	cont "fiante et la re-"
	cont "lâche sur son"
	cont "adversaire."

	para "Utilise la pour"
	line "conquérir les"
	cont "cieux!"
	done
; 0x68735

UnknownText_0x68735: ; 0x68735
	text "Il y a des ARENES"
	line "#MON dans les"
	cont "alentours."

	para "Tu devrais tester"
	line "tes capacités dans"
	cont "ces ARENES."

	para "Je vais m'entraî-"
	line "ner plus dur pour"
	cont "devenir le maître"
	cont "des oiseaux!"
	done
; 0x687cd

Bird_keeperRodSeenText: ; 0x687cd
	text "J'ai été élevé"
	line "dans la région"
	cont "de KANTO!"

	para "J'ai volé jusqu'à"
	line "JOHTO sur mon"
	cont "#MON oiseau!"

	para "Tu penses voler"
	line "plus haut que moi?"
	done
; 0x6882f

Bird_keeperRodBeatenText: ; 0x6882f
	text "Gaaah!"
	done
; 0x68837

UnknownText_0x68837: ; 0x68837
	text "Je vole sur les"
	line "ailes de mon"
	cont "RAPASDEPIC!"
	done
; 0x6887f

Bird_keeperAbeSeenText: ; 0x6887f
	text "Nos #MON sont"
	line "de KANTO."

	para "Ils sont"
	line "supérieurs aux"
	cont "types VOL du coin."
	done
; 0x688b3

Bird_keeperAbeBeatenText: ; 0x688b3
	text "Ce n'est pas vrai!"
	done
; 0x688c7

UnknownText_0x688c7: ; 0x688c7
	text "Les #MON"
	line "oiseaux sont"
	cont "communs dans la"
	cont "région de KANTO."

	para "Ici il n'y a que"
	line "des HOOTHOOT<...>"
	done
; 0x688f9

VioletGymGuyText: ; 0x688f9
	text "Salut, champion en"
	line "herbe!"

	para "Tu défies les"
	line "ARENES de JOHTO?"

	para "Les #MON ici"
	line "sont plus forts"
	cont "que ceux de KANTO!"

	para "ALBERT, le"
	line "CHAMPION, utilise"
	cont "des #MON de"
	cont "type VOL."

	para "Si tu as une"
	line "équipe de #MON"
	cont "PLANTE, tu ferais"
	cont "mieux d'être sur"
	cont "tes gardes."
	done
; 0x689c8

VioletGymGuyWinText: ; 0x689c8
	text "Beau combat! Tu"
	line "vas être CHAMPION"
	cont "en peu de temps à"
	cont "ce rythme!"
	done
; 0x68a0c

VioletGym_MapEventHeader: ; 0x68a0c
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $f, $4, 2, GROUP_VIOLET_CITY, MAP_VIOLET_CITY
	warp_def $f, $5, 2, GROUP_VIOLET_CITY, MAP_VIOLET_CITY

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 13, 3, $0, MapVioletGymSignpost1Script
	signpost 13, 6, $0, MapVioletGymSignpost1Script

	; people-events
	db 4
	person_event SPRITE_FALKNER, 5, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, FalknerScript_0x683c2, -1
	person_event SPRITE_YOUNGSTER, 10, 11, $8, 0, 2, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerBird_keeperRod, -1
	person_event SPRITE_YOUNGSTER, 14, 6, $9, 0, 2, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerBird_keeperAbe, -1
	person_event SPRITE_GYM_GUY, 17, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, VioletGymGuyScript, -1
; 0x68a5a

