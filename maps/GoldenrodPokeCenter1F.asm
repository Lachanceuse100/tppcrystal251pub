GoldenrodPokeCenter1F_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

NurseScript_PCC:
	jumpstd pokecenternurse

GameboyKidScript_PCC1:
	jumptextfaceplayer PccText1

GameboyKidScript_PCC2:
	jumptextfaceplayer PccText2

GrannyTextScript_PCC:
	jumptextfaceplayer PccText3

LassScript_PCC:
	jumptextfaceplayer PccText4

YoungsterScript_PCC:
	jumptextfaceplayer PccText5

GreenHairScript_PCC:
	jumptextfaceplayer PccText6

CoolTrainerFScript_PCC:
	jumptextfaceplayer PccText7

TeacherScript_PCC:
	jumptextfaceplayer PccText8

YoungsterScript2_PCC:
	faceplayer
	loadfont
	writetext PccText9
	waitbutton
	closetext
	spriteface 14, $2
	end

PCCDirectorySignScript:
	loadfont
	writetext PccText10
	waitbutton
	closetext
	end

PCCMachineSignScript:
	loadfont
	writetext UnknownText_0x623c7
	waitbutton
	closetext
	end

LinkStationNurseScript:
	jumptextfaceplayer UnknownText_0x61072

PokefanFScript_PCC:
	faceplayer
	loadfont
	writetext UnknownText_0x623fb
	waitbutton
	writetext UnknownText_0x6248c
	yesorno
	iffalse UnknownScript_0x6104b
	takeitem EON_MAIL, 1
	iffalse UnknownScript_0x6104b
	writetext UnknownText_0x62549
	waitbutton
	writetext UnknownText_0x624a4
	waitbutton
	verbosegiveitem MAX_REVIVE, 1
	iffalse UnknownScript_0x61051
	writetext UnknownText_0x624e9
	waitbutton
	closetext
	end
; 0x6104b

UnknownScript_0x6104b: ; 0x6104b
	writetext UnknownText_0x62509
	waitbutton
	closetext
	end
; 0x61051

UnknownScript_0x61051: ; 0x61051
	giveitem EON_MAIL, $1
	writetext UnknownText_0x6252a
	waitbutton
	closetext
	end
; 0x6105a

UnknownText_0x61072: ; 0x61072
	text "Bonjour! Bienvenue"
	line "au coin d'échange"
	cont "du CENTRE"
	cont "#COM."

	para "Vous pouvez rece-"
	line "voir des #MON"
	cont "uniques avec un"
	cont "CODE SPECIAL."
	
	para "<...>Oh. Mais notre"
	line "système n'est pas"
	cont "encore en ligne<...>"
	
	para "Revenez plus tard!"
	done

;UnknownText_0x61344: ; 0x61344
	;text "We hope to see you"
	;line "again."
	;done
; 0x6135f

;UnknownText_0x6149a: ; 0x6149a
	;text "It's your new"
	;line "partner."

	;para "Please take care"
	;line "of it with love."

	;para "We hope to see you"
	;line "again."
	;done
; 0x614ed

;UnknownText_0x614ed: ; 0x614ed
	;text "Uh-oh. Your party"
	;line "is already full."

	;para "Please come back"
	;line "when you have room"
	;cont "in your party."
	;done
; 0x61544

;UnknownText_0x616fb: ; 0x616fb
	;text "We'll SAVE before"
	;line "connecting to the"
	;cont "CENTER."
	;done
; 0x61727

PccText5: ; 0x61c89
	text "Ce CENTRE #MON"
	line "est énorme."

	para "Ils viennent d'"
	line "ouvrir cet"
	cont "endroit."

	para "Il y a plein de"
	line "nouvelles"
	cont "machines."
	done
; 0x61cef

PccText7: ; 0x61cef
	text "J'ai pensé à quel-"
	line "que chose de"
	cont "marrant!"

	para "J'ai fais tenir"
	line "une LETTRE a mon"
	cont "NOARFANG et je"
	cont "l'ai échangé pour"
	cont "un autre NOARFANG."

	para "Si l'on faisait"
	line "tous ça, nous pou-"
	cont "rrions échanger"
	cont "des LETTRES avec"
	cont "toutes sortes de"
	cont "personnes."

	para "Ca s'appellerait<...>"
	line "La LETTRE"
	cont "NOARFANG!"

	para "Si ça devient po-"
	line "pulaire, nous pou-"
	cont "rions nous faire"
	cont "pleins de nouveaux"
	cont "amis!"
	done
; 0x61dfd

PccText8: ; 0x61f48
	text "Le CENTRE #MON"
	line "relie tous les"

	para "CENTRES #MON"
	line "avec un réseau"
	cont "sans fil."

	para "Je devrais pouvoir"
	line "me connecter avec"

	para "toutes sortes"
	line "sorts of people."
	done

PccText9: ; 0x61f48
	text "J'attends que mon"
	line "ami se connecte!"

	para "C'est dingue que"
	line "l'on puisse jouer"

	para "ensemble partout"
	line "dans le monde!"
	done
; 0x61fc9

PccText2: ; 0x61fc9
	text "Ces machines ne"
	line "peuvent pas encore"
	cont "être utilisés."

	para "C'est tout de même"
	line "cool de voir ces"

	para "endroits modernes"
	line "avant les autres."
	done
; 0x6202c

UnknownText_0x620a1: ; 0x620a1
	text "Si je passe aux"
	line "informations, je"
	cont "deviendrais"
	cont "célèbre!"

	para "Mais comment"
	line "faire<...>"
	done
; 0x62105

PccText1: ; 0x62105
	text "Dans tous les"
	line "CENTRE #MON,"

	para "Il y a un PC aux"
	line "deux étages."

	para "Quel gaspillage"
	line "d'argent!"
	done
; 0x62173

PccText6: ; 0x62173
	text "Je suis venu quand"
	line "j'ai entendu que"

	para "le CENTRE #MON"
	line "de DOUBLONVILLE"

	para "s'était équipé de"
	line "machines inédites."

	para "Mais je vois qu'"
	line "ils n'en sont"

	para "encore qu'aux"
	line "préparatifs<...>"
	done

; 0x62222

PccText3: ; 0x62222
	text "Voir toutes ces"
	line "nouvelles choses"
	cont "me fait rajeunir!"
	done
; 0x62260

PccText4: ; 0x62260
	text "J'entraîne ma"
	line "FOUINETTE pour"
	cont "l'arène de la"
	cont "ville."

	para "Je ne sais pas"
	line "pourquoi, mais"

	para "elle se met à"
	line "avoir peur lorsque"
	cont "j'approche d'un"
	cont "PC."
	done

PccText10: ; 0x62370
	text "CENTRE #MON et"
	line "COMMUNICATIONS"

	para "RDC: INFORMATION"

	para "A gauche:"
	line "ADMINISTRATION"

	para "Au centre:"
	line "CENTRE #MON"

	para "A droite:"
	line "COIN D'ECHANGE"
	cont "#MON"
	done
; 0x623c7

UnknownText_0x623c7: ; 0x623c7
	text "C'est un ordi-"
	line "nateur géant!"

	para "Ca a l'air très"
	line "compliqué<...>"
	done
; 0x623fb

UnknownText_0x623fb: ; 0x623fb
	text "Oh, ton sac a"
	line "l'air lourd!"

	para "Dis, aurais-tu"
	line "une LETTRE EVOLI"
	cont "sur toi?"

	para "Ma fille en"
	line "voudrait une."

	para "Tu peux t'en sépa-"
	line "rer d'une, hein?"
	done
; 0x6248c

UnknownText_0x6248c: ; 0x6248c
	text "Donner une LETTRE"
	line "EVOLI?"
	done
; 0x624a4

UnknownText_0x624a4: ; 0x624a4
	text "Oh, super! C'est"
	line "vraiment touchant."

	para "Voilà un petit"
	line "quelque chose"
	cont "en retour."
	done
; 0x624e9

UnknownText_0x624e9: ; 0x624e9
	text "Ma fille sera"
	line "ravie!"
	done
; 0x62509

UnknownText_0x62509: ; 0x62509
	text "Oh? Tu n'en as"
	line "pas? Dommage<...>"
	done
; 0x6252a

UnknownText_0x6252a: ; 0x6252a
	text "Oh<...> Bon, une"
	line "autre fois alors."
	done
; 0x62549

UnknownText_0x62549: ; 0x62549
	text "<PLAYER> donne une"
	line "LETTRE EVOLI."
	done
; 0x62564

SentretCryScript_PCC: ; 0x1a9f46
	loadfont
	writetext SentretCry_PCC
	cry SENTRET
	waitbutton
	closetext
	end

SentretCry_PCC: ; 0x62549
	text "FOUINETTE: Nyeut!"
	done

GoldenrodPokeCenter1F_MapEventHeader: ; 0x62564
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $f, $7, 15, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY
	warp_def $f, $6, 15, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY
	warp_def $6, $0, 1, GROUP_GOLDENROD_POKECOM_CENTER_2F_MOBILE, MAP_GOLDENROD_POKECOM_CENTER_2F_MOBILE
	warp_def $f, $0, 1, GROUP_POKECENTER_2F, MAP_POKECENTER_2F

	; xy triggers
	db 0
	;xy_trigger 0, $f, $6, $0, UnknownScript_0x60f94, $0, $0
	;xy_trigger 0, $f, $7, $0, UnknownScript_0x60fd9, $0, $0

	; signposts
	db 18
	signpost 9, 2, $0, PCCDirectorySignScript
	signpost 4, 24, $0, PCCMachineSignScript
	signpost 5, 24, $0, PCCMachineSignScript
	signpost 6, 24, $0, PCCMachineSignScript
	signpost 7, 24, $0, PCCMachineSignScript
	signpost 8, 24, $0, PCCMachineSignScript
	signpost 9, 24, $0, PCCMachineSignScript
	signpost 10, 24, $0, PCCMachineSignScript
	signpost 11, 25, $0, PCCMachineSignScript
	signpost 11, 26, $0, PCCMachineSignScript
	signpost 11, 27, $0, PCCMachineSignScript
	signpost 11, 28, $0, PCCMachineSignScript
	signpost 4, 29, $0, PCCMachineSignScript
	signpost 5, 29, $0, PCCMachineSignScript
	signpost 6, 29, $0, PCCMachineSignScript
	signpost 7, 29, $0, PCCMachineSignScript
	signpost 8, 29, $0, PCCMachineSignScript
	signpost 9, 29, $0, PCCMachineSignScript

	; people-events
	db 13
	person_event SPRITE_NURSE, 11, 11, $6, 0, 0, -1, -1, 0, 0, 0, NurseScript_PCC, -1
	person_event SPRITE_LINK_RECEPTIONIST, 12, 20, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, LinkStationNurseScript, -1
	person_event SPRITE_GAMEBOY_KID, 16, 14, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, GameboyKidScript_PCC2, -1
	person_event SPRITE_GAMEBOY_KID, 16, 15, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, GameboyKidScript_PCC1, -1
	person_event SPRITE_RHYDON, 13, 8, $16, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, SentretCryScript_PCC, -1
	person_event SPRITE_LASS, 13, 9, $6, 0, 0, -1, -1, 0, 0, 0, LassScript_PCC, -1
	person_event SPRITE_COOLTRAINER_F, 16, 8, $5, 0, 1,  -1, -1, 0, 0, 0, CoolTrainerFScript_PCC, -1
	person_event SPRITE_GRAMPS, 13, 25, $2, 0, 1, -1, -1, 0, 0, 0, GrannyTextScript_PCC, -1
	person_event SPRITE_POKEFAN_F, 18, 22, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, PokefanFScript_PCC, -1
	person_event SPRITE_YOUNGSTER, 17, 12, $2, 2, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, YoungsterScript_PCC, -1
	person_event SPRITE_SILVER, 10, 25, $2, 1, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, GreenHairScript_PCC, -1
	person_event SPRITE_TEACHER, 17, 31, $2, 0, 0, -1, -1, 8 + PAL_OW_YELLOW, 0, 0, TeacherScript_PCC, -1
	person_event SPRITE_YOUNGSTER, 14, 34, $8, 0, 0, -1, -1, 0, 0, 0, YoungsterScript2_PCC, -1
; 0x625cf

