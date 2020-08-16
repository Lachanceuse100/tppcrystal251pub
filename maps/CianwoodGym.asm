CianwoodGym_MapScriptHeader: ; 0x9d60d
	; trigger count
	db 0

	; callback count
	db 0
; 0x9d60f

ChuckScript_0x9d60f: ; 0x9d60f
	faceplayer
	loadfont
	checkevent EVENT_BEAT_ELM
	iftrue ChuckPostgameRematchScript
	checkevent EVENT_CHUCK_REMATCH
	iftrue ChuckAfterRematch
	checkevent EVENT_SET_BY_OAK_AFTER_16_BADGES
	iftrue ChuckRematchScript
	checkevent EVENT_BEAT_CHUCK
	iftrue UnknownScript_0x9d656
	writetext UnknownText_0x9d6f9
	waitbutton
	closetext
	spriteface $2, $3
	loadfont
	writetext UnknownText_0x9d76f
	waitbutton
	closetext
	applymovement $7, MovementData_0x9d6f3
	playsound SFX_STRENGTH
	earthquake 80
	disappear $7
	pause 30
	faceplayer
	loadfont
	writetext UnknownText_0x9d78a
	waitbutton
	closetext
	winlosstext UnknownText_0x9d7f6, $0000
	loadtrainer CHUCK, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_CHUCK
	loadfont
	writetext UnknownText_0x9d835
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_STORMBADGE
	checkcode VAR_BADGES
	scall UnknownScript_0x9d681
UnknownScript_0x9d656: ; 0x9d656
	checkevent EVENT_GOT_TM01_DYNAMICPUNCH
	iftrue UnknownScript_0x9d67b
	setevent EVENT_BEAT_BLACKBELT_YOSHI
	setevent EVENT_BEAT_BLACKBELT_LAO
	setevent EVENT_BEAT_BLACKBELT_NOB
	setevent EVENT_BEAT_BLACKBELT_LUNG
	writetext UnknownText_0x9d84d
	buttonsound
	verbosegiveitem TM_DYNAMICPUNCH, 1
	iffalse UnknownScript_0x9d67f
	setevent EVENT_GOT_TM01_DYNAMICPUNCH
	writetext UnknownText_0x9d8da
	waitbutton
	closetext
	end
; 0x9d67b

ChuckRematchScript:
	checkevent EVENT_BEAT_BLACKBELT_KIYO
	iffalse ChuckReject
	writetext ChuckRematchTextBefore
	waitbutton
	closetext
	winlosstext ChuckRematchBeatenText, $0000
	loadtrainer CHUCK, 2
	startbattle
	returnafterbattle
	setevent EVENT_CHUCK_REMATCH
	loadfont ;fallthrough

ChuckAfterRematch:
	writetext ChuckAfterRematchText
	waitbutton
	closetext
	end

ChuckReject:
	writetext ChuckRejectText
	waitbutton
	closetext
	end

ChuckRejectText:
	text "Ah, <PLAY_G>!"
	line "C'est un plaisir"
	cont "de te revoir!"

	para "Je m'entraînais"
	line "pour notre combat"
	cont "mais, euh<...>"

	para "J'en ai trop fait<...>"

	para "Pendant que mes"
	line "#MON se"
	cont "reposent, tu de-"

	para "vrais rencontrer"
	line "mon élève, KIYO."

	para "Il devrait être"
	line "au MONT CREUSET."

	para "Il est assez fort"
	line "pour faire suer"
	cont "n'importe qui!"

	para "WAHAHAHAHA!"
	done


UnknownScript_0x9d67b: ; 0x9d67b
	writetext UnknownText_0x9d930
	waitbutton
UnknownScript_0x9d67f: ; 0x9d67f
	closetext
	end
; 0x9d681

UnknownScript_0x9d681: ; 0x9d681
	if_equal $7, UnknownScript_0x9d68d
	if_equal $6, UnknownScript_0x9d68a
	end
; 0x9d68a

UnknownScript_0x9d68a: ; 0x9d68a
	jumpstd goldenrodrockets
; 0x9d68d

UnknownScript_0x9d68d: ; 0x9d68d
	jumpstd radiotowerrockets
; 0x9d690

TrainerBlackbeltYoshi: ; 0x9d690
	; bit/flag number
	dw $4a5

	; trainer group && trainer id
	db BLACKBELT_T, YOSHI

	; text when seen
	dw BlackbeltYoshiSeenText

	; text when trainer beaten
	dw BlackbeltYoshiBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw BlackbeltYoshiScript
; 0x9d69c

BlackbeltYoshiScript: ; 0x9d69c
	talkaftercancel
	loadfont
	writetext UnknownText_0x9d9fa
	waitbutton
	closetext
	end
; 0x9d6a4

TrainerBlackbeltLao: ; 0x9d6a4
	; bit/flag number
	dw $4a7

	; trainer group && trainer id
	db BLACKBELT_T, LAO

	; text when seen
	dw BlackbeltLaoSeenText

	; text when trainer beaten
	dw BlackbeltLaoBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw BlackbeltLaoScript
; 0x9d6b0

BlackbeltLaoScript: ; 0x9d6b0
	talkaftercancel
	loadfont
	writetext UnknownText_0x9da61
	waitbutton
	closetext
	end
; 0x9d6b8

TrainerBlackbeltNob: ; 0x9d6b8
	; bit/flag number
	dw $4a8

	; trainer group && trainer id
	db BLACKBELT_T, NOB

	; text when seen
	dw BlackbeltNobSeenText

	; text when trainer beaten
	dw BlackbeltNobBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw BlackbeltNobScript
; 0x9d6c4

BlackbeltNobScript: ; 0x9d6c4
	talkaftercancel
	loadfont
	writetext UnknownText_0x9dac0
	waitbutton
	closetext
	end
; 0x9d6cc

TrainerBlackbeltLung: ; 0x9d6cc
	; bit/flag number
	dw $4aa

	; trainer group && trainer id
	db BLACKBELT_T, LUNG

	; text when seen
	dw BlackbeltLungSeenText

	; text when trainer beaten
	dw BlackbeltLungBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw BlackbeltLungScript
; 0x9d6d8

BlackbeltLungScript: ; 0x9d6d8
	talkaftercancel
	loadfont
	writetext UnknownText_0x9db14
	waitbutton
	closetext
	end
; 0x9d6e0

BoulderScript_0x9d6e0: ; 0x9d6e0
	jumpstd strengthboulder
; 0x9d6e3

MapCianwoodGymSignpost1Script: ; 0x9d6e3
	checkflag ENGINE_STORMBADGE
	iftrue UnknownScript_0x9d6ec
	jumpstd gymstatue1
; 0x9d6ec

UnknownScript_0x9d6ec: ; 0x9d6ec
	trainertotext CHUCK, 1, $1
	jumpstd gymstatue2
; 0x9d6f3

MovementData_0x9d6f3: ; 0x9d6f3
	db $39 ; movement
	big_step_left
	big_step_up
	fast_jump_step_right
	db $38 ; movement
	step_end
; 0x9d6f9

UnknownText_0x9d6f9: ; 0x9d6f9
	text "WAHAHAHA!"

	para "Tu as réussi à"
	line "venir jusqu'ici!"

	para "Laisse-moi te dire"
	line "que je suis le"
	cont "plus fort!"

	para "Mes #MON"
	line "explosent la roche"
	cont "et fracassent les"
	cont "os!"

	para "Regarde ça!"
	done
; 0x9d76f

UnknownText_0x9d76f: ; 0x9d76f
	text "CHUCK: Blurrp!"
	line "<...><...><...><...><...><...><...><...><...><...><...><...><...>"

	para "Aaaarrgh!"
	done
; 0x9d78a

UnknownText_0x9d78a: ; 0x9d78a
	text "Alors, t'en dis"
	line "quoi? T'as peur?"

	para "De quoi?"
	line "Ca n'a rien à voir"

	para "avec les #MON?"
	line "Je sais!"

	para "Allez, en position"
	line "pour le combat!"
	done
; 0x9d7f6

ChuckRematchTextBefore:
	text "WAHAHAHA!"

	para "Ah, pardon pour"
	line "ce cri!"

	para "J'ai la pêche!"

	para "J'ai fini mon"
	line "entraînement!"

	para "Alors qu'est-ce"
	line "qui t'amène ici?"

	para "Un nouveau combat"
	line "peut-être?"
	done

ChuckRematchBeatenText:
	text "Hein? Quoi?"
	line "J'ai encore perdu?"

	para "Voyez-vous ça!"
	done

ChuckAfterRematchText:
	text "WAHAHA!"

	para "On ne s'ennuie"
	line "jamais avec toi!"
	done

UnknownText_0x9d7f6: ; 0x9d7f6
	text "Hein? Quoi? J'ai"
	line "pas gagné là?"

	para "Voyez-vous ça!"
	line "Tu mérties bien ce"
	cont "bon vieux BADGE"
	cont "CHOC!"
	done
; 0x9d835

UnknownText_0x9d835: ; 0x9d835
	text "<PLAYER> reçoit"
	line "le BADGE CHOC."
	done
; 0x9d84d

UnknownText_0x9d84d: ; 0x9d84d
	text "Le BADGE CHOC per-"
	line "met à tes #MON"

	para "d'utiliser FLASH"
	line "en dehors des"
	cont "combats."

	para "Tiens, attrape ça!"
	done
; 0x9d8da

UnknownText_0x9d8da: ; 0x9d8da
	text "C'est DYNAMOPOING."

	para "Ca ne touche pas"
	line "toujours mais"

	para "lorsque le coup"
	line "est porté, il"
	cont "entraîne la confu-"
	cont "sion!"
	done
; 0x9d930

UnknownText_0x9d930: ; 0x9d930
	text "WAHAHA! J'ai aimé"
	line "me battre contre"
	cont "toi!"

	para "Mais une défaite"
	line "est une défaite!"

	para "Je m'entraînerais"
	line "24 heures sur 24"
	cont "désormais!"
	done
; 0x9d997

BlackbeltYoshiSeenText: ; 0x9d997
	text "Mes #MON et moi"
	line "sommes liés par"
	cont "notre amitié."

	para "Nous ne serons"
	line "jamais vaincus!"
	done
; 0x9d9e9

BlackbeltYoshiBeatenText: ; 0x9d9e9
	text "Ce n'est pas vrai!"
	done
; 0x9d9fa

UnknownText_0x9d9fa: ; 0x9d9fa
	text "Je vais bouder"
	line "dans le coin<...>"
	done
; 0x9da2e

BlackbeltLaoSeenText: ; 0x9da2e
	text "Nos arts martiaux"
	line "ne craignent"
	cont "personne!"
	done
; 0x9da50

BlackbeltLaoBeatenText: ; 0x9da50
	text "J'ai peur<...>"
	done
; 0x9da61

UnknownText_0x9da61: ; 0x9da61
	text "Les #MON COMBAT"
	line "ont peur du type"
	cont "PSY<...>"
	done
; 0x9da8a

BlackbeltNobSeenText: ; 0x9da8a
	text "Les mots sont"
	line "inutiles."

	para "Nos poings parle-"
	line "ront pour nous!"
	done
; 0x9dabd

BlackbeltNobBeatenText: ; 0x9dabd
	text "<...>"
	done
; 0x9dac0

UnknownText_0x9dac0: ; 0x9dac0
	text "Tous les dresseurs"
	line "ici utilisent une"
	cont "CEINT. NOIRE pour"
	cont "monter la puissan-"
	cont "ce de nos #MON."

	para "CHUCK, notre cham-"
	line "pion est une"
	cont "exception."

	para "Il est assez fort"
	line "comme ça!"
	done
; 0x9dad9

BlackbeltLungSeenText: ; 0x9dad9
	text "Mes poings de fou"
	line "vont terrasser tes"
	cont "#MON!"
	done
; 0x9db02

BlackbeltLungBeatenText: ; 0x9db02
	text "J'ai été brisé!"
	done
; 0x9db14

UnknownText_0x9db14: ; 0x9db14
	text "Mes #MON ont"
	line "perdu, ma fierté"
	cont "est brisé<...>"
	done
; 0x9db3e

ChuckPostgameRematchScript:
    writetext ChuckPostgameRematchText
    yesorno
    iffalse .return
    closetext
    loadtrainer CHUCK, 2
    winlosstext ChuckPostgameBeatenText, 0
    startbattle
    returnafterbattle
    loadfont
    writetext ChuckPostgameAfterText
    waitbutton
.return
    closetext
    end
	
ChuckPostgameRematchText:
	text "WAHAHA!"

	para "Je savais que tu"
	line "reviendrais!"

	para "Tu veux encore"
	line "te battre?"

	done
	
ChuckPostgameBeatenText:
	text "Quoi?! Impossible!"
	
	para "Tu m'as encore"
	line "battu!"
	done
	
ChuckPostgameAfterText:

	text "Une défaite est"
	line "une défaite!"
	
	para "Il faut encore que"
	line "je m'entraîne!"

	para "WAHAHA!"

	done

CianwoodGym_MapEventHeader: ; 0x9db3e
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $11, $4, 2, GROUP_CIANWOOD_CITY, MAP_CIANWOOD_CITY
	warp_def $11, $5, 2, GROUP_CIANWOOD_CITY, MAP_CIANWOOD_CITY

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 15, 3, $0, MapCianwoodGymSignpost1Script
	signpost 15, 6, $0, MapCianwoodGymSignpost1Script

	; people-events
	db 9
	person_event SPRITE_CHUCK, 5, 8, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, ChuckScript_0x9d60f, -1
	person_event SPRITE_BLACK_BELT, 16, 6, $9, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 3, TrainerBlackbeltYoshi, -1
	person_event SPRITE_BLACK_BELT, 16, 11, $8, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 3, TrainerBlackbeltLao, -1
	person_event SPRITE_BLACK_BELT, 13, 7, $9, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 2, TrainerBlackbeltNob, -1
	person_event SPRITE_BLACK_BELT, 9, 9, $8, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 1, TrainerBlackbeltLung, -1
	person_event SPRITE_BOULDER, 5, 9, $19, 0, 0, -1, -1, 0, 0, 0, BoulderScript_0x9d6e0, -1
	person_event SPRITE_BOULDER, 11, 7, $19, 0, 0, -1, -1, 0, 0, 0, BoulderScript_0x9d6e0, -1
	person_event SPRITE_BOULDER, 11, 8, $19, 0, 0, -1, -1, 0, 0, 0, BoulderScript_0x9d6e0, -1
	person_event SPRITE_BOULDER, 11, 9, $19, 0, 0, -1, -1, 0, 0, 0, BoulderScript_0x9d6e0, -1
; 0x9dbcd

