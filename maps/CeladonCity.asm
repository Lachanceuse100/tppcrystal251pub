CeladonCity_MapScriptHeader: ; 0x1a9f3a
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 5, UnknownScript_0x1a9f3f
; 0x1a9f3f

UnknownScript_0x1a9f3f: ; 0x1a9f3f
	setflag ENGINE_FLYPOINT_CELADON
	return
; 0x1a9f43

FisherScript_0x1a9f43: ; 0x1a9f43
	jumptextfaceplayer UnknownText_0x1a9f7d
; 0x1a9f46

PoliwagScript_0x1a9f46: ; 0x1a9f46
	loadfont
	writetext UnknownText_0x1a9fcb
	cry POLIWRATH
	waitbutton
	closetext
	end
; 0x1a9f50

TeacherScript_0x1a9f50: ; 0x1a9f50
	jumptextfaceplayer UnknownText_0x1a9fde
; 0x1a9f53

GrampsScript_0x1a9f53: ; 0x1a9f53
	jumptextfaceplayer UnknownText_0x1aa043
; 0x1a9f56

GrampsScript_0x1a9f56: ; 0x1a9f56
	jumptextfaceplayer UnknownText_0x1aa0dc
; 0x1a9f59

YoungsterScript_0x1a9f59: ; 0x1a9f59
	jumptextfaceplayer UnknownText_0x1aa115
; 0x1a9f5c

YoungsterScript_0x1a9f5c: ; 0x1a9f5c
	jumptextfaceplayer UnknownText_0x1aa155
; 0x1a9f5f

TeacherScript_0x1a9f5f: ; 0x1a9f5f
	jumptextfaceplayer UnknownText_0x1aa1bd
; 0x1a9f62

LassScript_0x1a9f62: ; 0x1a9f62
	jumptextfaceplayer UnknownText_0x1aa306
; 0x1a9f65

MapCeladonCitySignpost0Script: ; 0x1a9f65
	jumptext UnknownText_0x1aa340
; 0x1a9f68

MapCeladonCitySignpost1Script: ; 0x1a9f68
	jumptext UnknownText_0x1aa369
; 0x1a9f6b

MapCeladonCitySignpost2Script: ; 0x1a9f6b
	jumptext UnknownText_0x1aa3a9
; 0x1a9f6e

MapCeladonCitySignpost3Script: ; 0x1a9f6e
	jumptext UnknownText_0x1aa3d4
; 0x1a9f71

MapCeladonCitySignpost4Script: ; 0x1a9f71
	jumptext UnknownText_0x1aa3e5
; 0x1a9f74

MapCeladonCitySignpost5Script: ; 0x1a9f74
	loadfont
	writetext UnknownText_0x1aa418
	waitbutton
	closetext
	checkevent EVENT_BEAT_BILL_IN_BATTLE_TENT
	iftrue MapCeladonCitySignpost5Script2
	spriteface $0, $1
	loadfont
	writetext MapCeladonCityDoorAjarText
	waitbutton
	closetext
	; farjump UnknownScript_0x1253d
MapCeladonCitySignpost5Script2:
	end
; 0x1a9f77

MapCeladonCitySignpost6Script: ; 0x1a9f77
	jumpstd pokecentersign
; 0x1a9f7a

MapCeladonCitySignpostItem7: ; 0x1a9f7a
	dw $00fd
	db PP_UP

; 0x1a9f7d

UnknownText_0x1a9f7d: ; 0x1a9f7d
	text "Ce TARTARD est mon"
	line "partenaire."

	para "Peut-il évoluer en"
	line "un #MON"
	cont "grenouille?"
	done
; 0x1a9fcb

UnknownText_0x1a9fcb: ; 0x1a9fcb
	text "TARTARD: Tarr!"
	done
; 0x1a9fde

UnknownText_0x1a9fde: ; 0x1a9fde
	text "J'ai encore perdu"
	line "aux machines à"
	cont "sous<...>"

	para "Les filles aiment"
	line "bien jouer aussi."

	para "Tente ta chance,"
	line "mon chouchou."

	done
; 0x1aa043

UnknownText_0x1aa043: ; 0x1aa043
	text "J'élève des TAD-"
	line "MORV pour les ven-"
	cont "dre au CASINO de"
	cont "DOUBLONVILLE."

	para "On dirait que j'en"
	line "ai trop fait."

	para "Je ne peux plus"
	line "sortir de chez"
	cont "moi<...>"
	done
; 0x1aa0dc

UnknownText_0x1aa0dc: ; 0x1aa0dc
	text "Hihi! Cette ARENE"
	line "est géniale! C'est"

	para "réservé aux"
	line "filles! Youpi!"
	done
; 0x1aa115

UnknownText_0x1aa115: ; 0x1aa115
	text "Tu veux connaître"
	line "un secret?"

	para "Le MANOIR CELADON"
	line "a une porte cachée"
	cont "à l'arrière."
	done
; 0x1aa155

UnknownText_0x1aa155: ; 0x1aa155
	text "Il y a un concours"
	line "de bouffe au"
	cont "restaurant."

	para "Rien que de les"
	line "regarder me donne"
	cont "mal au coeur<...>"
	done
; 0x1aa1bd

UnknownText_0x1aa1bd: ; 0x1aa1bd
	text "Le CENTRE COMMER-"
	line "CIAL de CELADOPOLE"
	cont "vend de tout."

	para "Si tu n'y trouves"
	line "pas ce que tu veux"

	para "alors tu ne le"
	line "trouveras nul"
	cont "part."

	para "<...> J'ai l'air d'une"
	line "vendeuse."
	done
; 0x1aa25b

; possibly unused
UnknownText_0x1aa25b: ; 0x1aa25b
	;text "I love being"
	;line "surrounded by tall"
	;cont "buildings!"

	;para "Isn't it true that"
	;line "GOLDENROD #MON"

	;para "CENTER was made"
	;line "much, much bigger?"

	;para "That is so neat!"
	;line "I wish we had a"

	;para "place like that in"
	;line "KANTO<...>"
	;done
; 0x1aa306

UnknownText_0x1aa306: ; 0x1aa306
	text "J'ai mal au crâne"
	line "à force de marcher"

	para "en regardant par"
	line "terre<...>"
	done
; 0x1aa340

UnknownText_0x1aa340: ; 0x1aa340
	text "CELADOPOLE"

	para "La ville aux rêves"
	line "arc-en-ciel."
	done
; 0x1aa369

UnknownText_0x1aa369: ; 0x1aa369
	text "ARENE DE"
	line "CELADOPOLE"

	para "CHAMPIONNE:"
	line "ERIKA"

	para "La princesse de"
	line "la nature."
	done
; 0x1aa3a9

UnknownText_0x1aa3a9: ; 0x1aa3a9
	text "Tout ce dont vous"
	line "avez besoin!"

	para "CENTRE COMMERCIAL"
	line "de CELADOPOLE!"
	done
; 0x1aa3d4

UnknownText_0x1aa3d4: ; 0x1aa3d4
	text "MANOIR CELADON"
	done
; 0x1aa3e5

UnknownText_0x1aa3e5: ; 0x1aa3e5
	text "Un terrain de jeux"
	line "pour tous."

	para "CASINO de"
	line "CELADOPOLE."
	done
; 0x1aa418

UnknownText_0x1aa418: ; 0x1aa418
	text "VOTRE ATTENTION!"

	para "La TENTE de COMBAT"
	line "est fermée jusqu'à"
	cont "nouvel ordre!"

	para "Veuillez vous ren-"
	line "dre à la TOUR de"
	cont "COMBAT situé à"
	cont "JOHTO."
	done

MapCeladonCityDoorAjarText:
	text $56, "?"

	para "La porte est"
	line "entrouverte."

	para "Il y a quelqu'un!"
	done
; 0x1aa497

CeladonCity_MapEventHeader: ; 0x1aa497
	; filler
	db 0, 0

	; warps
	db 10
	warp_def $9, $4, 1, GROUP_CELADON_DEPT_STORE_1F, MAP_CELADON_DEPT_STORE_1F
	warp_def $9, $10, 1, GROUP_CELADON_MANSION_1F, MAP_CELADON_MANSION_1F
	warp_def $3, $10, 3, GROUP_CELADON_MANSION_1F, MAP_CELADON_MANSION_1F
	warp_def $3, $11, 3, GROUP_CELADON_MANSION_1F, MAP_CELADON_MANSION_1F
	warp_def $9, $1d, 1, GROUP_CELADON_POKECENTER_1F, MAP_CELADON_POKECENTER_1F
	warp_def $13, $12, 1, GROUP_CELADON_GAME_CORNER, MAP_CELADON_GAME_CORNER
	warp_def $13, $17, 1, GROUP_CELADON_GAME_CORNER_PRIZE_ROOM, MAP_CELADON_GAME_CORNER_PRIZE_ROOM
	warp_def $1d, $a, 1, GROUP_CELADON_GYM, MAP_CELADON_GYM
	warp_def $1d, $19, 1, GROUP_CELADON_CAFE, MAP_CELADON_CAFE
	warp_def $13, $1d, 1, GROUP_BATTLE_TENT_RUINS, MAP_BATTLE_TENT_RUINS

	; xy triggers
	db 0

	; signposts
	db 8
	signpost 21, 23, $0, MapCeladonCitySignpost0Script
	signpost 31, 11, $0, MapCeladonCitySignpost1Script
	signpost 9, 6, $0, MapCeladonCitySignpost2Script
	signpost 9, 13, $0, MapCeladonCitySignpost3Script
	signpost 21, 19, $0, MapCeladonCitySignpost4Script
	signpost 21, 29, $0, MapCeladonCitySignpost5Script
	signpost 9, 30, $0, MapCeladonCitySignpost6Script
	signpost 21, 37, $7, MapCeladonCitySignpostItem7

	; people-events
	db 9
	person_event SPRITE_FISHER, 15, 30, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, FisherScript_0x1a9f43, -1
	person_event SPRITE_POLIWAG, 15, 31, $16, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, PoliwagScript_0x1a9f46, -1
	person_event SPRITE_TEACHER, 28, 24, $5, 0, 2, -1, -1, 8 + PAL_OW_RED, 0, 0, TeacherScript_0x1a9f50, -1
	person_event SPRITE_GRAMPS, 20, 18, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, GrampsScript_0x1a9f53, -1
	person_event SPRITE_GRAMPS, 35, 12, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, GrampsScript_0x1a9f56, -1
	person_event SPRITE_YOUNGSTER, 17, 22, $5, 0, 2, -1, -1, 8 + PAL_OW_BLUE, 0, 0, YoungsterScript_0x1a9f59, -1
	person_event SPRITE_YOUNGSTER, 37, 28, $7, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, YoungsterScript_0x1a9f5c, -1
	person_event SPRITE_TEACHER, 18, 10, $2, 2, 2, -1, -1, 8 + PAL_OW_GREEN, 0, 0, TeacherScript_0x1a9f5f, -1
	person_event SPRITE_LASS, 26, 11, $4, 2, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, LassScript_0x1a9f62, -1
; 0x1aa567

