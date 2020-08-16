GoldenrodGym_MapScriptHeader: ; 0x54000
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x5400a, $0000
	dw UnknownScript_0x5400b, $0000

	; callback count
	db 0
; 0x5400a

UnknownScript_0x5400a: ; 0x5400a
	end
; 0x5400b

UnknownScript_0x5400b: ; 0x5400b
	end
; 0x5400c

WhitneyScript_0x5400c: ; 0x5400c
	faceplayer
	checkevent EVENT_BEAT_ELM
	iftrue WhitneyPostgameRematchScript
	checkevent EVENT_WHITNEY_REMATCH
	iftrue WhitneyAfterRematch
	checkevent EVENT_SET_BY_OAK_AFTER_16_BADGES
	iftrue WhitneyRematchScript
	checkevent EVENT_BEAT_WHITNEY
	iftrue UnknownScript_0x54037
	loadfont
	writetext UnknownText_0x54122
	waitbutton
	closetext
	winlosstext UnknownText_0x541a5, $0000
	loadtrainer WHITNEY, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_WHITNEY
	setevent EVENT_MADE_WHITNEY_CRY
	dotrigger $1
	setevent EVENT_BEAT_BEAUTY_VICTORIA
	setevent EVENT_BEAT_BEAUTY_SAMANTHA
	setevent EVENT_BEAT_LASS_CARRIE
	setevent EVENT_BEAT_LASS_BRIDGET
UnknownScript_0x54037: ; 0x54037
	loadfont
	checkevent EVENT_MADE_WHITNEY_CRY
	iffalse UnknownScript_0x54044
	writetext UnknownText_0x541f4
	waitbutton
	closetext
	end
; 0x54044
WhitneyRematchScript:
	loadfont
	writetext WhitneyRematchTextBefore
	waitbutton
	closetext
	winlosstext WhitneyRematchBeatenText, $0000
	loadtrainer WHITNEY, 2
	startbattle
	returnafterbattle
	setevent EVENT_WHITNEY_REMATCH
	loadfont ;fallthrough

WhitneyAfterRematch:
	loadfont
	writetext WhitneyAfterRematchText
	waitbutton
	closetext
	end

UnknownScript_0x54044: ; 0x54044
	checkevent EVENT_GOT_TM45_ATTRACT
	iftrue UnknownScript_0x54077
	checkflag ENGINE_PLAINBADGE
	iftrue UnknownScript_0x54064
	writetext UnknownText_0x54222
	buttonsound
	waitsfx
	writetext UnknownText_0x54273
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_PLAINBADGE
	checkcode VAR_BADGES
	scall UnknownScript_0x5407d
UnknownScript_0x54064: ; 0x54064
	writetext UnknownText_0x5428b
	buttonsound
	verbosegiveitem TM_BODY_SLAM, 1
	iffalse UnknownScript_0x5407b
	setevent EVENT_GOT_TM45_ATTRACT
	writetext UnknownText_0x54302
	waitbutton
	closetext
	end
; 0x54077

UnknownScript_0x54077: ; 0x54077
	writetext UnknownText_0x54360
	waitbutton
UnknownScript_0x5407b: ; 0x5407b
	closetext
	end
; 0x5407d

UnknownScript_0x5407d: ; 0x5407d
	if_equal $7, UnknownScript_0x54089
	if_equal $6, UnknownScript_0x54086
	end
; 0x54086

UnknownScript_0x54086: ; 0x54086
	jumpstd goldenrodrockets
; 0x54089

UnknownScript_0x54089: ; 0x54089
	jumpstd radiotowerrockets
; 0x5408c

TrainerLassCarrie: ; 0x5408c
	; bit/flag number
	dw $515

	; trainer group && trainer id
	db LASS, CARRIE

	; text when seen
	dw LassCarrieSeenText

	; text when trainer beaten
	dw LassCarrieBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw LassCarrieScript
; 0x54098

LassCarrieScript: ; 0x54098
	talkaftercancel
	loadfont
	writetext LassCarrieOWText
	waitbutton
	closetext
	end
; 0x540a0

WhitneyCriesScript: ; 0x540a0
	showemote $0, $4, 15
	applymovement $4, BridgetWalksUpMovement
	spriteface $0, $0
	loadfont
	writetext BridgetWhitneyCriesText
	waitbutton
	closetext
	applymovement $4, BridgetWalksAwayMovement
	dotrigger $0
	clearevent EVENT_MADE_WHITNEY_CRY
	end
; 0x540bb

TrainerLassBridget: ; 0x540bb
	; bit/flag number
	dw $516

	; trainer group && trainer id
	db LASS, BRIDGET

	; text when seen
	dw LassBridgetSeenText

	; text when trainer beaten
	dw LassBridgetBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw LassBridgetScript
; 0x540c7

LassBridgetScript: ; 0x540c7
	talkaftercancel
	loadfont
	writetext LassBridgetOWText
	waitbutton
	closetext
	end
; 0x540cf

TrainerBeautyVictoria: ; 0x540cf
	; bit/flag number
	dw $4ad

	; trainer group && trainer id
	db BEAUTY, VICTORIA

	; text when seen
	dw BeautyVictoriaSeenText

	; text when trainer beaten
	dw BeautyVictoriaBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw BeautyVictoriaScript
; 0x540db

BeautyVictoriaScript: ; 0x540db
	talkaftercancel
	loadfont
	writetext BeautyVictoriaOWText
	waitbutton
	closetext
	end
; 0x540e3

TrainerBeautySamantha: ; 0x540e3
	; bit/flag number
	dw $4ae

	; trainer group && trainer id
	db BEAUTY, SAMANTHA

	; text when seen
	dw BeautySamanthaSeenText

	; text when trainer beaten
	dw BeautySamanthaBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw BeautySamanthaScript
; 0x540ef

BeautySamanthaScript: ; 0x540ef
	talkaftercancel
	loadfont
	writetext BeautySamanthaOWText
	waitbutton
	closetext
	end
; 0x540f7

GoldenrodGymGuyScript: ; 0x540f7
	faceplayer
	checkevent EVENT_BEAT_WHITNEY
	iftrue .GoldenrodGymGuyWinScript
	loadfont
	writetext GoldenrodGymGuyText
	waitbutton
	closetext
	end

.GoldenrodGymGuyWinScript
	loadfont
	writetext GoldenrodGymGuyWinText
	waitbutton
	closetext
	end
; 0x5410c

MapGoldenrodGymSignpost1Script: ; 0x5410c
	checkflag ENGINE_PLAINBADGE
	iftrue UnknownScript_0x54115
	jumpstd gymstatue1
; 0x54115

UnknownScript_0x54115: ; 0x54115
	trainertotext WHITNEY, 1, $1
	jumpstd gymstatue2
; 0x5411c

BridgetWalksUpMovement: ; 0x5411c
	step_left
	turn_head_up
	step_end
; 0x5411f

BridgetWalksAwayMovement: ; 0x5411f
	step_right
	turn_head_left
	step_end
; 0x54122

UnknownText_0x54122: ; 0x54122
	text "Salut!"
	line "Moi c'est BLANCHE!"

	para "Tout le monde aime"
	line "les #MON, alors"
	cont "je m'y suis mise"
	cont "aussi!"

	para "Ils sont trop-trop"
	line "mignons!"

	para "Tu veux te basto-"
	line "nner? Attention,"
	cont "je suis forte!"
	done
; 0x541a5

WhitneyRematchTextBefore:
	text "Oh, <PLAYER>!"

	para "Après avoir perdu"
	line "contre toi, j'ai"

	para "compris que"
	line "j'avais encore"
	cont "du chemin à faire!"

	para "Je me suis entraî-"
	line "né et je suis"
	cont "prête pour un"
	cont "deuxième match!"

	para "Hihi! Je ne pleu-"
	line "rerais pas si je"
	cont "perds cette fois."

	para "Promis!"
	done

WhitneyRematchBeatenText:
	text "Encore perdu?!"
	done

WhitneyAfterRematchText:
	text "Tu es encore trop"
	line "pour moi<...>"

	para "J'ai du mal à"
	line "croire à quel"
	cont "point tu es"
	cont "balèze!"

	para "Il faudra que tu"
	line "me racontes tout"
	cont "ce que tu as vécu"
	cont "dans tes"
	cont "aventures!"
	done

UnknownText_0x541a5: ; 0x541a5
	text "Sniff<...>"

	para "<...>Waaaaaaah!"
	line "C'est nul!"

	para "Il faut pas te"
	line "prendre au"
	cont "sérieux!"
	
	para "Tu es très jeune"
	line "après tout!"
	done
; 0x541f4

UnknownText_0x541f4: ; 0x541f4
	text "Waaaaah!"

	para "Waaaaah!"

	para "<...>Sniff<...>"
	line "<...>Pas cool<...>"
	done
; 0x54222

UnknownText_0x54222: ; 0x54222
	text "<...>sniff<...>"

	para "Hein? Qu'est-ce"
	line "que tu veux?"
	cont "Un BADGE?"

	para "Ah, d'accord."
	line "J'avais oublié."
	cont "Prends le BADGE"
	cont "PLAINE."
	done
; 0x54273

UnknownText_0x54273: ; 0x54273
	text "<PLAYER> reçoit"
	line "le BADGE PLAINE."
	done
; 0x5428b

UnknownText_0x5428b: ; 0x5428b
	text "Le BADGE PLAINE"
	line "permet à tes"
	cont "#MON d'utiliser"
	cont "FORCE en dehors"
	cont "des combats."

	para "Il augmente aussi"
	line "la VITESSE de tes"
	cont "#MON."

	para "Oh, prends ça"
	line "aussi!"
	done
; 0x54302

UnknownText_0x54302: ; 0x54302
	text "C'est PLAQUAGE!"
	line "Ca utilise tout le"
	cont "corps du #MON."

	para "C'est pas parfait"
	line "avec mon gentil"
	cont "caractère?"
	done
; 0x54360

UnknownText_0x54360: ; 0x54360
	text "Ah, ça fait du"
	line "bien de pleurer!"

	para "Reviens-me voir"
	line "quand tu veux!"
	cont "Tchao!"
	done
; 0x5439b

LassCarrieSeenText: ; 0x5439b
	text "Il n'y a qu'un"
	line "#MON qui"
	cont "connaît toutes les"
	cont "capacités."

	para "Avec lui, je bat-"
	line "trais BLANCHE un"
	cont "jour!"
	done
; 0x543d6

LassCarrieBeatenText: ; 0x543d6
	text "Zut<...> Je te"
	line "pensais faible<...>"
	done
; 0x543f6

LassCarrieOWText: ; 0x543f6
	text "Tu ne trouves pas"
	line "mes #MON trop"
	cont "mignons?"
	done
; 0x54411

LassBridgetSeenText: ; 0x54411
	text "Cette arène est de"
	line "type NORMAL et"
	cont "FEE."

	para "Personnellement,"
	line "je préfère les"
	cont "fées."
	done
; 0x5445f

LassBridgetBeatenText: ; 0x5445f
	text "Oh, non, non, non!"
	done
; 0x54470

LassBridgetOWText: ; 0x54470
	text "J'essaie de battre"
	line "BLANCHE mais<...>"
	cont "C'est déprimant."

	para "C'est pas grave!"
	line "Si je perds, je"
	cont "travaillerai dur"
	cont "pour la prochaine"
	cont "fois."
	done
; 0x544d4

BridgetWhitneyCriesText: ; 0x544d4
	text "Oh, non. Tu as"
	line "fait pleurer"
	cont "BLANCHE."

	para "C'est bon. elle va"
	line "bientôt se calmer."

	para "Elle pleure à"
	line "chaque fois"
	cont "qu'elle perd."
	done
; 0x5452d

BeautyVictoriaSeenText: ; 0x5452d
	text "Oh, tu es tout"
	line "chou, toi!"

	para "Je t'aime bien,"
	line "mais je ne fais"
	cont "pas de cadeaux!"
	done
; 0x54574

BeautyVictoriaBeatenText: ; 0x54574
	text "Voyons<...> Oh, c'est"
	line "déjà fini?"
	done
; 0x5458f

BeautyVictoriaOWText: ; 0x5458f
	text "Whaou, tu dois"
	line "être bon pour me"
	cont "battre comme ça!"
	
	para "Continue!"
	done
; 0x545be

BeautySamanthaSeenText: ; 0x545be
	text "Fais de ton mieux"
	line "ou je te battrais!"
	done
; 0x545ed

BeautySamanthaBeatenText: ; 0x545ed
	text "Grâcieuse dans"
	line "la défaite<...>"
	done
; 0x5460b

BeautySamanthaOWText: ; 0x5460b
	text "BLANCHE maîtrise"
	line "les #MON de"
	cont "type NORMAL et"
	cont "FEE."

	para "C'est ce qui la"
	line "rends si"
	cont "effrayante."
	done
; 0x5463a

GoldenrodGymGuyText: ; 0x5463a
	text "Salut, champion en"
	line "herbe!"

	para "Cette arène est"
	line "composée de dre-"
	cont "sseurs de #MON"
	cont "de tpye NORMAL."

	para "Et<...> Hum<...>"

	para "Je crois que"
	line "c'est tout<...>"
	done
; 0x546a7

GoldenrodGymGuyWinText: ; 0x546a7
	text "Tu as gagné? Ah,"
	line "pardon, j'étais en"
	cont "train d'admirer"
	cont "les jolies filles<...>"

	para "Ah, j'avais"
	line "oublié!"

	para "Les #MON de "
	line "BLANCHE sont aussi"
	cont "du type FEE nou-"
	cont "vellement décou-"
	cont "vert."

	para "On ne sait pas"
	line "grand chose à part"

	para "que les types"
	line "COMBAT ne font pas"
	cont "les fiers."

	para "Le POISON fait des"
	line "merveille en"
	cont "revanche."
	done
	
WhitneyPostgameRematchScript:
	loadfont
    writetext WhitneyPostgameRematchText
    yesorno
    iffalse .return
    closetext
    loadtrainer WHITNEY, 2
    winlosstext WhitneyPostgameBeatenText, 0
    startbattle
    returnafterbattle
    loadfont
    writetext WhitneyPostgameAfterText
    waitbutton
.return
    closetext
    end
	
WhitneyPostgameRematchText:
	text "Tiens!"

	para "Qu'est-ce que tu"
	line "viens faire ici?"

	para "Tu veux un nouveau"
	line "combat?"

	done
	
WhitneyPostgameBeatenText:
	text "<...>Sniff<...>"
	done
	
WhitneyPostgameAfterText:

	text "<...>Hic<...>"

	para "Je me suis promise"
	line "que je ne pleure-"
	cont "rais plus<...>"
	
	para "Ca m'a fais très"
	line "plaisir en tout"
	cont "cas!"

	done

GoldenrodGym_MapEventHeader: ; 0x546dd
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $11, $2, 1, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY
	warp_def $11, $3, 1, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY

	; xy triggers
	db 1
	xy_trigger 1, $5, $8, $0, WhitneyCriesScript, $0, $0

	; signposts
	db 2
	signpost 15, 1, $0, MapGoldenrodGymSignpost1Script
	signpost 15, 4, $0, MapGoldenrodGymSignpost1Script

	; people-events
	db 6
	person_event SPRITE_WHITNEY, 7, 12, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, WhitneyScript_0x5400c, -1
	person_event SPRITE_LASS, 17, 13, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 4, TrainerLassCarrie, -1
	person_event SPRITE_LASS, 10, 13, $8, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 1, TrainerLassBridget, -1
	person_event SPRITE_BUENA, 6, 4, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerBeautyVictoria, -1
	person_event SPRITE_BUENA, 9, 23, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerBeautySamantha, -1
	person_event SPRITE_GYM_GUY, 19, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, GoldenrodGymGuyScript, -1
; 0x5474d

