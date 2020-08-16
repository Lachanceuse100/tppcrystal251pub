SaffronCity_MapScriptHeader: ; 0x199321
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 5, UnknownScript_0x199326
; 0x199326

UnknownScript_0x199326: ; 0x199326
	setflag ENGINE_FLYPOINT_SAFFRON
	checkevent EVENT_FIRST_TIME_BABA
	iftrue .rematch
	warpmod 1, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	return
.rematch
	warpmod 2, GROUP_SAFFRON_GYM_2, MAP_SAFFRON_GYM_2
	return
; 0x19932a

LassScript_0x19932a: ; 0x19932a
	faceplayer
	loadfont
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x199338
	writetext UnknownText_0x19938d
	waitbutton
	closetext
	end
; 0x199338

UnknownScript_0x199338: ; 0x199338
	writetext UnknownText_0x19940d
	waitbutton
	closetext
	end
; 0x19933e

PokefanMScript_0x19933e: ; 0x19933e
	faceplayer
	loadfont
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x19934c
	writetext UnknownText_0x199460
	waitbutton
	closetext
	end
; 0x19934c

UnknownScript_0x19934c: ; 0x19934c
	writetext UnknownText_0x1994ae
	waitbutton
	closetext
	end
; 0x199352

CooltrainerMScript_0x199352: ; 0x199352
	jumptextfaceplayer UnknownText_0x1994fe
; 0x199355

CooltrainerFScript_0x199355: ; 0x199355
	jumptextfaceplayer UnknownText_0x19958e
; 0x199358

FisherScript_0x199358: ; 0x199358
	faceplayer
	loadfont
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x199366
	writetext UnknownText_0x1995fc
	waitbutton
	closetext
	end
; 0x199366

UnknownScript_0x199366: ; 0x199366
	writetext UnknownText_0x19964b
	waitbutton
	closetext
	end
; 0x19936c

YoungsterScript_0x19936c: ; 0x19936c
	jumptextfaceplayer UnknownText_0x1996a5
; 0x19936f

YoungsterScript_0x19936f: ; 0x19936f
	jumptextfaceplayer UnknownText_0x1996e5
; 0x199372

LassScript_0x199372: ; 0x199372
	jumptextfaceplayer UnknownText_0x199745
; 0x199375

MapSaffronCitySignpost0Script: ; 0x199375
	jumptext UnknownText_0x1997b7
; 0x199378

MapSaffronCitySignpost1Script: ; 0x199378
	jumptext UnknownText_0x1997e6
; 0x19937b

MapSaffronCitySignpost2Script: ; 0x19937b
	jumptext UnknownText_0x199829
; 0x19937e

MapSaffronCitySignpost3Script: ; 0x19937e
	jumptext UnknownText_0x19984a
; 0x199381

MapSaffronCitySignpost4Script: ; 0x199381
	jumptext UnknownText_0x199865
; 0x199384

MapSaffronCitySignpost5Script: ; 0x199384
	jumptext UnknownText_0x199879
; 0x199387

MapSaffronCitySignpost6Script: ; 0x199387
	jumpstd pokecentersign
; 0x19938a

MapSaffronCitySignpost7Script: ; 0x19938a
	jumpstd martsign
; 0x19938d

UnknownText_0x19938d: ; 0x19938d
	text "Une fille experte"
	line "en imitation vit"
	cont "ici."

	para "Elle imite même"
	line "les gens avec qui"

	para "elle parle. C'est"
	line "un peu usant."
	done
; 0x19940d

UnknownText_0x19940d: ; 0x19940d
	text "La COPIEUSE semble"
	line "malheureuse."

	para "Elle dit avoir"
	line "perdu sa #-"
	cont "POUPEE préférée:"
	cont "MELOFEE."
	done
; 0x199460

UnknownText_0x199460: ; 0x199460
	text "Tu viens de JOHTO?"

	para "Tu peux rentrer"
	line "chez toi en une"
	cont "seconde si le"
	cont "TRAIN MAGNET"
	cont "fonctionne."
	done
; 0x1994ae

UnknownText_0x1994ae: ; 0x1994ae
	text "Tu viens de JOHTO?"

	para "Tu peux rentrer"
	line "chez toi en une"
	cont "seconde avec le"
	cont "TRAIN MAGNET."
	done
; 0x1994fe

UnknownText_0x1994fe: ; 0x1994fe
	text "J'allais à l'ARENE"
	line "pour faire plein"
	cont "de combats<...>"

	para "Et puis je suis"
	line "arrivé à l'ARENE"
	cont "cassée d'à côté."

	para "Quel embarras<...>"
	done
; 0x19958e

UnknownText_0x19958e: ; 0x19958e
	text "La SYLPHE SARL est"
	line "célèbre pour ses"
	cont "produits #MON."

	para "C'est pour ça que"
	line "la TEAM ROCKET"

	para "voulait la contrô-"
	line "ler<...>"
	done
; 0x1995fc

UnknownText_0x1995fc: ; 0x1995fc
	text "Mâche<...> Mâche<...>"

	para "On dit qu'il y a"
	line "du tatouin à la"
	cont "CENTRALE."

	text "Mâche<...> Mâche<...>"
	done
; 0x19964b

UnknownText_0x19964b: ; 0x19964b
	text "Mâche<...> Mâche<...>"

	para "On dit qu'il y a-"
	line "vait du tatouin"
	cont "à la CENTRALE."

	text "Mâche<...> Mâche<...>"
	line "Haaah, je suis"
	cont "rempli!"
	done
; 0x1996a5

UnknownText_0x1996a5: ; 0x1996a5
	text "Se balader dans"
	line "une ruelle la"

	para "première fois me"
	line "rends anxieux<...>"
	done
; 0x1996e5

UnknownText_0x1996e5: ; 0x1996e5
	text "On dit que les"
	line "dresseurs se ren-"

	para "contrent au CLUB"
	line "des DRESSEURS à"
	cont "JADIELLE."
	done
; 0x199745

UnknownText_0x199745: ; 0x199745
	text "On a parlé de"
	line "notre ville à la"
	cont "radio."

	para "Ca fait plaisir."
	line "C'est pas tous les"
	cont "jours."
	done
; 0x1997b7

UnknownText_0x1997b7: ; 0x1997b7
	text "SAFRANIA"

	para "Le berceau doré"
	line "du commerce."
	done
; 0x1997e6

UnknownText_0x1997e6: ; 0x1997e6
	text "ARENE DE SAFRANIA"

	para "CHAMPIONNE:"
	line "MORGANE"

	para "La maîtresse des"
	line "#MON PSY!"
	done
; 0x199829

UnknownText_0x199829: ; 0x199829
	text "DOJO!"
	line "Bienvenue à tous!"
	done
; 0x19984a

UnknownText_0x19984a: ; 0x19984a
	text "BUREAUX de la"
	line "SYLPHE SARL."
	done
; 0x199865

UnknownText_0x199865: ; 0x199865
	text "MAISON DE M.PSY."
	done
; 0x199879

UnknownText_0x199879: ; 0x199879
	text "STATION du"
	line "TRAIN MAGNET"
	cont "de SAFRANIA."
	done
; 0x19989c

SaffronCity_MapEventHeader: ; 0x19989c
	; filler
	db 0, 0

	; warps
	db 15
	warp_def $3, $1a, 1, GROUP_FIGHTING_DOJO, MAP_FIGHTING_DOJO
	warp_def $3, $22, -1, 0, 0 ;Saffron Gym
	warp_def $b, $19, 2, GROUP_SAFFRON_MART, MAP_SAFFRON_MART
	warp_def $1d, $9, 1, GROUP_SAFFRON_POKECENTER_1F, MAP_SAFFRON_POKECENTER_1F
	warp_def $1d, $1b, 1, GROUP_MR_PSYCHICS_HOUSE, MAP_MR_PSYCHICS_HOUSE
	warp_def $3, $8, 2, GROUP_SAFFRON_TRAIN_STATION, MAP_SAFFRON_TRAIN_STATION
	warp_def $15, $12, 1, GROUP_SILPH_CO_1F, MAP_SILPH_CO_1F
	warp_def $b, $9, 1, GROUP_COPYCATS_HOUSE_1F, MAP_COPYCATS_HOUSE_1F
	warp_def $3, $12, 3, GROUP_ROUTE_5_SAFFRON_CITY_GATE, MAP_ROUTE_5_SAFFRON_CITY_GATE
	warp_def $18, $0, 3, GROUP_ROUTE_7_SAFFRON_GATE, MAP_ROUTE_7_SAFFRON_GATE
	warp_def $19, $0, 4, GROUP_ROUTE_7_SAFFRON_GATE, MAP_ROUTE_7_SAFFRON_GATE
	warp_def $21, $10, 1, GROUP_ROUTE_6_SAFFRON_GATE, MAP_ROUTE_6_SAFFRON_GATE
	warp_def $21, $11, 2, GROUP_ROUTE_6_SAFFRON_GATE, MAP_ROUTE_6_SAFFRON_GATE
	warp_def $16, $27, 1, GROUP_ROUTE_8_SAFFRON_GATE, MAP_ROUTE_8_SAFFRON_GATE
	warp_def $17, $27, 2, GROUP_ROUTE_8_SAFFRON_GATE, MAP_ROUTE_8_SAFFRON_GATE

	; xy triggers
	db 0

	; signposts
	db 8
	signpost 5, 21, $0, MapSaffronCitySignpost0Script
	signpost 5, 33, $0, MapSaffronCitySignpost1Script
	signpost 5, 25, $0, MapSaffronCitySignpost2Script
	signpost 21, 15, $0, MapSaffronCitySignpost3Script
	signpost 29, 25, $0, MapSaffronCitySignpost4Script
	signpost 5, 11, $0, MapSaffronCitySignpost5Script
	signpost 29, 10, $0, MapSaffronCitySignpost6Script
	signpost 11, 26, $0, MapSaffronCitySignpost7Script

	; people-events
	db 8
	person_event SPRITE_LASS, 18, 11, $5, 0, 2, -1, -1, 8 + PAL_OW_RED, 0, 0, LassScript_0x19932a, -1
	person_event SPRITE_POKEFAN_M, 34, 23, $5, 0, 2, -1, -1, 8 + PAL_OW_BROWN, 0, 0, PokefanMScript_0x19933e, -1
	person_event SPRITE_COOLTRAINER_M, 11, 36, $5, 0, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, CooltrainerMScript_0x199352, -1
	person_event SPRITE_COOLTRAINER_F, 28, 24, $5, 0, 2, -1, -1, 8 + PAL_OW_RED, 0, 0, CooltrainerFScript_0x199355, -1
	person_event SPRITE_FISHER, 16, 31, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, FisherScript_0x199358, -1
	person_event SPRITE_YOUNGSTER, 23, 19, $4, 1, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, YoungsterScript_0x19936c, -1
	person_event SPRITE_YOUNGSTER, 26, 39, $2, 1, 1, -1, -1, 8 + PAL_OW_RED, 0, 0, YoungsterScript_0x19936f, -1
	person_event SPRITE_LASS, 12, 23, $3, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, LassScript_0x199372, -1
; 0x19997d

