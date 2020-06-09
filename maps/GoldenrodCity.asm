GoldenrodCity_MapScriptHeader: ; 0x1988d0
	; trigger count
	db 0

	; callback count
	db 2

	; callbacks

	dbw 5, UnknownScript_0x1988d8

	dbw 2, UnknownScript_0x1988e8
; 0x1988d8

UnknownScript_0x1988d8: ; 0x1988d8
	setflag ENGINE_FLYPOINT_GOLDENROD
	setflag ENGINE_16
	checkevent EVENT_SPOKE_TO_FLOWER_SHOP_GIRL_AT_SUDOWOODO
	iftrue UnknownScript_0x1988e7
	clearevent EVENT_FLOWER_SHOP_LASS_ON_ROUTE_36
UnknownScript_0x1988e7: ; 0x1988e7
	return
; 0x1988e8

UnknownScript_0x1988e8: ; 0x1988e8
	checkevent EVENT_CLEARED_RADIO_TOWER
	iffalse UnknownScript_0x198908
	checkitem COIN_CASE
	iftrue UnknownScript_0x198900
		;checkcode VAR_WEEKDAY
		;if_equal WEDNESDAY, UnknownScript_0x198900
		;if_equal SATURDAY, UnknownScript_0x198900
UnknownScript_0x1988fd: ; 0x1988fd
	disappear $10
	return
; 0x198900

UnknownScript_0x198900: ; 0x198900
	checkflag ENGINE_5E
	iftrue UnknownScript_0x198908
	appear $10
UnknownScript_0x198908: ; 0x198908
	return
; 0x198909

PokefanMScript_0x198909: ; 0x198909
	faceplayer
	loadfont
	writetext UnknownText_0x199042 ;shall I teach
	yesorno
	iffalse UnknownScript_0x19899a ;no
	special Function24b25 ;something to do with coins and text
	writetext UnknownText_0x199090 ;will cost coins
	yesorno
	iffalse UnknownScript_0x1989a0
	checkcoins 500
	if_equal $2, UnknownScript_0x1989dd ;check for coins
	writetext UnknownText_0x1990ce
	loadmenudata MenuDataHeader_0x198967
	interpretmenu2
	writebackup ;load menu
	if_equal $1, UnknownScript_0x19893a
	if_equal $2, UnknownScript_0x198949
	if_equal $3, UnknownScript_0x198958
	jump UnknownScript_0x1989d7
; 0x19893a

UnknownScript_0x19893a: ; 0x19893a
	writebyte $1 ;put 1 in scriptvar
	writetext UnknownText_0x1991cf ;end dialoge?
	special Function4925b
	iffalse UnknownScript_0x1989a6
	jump UnknownScript_0x1989d7
; 0x198949

UnknownScript_0x198949: ; 0x198949
	writebyte $2
	writetext UnknownText_0x1991cf
	special Function4925b ;teach move
	iffalse UnknownScript_0x1989a6 ;if done
	jump UnknownScript_0x1989d7 ;else quit
; 0x198958

UnknownScript_0x198958: ; 0x198958
	writebyte $3
	writetext UnknownText_0x1991cf
	special Function4925b
	iffalse UnknownScript_0x1989a6
	jump UnknownScript_0x1989d7
; 0x198967


MenuDataHeader_0x198967: ; 0x198967
	db $40 ; flags
	db 02, 00 ; start coords
	db 11, 15 ; end coords
	dw MenuData2_0x19896f
	db 1 ; default option
; 0x19896f

MenuData2_0x19896f: ; 0x19896f
	db $80 ; flags
	db 4 ; items
	db "LANCE-FLAMME@"
	db "TONNERRE@"
	db "LASER GLACE@"
	db "ANNULER@"
; 0x19899a


UnknownScript_0x19899a: ; 0x19899a
	writetext UnknownText_0x1990b4
	waitbutton
	closetext
	end
; 0x1989a0

UnknownScript_0x1989a0: ; 0x1989a0
	writetext UnknownText_0x199107
	waitbutton
	closetext
	end
; 0x1989a6

UnknownScript_0x1989a6: ; 0x1989a6
	writetext UnknownText_0x19913a
	buttonsound
	takecoins 500
	waitsfx
	playsound SFX_TRANSACTION
	special Function24b25 ;coin related
	writetext UnknownText_0x19918b
	waitbutton
	closetext
	end

	;checkcode VAR_FACING
	;if_equal $2, UnknownScript_0x1989c6
	;applymovement $10, MovementData_0x198a5f
	;jump UnknownScript_0x1989ca
; 0x1989c6

;UnknownScript_0x1989c6: ; 0x1989c6
;	applymovement $10, MovementData_0x198a63
;UnknownScript_0x1989ca: ; 0x1989ca
;	playsound SFX_ENTER_DOOR
;	disappear $10
;	clearevent EVENT_POKEFAN_M_IN_GOLDENROD_GAME_CORNER
;	setflag ENGINE_5E
;	waitsfx
;	end
; 0x1989d7

UnknownScript_0x1989d7: ; 0x1989d7
	writetext UnknownText_0x1991a4
	waitbutton
	closetext
	end
; 0x1989dd

UnknownScript_0x1989dd: ; 0x1989dd
	writetext UnknownText_0x1991ac
	waitbutton
	closetext
	end
; 0x1989e3

PokefanMScript_0x1989e3: ; 0x1989e3
	jumptextfaceplayer UnknownText_0x198a69
; 0x1989e6

YoungsterScript_0x1989e6: ; 0x1989e6
	jumptextfaceplayer UnknownText_0x198aa9
; 0x1989e9

CooltrainerFScript_0x1989e9: ; 0x1989e9
	faceplayer
	loadfont
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue UnknownScript_0x1989f7
	writetext UnknownText_0x198ae6
	waitbutton
	closetext
	end
; 0x1989f7

UnknownScript_0x1989f7: ; 0x1989f7
	writetext UnknownText_0x198b2d
	waitbutton
	closetext
	end
; 0x1989fd

CooltrainerFScript_0x1989fd: ; 0x1989fd
	faceplayer
	loadfont
	checkflag ENGINE_RADIO_CARD
	iftrue UnknownScript_0x198a0b
	writetext UnknownText_0x198b73
	waitbutton
	closetext
	end
; 0x198a0b

UnknownScript_0x198a0b: ; 0x198a0b
	writetext UnknownText_0x198c14
	waitbutton
	closetext
	end
; 0x198a11

YoungsterScript_0x198a11: ; 0x198a11
	jumptextfaceplayer UnknownText_0x198c36
; 0x198a14

LassScript_0x198a14: ; 0x198a14
	jumptextfaceplayer UnknownText_0x198c83
; 0x198a17

GrampsScript_0x198a17: ; 0x198a17
	jumptextfaceplayer UnknownText_0x198ccf
; 0x198a1a

RocketScript_0x198a1a: ; 0x198a1a
	loadfont
	writetext UnknownText_0x198d0d
	buttonsound
	faceplayer
	writetext UnknownText_0x198d2a
	waitbutton
	closetext
	spriteface $9, $1
	end
; 0x198a29

RocketScript_0x198a29: ; 0x198a29
	jumptextfaceplayer UnknownText_0x198d4e
; 0x198a2c

RocketScript_0x198a2c: ; 0x198a2c
	jumptextfaceplayer UnknownText_0x198d6d
; 0x198a2f

RocketScript_0x198a2f: ; 0x198a2f
	jumptextfaceplayer UnknownText_0x198daa
; 0x198a32

RocketScript_0x198a32: ; 0x198a32
	jumptextfaceplayer UnknownText_0x198de2
; 0x198a35

RocketScript_0x198a35: ; 0x198a35
	jumptextfaceplayer UnknownText_0x198e1f
; 0x198a38

RocketScript_0x198a38: ; 0x198a38
	jumptextfaceplayer UnknownText_0x198e4b
; 0x198a3b

MapGoldenrodCitySignpost0Script: ; 0x198a3b
	jumptext UnknownText_0x198e77
; 0x198a3e

MapGoldenrodCitySignpost1Script: ; 0x198a3e
	jumptext UnknownText_0x198e8f
; 0x198a41

MapGoldenrodCitySignpost2Script: ; 0x198a41
	jumptext UnknownText_0x198eab
; 0x198a44

MapGoldenrodCitySignpost3Script: ; 0x198a44
	jumptext UnknownText_0x198ee4
; 0x198a47

MapGoldenrodCitySignpost4Script: ; 0x198a47
	jumptext UnknownText_0x198f29
; 0x198a4a

MapGoldenrodCitySignpost5Script: ; 0x198a4a
	jumptext UnknownText_0x198f5b
; 0x198a4d

MapGoldenrodCitySignpost6Script: ; 0x198a4d
	jumptext UnknownText_0x198f81
; 0x198a50

MapGoldenrodCitySignpost7Script: ; 0x198a50
	jumptext UnknownText_0x198fae
; 0x198a53

MapGoldenrodCitySignpost8Script: ; 0x198a53
	jumptext UnknownText_0x198fd8
; 0x198a56

MapGoldenrodCitySignpost9Script: ; 0x198a56
	jumptext UnknownText_0x198fee
; 0x198a59

MapGoldenrodCitySignpost10Script: ; 0x198a59
	jumpstd pokecentersign
; 0x198a5c

MapGoldenrodCitySignpost11Script: ; 0x198a5c
	jumptext UnknownText_0x199022
; 0x198a5f

MapGoldenrodCitySignpost12Script:
  	jumptext BoutiqueSignText
	
;MovementData_0x198a5f: ; 0x198a5f
;	step_right
;	step_right
;	step_up
;	step_end
; 0x198a63

;MovementData_0x198a63: ; 0x198a63
;	step_down
;	step_right
;	step_right
;	step_up
;	step_up
;	step_end
; 0x198a69

UnknownText_0x198a69: ; 0x198a69
	text "Ils ont construit"
	line "une nouvelle TOUR"

	para "RADIO pour rempla-"
	line "cer l'ancienne."
	done
; 0x198aa9

UnknownText_0x198aa9: ; 0x198aa9
	text "Je n'arrive pas à"
	line "trouver le nouveau"

	para "CYCLES A GOGO"
	line "du coin."
	done
; 0x198ae6

UnknownText_0x198ae6: ; 0x198ae6
	text "Cet homme en noir"
	line "s'habille en"

	para "membre de la TEAM"
	line "ROCKET? Quel bêta!"
	done
; 0x198b2d

UnknownText_0x198b2d: ; 0x198b2d
	text "L'homme en noir"
	line "faisait vraiment"

	para "partie de la TEAM"
	line "ROCKET? Je le"
	cont "crois pas!"
	done
; 0x198b73

UnknownText_0x198b73: ; 0x198b73
	text "La TOUR RADIO de"
	line "DOUBLONVILLE est"
	cont "un point de"
	cont "repère."

	para "Ils organisent une"
	line "campagne promo-"
	cont "tionnelle en ce"
	cont "moment."

	para "Ils te modifieront"
	line "ton #MATOS"

	para "pour t'en servir"
	line "comme radio."
	done
; 0x198c14

UnknownText_0x198c14: ; 0x198c14
	text "Oh, ton #MATOS"
	line "fait radio!"
	done
; 0x198c36

UnknownText_0x198c36: ; 0x198c36
	text "A-la-la-la<...>"

	para "J'ai eu des ennuis"
	line "pour avoir joué"

	para "au sous-sol du"
	line "CENTRE COMMERCIAL."
	done
; 0x198c83

UnknownText_0x198c83: ; 0x198c83
	text "L'homme de cette"
	line "maison note les"
	cont "surnoms de tes"
	cont "#MON."

	para "Il peut même les"
	line "renommer."
	done
; 0x198ccf

UnknownText_0x198ccf: ; 0x198ccf
	text "Whoua! C'est ville"
	line "est immense!"

	para "Je suis totalement"
	line "perdu moi."
	done
; 0x198d0d

UnknownText_0x198d0d: ; 0x198d0d
	text "C'est donc ça la"
	line "TOUR RADIO<...>"
	done
; 0x198d2a

UnknownText_0x198d2a: ; 0x198d2a
	text "Tu veux quoi toi?"
	line "Dégage!"
	done
; 0x198d4e

UnknownText_0x198d4e: ; 0x198d4e
	text "Reste en dehors de"
	line "notre chemin!"
	done
; 0x198d6d

UnknownText_0x198d6d: ; 0x198d6d
	text "Prendre la TOUR"
	line "RADIO<...>"

	para "Quoi? Ca te"
	line "regarde pas!"
	done
; 0x198daa

UnknownText_0x198daa: ; 0x198daa
	text "Les #MON ne"
	line "sont que des"

	para "outils pour faire"
	line "de l'argent!"
	done
; 0x198de2

UnknownText_0x198de2: ; 0x198de2
	text "Notre rêve va se"
	line "réaliser<...>"

	para "La lutte fut"
	line "longue<...>"
	done
; 0x198e1f

UnknownText_0x198e1f: ; 0x198e1f
	text "T'as rien à faire"
	line "ici! Va t-en!"
	done
; 0x198e4b

UnknownText_0x198e4b: ; 0x198e4b
	text "Goûtez à la vraie"
	line "terreur qu'est la"
	cont "TEAM ROCKET!"
	done
; 0x198e77

UnknownText_0x198e77: ; 0x198e77
	text "DOUBLONVILLE"
	line "STATION DE TRAIN"
	done
; 0x198e8f

UnknownText_0x198e8f: ; 0x198e8f
	text "DOUBLONVILLE"
	line "TOUR RADIO"
	done
; 0x198eab

UnknownText_0x198eab: ; 0x198eab
	text "Grande sélection"
	line "de marchandises"
	cont "#MON."

	para "CENTRE COMMERCIAL"
	line "de DOUBLONVILLE"
	done
; 0x198ee4

UnknownText_0x198ee4: ; 0x198ee4
	text "ARENE DE"
	line "DOUBLONVILLE"

	para "CHAMPIONNE:"
	line "BLANCHE"

	para "La fille trop"
	line "mignonne!"
	done
; 0x198f29

UnknownText_0x198f29: ; 0x198f29
	text "DOUBLONVILLE"

	para "La ville festive"
	line "qui fleure bon la"
	cont "bonne humeur."
	done
; 0x198f5b

UnknownText_0x198f5b: ; 0x198f5b
	text "Le monde est une"
	line "piste cyclable!"

	para "CYCLES A GOGO"
	done
; 0x198f81

UnknownText_0x198f81: ; 0x198f81
	text "Votre terrain"
	line "de jeux!"

	para "CASINO de"
	line "DOUBLONVILLE"
	done
; 0x198fae

UnknownText_0x198fae: ; 0x198fae
	text "LE NOTEUR DE NOM"

	para "Evaluez le surnom"
	line "de vos #MON."
	done
; 0x198fd8

UnknownText_0x198fd8: ; 0x198fd8
	text "ENTREE du"
	line "SOUTERRAIN"
	done
; 0x198fee

UnknownText_0x198fee: ; 0x198fee
	text "ENTREE du"
	line "SOUTERRAIN"
	done
; 0x199004

;UnknownText_0x199004: ; 0x199004
;	text "For Mobile Tips!"
;	line "#COM CENTER"
;	done
; 0x199022

UnknownText_0x199022: ; 0x199022
	text "Une fleur, la vie!"
	line "FLEURISTE"
	done
; 0x199042

UnknownText_0x199042: ; 0x199042
	text "Je peux enseigner"
	line "à tes #MON des"

	para "capacités incroy-"
	line "ables si tu veux."

	para "Veux-tu que je"
	line "t'apprenne une"
	cont "capacité?"
	done
; 0x199090

UnknownText_0x199090: ; 0x199090
	text "Ca fera 500"
	line "jetons. C'est"
	cont "d'accord?"
	done
; 0x1990b4

UnknownText_0x1990b4: ; 0x1990b4
	text "Ohh<...> Mais elles"
	line "sont géniales<...>"
	done
; 0x1990ce

UnknownText_0x1990ce: ; 0x1990ce
	text "Hahaha! Tu ne le"
	line "regretteras pas!"

	para "Quelle capacité"
	line "veux-tu?"
	done
; 0x199107

UnknownText_0x199107: ; 0x199107
	text "Dommage, il faudra"
	line "ramener un peu"
	cont "plus d'argent<...>"
	done
; 0x19913a

UnknownText_0x19913a: ; 0x19913a
	text "Tu serais un bon"
	line "dresseur si tu"

	para "savais ce que tu"
	line "rates<...>"
	done
; 0x19918b

UnknownText_0x19918b: ; 0x19918b
	text "Hahaha!"
	line "Adieu!"
	done
; 0x1991a4

UnknownText_0x1991a4: ; 0x1991a4
	text "M-mais<...>"
	done
; 0x1991ac

UnknownText_0x1991ac: ; 0x1991ac
	text "<...>Tu n'as pas"
	line "assez de jetons<...>"
	done
; 0x1991cf

UnknownText_0x1991cf: ; 0x1991cf
	db $0, $57
; 0x1991d1

BoutiqueSignText:
	text "Restez jeune!"
	
	para "SALON de COIFFURE"
	line "de DOUBLONVILLE"
	done
	
GoldenrodCity_MapEventHeader: ; 0x1991d1
	; filler
	db 0, 0

	; warps
	db 16
	warp_def $7, $18, 1, GROUP_GOLDENROD_GYM, MAP_GOLDENROD_GYM
	warp_def $1d, $1d, 1, GROUP_GOLDENROD_BIKE_SHOP, MAP_GOLDENROD_BIKE_SHOP
	warp_def $15, $1f, 1, GROUP_GOLDENROD_HAPPINESS_RATER, MAP_GOLDENROD_HAPPINESS_RATER
	warp_def $19, $5, 1, GROUP_GOLDENROD_BILLS_HOUSE, MAP_GOLDENROD_BILLS_HOUSE
	warp_def $d, $9, 2, GROUP_GOLDENROD_MAGNET_TRAIN_STATION, MAP_GOLDENROD_MAGNET_TRAIN_STATION
	warp_def $5, $1d, 1, GROUP_GOLDENROD_FLOWER_SHOP, MAP_GOLDENROD_FLOWER_SHOP
	warp_def $9, $21, 1, GROUP_GOLDENROD_PP_SPEECH_HOUSE, MAP_GOLDENROD_PP_SPEECH_HOUSE
	warp_def $7, $f, 1, GROUP_GOLDENROD_NAME_RATERS_HOUSE, MAP_GOLDENROD_NAME_RATERS_HOUSE
	warp_def $1b, $18, 1, GROUP_GOLDENROD_DEPT_STORE_1F, MAP_GOLDENROD_DEPT_STORE_1F
	warp_def $15, $e, 1, GROUP_GOLDENROD_GAME_CORNER, MAP_GOLDENROD_GAME_CORNER
	warp_def $f, $5, 1, GROUP_RADIO_TOWER_1F, MAP_RADIO_TOWER_1F
	warp_def $1, $13, 3, GROUP_ROUTE_35_GOLDENROD_GATE, MAP_ROUTE_35_GOLDENROD_GATE
	warp_def $5, $9, 8, GROUP_UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES, MAP_UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES
	warp_def $1d, $9, 5, GROUP_UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES, MAP_UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES
	warp_def $1b, $e, 1, GROUP_GOLDENROD_POKECENTER_1F, MAP_GOLDENROD_POKECENTER_1F
	warp_def 15, 25, 1, GROUP_GOLDENROD_BOUTIQUE, MAP_GOLDENROD_BOUTIQUE

	; xy triggers
	db 0

	; signposts
	db 13
	signpost 14, 10, $0, MapGoldenrodCitySignpost0Script
	signpost 17, 4, $0, MapGoldenrodCitySignpost1Script
	signpost 27, 26, $0, MapGoldenrodCitySignpost2Script
	signpost 9, 26, $0, MapGoldenrodCitySignpost3Script
	signpost 18, 22, $0, MapGoldenrodCitySignpost4Script
	signpost 30, 28, $0, MapGoldenrodCitySignpost5Script
	signpost 22, 16, $0, MapGoldenrodCitySignpost6Script
	signpost 7, 12, $0, MapGoldenrodCitySignpost7Script
	signpost 6, 8, $0, MapGoldenrodCitySignpost8Script
	signpost 30, 10, $0, MapGoldenrodCitySignpost9Script
	signpost 27, 17, $1, MapGoldenrodCitySignpost10Script
	signpost 6, 30, $0, MapGoldenrodCitySignpost11Script
	signpost 15, 23, $0, MapGoldenrodCitySignpost12Script

	; people-events
	db 15
	person_event SPRITE_POKEFAN_M, 22, 11, $7, 0, 0, -1, -1, 0, 0, 0, PokefanMScript_0x1989e3, EVENT_CIVILIANS_EVACUATED_GOLDENROD
	person_event SPRITE_YOUNGSTER, 21, 34, $2, 1, 1, -1, -1, 0, 0, 0, YoungsterScript_0x1989e6, EVENT_CIVILIANS_EVACUATED_GOLDENROD
	person_event SPRITE_COOLTRAINER_F, 20, 16, $8, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, CooltrainerFScript_0x1989e9, EVENT_CIVILIANS_EVACUATED_GOLDENROD
	person_event SPRITE_COOLTRAINER_F, 30, 24, $2, 2, 1, -1, -1, 0, 0, 0, CooltrainerFScript_0x1989fd, EVENT_CIVILIANS_EVACUATED_GOLDENROD
	person_event SPRITE_YOUNGSTER, 21, 23, $2, 1, 1, -1, -1, 8 + PAL_OW_RED, 0, 0, YoungsterScript_0x198a11, EVENT_CIVILIANS_EVACUATED_GOLDENROD
	person_event SPRITE_LASS, 14, 21, $5, 0, 2, -1, -1, 8 + PAL_OW_GREEN, 0, 0, LassScript_0x198a14, EVENT_CIVILIANS_EVACUATED_GOLDENROD
	person_event SPRITE_GRAMPS, 31, 15, $5, 0, 1, -1, -1, 0, 0, 0, GrampsScript_0x198a17, EVENT_CIVILIANS_EVACUATED_GOLDENROD
	person_event SPRITE_ROCKET, 20, 8, $7, 0, 0, -1, -1, 0, 0, 0, RocketScript_0x198a1a, EVENT_ROCKET_IN_GOLDENROD_1
	person_event SPRITE_ROCKET, 24, 32, $7, 0, 0, -1, -1, 0, 0, 0, RocketScript_0x198a29, EVENT_ROCKET_IN_GOLDENROD_2
	person_event SPRITE_ROCKET, 19, 12, $6, 0, 0, -1, -1, 0, 0, 0, RocketScript_0x198a2c, EVENT_ROCKET_IN_GOLDENROD_2
	person_event SPRITE_ROCKET, 27, 20, $9, 0, 0, -1, -1, 0, 0, 0, RocketScript_0x198a2f, EVENT_ROCKET_TAKEOVER_OF_GOLDENROD
	person_event SPRITE_ROCKET, 24, 33, $7, 0, 0, -1, -1, 0, 0, 0, RocketScript_0x198a32, EVENT_ROCKET_TAKEOVER_OF_GOLDENROD
	person_event SPRITE_ROCKET, 11, 33, $6, 0, 0, -1, -1, 0, 0, 0, RocketScript_0x198a35, EVENT_ROCKET_TAKEOVER_OF_GOLDENROD
	person_event SPRITE_ROCKET, 14, 35, $8, 0, 0, -1, -1, 0, 0, 0, RocketScript_0x198a38, EVENT_ROCKET_TAKEOVER_OF_GOLDENROD
	person_event SPRITE_POKEFAN_M, 26, 16, $3, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, PokefanMScript_0x198909, EVENT_POKEFAN_M_IN_GOLDENROD_CITY
; 0x199321

