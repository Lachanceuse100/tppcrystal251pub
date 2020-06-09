AzaleaGym_MapScriptHeader: ; 0x18ec1c
	; trigger count
	db 2
	dw AzaleaGym_Trigger1, $0000
	dw AzaleaGym_Trigger2, $0000

	; callback count
	db 0
; 0x18ec1e

AzaleaGym_Trigger1:
	priorityjump AzaleaGym_BurglarSimonScript1
	end

AzaleaGym_Trigger2:
	end

AzaleaGym_BurglarSimonScript1:
	pause 60
	moveperson $9, 5, 15
	appear $9
	spriteface $9, $1
	playsound SFX_ENTER_DOOR
	pause 15
	showemote $0, $9, 15
	pause 15
	spriteface $9, $2
	spriteface $0, $3
	playmusic MUSIC_POKEMANIAC_ENCOUNTER
	loadfont
	writetext AzaleaGym_BurglarSimonText1
	waitbutton
	closetext
	winlosstext AzaleaGym_BurglarSimonTextLoss, $0000
	loadtrainer BURGLAR, SIMON_1
	startbattle
	reloadmapmusic
	returnafterbattle
	playmusic MUSIC_POKEMANIAC_ENCOUNTER
	loadfont
	writetext AzaleaGym_BurglarSimonText2
	buttonsound
	verbosegiveitem EXP_SHARE, 1
	iffalse .skip_set
	setevent EVENT_GOT_EXP_SHARE_FROM_SIMON
.skip_set
	writetext AzaleaGym_BurglarSimonText3
	waitbutton
	closetext
	spriteface $9, $0
	pause 5
	playsound SFX_EXIT_BUILDING
	disappear $9
	pause 15
	special DeleteSavedMusic
	playmapmusic
	setevent EVENT_BEAT_SIMON_1
	dotrigger $1
	end

AzaleaGym_BurglarSimonMovement1:
	big_step_down
	big_step_down
	big_step_down
	step_end

AzaleaGym_BurglarSimonMovement2:
	big_step_right
	big_step_down
	step_end


BugsyScript_0x18ec1e: ; 0x18ec1e
	faceplayer
	loadfont
	checkevent EVENT_BEAT_ELM
	iftrue BugsyPostgameRematchScript
	checkevent EVENT_BUGSY_REMATCH
	iftrue BugsyAfterRematch
	checkevent EVENT_SET_BY_OAK_AFTER_16_BADGES
	iftrue BugsyRematchScript
	checkevent EVENT_BEAT_BUGSY
	iftrue UnknownScript_0x18ec48
	writetext UnknownText_0x18ed0b
	waitbutton
	closetext
	winlosstext UnknownText_0x18edae, $0000
	loadtrainer BUGSY, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_BUGSY
	loadfont
	writetext UnknownText_0x18ee14
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_HIVEBADGE
	checkcode VAR_BADGES
	scall UnknownScript_0x18ec73
UnknownScript_0x18ec48: ; 0x18ec48
	checkevent EVENT_GOT_TM49_FURY_CUTTER
	iftrue UnknownScript_0x18ec6d
	setevent EVENT_BEAT_TWINS_AMY_AND_MAY
	setevent EVENT_BEAT_BUG_CATCHER_BENNY
	setevent EVENT_BEAT_BUG_CATCHER_AL
	setevent EVENT_BEAT_BUG_CATCHER_JOSH
	writetext UnknownText_0x18ee2b
	buttonsound
	verbosegiveitem TM_FURY_CUTTER, 1
	iffalse UnknownScript_0x18ec71
	setevent EVENT_GOT_TM49_FURY_CUTTER
	writetext UnknownText_0x18eefa
	waitbutton
	closetext
	end
; 0x18ec6d

BugsyAfterRematch:
	writetext BugsyAfterRematchText
	waitbutton
	closetext
	end

BugsyRematchScript:
	checkevent EVENT_CONTEST_ADMIN_HOLDING_PRIZE
	iffalse BugsyReject
	writetext BugsyRematchTextBefore
	waitbutton
	closetext
	winlosstext BugsyRematchBeatenText, $0000
	loadtrainer BUGSY, 2
	startbattle
	returnafterbattle
	setevent EVENT_BUGSY_REMATCH
	loadfont
	jump BugsyAfterRematch

UnknownScript_0x18ec6d: ; 0x18ec6d
	writetext UnknownText_0x18ef98
	waitbutton
UnknownScript_0x18ec71: ; 0x18ec71
	closetext
	end
; 0x18ec73

BugsyReject:
	writetext BugsyRejectText
	waitbutton
	closetext
	end

UnknownScript_0x18ec73: ; 0x18ec73
	if_equal $7, UnknownScript_0x18ec7f
	if_equal $6, UnknownScript_0x18ec7c
	end
; 0x18ec7c

UnknownScript_0x18ec7c: ; 0x18ec7c
	jumpstd goldenrodrockets
; 0x18ec7f

UnknownScript_0x18ec7f: ; 0x18ec7f
	jumpstd radiotowerrockets
; 0x18ec82

TrainerTwinsAmyandmay1: ; 0x18ec82
	; bit/flag number
	dw $464

	; trainer group && trainer id
	db TWINS, AMYANDMAY1

	; text when seen
	dw TwinsAmyandmay1SeenText

	; text when trainer beaten
	dw TwinsAmyandmay1BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw TwinsAmyandmay1Script
; 0x18ec8e

TwinsAmyandmay1Script: ; 0x18ec8e
	talkaftercancel
	loadfont
	writetext UnknownText_0x18f1fc
	waitbutton
	closetext
	end
; 0x18ec96

TrainerTwinsAmyandmay2: ; 0x18ec96
	; bit/flag number
	dw $464

	; trainer group && trainer id
	db TWINS, AMYANDMAY2

	; text when seen
	dw TwinsAmyandmay2SeenText

	; text when trainer beaten
	dw TwinsAmyandmay2BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw TwinsAmyandmay2Script
; 0x18eca2

TwinsAmyandmay2Script: ; 0x18eca2
	talkaftercancel
	loadfont
	writetext UnknownText_0x18f269
	waitbutton
	closetext
	end
; 0x18ecaa

TrainerBug_catcherBug_catcher_benny: ; 0x18ecaa
	; bit/flag number
	dw $53c

	; trainer group && trainer id
	db BUG_CATCHER, BUG_CATCHER_BENNY

	; text when seen
	dw Bug_catcherBug_catcher_bennySeenText

	; text when trainer beaten
	dw Bug_catcherBug_catcher_bennyBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bug_catcherBug_catcher_bennyScript
; 0x18ecb6

Bug_catcherBug_catcher_bennyScript: ; 0x18ecb6
	talkaftercancel
	loadfont
	writetext UnknownText_0x18f053
	waitbutton
	closetext
	end
; 0x18ecbe

TrainerBug_catcherAl: ; 0x18ecbe
	; bit/flag number
	dw $53d

	; trainer group && trainer id
	db BUG_CATCHER, AL

	; text when seen
	dw Bug_catcherAlSeenText

	; text when trainer beaten
	dw Bug_catcherAlBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bug_catcherAlScript
; 0x18ecca

Bug_catcherAlScript: ; 0x18ecca
	talkaftercancel
	loadfont
	writetext UnknownText_0x18f0d3
	waitbutton
	closetext
	end
; 0x18ecd2

TrainerBug_catcherJosh: ; 0x18ecd2
	; bit/flag number
	dw $53e

	; trainer group && trainer id
	db BUG_CATCHER, JOSH

	; text when seen
	dw Bug_catcherJoshSeenText

	; text when trainer beaten
	dw Bug_catcherJoshBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bug_catcherJoshScript
; 0x18ecde

Bug_catcherJoshScript: ; 0x18ecde
	talkaftercancel
	loadfont
	writetext UnknownText_0x18f17e
	waitbutton
	closetext
	end
; 0x18ece6

AzaleaGymGuyScript: ; 0x18ece6
	faceplayer
	checkevent EVENT_BEAT_BUGSY
	iftrue .AzaleaGymGuyWinScript
	loadfont
	writetext AzaleaGymGuyText
	waitbutton
	closetext
	end

.AzaleaGymGuyWinScript
	loadfont
	writetext AzaleaGymGuyWinText
	waitbutton
	closetext
	end
; 0x18ecfb

MapAzaleaGymSignpost1Script: ; 0x18ecfb
	checkflag ENGINE_HIVEBADGE
	iftrue UnknownScript_0x18ed04
	jumpstd gymstatue1
; 0x18ed04

UnknownScript_0x18ed04: ; 0x18ed04
	trainertotext BUGSY, 1, $1
	jumpstd gymstatue2
; 0x18ed0b

BugsyPostgameRematchScript:
    writetext BugsyPostgameRematchText
    yesorno
    iffalse .return
    closetext
    loadtrainer BUGSY, 2
    winlosstext BugsyPostgameBeatenText, 0
    startbattle
    returnafterbattle
    loadfont
    writetext BugsyPostgameAfterText
    waitbutton
.return
    closetext
    end
	
AzaleaGym_BurglarSimonText1:
	text $56, " ", $56, " ", $56

	para $56, " Je cherche mon"
	line "partenaire."

	para "Tu l'as vu?"
	done

AzaleaGym_BurglarSimonTextLoss:
	text "Aïe!"
	done

AzaleaGym_BurglarSimonText2:
	text "Mon partenaire et"
	line "moi avons été sé-"

	para "parés en explorant"
	line "un bâtiment aban-"

	para "donné à KANTO."

	para "Je voulais lui"
	line "donner ça."
	done

AzaleaGym_BurglarSimonText3:
	text "Je me demande où"
	line "il est<...>"
	done

UnknownText_0x18ed0b: ; 0x18ed0b
	text "Je suis HECTOR!"
	line "Je ne perds jamais"

	para "lorsqu'il s'agit"
	line "de #MON"
	cont "INSECTE."

	para "Mes recherches me"
	line "permettront d'être"

	para "le super expert"
	line "des #MON"
	cont "INSECTE!"

	para "Laisse moi te"
	line "montrer tout ce"
	cont "que je sais!"
	done
; 0x18edae

BugsyRematchTextBefore:
	text "Ah! C'est toi"
	line "<PLAYER>!"

	para "Tu as fais parler"
	line "de toi au Concours"
	cont "de Capture!"

	para "J'ai aiguisé mes"
	line "connaissances en"

	para "#MON INSECTE en"
	line "attendant."

	para "Je vais te montrer"
	line "ce que j'ai"
	cont "appris!"
	done

BugsyRematchBeatenText:
	text "Ohhh. Bon et bien"
	line "voilà<...>"
	done

BugsyAfterRematchText:
	text "J'ai perdu face à"
	line "ta passion pour"
	cont "l'entraînement."

	para "Aurais-je besoin"
	line "de plus de"
	cont "recherches ?"
	done

BugsyRejectText:
	text "Salut, <PLAY_G>!"
	line "Tu savais?"

	para "Il y a un Concours"
	line "de Capture tous"

	para "les jours au"
	line "PARC NATUREL."

	para "Moi je suis telle-"
	line "ment bon qu'ils"
	cont "m'ont demandé"

	para "d'arrêter de"
	line "participer."

	para "Mais tu devrais"
	line "essayer."

	para "Je suis certain"
	line "que tu peux"
	cont "gagner."

	done

UnknownText_0x18edae: ; 0x18edae
	text "Whaou, dingue!"
	line "Tu connais bien"
	cont "les #MON!"

	para "Mes recherches ne"
	line "sont pas finies."

	para "OK, tu as gagné."
	line "Prends ce BADGE."
	done
; 0x18ee14

UnknownText_0x18ee14: ; 0x18ee14
	text "<PLAYER> reçoit"
	line "le BADGE ESSAIM."
	done
; 0x18ee2b

UnknownText_0x18ee2b: ; 0x18ee2b
	text "Connais-tu les"
	line "pouvoirs du"
	cont "BADGE ESSAIM?"

	para "Il permet à tes"
	line "#MON d'utiliser"

	para "COUPE en dehors"
	line "des combats."

	para "Tiens, je veux que"
	line "tu prennes ceci."
	done
; 0x18eefa

UnknownText_0x18eefa: ; 0x18eefa
	text "La CT49 contient"
	line "TAILLADE."

	para "Si tu ne manques"
	line "pas ton coup, la"
	cont "puissance augmente"
	cont "à chaque tour."

	para "Plus le combat est"
	line "long, plus le coup"
	cont "est puissant."

	para "C'est génial, non?"
	line "Et c'est moi qui"
	cont "l'ai trouvée!"
	done
; 0x18ef98

UnknownText_0x18ef98: ; 0x18ef98
	text "Les #MON"
	line "INSECTE ont des"

	para "talents cachés. Il"
	line "faudra encore du"
	cont "temps pour tous"
	cont "les découvrir."

	para "Etudie-les"
	line "minutieusement."
	done
; 0x18eff8

Bug_catcherBug_catcher_bennySeenText: ; 0x18eff8
	text "Les #MON"
	line "INSECTE évoluent"

	para "rapidement. Ils"
	line "deviennent forts"
	cont "plus vite."
	done
; 0x18f037

Bug_catcherBug_catcher_bennyBeatenText: ; 0x18f037
	text "Faire évoluer les"
	line "#MON n'est pas"
	cont "suffisant!"
	done
; 0x18f053

UnknownText_0x18f053: ; 0x18f053
	text "Les #MON"
	line "deviennent plus"
	cont "forts en évoluant!"
	done
; 0x18f081

Bug_catcherAlSeenText: ; 0x18f081
	text "Les #MON"
	line "INSECTE sont trop"
	cont "cool et trop"
	cont "forts!"

	para "Je vais te le"
	line "prouver!"
	done
; 0x18f0b4

Bug_catcherAlBeatenText: ; 0x18f0b4
	text "T'es balèze toi"
	line "aussi<...>"
	done
; 0x18f0d3

UnknownText_0x18f0d3: ; 0x18f0d3
	text "Ils sont cool mais"
	line "la plupart des"

	para "filles n'aiment"
	line "pas les #MON"
	cont "INSECTE."

	para "Je ne sais pas"
	line "pourquoi<...>"
	done
; 0x18f118

Bug_catcherJoshSeenText: ; 0x18f118
	text "Tu as sauvé tous"
	line "les RAMOLOSS? T'es"
	cont "balèze toi!"

	para "Mais mes #MON"
	line "adultes sont aussi"
	cont "costaud!"
	done
; 0x18f174

Bug_catcherJoshBeatenText: ; 0x18f174
	text "Arrgggh!"
	done
; 0x18f17e

UnknownText_0x18f17e: ; 0x18f17e
	text "J'ai du oublié de"
	line "leur apprendre"
	cont "un truc<...>"
	done
; 0x18f1a9

TwinsAmyandmay1SeenText: ; 0x18f1a9
	text "AMY: Salut:"
	line "Tu veux combattre"
	cont "le CHAMPION?"
	cont "Pas question!"
	done
; 0x18f1db

TwinsAmyandmay1BeatenText: ; 0x18f1db
	text "AMY & MAY: Oh,"
	line "mince et re-mince!"
	done
; 0x18f1fc

UnknownText_0x18f1fc: ; 0x18f1fc
	text "AMY: T'es trop"
	line "fort!"
	done
; 0x18f217

TwinsAmyandmay2SeenText: ; 0x18f217
	text "MAY: Tu veux voir"
	line "le CHAMPION?"
	cont "Nous d'abord!"
	done
; 0x18f248

TwinsAmyandmay2BeatenText: ; 0x18f248
	text "AMY & MAY: Oh,"
	line "mince et re-mince!"
	done
; 0x18f269

UnknownText_0x18f269: ; 0x18f269
	text "MAY: Nos #MON"
	line "INSECTE ont perdu<...>"
	cont "Quelle honte!"
	done
; 0x18f296

AzaleaGymGuyText: ; 0x18f296
	text "Yo, toi!"

	para "HECTOR est jeune"
	line "mais ses connais-"

	para "sances en matière"
	line "de #MON sont"
	cont "vastes."

	para "Ca sera difficile"
	line "sans mes conseils."

	para "Voyons voir<...> Les"
	line "#MON INSECTE sont"
	cont "vulnérables au"
	cont "feu."

	para "Les attaques de"
	line "type VOL sont"
	cont "aussi très"
	cont "efficaces."
	done
; 0x18f359

AzaleaGymGuyWinText: ; 0x18f359
	text "Bien joué! C'était"
	line "un beau combat!"

	para "Avec des gens"
	line "comme toi, l'ave-"
	cont "nir des #MON"
	cont "sera brillant!"
	done
; 0x18f3cc

BugsyPostgameRematchText:
	text "Salut!"

	para "J'ai élaboré des"
	line "nouvelles"
	cont "stratégies!"
	
	para "Est-ce que tu veux"
	line "un nouveau combat?"

	done
	
BugsyPostgameBeatenText:
	text "Rohlala!"
	
	para "J'ai du manqué"
	line "quelque chose<...>"
	done
	
BugsyPostgameAfterText:
	text "Tu en sais"
	line "tellement<...>"
	
	para "Un jour, je veux"
	line "que tu"
	cont "m'enseignes!"
	done

AzaleaGym_MapEventHeader: ; 0x18f3cc
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $f, $4, 5, GROUP_AZALEA_TOWN, MAP_AZALEA_TOWN
	warp_def $f, $5, 5, GROUP_AZALEA_TOWN, MAP_AZALEA_TOWN

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 13, 3, $0, MapAzaleaGymSignpost1Script
	signpost 13, 6, $0, MapAzaleaGymSignpost1Script

	; people-events
	db 8
	person_event SPRITE_BUGSY, 11, 9, $3, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, BugsyScript_0x18ec1e, -1
	person_event SPRITE_BUG_CATCHER, 7, 9, $a, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 2, TrainerBug_catcherBug_catcher_benny, -1
	person_event SPRITE_BUG_CATCHER, 12, 12, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 3, TrainerBug_catcherAl, -1
	person_event SPRITE_BUG_CATCHER, 6, 4, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 3, TrainerBug_catcherJosh, -1
	person_event SPRITE_TWIN, 14, 8, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, TrainerTwinsAmyandmay1, -1
	person_event SPRITE_TWIN, 14, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, TrainerTwinsAmyandmay2, -1
	person_event SPRITE_GYM_GUY, 17, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, AzaleaGymGuyScript, -1
	person_event SPRITE_PHARMACIST, 0, 0, $0, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ObjectEvent, EVENT_BEAT_SIMON_1
; 0x18f441



