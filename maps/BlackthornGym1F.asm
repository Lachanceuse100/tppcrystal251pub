BlackthornGym1F_MapScriptHeader: ; 0x194e00
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 1, UnknownScript_0x194e05
; 0x194e05

UnknownScript_0x194e05: ; 0x194e05
	checkevent EVENT_BLACKTHORN_GYM_BOULDER_1
	iffalse UnknownScript_0x194e0f
	changeblock $8, $2, $3b
UnknownScript_0x194e0f: ; 0x194e0f
	checkevent EVENT_BLACKTHORN_GYM_BOULDER_2
	iffalse UnknownScript_0x194e19
	changeblock $2, $4, $3a
UnknownScript_0x194e19: ; 0x194e19
	checkevent EVENT_BLACKTHORN_GYM_BOULDER_3
	iffalse UnknownScript_0x194e23
	changeblock $8, $6, $3b
UnknownScript_0x194e23: ; 0x194e23
	return
; 0x194e24

ClairScript_0x194e24: ; 0x194e24
	faceplayer
	loadfont
	checkflag ENGINE_RISINGBADGE
	iftrue UnknownScript_0x194e69
	checkevent EVENT_BEAT_CLAIR
	iftrue UnknownScript_0x194e63
	writetext UnknownText_0x194efa
	waitbutton
	closetext
	winlosstext UnknownText_0x194fd6, $0000
	loadtrainer CLAIR, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_CLAIR
	loadfont
	writetext UnknownText_0x19500e
	waitbutton
	closetext
	setevent EVENT_BEAT_COOLTRAINERM_PAUL
	setevent EVENT_BEAT_COOLTRAINERM_CODY
	setevent EVENT_BEAT_COOLTRAINERM_MIKE
	setevent EVENT_BEAT_COOLTRAINERF_FRAN
	setevent EVENT_BEAT_COOLTRAINERF_LOLA
	clearevent EVENT_MAHOGANY_MART_TRUE_OWNERS
	setevent EVENT_GRAMPS_BLOCKING_DRAGONS_DEN
	clearevent EVENT_GRAMPS_NOT_BLOCKING_DRAGONS_DEN
	end
; 0x194e63

UnknownScript_0x194e63: ; 0x194e63
	writetext UnknownText_0x195162
	waitbutton
	closetext
	end
; 0x194e69

UnknownScript_0x194e69: ; 0x194e69
	checkevent EVENT_GOT_TM24_DRAGONBREATH
	iftrue UnknownScript_0x194e94
	writetext UnknownText_0x195196
	buttonsound
	giveitem TM_DRAGON_PULSE, $1
	iffalse UnknownScript_0x194e8e
	itemtotext TM_DRAGON_PULSE, $0
	writetext UnknownText_0x1951bf
	playsound SFX_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_TM24_DRAGONBREATH
	writetext UnknownText_0x1951d1
	buttonsound
	jump UnknownScript_0x194e94
; 0x194e8e

UnknownScript_0x194e8e: ; 0x194e8e
	writetext UnknownText_0x19524f
	waitbutton
	closetext
	end
; 0x194e94

UnknownScript_0x194e94: ; 0x194e94
	writetext UnknownText_0x195272
	waitbutton
	closetext
	end
; 0x194e9a

TrainerCooltrainermPaul: ; 0x194e9a
	; bit/flag number
	dw $54a

	; trainer group && trainer id
	db COOLTRAINERM, PAUL

	; text when seen
	dw CooltrainermPaulSeenText

	; text when trainer beaten
	dw CooltrainermPaulBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CooltrainermPaulScript
; 0x194ea6

CooltrainermPaulScript: ; 0x194ea6
	talkaftercancel
	loadfont
	writetext UnknownText_0x1953f1
	waitbutton
	closetext
	end
; 0x194eae

TrainerCooltrainermMike: ; 0x194eae
	; bit/flag number
	dw $54c

	; trainer group && trainer id
	db COOLTRAINERM, MIKE

	; text when seen
	dw CooltrainermMikeSeenText

	; text when trainer beaten
	dw CooltrainermMikeBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CooltrainermMikeScript
; 0x194eba

CooltrainermMikeScript: ; 0x194eba
	talkaftercancel
	loadfont
	writetext UnknownText_0x195467
	waitbutton
	closetext
	end
; 0x194ec2

TrainerCooltrainerfLola: ; 0x194ec2
	; bit/flag number
	dw $55e

	; trainer group && trainer id
	db COOLTRAINERF, LOLA

	; text when seen
	dw CooltrainerfLolaSeenText

	; text when trainer beaten
	dw CooltrainerfLolaBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CooltrainerfLolaScript
; 0x194ece

CooltrainerfLolaScript: ; 0x194ece
	talkaftercancel
	loadfont
	writetext UnknownText_0x195516
	waitbutton
	closetext
	end
; 0x194ed6

BlackthornGymGuyScript: ; 0x194ed6
	faceplayer
	loadfont
	checkevent EVENT_BEAT_CLAIR
	iftrue .BlackthornGymGuyWinScript
	writetext BlackthornGymGuyText
	waitbutton
	closetext
	end

.BlackthornGymGuyWinScript
	writetext BlackthornGymGuyWinText
	waitbutton
	closetext
	end
; 0x194eea

MapBlackthornGym1FSignpost1Script: ; 0x194eea
	checkflag ENGINE_RISINGBADGE
	iftrue UnknownScript_0x194ef3
	jumpstd gymstatue1
; 0x194ef3

UnknownScript_0x194ef3: ; 0x194ef3
	trainertotext CLAIR, 1, $1
	jumpstd gymstatue2
; 0x194efa

UnknownText_0x194efa: ; 0x194efa
	text "Je suis SANDRA."

	para "Je suis la reine"
	line "des dragons."

	para "Je peux même tenir"
	line "tête au CONSEIL"
	cont "des 4 de la LIGUE."

	para "Tu veux toujours"
	line "m'affronter?"

	para "<...>Très bien."
	line "C'est parti!"

	para "En tant que CHAM-"
	line "PIONNE d'ARENE,"

	para "j'utiliserai tou-"
	line "te ma puissance!"
	done
; 0x194fd6

UnknownText_0x194fd6: ; 0x194fd6
	text "J'ai perdu?"

	para "Je n'y crois pas!"
	line "Il doit y avoir"
	cont "une erreur<...>"
	done
; 0x19500e

UnknownText_0x19500e: ; 0x19500e
	text "Je ne l'accepterai"
	line "pas."

	para "J'ai peut-être"
	line "perdu mais tu n'as"

	para "pas les épaules"
	line "pour la LIGUE"
	cont "#MON."

	para "Je sais!"

	para "Tu devrais relever"
	line "le défi des utili-"
	cont "sateurs de"
	cont "dragons."

	para "Derrière cette"
	line "ARENE se trouve"
	cont "l'ANTRE du DRAGON."

	para "Il y a un petit"
	line "temple au centre."
	cont "Vas-y."

	para "Si tu peux prouver"
	line "ta valeur,"

	para "tu seras digne de"
	line "porter le BADGE!"
	done
; 0x195162

UnknownText_0x195162: ; 0x195162
	text "Et alors?"

	para "On a peur"
	line "maintenant?"
	done
; 0x195196

UnknownText_0x195196: ; 0x195196
	text "Tu m'as faite"
	line "attendre!"

	para "Tiens! Prends-ça!."
	done
; 0x1951bf

UnknownText_0x1951bf: ; 0x1951bf
	text "<PLAYER> reçoit"
	line "CT24."
	done
; 0x1951d1

UnknownText_0x1951d1: ; 0x1951d1
	text "Elle contient"
	line "DRACOSOUFFLE."

	para "Hein? Non, ça n'a"
	line "rien à voir avec"
	cont "mon haleine."

	para "Ecoute: Si tu la"
	line "veux pas, t'as "
	cont "qu'a la laisser!"
	done
; 0x19524f

UnknownText_0x19524f: ; 0x19524f
	text "Quoi, tu n'as pas"
	line "de place?"
	done
; 0x195272

UnknownText_0x195272: ; 0x195272
	text "SANDRA: Bon, qu'"
	line "est-ce qu'il y a?"

	para "Tu ne vas pas à"
	line "la LIGUE #MON?"

	para "Tu sais comment y"
	line "aller au moins?"

	para "Va jusqu'a BOURG"
	line "GEON."

	para "Puis surfe vers"
	line "l'est."

	para "Le chemin sera"
	line "très dur."

	para "N'ose pas te faire"
	line "battre à la LIGUE"
	cont "#MON!"

	para "Sinon, j'aurais"
	line "l'air de quoi,"
	cont "moi?"

	para "Donne tout ce que"
	line "tu as."
	done
; 0x195396

CooltrainermPaulSeenText: ; 0x195396
	text "C'est ton premier"
	line "combat face à des"
	cont "dragons?"

	para "Je vais te montrer"
	line "leur résistance"
	cont "suprême!"
	done
; 0x1953db

CooltrainermPaulBeatenText: ; 0x1953db
	text "Mes #MON DRAGON"
	line "ont perdu?"
	done
; 0x1953f1

UnknownText_0x1953f1: ; 0x1953f1
	text "PETER voulait te"
	line "revoir?"

	para "Mensonge!"
	done
; 0x19542f

CooltrainermMikeSeenText: ; 0x19542f
	text "Mes chances de"
	line "perdre?"

	para "Même pas un"
	cont "pour cent!"
	done
; 0x19545b

CooltrainermMikeBeatenText: ; 0x19545b
	text "Etrange<...>"
	done
; 0x195467

UnknownText_0x195467: ; 0x195467
	text "Je connais mes"
	line "défauts<...>"

	para "Merci pour la"
	line "leçon!"
	done
; 0x19549d

CooltrainerfLolaSeenText: ; 0x19549d
	text "Les dragons sont"
	line "des #MON"

	para "sacrés. Ils sont"
	line "plein de vie."

	para "Le mien n'en a"
	line "peut-être pas le"

	para "type, mais ne le"
	line "sous-estimes pas!"
	done
; 0x19550a

CooltrainerfLolaBeatenText: ; 0x19550a
	text "Bien joué!"
	done
; 0x195516

UnknownText_0x195516: ; 0x195516
	text "Les dragons sont"
	line "faibles face aux"
	cont "attaques de type"
	cont "DRAGON."

	para "Retiens-ça si tu"
	line "veux battre"
	cont "SANDRA!"
	done
; 0x195544

BlackthornGymGuyText: ; 0x195544
	text "Salut, champion en"
	line "herbe!"

	para "C'est un long"
	line "voyage, mais on"

	para "est bientôt au"
	line "bout!"
	cont "Compte sur moi!"

	para "SANDRA utilise les"
	line "#MON mythiques"
	cont "et sacré de type"
	cont "DRAGON."

	para "Ils résistent les"
	line "types élémentaires"
	cont "communs mais ces"

	para "reptiles détestent"
	line "la GLACE et les"

	para "attaque FEE ont un"
	line "énorme avantage."
	done
; 0x195632

BlackthornGymGuyWinText: ; 0x195632
	text "Bien joué!"
	line "Beau combat!"

	para "Il ne te reste"
	line "plus que le chal-"
	cont "lenge de la LIGUE"
	cont "#MON."

	para "Tu es sur le point"
	line "de devenir"
	cont "MAITRE #MON!"
	done
; 0x1956ae

BlackthornGym1F_MapEventHeader: ; 0x1956ae
	; filler
	db 0, 0

	; warps
	db 7
	warp_def $11, $4, 1, GROUP_BLACKTHORN_CITY, MAP_BLACKTHORN_CITY
	warp_def $11, $5, 1, GROUP_BLACKTHORN_CITY, MAP_BLACKTHORN_CITY
	warp_def $7, $1, 1, GROUP_BLACKTHORN_GYM_2F, MAP_BLACKTHORN_GYM_2F
	warp_def $9, $7, 2, GROUP_BLACKTHORN_GYM_2F, MAP_BLACKTHORN_GYM_2F
	warp_def $6, $2, 3, GROUP_BLACKTHORN_GYM_2F, MAP_BLACKTHORN_GYM_2F
	warp_def $7, $7, 4, GROUP_BLACKTHORN_GYM_2F, MAP_BLACKTHORN_GYM_2F
	warp_def $6, $7, 5, GROUP_BLACKTHORN_GYM_2F, MAP_BLACKTHORN_GYM_2F

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 15, 3, $0, MapBlackthornGym1FSignpost1Script
	signpost 15, 6, $0, MapBlackthornGym1FSignpost1Script

	; people-events
	db 5
	person_event SPRITE_CLAIR, 7, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ClairScript_0x194e24, -1
	person_event SPRITE_COOLTRAINER_M, 10, 10, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerCooltrainermMike, -1
	person_event SPRITE_COOLTRAINER_M, 18, 5, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerCooltrainermPaul, -1
	person_event SPRITE_COOLTRAINER_F, 6, 13, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, TrainerCooltrainerfLola, -1
	person_event SPRITE_GYM_GUY, 19, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, BlackthornGymGuyScript, -1
; 0x195722

