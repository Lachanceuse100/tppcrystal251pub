ViridianGym_MapScriptHeader: ; 0x9aa24
	; trigger count
	db 0

	; callback count
	db 0
; 0x9aa26

BlueScript_0x9aa26: ; 0x9aa26
	faceplayer
	loadfont
	checkevent EVENT_BEAT_ELM
	iftrue BluePostgameRematchScript
	checkevent EVENT_BLUE_REMATCH
	iftrue BlueAfterRematch
	checkevent EVENT_SET_BY_OAK_AFTER_16_BADGES
	iftrue BlueRematchScript
	checkflag ENGINE_EARTHBADGE
	iftrue UnknownScript_0x9aa51
	writetext UnknownText_0x9aa7b
	waitbutton
	closetext
	winlosstext UnknownText_0x9abae, $0000
	loadtrainer BLUE, 2
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_BLUE
	setevent EVENT_BEAT_COOLSIBS_ARA_BELLA
	setevent EVENT_BEAT_COOLSIBS_ELAN_IDA
	setevent EVENT_BEAT_COOLTRAINERM_BONITA
	setevent EVENT_BEAT_COOLTRAINERF_SALMA
	loadfont
	writetext UnknownText_0x9ac0f
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_EARTHBADGE
	writetext UnknownText_0x9ac27
	waitbutton
	closetext
	end

BlueRematchScript:
	checkcode VAR_DEXCAUGHT
	if_less_than 151, BlueReject
	writetext BlueRematchTextBefore
	waitbutton
	closetext
	winlosstext BlueRematchBeatenText, $0000
	loadtrainer BLUE, 1
	startbattle
	returnafterbattle
	setevent EVENT_BLUE_REMATCH
	checkevent EVENT_GOT_RESEARCH_NOTES
	iffalse .skip
	setevent EVENT_COOLTRAINER_BLOCKING_CERULEAN_CAVE
.skip
	loadfont ;fallthrough

BlueAfterRematch:
	writetext BlueAfterRematchText
	waitbutton
	closetext
	end

BlueReject:
	writetext BlueRejectText
	waitbutton
	closetext
	end

BlueRejectText:
	text "BLUE: Il y a 3"
	line "mois<...>"

	para "J'avais un RIVAL."

	para "C'était le seul a"
	line "égaler ma puis-"
	cont "sance en combat."

	para "Si tu penses avoir"
	line "le niveau,"

	para "accomplis son plus"
	line "grand exploit!"

	para "Capture 151 espè-"
	line "ces de #MON."
	done

BlueRematchTextBefore:
	text "BLUE: Voilà un"
	line "#DEX bien"
	cont "rempli<...>"

	para "Comme je m'y"
	line "attendais."

	para "Très bien!"

	para "Je vais te montrer"
	line "la crème de la"
	cont "crème de KANTO."
	done

BlueRematchBeatenText:
	text "BLUE: T'es pas"
	line "de la camelote!"
	done

BlueAfterRematchText:
	text "BLUE: T'es balèze,"
	line "je te l'accorde."

	para "Mais il y a tou-"
	line "jours quelqu'un au"
	cont "dessus de toi."

	para "Il faut que tu t'"
	line "investisses plus!"

	para "Les légendes par-"
	line "lent d'un #MON"

	para "monstrueux dans la"
	line "CAVERNE AZUREE."

	para "C'est un endroit"
	line "super dangereux et"
	cont "interdit."

	para "Même moi je galère"
	line "là-bas."

	para "Mais t'as prouvé"
	line "que tu peux te"
	cont "gérer."

	para "Je vais appeler le"
	line "garde pour qu'il"
	cont "te laisse entrer."

	para "T'as pas intérêt"
	line "à perdre contre ce"
	cont "#MON, pigé?"
	done

; 0x9aa51

Trainer_CoolSibsAraBella1:
	dw EVENT_BEAT_COOLSIBS_ARA_BELLA
	db COOL_SIBLINGS, ARA_BELLA1
	dw CoolSibsAraBellaSeenText1
	dw CoolSibsAraBellaBeatenText
	dw $0000
	dw CoolSibsAraBella1Script

CoolSibsAraBella1Script:
	talkaftercancel
	loadfont
	writetext CoolSibsAraBella1Text
	waitbutton
	closetext
	end

Trainer_CoolSibsAraBella2:
	dw EVENT_BEAT_COOLSIBS_ARA_BELLA
	db COOL_SIBLINGS, ARA_BELLA2
	dw CoolSibsAraBellaSeenText2
	dw CoolSibsAraBellaBeatenText
	dw $0000
	dw CoolSibsAraBella2Script

CoolSibsAraBella2Script:
	talkaftercancel
	loadfont
	writetext CoolSibsAraBella2Text
	waitbutton
	closetext
	end

Trainer_CoolSibsElanIda1:
	dw EVENT_BEAT_COOLSIBS_ELAN_IDA
	db COOL_SIBLINGS, ELAN_IDA1
	dw CoolSibsElanIdaSeenText1
	dw CoolSibsElanIdaBeatenText
	dw $0000
	dw CoolSibsElanIda1Script

CoolSibsElanIda1Script:
	talkaftercancel
	loadfont
	writetext CoolSibsElanIda1Text
	waitbutton
	closetext
	end

Trainer_CoolSibsElanIda2:
	dw EVENT_BEAT_COOLSIBS_ELAN_IDA
	db COOL_SIBLINGS, ELAN_IDA2
	dw CoolSibsElanIdaSeenText2
	dw CoolSibsElanIdaBeatenText
	dw $0000
	dw CoolSibsElanIda2Script

CoolSibsElanIda2Script:
	talkaftercancel
	loadfont
	writetext CoolSibsElanIda2Text
	waitbutton
	closetext
	end

Trainer_CooltrainerMBonita:
	dw EVENT_BEAT_COOLTRAINERM_BONITA
	db COOLTRAINERM, BONITA
	dw CooltrainerMBonitaSeenText
	dw CooltrainerMBonitaBeatenText
	dw $0000
	dw CooltrainerMBonitaScript

CooltrainerMBonitaScript:
	talkaftercancel
	loadfont
	writetext CooltrainerMBonitaText
	waitbutton
	closetext
	end

Trainer_CooltrainerFSalma:
	dw EVENT_BEAT_COOLTRAINERF_SALMA
	db COOLTRAINERF, SALMA
	dw CooltrainerFSalmaSeenText
	dw CooltrainerFSalmaBeatenText
	dw $0000
	dw CooltrainerFSalmaScript

CooltrainerFSalmaScript:
	talkaftercancel
	loadfont
	writetext CooltrainerFSalmaText
	waitbutton
	closetext
	end

UnknownScript_0x9aa51: ; 0x9aa51
	writetext UnknownText_0x9acab
	waitbutton
	closetext
	end
; 0x9aa57

ViridianGymGuyScript: ; 0x9aa57
	faceplayer
	loadfont
	checkevent EVENT_BEAT_BLUE
	iftrue .ViridianGymGuyWinScript
	writetext ViridianGymGuyText
	waitbutton
	closetext
	end

.ViridianGymGuyWinScript
	writetext ViridianGymGuyWinText
	waitbutton
	closetext
	end
; 0x9aa6b

MapViridianGymSignpost1Script: ; 0x9aa6b
	trainertotext BLUE, 1, $1
	checkflag ENGINE_EARTHBADGE
	iftrue UnknownScript_0x9aa74
	jumpstd gymstatue1
; 0x9aa74

UnknownScript_0x9aa74: ; 0x9aa74
	jumpstd gymstatue2
; 0x9aa7b

UnknownText_0x9aa7b: ; 0x9aa7b
	text "BLUE: Yo! Te voilà"
	line "enfin!"

	para "J'avais pas le"
	line "moral à CRAMOIS'"

	para "ILE mais là je"
	line "vais te battre."

	para "<...>"

	para "Tu dis quoi? Tu as"
	line "passé toutes les"
	cont "ARENES de JOHTO?"

	para "C'est qu'ils doi-"
	line "vent être pathé-"
	cont "thiques là-bas."

	para "Mais t'inquiètes"
	line "pas<...>"

	para "Je vais tout de"
	line "suite te dire si"

	para "tu as du talent"
	line "ou non."

	para "Allez, MAITRE de"
	line "JOHTO, allons-y!"
	done
; 0x9abae

UnknownText_0x9abae: ; 0x9abae
	text "BLUE: Quoi?"

	para "Comment j'ai pu"
	line "perdre face à toi?"

	para "<...>"

	para "Pfff<...> D'accord."
	line "Tiens, prends ce"
	cont "BADGE TERRE."
	done
; 0x9ac0f

UnknownText_0x9ac0f: ; 0x9ac0f
	text "<PLAYER> reçoit"
	line "le BADGE TERRE."
	done
; 0x9ac27

UnknownText_0x9ac27: ; 0x9ac27
	text "BLUE: <...>"

	para "D'accord, j'avais"
	line "tort, t'es pas de"
	cont "la camelote<...>"

	para "Je vais appeler"
	line "CELADOPOLE et"
	
	para "demander à ce qu'"
	line "ils t'ouvrent le"
	cont "BAZAR à CT."

	para "Je te battrais"
	line "un jour."

	para "Oublie-pas!"
	done
; 0x9acab

UnknownText_0x9acab: ; 0x9acab
	text "BLUE: Ecoute voir."

	para "T'as pas intérêt à"
	line "perdre contre qui-"
	cont "conque à part moi,"
	cont "pigé?"
	done
; 0x9acee

ViridianGymGuyText: ; 0x9acee
	text "Salut, champion en"
	line "herbe!"

	para "Comment ça va?"

	para "Le CHAMPION est"
	line "celui qui a com-"
	
	para "battu le MAITRE il"
	line "y a trois mois."

	para "C'est pas un"
	line "tendre."

	para "Donne tout ce que"
	line "tu as parce que"
	
	para "tu pars pour les"
	line "montagnes russes,"
	cont "là."
	done
; 0x9ada0

ViridianGymGuyWinText: ; 0x9ada0
	text "Fiiou! Alors toi,"
	line "on ne t'arrête"
	cont "plus!"

	para "Ca c'était du"
	line "combat!"
	
	para "J'en ai les larmes"
	line "aux yeux."
	done
; 0x9ae04

CooltrainerFSalmaSeenText:
	text "T'en penses quoi?"

	para "T'as jamais vu une"
	line "si belle arène,"
	cont "hein?"

	done

CooltrainerFSalmaBeatenText:
	text "Pffff!"
	done

CooltrainerFSalmaText:
	text "Il y a toute sorte"
	line "d'ARENE dans le"

	para "monde, mais je"
	line "préfère celle-là!"
	done

CoolSibsAraBellaSeenText1:
	text "ARA: Bref, on va"
	line "se battre!"
	done

CoolSibsAraBellaSeenText2:
	text "BELLA: Tu sais"
	line "pourquoi on nous"
	cont "appelle les"
	cont "JUMEAUX TROP COOL?"
	done

CoolSibsAraBellaBeatenText:
	text "ARA: Argh!"

	para "BELLA: Trop"
	line "balèze!"
	done

CoolSibsAraBella1Text:
	text "ARA: Je suis au"
	line "moins un bon"
	cont "partenaire d'en-"
	cont "traînement<...>"
	done

CoolSibsAraBella2Text:
	text "BELLA: Oh, mais"
	line "non, tu n'es pas"
	cont "que ça!"
	done

CoolSibsElanIdaSeenText1:
	text "IDA: Je suis IDA!"
	line "Et lui c'est ELAN!"

	para "Ensemble on est"
	line "des JUMEAUX trop"
	cont "cool!"
	done

CoolSibsElanIdaSeenText2:
	text "ELAN: Allez, com-"
	line "mençons ce combat!"
	done

CoolSibsElanIdaBeatenText:
	text "IDA: Wow. t'es"
	line "incroyable."

	para "ELAN: Et bien,"
	line "quelle surprise."
	done

CoolSibsElanIda1Text:
	text "IDA: J'espère que"
	line "tu as plus que de"
	cont "la force, sinon tu"
	cont "ne vas pas faire"
	cont "long feu!"

	done

CoolSibsElanIda2Text:
	text "ELAN: T'étais"
	line "plus costaud que"
	cont "prévu!"
	done

CooltrainerMBonitaSeenText:
	text "Ca ne te rends"
	line "pas malade d'es-"

	para "sayer de naviguer"
	line "dans la salle?"
	done

CooltrainerMBonitaBeatenText:
	text "Mes #MON ont le"
	line "tournis<...>"
	done

CooltrainerMBonitaText:
	text "On dirait qu'il te"
	line "reste des forces."
	done

BluePostgameRematchScript:
    writetext BluePostgameRematchText
    yesorno
    iffalse .return
    closetext
    loadtrainer BLUE, 2
    winlosstext CooltrainerFSalmaBeatenText, 0
    startbattle
    returnafterbattle
    loadfont
    writetext BluePostgameAfterText
    waitbutton
.return
    closetext
    end

BluePostgameRematchText:
	text "BLUE: Yo, MAITRE!"
	
	para "Qu'est-ce que tu"
	line "fais ici?"
	
	para "T'en as pas eu"
	line "assez du labyrhin-"
	cont "te de l'ARENE?"
	cont "Haha!"
	
	para "<...>Oh! Tu veux te"
	line "rebattre?"
	done

BluePostgameAfterText:
	text "BLUE: Que dire de"
	line "plus?"

	para "T'es encore plus"
	line "balèze qu'avant."

	para "Je comprends pour-"
	line "quoi t'es encore"
	cont "MAITRE!"
	done
	
ViridianGym_MapEventHeader: ; 0x9ae04
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $2d, $6, 1, GROUP_VIRIDIAN_CITY, MAP_VIRIDIAN_CITY
	warp_def $2d, $7, 1, GROUP_VIRIDIAN_CITY, MAP_VIRIDIAN_CITY

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 43, 5, $0, MapViridianGymSignpost1Script
	signpost 43, 8, $0, MapViridianGymSignpost1Script

	; people-events
	db 8
	person_event SPRITE_BLUE, 7, 11, $6, 0, 0, -1, -1, 0, 0, 0, BlueScript_0x9aa26, EVENT_BLUE_IN_HIS_GYM
	person_event SPRITE_GYM_GUY, 45, 12, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ViridianGymGuyScript, EVENT_BLUE_IN_HIS_GYM
	person_event SPRITE_COOLTRAINER_F, 12, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, Trainer_CoolSibsElanIda1, EVENT_BLUE_IN_HIS_GYM
	person_event SPRITE_COOLTRAINER_M, 12, 10, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, Trainer_CoolSibsElanIda2, EVENT_BLUE_IN_HIS_GYM
	person_event SPRITE_COOLTRAINER_M, 24, 7, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, Trainer_CooltrainerMBonita, EVENT_BLUE_IN_HIS_GYM
	person_event SPRITE_COOLTRAINER_F, 38, 7, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, Trainer_CooltrainerFSalma, EVENT_BLUE_IN_HIS_GYM
	person_event SPRITE_COOLTRAINER_M, 39, 10, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, Trainer_CoolSibsAraBella1, EVENT_BLUE_IN_HIS_GYM
	person_event SPRITE_COOLTRAINER_F, 39, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, Trainer_CoolSibsAraBella2, EVENT_BLUE_IN_HIS_GYM
; 0x9ae38

