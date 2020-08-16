SaffronGym_MapScriptHeader: ; 0x189c2c
	; trigger count
	db 0

	; callback count
	db 0
; 0x189c2e

SabrinaScript_0x189c2e: ; 0x189c2e
	faceplayer
	loadfont
	checkevent EVENT_SET_BY_OAK_AFTER_16_BADGES
	iffalse .skip
	checkevent EVENT_FIRST_TIME_BABA
	iffalse SabrinaReject
.skip
	checkflag ENGINE_MARSHBADGE
	iftrue UnknownScript_0x189c65
	writetext UnknownText_0x189cdf
	waitbutton
	closetext
	winlosstext UnknownText_0x189df4, $0000
	loadtrainer SABRINA, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_SABRINA
	setevent EVENT_BEAT_MEDIUM_REBECCA
	setevent EVENT_BEAT_MEDIUM_DORIS
	setevent EVENT_BEAT_PSYCHIC_FRANKLIN
	setevent EVENT_BEAT_PSYCHIC_JARED
	loadfont
	writetext UnknownText_0x189e95
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_MARSHBADGE
	writetext UnknownText_0x189ead
	waitbutton
	verbosegiveitem TM_REST, 1
	writetext AfterGIveRestText
	waitbutton
	closetext
	end
; 0x189c65

UnknownScript_0x189c65: ; 0x189c65
	writetext UnknownText_0x189f6c
	waitbutton
	closetext
	end
; 0x189c6b

SabrinaReject:
	writetext SabrinaRejectText
	waitbutton
	closetext
	end

TrainerMediumRebecca: ; 0x189c6b
	; bit/flag number
	dw $590

	; trainer group && trainer id
	db MEDIUM, REBECCA

	; text when seen
	dw MediumRebeccaSeenText

	; text when trainer beaten
	dw MediumRebeccaBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw MediumRebeccaScript
; 0x189c77

MediumRebeccaScript: ; 0x189c77
	talkaftercancel
	loadfont
	writetext UnknownText_0x18a034
	waitbutton
	closetext
	end
; 0x189c7f

TrainerPsychicFranklin: ; 0x189c7f
	; bit/flag number
	dw $43b

	; trainer group && trainer id
	db PSYCHIC_T, FRANKLIN

	; text when seen
	dw PsychicFranklinSeenText

	; text when trainer beaten
	dw PsychicFranklinBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PsychicFranklinScript
; 0x189c8b

PsychicFranklinScript: ; 0x189c8b
	talkaftercancel
	loadfont
	writetext UnknownText_0x18a0a6
	waitbutton
	closetext
	end
; 0x189c93

TrainerMediumDoris: ; 0x189c93
	; bit/flag number
	dw $591

	; trainer group && trainer id
	db MEDIUM, DORIS

	; text when seen
	dw MediumDorisSeenText

	; text when trainer beaten
	dw MediumDorisBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw MediumDorisScript
; 0x189c9f

MediumDorisScript: ; 0x189c9f
	talkaftercancel
	loadfont
	writetext UnknownText_0x18a136
	waitbutton
	closetext
	end
; 0x189ca7

TrainerPsychicJared: ; 0x189ca7
	; bit/flag number
	dw $444

	; trainer group && trainer id
	db PSYCHIC_T, JARED

	; text when seen
	dw PsychicJaredSeenText

	; text when trainer beaten
	dw PsychicJaredBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PsychicJaredScript
; 0x189cb3

PsychicJaredScript: ; 0x189cb3
	talkaftercancel
	loadfont
	writetext UnknownText_0x18a1b3
	waitbutton
	closetext
	end
; 0x189cbb

SaffronGymGuyScript: ; 0x189cbb
	faceplayer
	loadfont
	checkevent EVENT_BEAT_SABRINA
	iftrue .SaffronGymGuyWinScript
	writetext SaffronGymGuyText
	waitbutton
	closetext
	end

.SaffronGymGuyWinScript
	writetext SaffronGymGuyWinText
	waitbutton
	closetext
	end
; 0x189ccf

MapSaffronGymSignpost0Script: ; 0x189ccf
	trainertotext SABRINA, 1, $1
	checkflag ENGINE_MARSHBADGE
	iftrue UnknownScript_0x189cd8
	jumpstd gymstatue1
; 0x189cd8

UnknownScript_0x189cd8: ; 0x189cd8
	jumpstd gymstatue2
; 0x189cdf

SabrinaRejectText:
	text "J'ai eu une"
	line "vision."

	para "Une étrange adver-"
	line "saire t'attends"
	cont "dans tes rêves, à"
	cont "ta ville natale."

	para "Je ne connais pas"
	line "les détails, mais"
	cont "une vision si"
	cont "claire doit être"
	cont "vraie."

	para "<...>"

	para "Elle se répète<...>"
	line "Je ne peux pas me"
	cont "battre comme ça."

	para "Tu dois accepter"
	line "son défi."

	done

UnknownText_0x189cdf: ; 0x189cdf
	text "MORGANE: Je savais"
	line "que tu viendrais."

	para "J'ai eu une vision"
	line "il y a trois mois."

	para "Tu es après mon"
	line "BADGE."

	para "Je n'aime pas me"
	line "battre mais en"

	para "tant que CHAMPION-"
	line "NE, je me dois de"

	para "confier mon BADGE"
	line "à celui ou celle"
	cont "qui le mérite."

	para "Puisque tu le"
	line "souhaites, je vais"
	cont "te montrer mes"
	cont "pouvoirs psy!"
	done
; 0x189df4

UnknownText_0x189df4: ; 0x189df4
	text "MORGANE: Ta puis-"
	line "sance<...>"

	para "Elle dépasse de"
	line "loin ce que"
	cont "j'avais prédis."

	para "Peut-être que l'on"
	line "ne peux pas savoir"

	para "ce que l'avenir"
	line "nous réserve après"
	cont "tout<...>"

	para "Tu as gagné, tu"
	line "as bien mérité le"
	cont "BADGE MARAIS."
	done
; 0x189e95

UnknownText_0x189e95: ; 0x189e95
	text "<PLAYER> reçoit"
	line "le BADGE MARAIS."
	done
; 0x189ead

UnknownText_0x189ead: ; 0x189ead
	text "MORGANE: Le BADGE"
	line "MARAIS renforce"

	para "les pouvoirs"
	line "occultes<...>"

	para "Je prédis que"
	line "ceci t'aideras."
	done

AfterGIveRestText:
	text "La CT44 accorde"
	line "REPOS."

	para "Un #MON récupè-"
	line "re complètement en"
	cont "état de trance."

	para "Je n'ai pas pu"
	line "prédire ta puis-"
	cont "sance, mais ceci"
	cont "est la vérité."

	para "Tu seras un MAITRE"
	line "célébré et adoré!"
	done
; 0x189f6c

UnknownText_0x189f6c: ; 0x189f6c
	text "MORGANE: Ton amour"
	line "pour tes #MON a"

	para "brouillé mes pou-"
	line "voirs psy<...>"

	para "L'amour<...>"
	line "Quelle force!"
	done
; 0x189fe9

MediumRebeccaSeenText: ; 0x189fe9
	text "Que la force soit"
	line "avec moi!"
	done
; 0x18a01b

MediumRebeccaBeatenText: ; 0x18a01b
	text "Quelle<...>"
	line "Quelle force<...>"
	done
; 0x18a034

UnknownText_0x18a034: ; 0x18a034
	text "Quelle est la"
	line "source de ta"
	cont "force?"
	done
; 0x18a057

PsychicFranklinSeenText: ; 0x18a057
	text "La force psychique"
	line "est la force de"
	cont "ton âme."
	done
; 0x18a081

PsychicFranklinBeatenText: ; 0x18a081
	text "Ton âme est plus"
	line "forte que la"
	cont "mienne."
	done
; 0x18a0a6

UnknownText_0x18a0a6: ; 0x18a0a6
	text "Tu as renforcé ton"
	line "âme, pas juste tes"
	cont "capacités."
	done
; 0x18a0dd

MediumDorisSeenText: ; 0x18a0dd
	text "Héhéhéhé...>"
	line "Je vois<...>"

	para "Je peux lire ton"
	line "âme!"
	done
; 0x18a114

MediumDorisBeatenText: ; 0x18a114
	text "Même si j'ai pu te"
	line "lire, j'ai perdu"
	cont "face à toi<...>"
	done
; 0x18a136

UnknownText_0x18a136: ; 0x18a136
	text "Ah mais oui! J'a-"
	line "vais prédis ma"
	cont "défaite face à"
	cont "toi!"
	done
; 0x18a16c

PsychicJaredSeenText: ; 0x18a16c
	text "Le DOJO d'à côté"
	line "était jadis l'ARE-"
	cont "NE de SAFRANIA."
	done
; 0x18a1a2

PsychicJaredBeatenText: ; 0x18a1a2
	text "Je ne fais pas"
	line "le poids<...>"
	done
; 0x18a1b3

UnknownText_0x18a1b3: ; 0x18a1b3
	text "Le ROI du KARATE,"
	line "le maître du DOJO"

	para "a été battu par"
	line "MORGANE."
	done
; 0x18a201

SaffronGymGuyText: ; 0x18a201
	text "Salut, champion en"
	line "herbe!"

	para "Pas besoin de te"
	line "dire comment vain-"

	para "cre des #MON"
	line "PSY, pas vrai?"

	para "Tu vas faire un"
	line "beau combat!"

	para "Bonne chance"
	done
; 0x18a2a0

SaffronGymGuyWinText: ; 0x18a2a0
	text "Un autre combat"
	line "fantastique!"
	done
; 0x18a2c4

SaffronGym_MapEventHeader: ; 0x18a2c4
	; filler
	db 0, 0

	; warps
	db 32
	warp_def $11, $8, 2, GROUP_SAFFRON_CITY, MAP_SAFFRON_CITY
	warp_def $11, $9, 2, GROUP_SAFFRON_CITY, MAP_SAFFRON_CITY
	warp_def $f, $b, 18, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $f, $13, 19, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $b, $13, 20, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $b, $1, 21, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $3, $5, 22, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $5, $b, 23, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $f, $1, 24, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $3, $13, 25, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $11, $f, 26, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $11, $5, 27, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $9, $5, 28, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $3, $9, 29, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $9, $f, 30, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $5, $f, 31, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $5, $1, 32, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $11, $13, 3, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $9, $13, 4, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $9, $1, 5, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $5, $5, 6, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $3, $b, 7, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $11, $1, 8, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $5, $13, 9, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $f, $f, 10, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $f, $5, 11, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $b, $5, 12, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $5, $9, 13, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $b, $f, 14, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $3, $f, 15, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $3, $1, 16, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $9, $b, 17, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 15, 8, $0, MapSaffronGymSignpost0Script

	; people-events
	db 6
	person_event SPRITE_SABRINA, 12, 13, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SabrinaScript_0x189c2e, -1
	person_event SPRITE_GRANNY, 20, 21, $a, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 3, TrainerMediumRebecca, -1
	person_event SPRITE_YOUNGSTER, 20, 7, $a, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerPsychicFranklin, -1
	person_event SPRITE_GRANNY, 8, 7, $a, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 2, TrainerMediumDoris, -1
	person_event SPRITE_YOUNGSTER, 8, 21, $a, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 2, TrainerPsychicJared, -1
	person_event SPRITE_GYM_GUY, 18, 13, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, SaffronGymGuyScript, -1
; 0x18a3bd

