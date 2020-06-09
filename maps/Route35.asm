Route35_MapScriptHeader: ; 0x19c8ad
	; trigger count
	db 0

	; callback count
	db 0
; 0x19c8af

TrainerBird_keeperBryan: ; 0x19c8af
	; bit/flag number
	dw $3fd

	; trainer group && trainer id
	db BIRD_KEEPER, BRYAN

	; text when seen
	dw Bird_keeperBryanSeenText

	; text when trainer beaten
	dw Bird_keeperBryanBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bird_keeperBryanScript
; 0x19c8bb

Bird_keeperBryanScript: ; 0x19c8bb
	talkaftercancel
	loadfont
	writetext UnknownText_0x19cc87
	waitbutton
	closetext
	end
; 0x19c8c3

TrainerJugglerIrwin1: ; 0x19c8c3
	; bit/flag number
	dw $495

	; trainer group && trainer id
	db JUGGLER, IRWIN1

	; text when seen
	dw JugglerIrwin1SeenText

	; text when trainer beaten
	dw JugglerIrwin1BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw JugglerIrwin1Script
; 0x19c8cf

JugglerIrwin1Script: ; 0x19c8cf
	writecode VAR_CALLERID, $16
	talkaftercancel
	loadfont
	checkcellnum $16
	iftrue UnknownScript_0x19c90f ;call number given taxt
	checkevent EVENT_ROUTE_35_281
	iftrue UnknownScript_0x19c8ec
	writetext UnknownText_0x19cd5a ;have defeted text
	buttonsound
	setevent EVENT_ROUTE_35_281
	scall UnknownScript_0x19c903 ;ask for number
	jump UnknownScript_0x19c8ef
; 0x19c8ec

UnknownScript_0x19c8ec: ; 0x19c8ec
	scall UnknownScript_0x19c907 ;ask for number text
UnknownScript_0x19c8ef: ; 0x19c8ef
	askforphonenumber $16
	if_equal $1, UnknownScript_0x19c917 ;phone full
	if_equal $2, UnknownScript_0x19c913 ;declined
	trainertotext JUGGLER, IRWIN1, $0
	scall UnknownScript_0x19c90b ;registered number text
	jump UnknownScript_0x19c90f
; 0x19c903

UnknownScript_0x19c903: ; 0x19c903
	jumpstd asknumber1m
	end
; 0x19c907

UnknownScript_0x19c907: ; 0x19c907
	jumpstd asknumber2m
	end
; 0x19c90b

UnknownScript_0x19c90b: ; 0x19c90b
	jumpstd registerednumberm
	end
; 0x19c90f

UnknownScript_0x19c90f: ; 0x19c90f
	jumpstd numberacceptedm
	end
; 0x19c913

UnknownScript_0x19c913: ; 0x19c913
	jumpstd numberdeclinedm
	end
; 0x19c917

UnknownScript_0x19c917: ; 0x19c917
	jumpstd phonefullm
	end
; 0x19c91b

UnknownScript_0x19c91b: ; 0x19c91b
	jumpstd rematchm
	end
; 0x19c91f

TrainerCamperIvan: ; 0x19c91f
	; bit/flag number
	dw $41c

	; trainer group && trainer id
	db CAMPER, IVAN

	; text when seen
	dw CamperIvanSeenText

	; text when trainer beaten
	dw CamperIvanBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CamperIvanScript
; 0x19c92b

CamperIvanScript: ; 0x19c92b
	talkaftercancel
	loadfont
	writetext UnknownText_0x19cac4
	waitbutton
	closetext
	end
; 0x19c933

TrainerCamperElliot: ; 0x19c933
	; bit/flag number
	dw $41d

	; trainer group && trainer id
	db CAMPER, ELLIOT

	; text when seen
	dw CamperElliotSeenText

	; text when trainer beaten
	dw CamperElliotBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CamperElliotScript
; 0x19c93f

CamperElliotScript: ; 0x19c93f
	talkaftercancel
	loadfont
	writetext UnknownText_0x19cb47
	waitbutton
	closetext
	end
; 0x19c947

TrainerPicnickerBrooke: ; 0x19c947
	; bit/flag number
	dw $480

	; trainer group && trainer id
	db PICNICKER, BROOKE

	; text when seen
	dw PicnickerBrookeSeenText

	; text when trainer beaten
	dw PicnickerBrookeBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PicnickerBrookeScript
; 0x19c953

PicnickerBrookeScript: ; 0x19c953
	talkaftercancel
	loadfont
	writetext UnknownText_0x19cbba
	waitbutton
	closetext
	end
; 0x19c95b

TrainerPicnickerKim: ; 0x19c95b
	; bit/flag number
	dw $481

	; trainer group && trainer id
	db PICNICKER, KIM

	; text when seen
	dw PicnickerKimSeenText

	; text when trainer beaten
	dw PicnickerKimBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PicnickerKimScript
; 0x19c967

PicnickerKimScript: ; 0x19c967
	talkaftercancel
	loadfont
	writetext UnknownText_0x19cc21
	waitbutton
	closetext
	end
; 0x19c96f

TrainerBug_catcherArnie1: ; 0x19c96f
	; bit/flag number
	dw $53f

	; trainer group && trainer id
	db BUG_CATCHER, ARNIE1

	; text when seen
	dw Bug_catcherArnie1SeenText

	; text when trainer beaten
	dw Bug_catcherArnie1BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bug_catcherArnie1Script
; 0x19c97b

Bug_catcherArnie1Script: ; 0x19c97b
	writecode VAR_CALLERID, $17
	talkaftercancel
	loadfont
	checkflag ENGINE_ARNIE
	iftrue UnknownScript_0x19c9bb
	checkflag ENGINE_YANMA_SWARM
	iftrue UnknownScript_0x19ca2f
	checkcellnum $17
	iftrue UnknownScript_0x19c90f
	checkevent EVENT_ROUTE_35_283
	iftrue UnknownScript_0x19c9a4
	writetext UnknownText_0x19cdf6
	buttonsound
	setevent EVENT_ROUTE_35_283
	scall UnknownScript_0x19c903
	jump UnknownScript_0x19c9a7
; 0x19c9a4

UnknownScript_0x19c9a4: ; 0x19c9a4
	scall UnknownScript_0x19c907
UnknownScript_0x19c9a7: ; 0x19c9a7
	askforphonenumber $17
	if_equal $1, UnknownScript_0x19c917
	if_equal $2, UnknownScript_0x19c913
	trainertotext BUG_CATCHER, ARNIE1, $0
	scall UnknownScript_0x19c90b
	jump UnknownScript_0x19c90f
; 0x19c9bb

UnknownScript_0x19c9bb: ; 0x19c9bb
	scall UnknownScript_0x19c91b
	winlosstext Bug_catcherArnie1BeatenText, $0000
	copybytetovar wda01
	if_equal $4, UnknownScript_0x19c9da
	if_equal $3, UnknownScript_0x19c9e0
	if_equal $2, UnknownScript_0x19c9e6
	if_equal $1, UnknownScript_0x19c9ec
	if_equal $0, UnknownScript_0x19c9f2
UnknownScript_0x19c9da: ; 0x19c9da
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue UnknownScript_0x19ca26
UnknownScript_0x19c9e0: ; 0x19c9e0
	checkevent EVENT_FIRST_TIME_HALL_OF_FAME
	iftrue UnknownScript_0x19ca19
UnknownScript_0x19c9e6: ; 0x19c9e6
	checkflag ENGINE_FLYPOINT_BLACKTHORN
	iftrue UnknownScript_0x19ca0c
UnknownScript_0x19c9ec: ; 0x19c9ec
	checkflag ENGINE_FLYPOINT_LAKE_OF_RAGE
	iftrue UnknownScript_0x19c9ff
UnknownScript_0x19c9f2: ; 0x19c9f2
	loadtrainer BUG_CATCHER, ARNIE1
	startbattle
	returnafterbattle
	loadvar wda01, $1
	clearflag ENGINE_ARNIE
	end
; 0x19c9ff

UnknownScript_0x19c9ff: ; 0x19c9ff
	loadtrainer BUG_CATCHER, ARNIE2
	startbattle
	returnafterbattle
	loadvar wda01, $2
	clearflag ENGINE_ARNIE
	end
; 0x19ca0c

UnknownScript_0x19ca0c: ; 0x19ca0c
	loadtrainer BUG_CATCHER, ARNIE3
	startbattle
	returnafterbattle
	loadvar wda01, $3
	clearflag ENGINE_ARNIE
	end
; 0x19ca19

UnknownScript_0x19ca19: ; 0x19ca19
	loadtrainer BUG_CATCHER, ARNIE4
	startbattle
	returnafterbattle
	loadvar wda01, $4
	clearflag ENGINE_ARNIE
	end
; 0x19ca26

UnknownScript_0x19ca26: ; 0x19ca26
	loadtrainer BUG_CATCHER, ARNIE5
	startbattle
	returnafterbattle
	clearflag ENGINE_ARNIE
	end
; 0x19ca2f

UnknownScript_0x19ca2f: ; 0x19ca2f
	writetext UnknownText_0x19ce38
	waitbutton
	closetext
	end
; 0x19ca35

TrainerFirebreatherWalt: ; 0x19ca35
	; bit/flag number
	dw $44b

	; trainer group && trainer id
	db FIREBREATHER, WALT

	; text when seen
	dw FirebreatherWaltSeenText

	; text when trainer beaten
	dw FirebreatherWaltBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw FirebreatherWaltScript
; 0x19ca41

FirebreatherWaltScript: ; 0x19ca41
	talkaftercancel
	loadfont
	writetext UnknownText_0x19cebc
	waitbutton
	closetext
	end
; 0x19ca49

OfficerScript_0x19ca49: ; 0x19ca49
	faceplayer
	loadfont
	checktime $4
	iffalse UnknownScript_0x19ca73
	checkevent EVENT_BEAT_OFFICER_ON_ROUTE_35
	iftrue UnknownScript_0x19ca6d
	special SaveMusic
	playmusic MUSIC_OFFICER_ENCOUNTER
	writetext UnknownText_0x19ceea
	waitbutton
	closetext
	winlosstext UnknownText_0x19cf06, $0000
	loadtrainer OFFICER, DIRK
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_OFFICER_ON_ROUTE_35
	closetext
	end
; 0x19ca6d

UnknownScript_0x19ca6d: ; 0x19ca6d
	writetext UnknownText_0x19cf0f
	waitbutton
	closetext
	end
; 0x19ca73

UnknownScript_0x19ca73: ; 0x19ca73
	writetext UnknownText_0x19cf56
	waitbutton
	closetext
	end
; 0x19ca79

MapRoute35Signpost1Script: ; 0x19ca79
	jumptext UnknownText_0x19cf94
; 0x19ca7c

ItemFragment_0x19ca7c: ; 0x19ca7c
	db GREAT_BALL, 10
; 0x19ca7e

FruitTreeScript_0x19ca7e: ; 0x19ca7e
	fruittree $b
; 0x19ca80

CamperIvanSeenText: ; 0x19ca80
	text "Le bon #MON"
	line "rends le camping"
	cont "plus facile!"
	done
; 0x19cabb

CamperIvanBeatenText: ; 0x19cabb
	text "J'ai creusé ma"
	line "tombe!"
	done
; 0x19cac4

UnknownText_0x19cac4: ; 0x19cac4
	text "Mes #MON et moi"
	line "travaillont dur"
	cont "pour monter la"
	cont "tente!"
	done
; 0x19caf8

CamperElliotSeenText: ; 0x19caf8
	text "Je vais montrer à"
	line "ma copine que je"
	cont "suis un vrai dur!"
	done
; 0x19cb23

CamperElliotBeatenText: ; 0x19cb23
	text "Tu aurais pu faire"
	line "exprès de perdre<...>"
	done
; 0x19cb47

UnknownText_0x19cb47: ; 0x19cb47
	text "Tu m'as humilié"
	line "devant ma copine<...>"
	done
; 0x19cb74

PicnickerBrookeSeenText: ; 0x19cb74
	text "Mon copain est"
	line "trop nul! J'ai la"
	cont "honte!"
	done
; 0x19cba0

PicnickerBrookeBeatenText: ; 0x19cba0
	text "Mazette! Tu es"
	line "trop fort!"
	done
; 0x19cbba

UnknownText_0x19cbba: ; 0x19cbba
	text "Je préfère mes"
	line "#MON à mon"
	cont "copain."
	done
; 0x19cbea

PicnickerKimSeenText: ; 0x19cbea
	text "Tu vas à l'ARENE?"
	line "Moi aussi!"
	done
; 0x19cc0d

PicnickerKimBeatenText: ; 0x19cc0d
	text "J'avais aucune"
	line "chance<...>"
	done
; 0x19cc21

UnknownText_0x19cc21: ; 0x19cc21
	text "Les BADGES d'ARENE"
	line "sont jolis. Je les"
	cont "collectionne."
	done
; 0x19cc4d

Bird_keeperBryanSeenText: ; 0x19cc4d
	text "Quelles # BALLS"
	line "utilises-tu?"
	done
; 0x19cc6e

Bird_keeperBryanBeatenText: ; 0x19cc6e
	text "Whoa! Pas assez"
	line "rapide!"
	done
; 0x19cc87

UnknownText_0x19cc87: ; 0x19cc87
	text "Certains #MON"
	line "s'enfuient vite."

	para "Attrape-les avec"
	line "une SPEED BALL de"
	cont "FARGAS."

	para "Apporte à FARGAS"
	line "un NOIGRUME BLC si"
	cont "tu en trouves un."

	para "Il le transformera"
	line "en # BALL!"
	done
; 0x19cd1e

JugglerIrwin1SeenText: ; 0x19cd1e
	text "Je peux jongler"
	line "avec cinq balles"
	cont "en même temps!"
	done
; 0x19cd42

JugglerIrwin1BeatenText: ; 0x19cd42
	text "Oups! Elles sont"
	cont "tombées."
	done
; 0x19cd5a

UnknownText_0x19cd5a: ; 0x19cd5a
	text "Un jour, je jon-"
	line "glerais avec six"
	cont "balles à la fois<...>"
	done
; 0x19cdaa

Bug_catcherArnie1SeenText: ; 0x19cdaa
	text "J'irais n'importe"
	line "où si il y a des"
	cont "#MON INSECTE."
	done
; 0x19cdd5

Bug_catcherArnie1BeatenText: ; 0x19cdd5
	text "Hein? Je n'aurais"
	line "pas dû perdre<...>"
	done
; 0x19cdf6

UnknownText_0x19cdf6: ; 0x19cdf6
	text "Mon MIMITOSS a ga-"
	line "gné au Concours de"

	para "Capture d'insecte"
	line "au PARC NATUREL."
	done
; 0x19ce38

UnknownText_0x19ce38: ; 0x19ce38
	text "Woah! Regarde tous"
	line "ces YANMA!"

	para "C'est dingue, je"
	line "peux plus bouger."
	done
; 0x19ce76

FirebreatherWaltSeenText: ; 0x19ce76
	text "Je m'entraîne à"
	line "cracher du feu."
	done
; 0x19ce98

FirebreatherWaltBeatenText: ; 0x19ce98
	text "Ouch! Mon nez!"
	done
; 0x19cebc

UnknownText_0x19cebc: ; 0x19cebc
	text "La fanfare #MON"
	line "à la radio attire"
	cont "les #MON"
	cont "sauvages."
	done
; 0x19ceea

UnknownText_0x19ceea: ; 0x19ceea
	text "Le danger rôde"
	line "la nuit!"
	done
; 0x19cf06

UnknownText_0x19cf06: ; 0x19cf06
	text "Oups!"
	done
; 0x19cf0f

UnknownText_0x19cf0f: ; 0x19cf0f
	text "C'est marrant de"
	line "se balader la nuit"
	cont "tombée."

	para "Mais n'en fait pas"
	line "trop, d'accord?"
	done
; 0x19cf56

UnknownText_0x19cf56: ; 0x19cf56
	text "Tes #MON ont"
	line "l'air fort."

	para "Tu es en sécurité"
	line "avec eux<...>."
	done
; 0x19cf94

UnknownText_0x19cf94: ; 0x19cf94
	text "ROUTE 35"
	done
; 0x19cf9e

Route35_MapEventHeader: ; 0x19cf9e
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $21, $9, 1, GROUP_ROUTE_35_GOLDENROD_GATE, MAP_ROUTE_35_GOLDENROD_GATE
	warp_def $21, $a, 2, GROUP_ROUTE_35_GOLDENROD_GATE, MAP_ROUTE_35_GOLDENROD_GATE
	warp_def $5, $3, 3, GROUP_ROUTE_35_NATIONAL_PARK_GATE, MAP_ROUTE_35_NATIONAL_PARK_GATE

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 7, 1, $0, MapRoute35Signpost1Script
	signpost 31, 11, $0, MapRoute35Signpost1Script

	; people-events
	db 11
	person_event SPRITE_YOUNGSTER, 23, 8, $a, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 2, TrainerCamperIvan, -1
	person_event SPRITE_YOUNGSTER, 24, 12, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 3, TrainerCamperElliot, -1
	person_event SPRITE_LASS, 24, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 3, TrainerPicnickerBrooke, -1
	person_event SPRITE_LASS, 30, 14, $a, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 1, TrainerPicnickerKim, -1
	person_event SPRITE_YOUNGSTER, 32, 18, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 0, TrainerBird_keeperBryan, -1
	person_event SPRITE_FISHER, 14, 6, $1e, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 2, TrainerFirebreatherWalt, -1
	person_event SPRITE_BUG_CATCHER, 11, 20, $6, 0, 2, -1, -1, 8 + PAL_OW_BROWN, 2, 3, TrainerBug_catcherArnie1, -1
	person_event SPRITE_SUPER_NERD, 14, 9, $a, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 2, TrainerJugglerIrwin1, -1
	person_event SPRITE_OFFICER, 10, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, OfficerScript_0x19ca49, -1
	person_event SPRITE_FRUIT_TREE, 29, 6, $1, 0, 0, -1, -1, 0, 0, 0, FruitTreeScript_0x19ca7e, -1
	person_event SPRITE_POKE_BALL, 20, 17, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x19ca7c, EVENT_ITEM_ROUTE_35_TM_ROLLOUT
; 0x19d04c

