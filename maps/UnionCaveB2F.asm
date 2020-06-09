UnionCaveB2F_MapScriptHeader: ; 0x5a308
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 2, UnknownScript_0x5a30d
; 0x5a30d

UnknownScript_0x5a30d: ; 0x5a30d
	checkflag ENGINE_UNION_CAVE_LAPRAS
	iftrue UnknownScript_0x5a319
	checkcode VAR_WEEKDAY
	if_equal FRIDAY, UnknownScript_0x5a31c
UnknownScript_0x5a319: ; 0x5a319
	disappear $7
	return
; 0x5a31c

UnknownScript_0x5a31c: ; 0x5a31c
	appear $7
	return
; 0x5a31f

SurfScript_0x5a31f: ; 0x5a31f
	faceplayer
	cry LAPRAS
	loadpokedata LAPRAS, 45
	startbattle
	writebyte LAPRAS
	special SpecialMonCheck
	iffalse DontKillLapras
	disappear $7
	setflag ENGINE_UNION_CAVE_LAPRAS
DontKillLapras:
	returnafterbattle
	end

TrainerCooltrainermNick: ; 0x5a32e
	; bit/flag number
	dw $548

	; trainer group && trainer id
	db COOLTRAINERM, NICK

	; text when seen
	dw CooltrainermNickSeenText

	; text when trainer beaten
	dw CooltrainermNickBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CooltrainermNickScript
; 0x5a33a

CooltrainermNickScript: ; 0x5a33a
	talkaftercancel
	loadfont
	writetext UnknownText_0x5a3f0
	waitbutton
	closetext
	end
; 0x5a342

TrainerCooltrainerfGwen: ; 0x5a342
	; bit/flag number
	dw $55b

	; trainer group && trainer id
	db COOLTRAINERF, GWEN

	; text when seen
	dw CooltrainerfGwenSeenText

	; text when trainer beaten
	dw CooltrainerfGwenBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CooltrainerfGwenScript
; 0x5a34e

CooltrainerfGwenScript: ; 0x5a34e
	talkaftercancel
	loadfont
	writetext UnknownText_0x5a488
	waitbutton
	closetext
	end
; 0x5a356

TrainerCooltrainerfEmma: ; 0x5a356
	; bit/flag number
	dw $569

	; trainer group && trainer id
	db COOLTRAINERF, EMMA

	; text when seen
	dw CooltrainerfEmmaSeenText

	; text when trainer beaten
	dw CooltrainerfEmmaBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CooltrainerfEmmaScript
; 0x5a362

CooltrainerfEmmaScript: ; 0x5a362
	talkaftercancel
	loadfont
	writetext UnknownText_0x5a52b
	waitbutton
	closetext
	end
; 0x5a36a

ItemFragment_0x5a36a: ; 0x5a36a
	db ELIXER, 1
; 0x5a36c

ItemFragment_0x5a36c: ; 0x5a36c
	db MAX_POTION, 1
; 0x5a36e

CooltrainermNickSeenText: ; 0x5a36e
	text "Il y a deux genres"
	line "de personnes."

	para "Ceux qui ont du"
	line "style et ceux qui"
	cont "n'en ont pas."

	para "De quel genre"
	line "es-tu?"
	done
; 0x5a3d5

CooltrainermNickBeatenText: ; 0x5a3d5
	text "Tu as un style"
	line "magique!"
	done
; 0x5a3f0

UnknownText_0x5a3f0: ; 0x5a3f0
	text "Le style de ton"
	line "#MON m'a éblou-"
	cont "it, je l'admets."

	para "Tu continueras de"
	line "t'améliorer!"
	done
; 0x5a444

CooltrainerfGwenSeenText: ; 0x5a444
	text "C'est qui ton"
	line "#MON favori?"

	para "Moi c'est EVOLI!"
	done
; 0x5a467

CooltrainerfGwenBeatenText: ; 0x5a467
	text "Pas si fort<...>"
	done
; 0x5a488

UnknownText_0x5a488: ; 0x5a488
	text "J'aime aussi les"
	line "cinq évolutions"
	cont "d'EVOLI!"
	done
; 0x5a4b6

CooltrainerfEmmaSeenText: ; 0x5a4b6
	text "Si le #MON que"
	line "j'aime était ici,"
	cont "j'irais ou il"
	cont "le souhaite."

	para "C'est ce que fait"
	line "un vrai dresseur."
	done
; 0x5a507

CooltrainerfEmmaBeatenText: ; 0x5a507
	text "Je préfère chou-"
	line "chouter mes bébés"
	cont "que ça!"
	done
; 0x5a52b

UnknownText_0x5a52b: ; 0x5a52b
	text "Une fois par se-,"
	line "maine, LOKHLASS"
	cont "se promène au bord"
	cont "de l'eau."

	para "Mais j'ai eu le"
	line "mien ailleurs!"
	done
; 0x5a57a

UnionCaveB2F_MapEventHeader: ; 0x5a57a
	; filler
	db 0, 0

	; warps
	db 1
	warp_def $3, $5, 5, GROUP_UNION_CAVE_B1F, MAP_UNION_CAVE_B1F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 6
	person_event SPRITE_ROCKER, 23, 19, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerCooltrainermNick, -1
	person_event SPRITE_COOLTRAINER_F, 17, 9, $a, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, TrainerCooltrainerfGwen, -1
	person_event SPRITE_COOLTRAINER_F, 34, 7, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerCooltrainerfEmma, -1
	person_event SPRITE_POKE_BALL, 6, 20, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x5a36a, EVENT_ITEM_UNION_CAVE_B2F_ELIXER
	person_event SPRITE_POKE_BALL, 23, 16, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x5a36c, EVENT_ITEM_UNION_CAVE_B2F_HYPER_POTION
	person_event SPRITE_SURF, 35, 15, $24, 1, 1, -1, -1, 8 + PAL_OW_BLUE, 0, 0, SurfScript_0x5a31f, EVENT_LAPRAS_IN_UNION_CAVE
; 0x5a5d3

