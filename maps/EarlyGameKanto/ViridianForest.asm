ViridianForestRB_MapScriptHeader: ; 0x1ac2ba
	; trigger count
	db 0

	; callback count
	db 0
; 0x1ac2bc

ViridianForestRBFruitTree:
	fruittree $19

ViridianForestRBCameHereWithFriendsScript:
	jumptextfaceplayer _ViridianForestText1

ViridianForestRBRanOutOfBallsScript:
	jumptextfaceplayer _ViridianForestText8

Trainer_BugCatcherRick:
	trainer EVENT_BUG_CATCHER_RICK, BUG_CATCHER, RICK_RB, BugCatcherRickSeenText, BugCatcherRickBeatenText, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext BugCatcherRickAfterText
	waitbutton
	closetext
	end

Trainer_BugCatcherDoug:
	trainer EVENT_BUG_CATCHER_DOUG, BUG_CATCHER, DOUG_RB, BugCatcherDougSeenText, BugCatcherDougBeatenText, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext BugCatcherDougAfterText
	waitbutton
	closetext
	end

Trainer_BugCatcherChuck:
	trainer EVENT_BUG_CATCHER_CHUCK, BUG_CATCHER, CHUCK_RB, BugCatcherChuckSeenText, BugCatcherChuckBeatenText, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext BugCatcherChuckAfterText
	waitbutton
	closetext
	end

Trainer_BugCatcherSammy:
	trainer EVENT_BUG_CATCHER_SAMMY, BUG_CATCHER, SAMMY_RB, BugCatcherSammySeenText, BugCatcherSammyBeatenText, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext BugCatcherSammyAfterText
	waitbutton
	closetext
	end

MapViridianForestRBAntidote:
	db ANTIDOTE, 1

MapViridianForestRBPotion:
	db POTION, 1

MapViridianForestRBPokeBall:
	db POKE_BALL, 1

MapViridianForestRBHiddenAntidote:
	dwb EVENT_VIRIDIAN_FOREST_RB_HIDDEN_ANTIDOTE, ANTIDOTE

MapViridianForestRBHiddenPotion:
	dwb EVENT_VIRIDIAN_FOREST_RB_HIDDEN_POTION, POTION

MapViridianForestRBSignpost0Script:
	jumptext ViridianForestRBSignpostText1

MapViridianForestRBSignpost1Script:
	jumptext ViridianForestRBSignpostText2

MapViridianForestRBSignpost2Script:
	jumptext ViridianForestRBSignpostText3

MapViridianForestRBSignpost3Script:
	jumptext ViridianForestRBSignpostText4

MapViridianForestRBSignpost4Script:
	jumptext ViridianForestRBSignpostText5

MapViridianForestRBSignpost5Script:
	jumptext ViridianForestRBSignpostText6

_ViridianForestText1: ; 8031d (20:431d)
	text "Je suis là avec"
	line "des amis!"

	para "Ils font des"
	line "combats #MON!"
	done

BugCatcherRickSeenText: ; 80359 (20:4359)
	text "Hé! Tu as des"
	line "#MON! Allez!"
	cont "Faisons-les"
	cont "combattre!"
	done

BugCatcherRickBeatenText: ; 80387 (20:4387)
	text "Non! CHENIPAN"
	line "n'y arrivera"
	cont "pas!"
	done

BugCatcherRickAfterText: ; 803a2 (20:43a2)
	text "Chut! Tu vas faire"
	line "fuir les insectes!"
	done

BugCatcherDougSeenText: ; 803c3 (20:43c3)
	text "Yo! Tu peux pas te"
	line "défiler si t'es un"
	cont "dresseur #MON!"
	done

BugCatcherDougBeatenText: ; 803f2 (20:43f2)
	text "Hein?"
	line "J'ai plus de"
	cont "#MON!"
	done

BugCatcherDougAfterText: ; 8040b (20:440b)
	text "Mince! Je vais en"
	line "attraper des"
	cont "plus forts!"
	done

BugCatcherChuckSeenText:
	text "Les #MON"
	line "INSECTE évoluent"
	cont "super rapidement!"
	done

BugCatcherChuckBeatenText:
	text "Tes #MON sont"
	line "encore plus fort!"
	done

BugCatcherChuckAfterText:
	text "Si tes #MON"
	line "évoluent trop tôt,"

	para "Ils peuvent rater"
	line "de l'expérience de"
	cont "leur forme"
	cont "précédente"
	done

BugCatcherSammySeenText: ; 80438 (20:4438)
	text "Hé, attends!"
	line "Soit pas pressé!"
	done

BugCatcherSammyBeatenText: ; 80458 (20:4458)
	text "J'abandonne, t'es"
	line "trop fort!"
	done

BugCatcherSammyAfterText: ; 80475 (20:4475)
	text "Parfois, on trouve"
	line "des trucs au sol!"

	para "Je cherche ce"
	line "que j'ai perdu!"
	done

_ViridianForestText8: ; 804c7 (20:44c7)
	text "Je n'ai plus de"
	line "# BALL pour"
	cont "capturer les"
	cont "#MON."

	para "Tu devrais tou-"
	line "jours en avoir en"
	cont "réserve!"
	done

ViridianForestRBSignpostText1:
	text "ASTUCE"

	para "Affaiblissez les"
	line "#MON avant"
	cont "de tenter une"
	cont "capture!"

	para "Les #MON en"
	line "pleine forme peu-"
	cont "vent se libérer!"
	done

ViridianForestRBSignpostText2:
	text "Contre le poison,"
	line "achetez des"
	cont "ANTIDOTE à la"
	cont "boutique #MON."
	done

ViridianForestRBSignpostText3:
	text "ASTUCE"

	para "Pour éviter les"
	line "combats, éloignez"
	cont "vous des hautes"
	cont "herbes!"
	done

ViridianForestRBSignpostText4:
	text "ASTUCE"

	para "Contacter le PROF."
	line "CHEN avec le PC"
	cont "pour faire évaluer"
	cont "votre #DEX!"
	done

ViridianForestRBSignpostText5:
	text "ASTUCE"

	para "Ne volez pas les"
	line "#MON des autres"
	cont "dresseurs!"
	cont "Capturez seulement"
	cont "les #MON"
	cont "sauvages!"
	done

ViridianForestRBSignpostText6:
	text "SORTIE DE LA FORET"
	line "DE JADE. ARGENTA"
	cont "DROIT DEVANT"
	done

ViridianForestRB_MapEventHeader: ; 0x1ac4af
	; filler
	db 0, 0

	; warps
	db 3
	warp_def 47, 16, 3, GROUP_VIRIDIAN_FOREST_SOUTH_RB, MAP_VIRIDIAN_FOREST_SOUTH_RB
	warp_def 47, 17, 3, GROUP_VIRIDIAN_FOREST_SOUTH_RB, MAP_VIRIDIAN_FOREST_SOUTH_RB
	warp_def  1,  1, 1, GROUP_VIRIDIAN_FOREST_NORTH_RB, MAP_VIRIDIAN_FOREST_NORTH_RB

	; xy triggers
	db 0

	; signposts
	db 8
	signpost 45, 18, $0, MapViridianForestRBSignpost0Script
	signpost 32, 16, $0, MapViridianForestRBSignpost1Script
	signpost 40, 24, $0, MapViridianForestRBSignpost2Script
	signpost 17, 26, $0, MapViridianForestRBSignpost3Script
	signpost 24,  4, $0, MapViridianForestRBSignpost4Script
	signpost  3,  2, $0, MapViridianForestRBSignpost5Script
	signpost 42, 16, $7, MapViridianForestRBHiddenAntidote
	signpost 18,  1, $7, MapViridianForestRBHiddenPotion

	; people-events
	db 10
	person_event SPRITE_BUG_CATCHER, 47, 20, $3, 0, 0, -1, -1, 0, 0, 0, ViridianForestRBCameHereWithFriendsScript, -1 ; I came here with friends
	person_event SPRITE_BUG_CATCHER, 44, 31, $2, 1, 1, -1, -1, 0, 0, 0, ViridianForestRBRanOutOfBallsScript, -1 ; You should carry extra balls
	person_event SPRITE_BUG_CATCHER, 37, 34, $8, 0, 0, -1, -1, 0, 2, 4, Trainer_BugCatcherRick, -1 ; Bug Catcher Rick - Caterpie, Weedle
	person_event SPRITE_BUG_CATCHER, 23, 34, $8, 0, 0, -1, -1, 0, 2, 4, Trainer_BugCatcherDoug, -1 ; Bug Catcher Doug - Weedle, Kakuna, Weedle
	person_event SPRITE_BUG_CATCHER,  6, 21, $3, 0, 0, -1, -1, 0, 2, 0, Trainer_BugCatcherChuck, -1 ; Bug Catcher Chuck - Metapod, Caterpie, Metapod
	person_event SPRITE_BUG_CATCHER, 22,  6, $8, 0, 0, -1, -1, 0, 2, 1, Trainer_BugCatcherSammy, -1 ; Bug Catcher Sammy - Weedle
	person_event SPRITE_POKE_BALL,   15, 29, $1, 0, 0, -1, -1, 0, 1, 0, MapViridianForestRBAntidote, EVENT_VIRIDIAN_FOREST_RB_ANTIDOTE
	person_event SPRITE_POKE_BALL,   33, 16, $1, 0, 0, -1, -1, 0, 1, 0, MapViridianForestRBPotion, EVENT_VIRIDIAN_FOREST_RB_POTION
	person_event SPRITE_POKE_BALL,   35,  5, $1, 0, 0, -1, -1, 0, 1, 0, MapViridianForestRBPokeBall, EVENT_VIRIDIAN_FOREST_RB_POKE_BALL
	person_event SPRITE_FRUIT_TREE,   6, 35, $1, 0, 0, -1, -1, 0, 0, 0, ViridianForestRBFruitTree, -1
; 0x1ac554

