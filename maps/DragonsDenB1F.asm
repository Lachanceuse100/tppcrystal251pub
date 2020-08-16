DragonsDenB1F_MapScriptHeader: ; 0x18c890
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x18c89d, $0000
	dw UnknownScript_0x18c89e, $0000

	; callback count
	db 1

	; callbacks

	dbw 5, UnknownScript_0x18c89f
; 0x18c89d

UnknownScript_0x18c89d: ; 0x18c89d
	end
; 0x18c89e

UnknownScript_0x18c89e: ; 0x18c89e
	end
; 0x18c89f

UnknownScript_0x18c89f: ; 0x18c89f
	checkevent EVENT_BEAT_RIVAL_IN_MT_MOON
	iftrue UnknownScript_0x18c8a8
	disappear $4
	return
; 0x18c8a8

UnknownScript_0x18c8a8: ; 0x18c8a8
	checkcode VAR_WEEKDAY
	if_equal TUESDAY, UnknownScript_0x18c8b5
	if_equal THURSDAY, UnknownScript_0x18c8b5
	disappear $4
	return
; 0x18c8b5

UnknownScript_0x18c8b5: ; 0x18c8b5
	appear $4
	return
; 0x18c8b8

UnknownScript_0x18c8b8: ; 0x18c8b8
	appear $3
	loadfont
	writetext UnknownText_0x18c9b8
	pause 30
	closetext
	showemote $0, $0, 15
	spriteface $0, $2
	playmusic MUSIC_CLAIR
	applymovement $3, MovementData_0x18c9ae
	loadfont
	checkevent EVENT_SET_BY_OAK_AFTER_16_BADGES
	iftrue ClairRematchScript
	writetext UnknownText_0x18c9bf
	buttonsound
	giveitem TM_DRAGON_PULSE, $1
	iffalse UnknownScript_0x18c8f4
	itemtotext TM_DRAGON_PULSE, $0
	writetext UnknownText_0x18c9fb
	playsound SFX_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_TM24_DRAGONBREATH
	writetext UnknownText_0x18ca0d
	buttonsound
	writetext UnknownText_0x18caf1
	waitbutton
	closetext
	jump UnknownScript_0x18c8f9
; 0x18c8f4

UnknownScript_0x18c8f4: ; 0x18c8f4
	writetext UnknownText_0x18ca8b
	waitbutton
	closetext
UnknownScript_0x18c8f9: ; 0x18c8f9
	applymovement $3, MovementData_0x18c9b3
	special Functionc48f
	pause 30
	special RestartMapMusic
	disappear $3
	dotrigger $0
	end
; 0x18c90a

ClairRematchScript:
	writetext ClairRematchTextBefore
	waitbutton
	closetext
	winlosstext ClairRematchBeatenText, $0000
	loadtrainer CLAIR, 2
	startbattle
	reloadmapmusic
	returnafterbattle
	setevent EVENT_CLAIR_REMATCH
	setevent EVENT_BLACKTHORN_REMATCH_TRAINER_1
	setevent EVENT_BLACKTHORN_REMATCH_TRAINER_2
	setevent EVENT_BLACKTHORN_REMATCH_TRAINER_3
	setevent EVENT_BLACKTHORN_REMATCH_TRAINER_4
	playmusic MUSIC_CLAIR
	loadfont
	writetext ClairRematchTextAfter
	waitbutton
	closetext
	jump UnknownScript_0x18c8f9

TrainerCooltrainermDarin: ; 0x18c90a
	; bit/flag number
	dw $5bd

	; trainer group && trainer id
	db COOLTRAINERM, DARIN

	; text when seen
	dw CooltrainermDarinSeenText

	; text when trainer beaten
	dw CooltrainermDarinBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CooltrainermDarinScript
; 0x18c916

CooltrainermDarinScript: ; 0x18c916
	talkaftercancel
	loadfont
	writetext UnknownText_0x18cd82
	waitbutton
	closetext
	end
; 0x18c91e

TrainerCooltrainerfCara: ; 0x18c91e
	; bit/flag number
	dw $5be

	; trainer group && trainer id
	db COOLTRAINERF, CARA

	; text when seen
	dw CooltrainerfCaraSeenText

	; text when trainer beaten
	dw CooltrainerfCaraBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CooltrainerfCaraScript
; 0x18c92a

CooltrainerfCaraScript: ; 0x18c92a
	talkaftercancel
	loadfont
	writetext UnknownText_0x18ce11
	waitbutton
	closetext
	end
; 0x18c932

TrainerTwinsLeaandpia1: ; 0x18c932
	; bit/flag number
	dw $5bf

	; trainer group && trainer id
	db TWINS, LEAANDPIA1

	; text when seen
	dw TwinsLeaandpia1SeenText

	; text when trainer beaten
	dw TwinsLeaandpia1BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw TwinsLeaandpia1Script
; 0x18c93e

TwinsLeaandpia1Script: ; 0x18c93e
	talkaftercancel
	loadfont
	writetext UnknownText_0x18ced3
	waitbutton
	closetext
	end
; 0x18c946

TrainerTwinsLeaandpia2: ; 0x18c946
	; bit/flag number
	dw $5bf

	; trainer group && trainer id
	db TWINS, LEAANDPIA1

	; text when seen
	dw TwinsLeaandpia2SeenText

	; text when trainer beaten
	dw TwinsLeaandpia2BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw TwinsLeaandpia2Script
; 0x18c952

TwinsLeaandpia2Script: ; 0x18c952
	talkaftercancel
	loadfont
	writetext UnknownText_0x18cf0f
	waitbutton
	closetext
	end
; 0x18c95a

PokeBallScript_0x18c95a: ; 0x18c95a
	giveitem DRAGON_FANG, $1
	iffalse UnknownScript_0x18c970
	disappear $2
	loadfont
	itemtotext DRAGON_FANG, $0
	writetext UnknownText_0x18cf41
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	end
; 0x18c970

UnknownScript_0x18c970: ; 0x18c970
	loadfont
	itemtotext DRAGON_FANG, $0
	writetext UnknownText_0x18cf41
	buttonsound
	writetext UnknownText_0x18cf51
	waitbutton
	closetext
	end
; 0x18c97e

SilverScript_0x18c97e: ; 0x18c97e
	playmusic MUSIC_RIVAL_ENCOUNTER
	faceplayer
	loadfont
	checkevent EVENT_000_STD
	iftrue UnknownScript_0x18c995
	writetext UnknownText_0x18cc83
	waitbutton
	closetext
	setevent EVENT_000_STD
	special RestartMapMusic
	end
; 0x18c995

UnknownScript_0x18c995: ; 0x18c995
	writetext UnknownText_0x18cd2d
	waitbutton
	closetext
	special RestartMapMusic
	end
; 0x18c99e

MapDragonsDenB1FSignpost0Script: ; 0x18c99e
	jumptext UnknownText_0x18cc2e
; 0x18c9a1

ItemFragment_0x18c9a1: ; 0x18c9a1
	db CALCIUM, 1
; 0x18c9a3

ItemFragment_0x18c9a3: ; 0x18c9a3
	db MAX_ELIXER, 1
; 0x18c9a5

MapDragonsDenB1FSignpostItem1: ; 0x18c9a5
	dw $00a0
	db REVIVE
; 0x18c9a8

MapDragonsDenB1FSignpostItem2: ; 0x18c9a8
	dw $00a1
	db MAX_POTION
; 0x18c9ab

MapDragonsDenB1FSignpostItem3: ; 0x18c9ab
	dw $00a2
	db MAX_ELIXER
; 0x18c9ae

MovementData_0x18c9ae: ; 0x18c9ae
	slow_step_right
	slow_step_right
	slow_step_right
	slow_step_right
	step_end
; 0x18c9b3

MovementData_0x18c9b3: ; 0x18c9b3
	slow_step_left
	slow_step_left
	slow_step_left
	slow_step_left
	step_end
; 0x18c9b8

UnknownText_0x18c9b8: ; 0x18c9b8
	text "Attends!"
	done
; 0x18c9bf

UnknownText_0x18c9bf: ; 0x18c9bf
	text "SANDRA: Excuse-moi"
	line "pour tout."

	para "Tiens. Pour me"
	line "faire pardonner."
	done
; 0x18c9fb

ClairRematchTextBefore:
	text "SANDRA: Te voilà!"

	para "On y va?"
	done

ClairRematchBeatenText:
	text "J'ai perdu?"
	line "Encore?"

	para "Se pourrait-il<...>"
	done

ClairRematchTextAfter:
	text "<...>Alors voilà ce"
	line "qu'il me manquait"
	cont "tout ce temps<...>"

	para "Merci, <PLAY_G>."

	para "Je crois que je"
	line "comprends mes la-"
	cont "cunes maintenant."

	para "Je vais retourner"
	line "à l'ARENE."

	para "J'espère que nous"
	line "nous reverrons."
	done

UnknownText_0x18c9fb: ; 0x18c9fb
	text "<PLAYER> reçoit"
	line "CT24."
	done
; 0x18ca0d

UnknownText_0x18ca0d: ; 0x18ca0d
	text "Elle contient"
	line "DRACOSOUFFLE."

	para "Hein? Non, ça n'a"
	line "rien à voir avec"
	cont "mon haleine."

	para "Ecoute: Si tu la"
	line "veux pas, t'as "
	cont "qu'a la laisser!"
	done
; 0x18ca8b

UnknownText_0x18ca8b: ; 0x18ca8b
	text "Quoi, tu n'as pas"
	line "de place?"

	para "Je retourne à l'"
	line "ARENE. Fais de la"

	para "place et reviens"
	line "me voir."
	done
; 0x18caf1

UnknownText_0x18caf1: ; 0x18caf1
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
; 0x18cc2e

UnknownText_0x18cc2e: ; 0x18cc2e
	text "AUTEL DRAGON"

	para "En l'honneur des"
	line "#MON dragons"

	para "ayant vécu dans"
	line "l'ANTRE du DRAGON."
	done
; 0x18cc83

UnknownText_0x18cc83: ; 0x18cc83
	text "<...>"
	line "Hein? <PLAYER>?"

	para "<...>Non, pas"
	line "maintenant<...>"

	para "Mes #MON ne"
	line "sont pas prêts à"
	cont "te déchirer."

	para "Je ne peux pas"
	line "trop leurs en"
	cont "demander."

	para "Je dois me disci-"
	line "pliner pour deve-"

	para "nir le plus grand"
	line "dresseur #MON<...>"
	done
; 0x18cd2d

UnknownText_0x18cd2d: ; 0x18cd2d
	text "<...>"

	para "Pfff<...>"

	para "Reste en dehors de"
	line "mon chemin<...>"
	done
; 0x18cd53

CooltrainermDarinSeenText: ; 0x18cd53
	text "On ne veut pas de"
	line "toi ici!"
	done
; 0x18cd77

CooltrainermDarinBeatenText: ; 0x18cd77
	text "Quelle puissance!"
	done
; 0x18cd82

UnknownText_0x18cd82: ; 0x18cd82
	text "Le TEMPLE est la"
	line "demeure de notre"

	para "MAITRE, chef du"
	line "clan des dragons."

	para "Tu n'as pas le"
	line "droit d'entrer!"
	done
; 0x18cde4

CooltrainerfCaraSeenText: ; 0x18cde4
	text "Tu ne devrais pas"
	line "être ici!"
	done
; 0x18cdfe

CooltrainerfCaraBeatenText: ; 0x18cdfe
	text "Oups! J'ai perdu!"
	done
; 0x18ce11

UnknownText_0x18ce11: ; 0x18ce11
	text "Je vais bientôt"
	line "avoir l'accord du"

	para "MAITRE pour utili-"
	line "ser des #MON"
	cont "DRAGON."

	para "Je pourrais rendre"
	line "mon MAITRE fier en"

	para "devenant un grand"
	line "dresseur."
	done
; 0x18ceab

TwinsLeaandpia1SeenText: ; 0x18ceab
	text "C'est un étranger"
	line "qu'on ne connait"
	cont "pas!"
	done
; 0x18cec9

TwinsLeaandpia1BeatenText: ; 0x18cec9
	text "Ouille."
	done
; 0x18ced3

UnknownText_0x18ced3: ; 0x18ced3
	text "C'était comme com-"
	line "battre PETER."
	done
; 0x18cef8

TwinsLeaandpia2SeenText: ; 0x18cef8
	text "T'es qui?"
	done
; 0x18cf06

TwinsLeaandpia2BeatenText: ; 0x18cf06
	text "C'est pas gentil."
	done
; 0x18cf0f

UnknownText_0x18cf0f: ; 0x18cf0f
	text "On va le dire."

	para "Le MAITRE ne sera"
	line "pas content!"
	done
; 0x18cf41

UnknownText_0x18cf41: ; 0x18cf41
	text "<PLAYER> trouve:"
	line "@"
	text_from_ram StringBuffer3
	text "!"
	done
; 0x18cf51

UnknownText_0x18cf51: ; 0x18cf51
	text "Mais <PLAYER> ne"
	line "peut plus rien"
	cont "porter<...>"
	done
; 0x18cf73

DragonsDenB1F_MapEventHeader: ; 0x18cf73
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $3, $14, 3, GROUP_DRAGONS_DEN_1F, MAP_DRAGONS_DEN_1F
	warp_def $1d, $13, 1, GROUP_DRAGON_SHRINE, MAP_DRAGON_SHRINE

	; xy triggers
	db 1
	xy_trigger 1, $1e, $13, $0, UnknownScript_0x18c8b8, $0, $0

	; signposts
	db 4
	signpost 24, 18, $0, MapDragonsDenB1FSignpost0Script
	signpost 29, 33, $7, MapDragonsDenB1FSignpostItem1
	signpost 17, 21, $7, MapDragonsDenB1FSignpostItem2
	signpost 15, 31, $7, MapDragonsDenB1FSignpostItem3

	; people-events
	db 9
	person_event SPRITE_POKE_BALL, 20, 39, $1, 0, 0, -1, -1, 0, 0, 0, PokeBallScript_0x18c95a, EVENT_ITEM_DRAGONSDEN_DRAGON_FANG
	person_event SPRITE_CLAIR, 34, 18, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ObjectEvent, EVENT_CLAIR_IN_DRAGONS_DEN
	person_event SPRITE_SILVER, 27, 24, $2, 2, 2, -1, -1, 0, 0, 0, SilverScript_0x18c97e, EVENT_SILVER_IN_DRAGONS_DEN
	person_event SPRITE_COOLTRAINER_M, 12, 24, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 4, TrainerCooltrainermDarin, -1
	person_event SPRITE_COOLTRAINER_F, 12, 12, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerCooltrainerfCara, -1
	person_event SPRITE_TWIN, 21, 8, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, TrainerTwinsLeaandpia1, -1
	person_event SPRITE_TWIN, 22, 8, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, TrainerTwinsLeaandpia2, -1
	person_event SPRITE_POKE_BALL, 8, 34, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x18c9a1, EVENT_ITEM_DRAGONSDEN_CALCUM
	person_event SPRITE_POKE_BALL, 24, 9, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x18c9a3, EVENT_ITEM_DRAGONSDEN_MAX_ELIXIR
; 0x18d014

