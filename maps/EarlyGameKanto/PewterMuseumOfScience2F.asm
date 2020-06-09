
PewterMuseumOfScience2F_MapScriptHeader:
	db 0 ; triggers
	db 0 ; callbacks

PewterMuseumOfScience2FBugCatcherScript:
	jumptextfaceplayer _Museum2FText1

PewterMuseumOfScience2FGrampsScript:
	jumptextfaceplayer _Museum2FText2

PewterMuseumOfScience2FScientistScript:
	jumptextfaceplayer _Museum2FText3

PewterMuseumOfScience2FLassScript:
	jumptextfaceplayer _Museum2FText4

PewterMuseumOfScience2FHikerScript:
	jumptextfaceplayer _Museum2FText5

PewterMuseumOfScience2FSpaceShuttleScript:
	jumptext _Museum2FText6

PewterMuseumOfScience2FMeteoriteSignScript
	jumptext _Museum2FText7

_Museum2FText1:
	text "PIERRE LUNE?"

	para "Elle a quoi de"
	line "spécial?"
	done

_Museum2FText2:
	text "12 Février 2015!"

	para "#MON ROUGE"
	line "anniversaire va"
	cont "commencer sur"
	cont "TwitchPlaysPokemon"

	para "J'ai acheté une"
	line "tablette pour le"
	cont "regarder!"
	done

_Museum2FText3:
	text "Nous faisons une"
	line "exposition sur"
	cont "l'espace!"
	done

_Museum2FText4:
	text "Je veux un PIKACHU"
	line "trop mignon!"

	para "J'ai demandé à"
	line "Papa de m'en"
	cont "trouver un!"
	done

_Museum2FText5:
	text "Oui, tu auras ton"
	line "PIKACHU, promis!"
	done

_Museum2FText6:
	text "NAVETTE SPATIALE"
	line "COLUMBIA"
	done

_Museum2FText7:
	text "Météorite tombée"
	line "au MONT SELENITE"
	cont "(PIERRE LUNE?)"
	done


PewterMuseumOfScience2F_MapEventHeader:
	db 0, 0 ; filler
	db 1 ; warps
	warp_def 7, 7, 5, GROUP_PEWTER_MUSEUM_1F_RB, MAP_PEWTER_MUSEUM_1F_RB

	db 0 ; coord events

	db 2 ; signposts

	signpost 2, 11, $0, PewterMuseumOfScience2FSpaceShuttleScript
	signpost 5, 2, $0, PewterMuseumOfScience2FMeteoriteSignScript

	db 5 ; objects
	person_event SPRITE_BUG_CATCHER, 11, 5, $5, 0, 2, -1, -1, 0, 0, 0, PewterMuseumOfScience2FBugCatcherScript, -1
	person_event SPRITE_GRAMPS, 9, 4, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, PewterMuseumOfScience2FGrampsScript, -1
	person_event SPRITE_SCIENTIST, 9, 11, $6, 0, 0, -1, -1, 0, 0, 0, PewterMuseumOfScience2FScientistScript, -1
	person_event SPRITE_LASS, 9, 15, $3, 0, 0, -1, -1, 0, 0, 0, PewterMuseumOfScience2FLassScript, -1
	person_event SPRITE_POKEFAN_M, 9, 16, $6, 0, 0, -1, -1, 0, 0, 0, PewterMuseumOfScience2FHikerScript, -1
