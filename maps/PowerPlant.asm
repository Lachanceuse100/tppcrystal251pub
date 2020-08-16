PowerPlant_MapScriptHeader: ; 0x188db9
	; trigger count
	db 2

	; triggers
	dw .Trigger0, $0000
	dw .Trigger1, $0000

	; callback count
	db 1
	dbw 1, .OpenSesame
; 0x188dc3

.Trigger0: ; 0x188dc3
	end
; 0x188dc4

.Trigger1: ; 0x188dc4
	end
; 0x188dc5
.OpenSesame
	checkevent EVENT_FIRST_TIME_BABA
	iffalse .skip
	changeblock 0, 6, $5
.skip
	return

UnknownScript_0x188dc5: ; 0x188dc5
	playsound SFX_CALL
	showemote $0, $2, 15
	waitsfx
	pause 30
	applymovement $2, MovementData_0x188ed5
	spriteface $3, $0
	spriteface $4, $0
	loadfont
	writetext UnknownText_0x188f22
	waitbutton
	closetext
	spriteface $2, $2
	spriteface $0, $3
	loadfont
	writetext UnknownText_0x188f7f
	waitbutton
	closetext
	spriteface $0, $0
	applymovement $2, MovementData_0x188eda
	dotrigger $0
	end
; 0x188df5

OfficerScript_0x188df5: ; 0x188df5
	faceplayer
	loadfont
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x188e0f
	checkevent EVENT_MET_MANAGER_AT_POWER_PLANT
	iftrue UnknownScript_0x188e09
	writetext UnknownText_0x188ee0
	waitbutton
	closetext
	end
; 0x188e09

UnknownScript_0x188e09: ; 0x188e09
	writetext UnknownText_0x188f7f
	waitbutton
	closetext
	end
; 0x188e0f

UnknownScript_0x188e0f: ; 0x188e0f
	writetext UnknownText_0x188fa2
	waitbutton
	closetext
	end
; 0x188e15

GymGuyScript_0x188e15: ; 0x188e15
	faceplayer
	loadfont
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x188e23
	writetext UnknownText_0x188fcf
	waitbutton
	closetext
	end
; 0x188e23

UnknownScript_0x188e23: ; 0x188e23
	writetext UnknownText_0x189038
	waitbutton
	closetext
	end
; 0x188e29

GymGuyScript_0x188e29: ; 0x188e29
	faceplayer
	loadfont
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x188e37
	writetext UnknownText_0x189079
	waitbutton
	closetext
	end
; 0x188e37

UnknownScript_0x188e37: ; 0x188e37
	writetext UnknownText_0x1890ef
	waitbutton
	closetext
	end
; 0x188e3d

OfficerScript_0x188e3d: ; 0x188e3d
	faceplayer
	loadfont
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x188e4b
	writetext UnknownText_0x18910e
	waitbutton
	closetext
	end
; 0x188e4b

UnknownScript_0x188e4b: ; 0x188e4b
	writetext UnknownText_0x18917f
	waitbutton
	closetext
	end
; 0x188e51

GymGuyScript_0x188e51: ; 0x188e51
	faceplayer
	loadfont
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x188e5f
	writetext UnknownText_0x1891c2
	waitbutton
	closetext
	end
; 0x188e5f

UnknownScript_0x188e5f: ; 0x188e5f
	writetext UnknownText_0x189225
	waitbutton
	closetext
	end
; 0x188e65

FisherScript_0x188e65: ; 0x188e65
	faceplayer
	loadfont
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x188eac
	checkitem MACHINE_PART
	iftrue UnknownScript_0x188e93
	checkevent EVENT_MET_MANAGER_AT_POWER_PLANT
	iftrue UnknownScript_0x188e8d
	writetext UnknownText_0x189264
	waitbutton
	closetext
	setevent EVENT_MET_MANAGER_AT_POWER_PLANT
	clearevent EVENT_ROCKET_IN_CERULEAN_GYM
	clearevent EVENT_FOUND_MACHINE_PART_IN_CERULEAN_GYM
	domaptrigger GROUP_CERULEAN_GYM, MAP_CERULEAN_GYM, $1
	dotrigger $1
	end
; 0x188e8d

UnknownScript_0x188e8d: ; 0x188e8d
	writetext UnknownText_0x189308
	waitbutton
	closetext
	end
; 0x188e93

UnknownScript_0x188e93: ; 0x188e93
	writetext UnknownText_0x18936e
	buttonsound
	takeitem MACHINE_PART, 1
	setevent EVENT_RETURNED_MACHINE_PART
	clearevent EVENT_LADIES_IN_SAFFRON_STATION
	setevent EVENT_MEN_BLOCKING_UNDERGROUND_PATH_ROUTES_5_6
	setevent EVENT_ROCKET_ON_ROUTE_24
	setevent EVENT_RESTORED_POWER_TO_KANTO
	clearevent EVENT_MAGNET_TRAIN_PRESIDENT_IN_GOLDENROD_STATION
UnknownScript_0x188eac: ; 0x188eac
	checkevent EVENT_GOT_TM07_ZAP_CANNON
	iftrue UnknownScript_0x188ec5
	writetext UnknownText_0x1893c4
	buttonsound
	verbosegiveitem TM_THUNDER, 1
	iffalse UnknownScript_0x188ec3
	setevent EVENT_GOT_TM07_ZAP_CANNON
	writetext UnknownText_0x1893f4
	waitbutton
UnknownScript_0x188ec3: ; 0x188ec3
	closetext
	end
; 0x188ec5

UnknownScript_0x188ec5: ; 0x188ec5
	writetext UnknownText_0x189475
	waitbutton
	closetext
	end
; 0x188ecb

GymGuyScript_0x188ecb: ; 0x188ecb
	faceplayer
	loadfont
	trade $6
	waitbutton
	closetext
	end
; 0x188ed2

MapPowerPlantSignpost1Script: ; 0x188ed2
	jumpstd difficultbookshelf
; 0x188ed5

MovementData_0x188ed5: ; 0x188ed5
	step_right
	step_right
	step_up
	step_up
	step_end
; 0x188eda

MovementData_0x188eda: ; 0x188eda
	step_down
	step_down
	step_left
	step_left
	turn_head_down
	step_end
; 0x188ee0

UnknownText_0x188ee0: ; 0x188ee0
	text "Un voleur est en-"
	line "tré par effraction"
	cont "dans la CENTRALE."

	para "Mais où va le"
	line "monde?"
	done
; 0x188f22

UnknownText_0x188f22: ; 0x188f22
	text "On racontre des"
	line "trucs à AZURIA."

	para "Un drôle de type"
	line "rôde dans les"
	cont "environs<...>"
	done
; 0x188f7f

UnknownText_0x188f7f: ; 0x188f7f
	text "Tu veux bien"
	line "m'aider?"
	done
; 0x188fa2

UnknownText_0x188fa2: ; 0x188fa2
	text "Il faut renforcer"
	line "la sécurité."
	done
; 0x188fcf

UnknownText_0x188fcf: ; 0x188fcf
	text "Quelqu'un a volé"
	line "une partie essen-"

	para "tielle du généra-"
	line "teur."

	para "Sans elle, rien"
	line "ne marche."
	done
; 0x189038

UnknownText_0x189038: ; 0x189038
	text "Le générateur est"
	line "en marche. Il crée"

	para "de l'électricité"
	line "à gogo."
	done
; 0x189079

UnknownText_0x189079: ; 0x189079
	text "Cette CENTRALE a"
	line "été abandonnée il"
	cont "y a longtemps."

	para "On l'a relancée"
	line "pour donner de"

	para "l'énergie au TRAIN"
	line "MAGNET."
	done
; 0x1890ef

UnknownText_0x1890ef: ; 0x1890ef
	text "Le générateur est"
	line "en marche!"
	done
; 0x18910e

UnknownText_0x18910e: ; 0x18910e
	text "Le PATRON de la"
	line "CENTRALE est plus"
	cont "loin."

	para "Attention, il est"
	line "furax depuis que"
	cont "quelqu'un a sac-"
	cont "cagé son joli"
	cont "générateur<...>"
	done
; 0x18917f

UnknownText_0x18917f: ; 0x18917f
	text "Depuis la répara-"
	line "tion du généra-"

	para "teur, le PATRON"
	line "est très heureux."
	done
; 0x1891c2

UnknownText_0x1891c2: ; 0x1891c2
	text "Le TRAIN MAGNET"
	line "consomme beaucoup"
	cont "d'électricité."

	para "Il ne bougera pas"
	line "si le nouveau gé-"
	cont "nérateur ne marche"
	cont "pas<...>"
	done
; 0x189225

UnknownText_0x189225: ; 0x189225
	text "OK! On peut à nou-"
	line "veau faire marcher"
	cont "le TRAIN MAGNET."
	done
; 0x189264

UnknownText_0x189264: ; 0x189264
	text "PATRON: Je vais"
	line "exploser!"

	para "Qui? Qui ose sabo-"
	line "ter mon généra-"
	cont "teur?"

	para "J'ai passé telle-"
	line "ment de temps"
	cont "dessus!"

	para "Oh, si je l'attra-"
	line "pe, il va sentir"
	cont "le courant passer!"
	done
; 0x189308

UnknownText_0x189308: ; 0x189308
	text "PATRON: J'te jure,"
	line "il s'en tirera pas"
	cont "comme ça!"

	para "Il peut s'excuser"
	line "si il veut mais je"

	para "vais l'électrocu-"
	line "ter!"

	para "Gahahahah!"
	done
; 0x18936e

UnknownText_0x18936e: ; 0x18936e
	text "PATRON: Oh mais"
	line "c'est<...>"

	para "C'est<...>"

	para "C'est la PARTIE"
	line "manquante de mon"
	cont "joli générateur!"
	cont "Tu l'as trouvée?"
	done
; 0x1893c4

UnknownText_0x1893c4: ; 0x1893c4
	text "Wahah! Merci!"

	para "Tiens! Prends"
	line "cette CT!"
	done
; 0x1893f4

UnknownText_0x1893f4: ; 0x1893f4
	text "PATRON: La CT25"
	line "est FATAL-FOUDRE!"

	para "C'est super"
	line "puissant!"

	para "C'est pas super"
	line "précis mais ça"

	para "dépote! Je te"
	line "jure!"
	done
; 0x189475

UnknownText_0x189475: ; 0x189475
	text "PATRON: Oh, mon"
	line "petit générateur"
	cont "chéri!"

	para "Vas-y! Pompe"
	line "l'électricité!"
	done
; 0x1894b9

PowerPlant_MapEventHeader: ; 0x1894b9
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $11, $2, 2, GROUP_ROUTE_10_NORTH, MAP_ROUTE_10_NORTH
	warp_def $11, $3, 2, GROUP_ROUTE_10_NORTH, MAP_ROUTE_10_NORTH
	warp_def 6, 1, 1, GROUP_POWERPLANTB1, MAP_POWERPLANTB1

	; xy triggers
	db 1
	xy_trigger 1, $c, $5, $0, UnknownScript_0x188dc5, $0, $0

	; signposts
	db 2
	signpost 1, 0, $0, MapPowerPlantSignpost1Script
	signpost 1, 1, $0, MapPowerPlantSignpost1Script

	; people-events
	db 7
	person_event SPRITE_OFFICER, 18, 8, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, OfficerScript_0x188df5, -1
	person_event SPRITE_GYM_GUY, 13, 6, $3, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, GymGuyScript_0x188e15, -1
	person_event SPRITE_GYM_GUY, 15, 10, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, GymGuyScript_0x188e29, -1
	person_event SPRITE_OFFICER, 7, 13, $8, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, OfficerScript_0x188e3d, -1
	person_event SPRITE_GYM_GUY, 6, 11, $5, 0, 1, -1, -1, 8 + PAL_OW_BLUE, 0, 0, GymGuyScript_0x188e51, -1
	person_event SPRITE_FISHER, 14, 18, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, FisherScript_0x188e65, -1
	person_event SPRITE_GYM_GUY, 9, 9, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, GymGuyScript_0x188ecb, -1
; 0x189536

