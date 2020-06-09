EcruteakCity_MapScriptHeader: ; 0x1a4000
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 5, UnknownScript_0x1a4005
; 0x1a4005

UnknownScript_0x1a4005: ; 0x1a4005
	setflag ENGINE_FLYPOINT_ECRUTEAK
	checkevent EVENT_FOUGHT_HO_OH
	iftrue .EliteFloor
	warpmod 1, GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM
	return
.EliteFloor:
	warpmod 1, GROUP_ECRUTEAK_ELITE_FLOOR, MAP_ECRUTEAK_ELITE_FLOOR
	return
; 0x1a4009

GrampsScript_0x1a4009: ; 0x1a4009
	jumptextfaceplayer UnknownText_0x1a4105
; 0x1a400c

GrampsScript_0x1a400c: ; 0x1a400c
	jumptextfaceplayer UnknownText_0x1a4147
; 0x1a400f

GrampsScript_0x1a400f: ; 0x1a400f
	jumptextfaceplayer UnknownText_0x1a43cb
; 0x1a4012

LassScript_0x1a4012: ; 0x1a4012
	jumptextfaceplayer UnknownText_0x1a41db
; 0x1a4015

LassScript_0x1a4015: ; 0x1a4015
	faceplayer
	loadfont
	checkevent EVENT_RELEASED_THE_BEASTS
	iftrue UnknownScript_0x1a4023
	writetext UnknownText_0x1a421a
	waitbutton
	closetext
	end
; 0x1a4023

UnknownScript_0x1a4023: ; 0x1a4023
	writetext UnknownText_0x1a4269
	waitbutton
	closetext
	end
; 0x1a4029

FisherScript_0x1a4029: ; 0x1a4029
	faceplayer
	loadfont
	checkevent EVENT_JASMINE_RETURNED_TO_GYM
	iftrue UnknownScript_0x1a4037
	writetext UnknownText_0x1a42ac
	waitbutton
	closetext
	end
; 0x1a4037

UnknownScript_0x1a4037: ; 0x1a4037
	writetext UnknownText_0x1a4325
	waitbutton
	closetext
	end
; 0x1a403d

YoungsterScript_0x1a403d: ; 0x1a403d
	jumptextfaceplayer UnknownText_0x1a4386
; 0x1a4040

MapEcruteakCitySignpost0Script: ; 0x1a4040
	jumptext UnknownText_0x1a44d1
; 0x1a4043

MapEcruteakCitySignpost1Script: ; 0x1a4043
	jumptext UnknownText_0x1a4513
; 0x1a4046

MapEcruteakCitySignpost2Script: ; 0x1a4046
	jumptext UnknownText_0x1a4548
; 0x1a4049

MapEcruteakCitySignpost3Script: ; 0x1a4049
	jumptext UnknownText_0x1a458c
; 0x1a404c

MapEcruteakCitySignpost4Script: ; 0x1a404c
	jumptext UnknownText_0x1a45a4
; 0x1a404f

MapEcruteakCitySignpost5Script: ; 0x1a404f
	jumpstd pokecentersign
; 0x1a4052

MapEcruteakCitySignpost6Script: ; 0x1a4052
	jumpstd martsign
; 0x1a4055

MapEcruteakCitySignpostItem7: ; 0x1a4055
	dw $00b4
	db HYPER_POTION

; 0x1a4058

;UnusedMissingDaughterText: ; 0x1a4058
; This text is neither used nor referenced in the final game.
;	text "Oh, no. Oh, no<...>"

;	para "My daughter is"
;	line "missing."

;	para "No<...> She couldn't"
;	line "have gone to the"
;	cont "BURNED TOWER."

;	para "I told her not to"
;	line "go near it<...>"

;	para "People seem to"
;	line "disappear there…"

	;para "Oh, what should I"
	;line "do<...>?"
	;done

UnknownText_0x1a4105: ; 0x1a4105
	text "ROSALIA avait"
	line "deux tours:"

	para "une à l'Est,"
	line "l'atre à l'Ouest."
	done
; 0x1a4147

UnknownText_0x1a4147: ; 0x1a4147
	text "Ah<...>"
	line "As-tu appris à"

	para "danser comme les"
	line "KIMONO?"

	para "Si tu vas dans"
	line "leur SALLE de"

	para "DANSE, un vieil"
	line "homme bizarre te"
	cont "donnera un cadeau."
	done
; 0x1a41db

UnknownText_0x1a41db: ; 0x1a41db
	text "Je vais m'entraî-"
	line "ner à la SALLE de"

	para "DANSE, tu veux"
	line "m'accompagner?"
	done
; 0x1a421a

UnknownText_0x1a421a: ; 0x1a421a
	text "La tour qu'il y"
	line "avait ici<...>"

	para "Ma grand-mère me"
	line "disait qu'elle"
	cont "était bien plus"
	cont "grande."
	done
; 0x1a4269

UnknownText_0x1a4269: ; 0x1a4269
	text "Trois gros #MON"
	line "se sont enfuis"
	cont "dans des direc-"
	cont "tions différentes."

	para "Qu'est-ce qu'il"
	line "se passe?"
	done
; 0x1a42ac

UnknownText_0x1a42ac: ; 0x1a42ac
	text "Il y a une rumeur"
	line "qui court sur le"
	cont "PHARE D'OLIVILLE."

	para "Le #MON qui"
	line "était au PHARE"

	para "est tombé malade."
	line "Tout ça c'est pas"
	cont "bon signe.."
	done
; 0x1a4325

UnknownText_0x1a4325: ; 0x1a4325
	text "Le #MON du"
	line "PHARE D'OLIVILLE a"
	cont "été soigné."

	para "Les bateaux peu-"
	line "vent de nouveau"
	cont "naviguer de nuit"
	cont "sans soucis."
	done
; 0x1a4386

UnknownText_0x1a4386: ; 0x1a4386
	text "On dit que les"
	line "#MON sont"
	cont "déchaînés au LAC"
	cont "COLERE."

	para "J'aimerais bien"
	line "voir ça."
	done
; 0x1a43cb

UnknownText_0x1a43cb: ; 0x1a43cb
	text "Il y a bien"
	line "longtemps<...>"

	para "La tour prit feu."
	line "3 #MON inconnus"

	para "périrent alors"
	line "dans les flammes."

	para "Un #MON aux"
	line "couleurs de l'arc-"

	para "en-ciel descendit"
	line "du ciel et les"
	cont "ressucita<...>"

	para "Cette légende est"
	line "connue de tous les"

	para "CHAMPIONS de"
	line "ROSALIA."

	para "Moi?"

	para "J'étais dresseur"
	line "à l'époque."
	cont "Hohoho!"
	done
; 0x1a44d1

UnknownText_0x1a44d1: ; 0x1a44d1
	text "ROSALIA"

	para "Une ville bien hi-"
	line "storique où le pa-"
	cont "ssé et le présent"
	cont "se rencontrent."
	done
; 0x1a4513

UnknownText_0x1a4513: ; 0x1a4513
	text "TOUR FERRAILLE"

	para "On racontre qu'un"
	line "#MON légendaire"
	cont "vient se reposer"
	cont "ici."
	done
; 0x1a4548

UnknownText_0x1a4548: ; 0x1a4548
	text "ARENE de ROSALIA"

	para "CHAMPION:"
	line "MORTIMER"

	para "Le mystérieux"
	line "voyant."
	done
; 0x1a458c

UnknownText_0x1a458c: ; 0x1a458c
	text "SALLE de DANSE"
	line "de ROSALIA"
	done
; 0x1a45a4

UnknownText_0x1a45a4: ; 0x1a45a4
	text "TOUR CENDREE"

	para "Elle a été détrui-"
	line "te par un feu"
	cont "d'origine encore"
	cont "inconnue."

	para "Pour votre propre"
	line "sécurité, restez"
	cont "à l'écart."
	done
; 0x1a45fc

EcruteakCity_MapEventHeader: ; 0x1a45fc
	; filler
	db 0, 0

	; warps
	db 15
	warp_def $1a, $23, 1, GROUP_ROUTE_42_ECRUTEAK_GATE, MAP_ROUTE_42_ECRUTEAK_GATE
	warp_def $1b, $23, 2, GROUP_ROUTE_42_ECRUTEAK_GATE, MAP_ROUTE_42_ECRUTEAK_GATE
	warp_def $b, $12, 1, GROUP_ECRUTEAK_HOUSE, MAP_ECRUTEAK_HOUSE
	warp_def $2, $14, 1, GROUP_WISE_TRIOS_ROOM, MAP_WISE_TRIOS_ROOM
	warp_def $3, $14, 2, GROUP_WISE_TRIOS_ROOM, MAP_WISE_TRIOS_ROOM
	warp_def $1b, $17, 1, GROUP_ECRUTEAK_POKECENTER_1F, MAP_ECRUTEAK_POKECENTER_1F
	warp_def $15, $5, 1, GROUP_ECRUTEAK_LUGIA_SPEECH_HOUSE, MAP_ECRUTEAK_LUGIA_SPEECH_HOUSE
	warp_def $15, $17, 1, GROUP_DANCE_THEATRE, MAP_DANCE_THEATRE
	warp_def $15, $1d, 2, GROUP_ECRUTEAK_MART, MAP_ECRUTEAK_MART
	warp_def $1b, $6, -1, 0, 0 ;Ecruteak Gym
	warp_def $1b, $d, 1, GROUP_ECRUTEAK_ITEMFINDER_HOUSE, MAP_ECRUTEAK_ITEMFINDER_HOUSE
	warp_def $7, $25, 1, GROUP_TIN_TOWER_1F, MAP_TIN_TOWER_1F
	warp_def $5, $5, 1, GROUP_BURNED_TOWER_1F, MAP_BURNED_TOWER_1F
	warp_def $12, $0, 3, GROUP_ROUTE_38_ECRUTEAK_GATE, MAP_ROUTE_38_ECRUTEAK_GATE
	warp_def $13, $0, 4, GROUP_ROUTE_38_ECRUTEAK_GATE, MAP_ROUTE_38_ECRUTEAK_GATE

	; xy triggers
	db 0

	; signposts
	db 8
	signpost 21, 15, $0, MapEcruteakCitySignpost0Script
	signpost 10, 38, $0, MapEcruteakCitySignpost1Script
	signpost 28, 8, $0, MapEcruteakCitySignpost2Script
	signpost 21, 21, $0, MapEcruteakCitySignpost3Script
	signpost 10, 2, $0, MapEcruteakCitySignpost4Script
	signpost 27, 24, $0, MapEcruteakCitySignpost5Script
	signpost 21, 30, $0, MapEcruteakCitySignpost6Script
	signpost 14, 23, $7, MapEcruteakCitySignpostItem7

	; people-events
	db 7
	person_event SPRITE_GRAMPS, 19, 22, $2, 1, 1, -1, -1, 0, 0, 0, GrampsScript_0x1a4009, -1
	person_event SPRITE_GRAMPS, 25, 24, $3, 0, 0, -1, -1, 0, 0, 0, GrampsScript_0x1a400c, -1
	person_event SPRITE_LASS, 33, 25, $5, 0, 2, -1, -1, 8 + PAL_OW_BLUE, 0, 0, LassScript_0x1a4012, -1
	person_event SPRITE_LASS, 13, 7, $7, 0, 0, -1, -1, 0, 0, 0, LassScript_0x1a4015, -1
	person_event SPRITE_FISHER, 26, 13, $5, 0, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, FisherScript_0x1a4029, -1
	person_event SPRITE_YOUNGSTER, 18, 14, $2, 1, 1, -1, -1, 8 + PAL_OW_RED, 0, 0, YoungsterScript_0x1a403d, -1
	person_event SPRITE_GRAMPS, 11, 7, $2, 1, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, GrampsScript_0x1a400f, EVENT_OLD_MAN_OUTSIDE_BURNED_TOWER
; 0x1a46d0

