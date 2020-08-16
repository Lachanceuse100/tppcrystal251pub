CeruleanCity_MapScriptHeader: ; 0x184000
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 5, UnknownScript_0x184005
; 0x184005

UnknownScript_0x184005: ; 0x184005
	setflag ENGINE_FLYPOINT_CERULEAN
	return
; 0x184009

CooltrainerMScript_0x184009: ; 0x184009
	faceplayer
	loadfont
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x184017
	writetext UnknownText_0x1840bc
	waitbutton
	closetext
	end
; 0x184017

UnknownScript_0x184017: ; 0x184017
	writetext UnknownText_0x184144
	waitbutton
	closetext
	end
; 0x18401d

SuperNerdScript_0x18401d: ; 0x18401d
	jumptextfaceplayer UnknownText_0x1841a8
; 0x184020

SlowpokeScript_0x184020: ; 0x184020
	loadfont
	writetext UnknownText_0x1841e9
	cry SLOWBRO
	waitbutton
	closetext
	end
; 0x18402a

CooltrainerFScript_0x18402a: ; 0x18402a
	faceplayer
	loadfont
	writetext UnknownText_0x1841fa
	waitbutton
	closetext
	spriteface $5, $2
	loadfont
	writetext UnknownText_0x184229
	waitbutton
	closetext
	loadfont
	writetext UnknownText_0x1841e9
	cry SLOWBRO
	waitbutton
	closetext
	loadfont
	writetext UnknownText_0x18424b
	waitbutton
	closetext
	end
; 0x18404a

FisherScript_0x18404a: ; 0x18404a
	faceplayer
	loadfont
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x184058
	checkevent EVENT_MET_ROCKET_GRUNT_AT_CERULEAN_GYM
	iftrue UnknownScript_0x18405e
UnknownScript_0x184058: ; 0x184058
	writetext UnknownText_0x18424e
	waitbutton
	closetext
	end
; 0x18405e

UnknownScript_0x18405e: ; 0x18405e
	writetext UnknownText_0x184275
	waitbutton
	closetext
	end
; 0x184064

YoungsterScript_0x184064: ; 0x184064
	faceplayer
	loadfont
	writetext UnknownText_0x1842a9
	waitbutton
	closetext
	checkevent EVENT_FOUND_BERSERK_GENE_IN_CERULEAN_CITY
	iffalse UnknownScript_0x184072
	end
; 0x184072

UnknownScript_0x184072: ; 0x184072
	waitsfx
	playsound SFX_SECOND_PART_OF_ITEMFINDER
	waitsfx
	playsound SFX_TRANSACTION
	waitsfx
	playsound SFX_SECOND_PART_OF_ITEMFINDER
	waitsfx
	playsound SFX_TRANSACTION
	waitsfx
	playsound SFX_SECOND_PART_OF_ITEMFINDER
	waitsfx
	playsound SFX_TRANSACTION
	waitsfx
	playsound SFX_SECOND_PART_OF_ITEMFINDER
	waitsfx
	playsound SFX_TRANSACTION
	waitsfx
	showemote $0, $7, 15
	spriteface $7, $2
	loadfont
	writetext UnknownText_0x1842ee
	waitbutton
	closetext
	end
; 0x1840a1

CooltrainerMScript_BlocksCeruleanCave:
	jumptextfaceplayer CooltrainerMText_BlocksCeruleanCave

MapCeruleanCitySignpost0Script: ; 0x1840a1
	jumptext UnknownText_0x184312
; 0x1840a4

MapCeruleanCitySignpost1Script: ; 0x1840a4
	jumptext UnknownText_0x184345
; 0x1840a7

MapCeruleanCitySignpost2Script: ; 0x1840a7
	jumptext UnknownText_0x184381
; 0x1840aa

MapCeruleanCitySignpost3Script: ; 0x1840aa
	jumptext UnknownText_0x1843cc
; 0x1840ad

MapCeruleanCitySignpost4Script: ; 0x1840ad
	jumptext UnknownText_0x18443b
; 0x1840b0

MapCeruleanCitySignpost5Script: ; 0x1840b0
	jumptext UnknownText_0x184450
; 0x1840b3

MapCeruleanCitySignpost6Script: ; 0x1840b3
	jumpstd pokecentersign
; 0x1840b6

MapCeruleanCitySignpost7Script: ; 0x1840b6
	jumpstd martsign
; 0x1840b9

MapCeruleanCitySignpostItem8: ; 0x1840b9
	dw $00fa
	db BERSERK_GENE

; 0x1840bc

UnknownText_0x1840bc: ; 0x1840bc
	text "La CENTRALE de"
	line "KANTO?"

	para "C'est vers le bout"
	line "de la ROUTE 9, à"
	cont "l'est d'ici."

	para "Il paraît qu'il y"
	line "a eu un accident?"
	done
; 0x184144

UnknownText_0x184144: ; 0x184144
	text "Tu collectionnes"
	line "tous les #MON"
	cont "différents?"

	para "Ca doit pas être"
	line "super facile<...>"
	cont "Mais ça à l'air"
	cont "marrant."
	done
; 0x1841a8

UnknownText_0x1841a8: ; 0x1841a8
	text "Le CAP au nord est"
	line "un bon endroit"
	cont "pour un rencard!"

	para "Les filles adorent"
	line "ça!"
	done
; 0x1841e9

UnknownText_0x1841e9: ; 0x1841e9
	text "FLAGADOSS: Gaaa?"
	done
; 0x1841fa

UnknownText_0x1841fa: ; 0x1841fa
	text "Mon FLAGADOSS et"
	line "moi on va trop"
	cont "bien ensemble!"
	done
; 0x184229

UnknownText_0x184229: ; 0x184229
	text "FLAGADOSS!"
	line "CHOC MENTAL!"
	done
; 0x18424b

UnknownText_0x18424b: ; 0x18424b
	text "<...><...><...><...><...><...><...>"
	done
; 0x18424e

UnknownText_0x18424e: ; 0x18424e
	text "Je suis un super"
	line "fan d'ONDINE de"
	cont "l'ARENE d'AZURIA."
	done
; 0x184275

UnknownText_0x184275: ; 0x184275
	text "J'ai vu ce drôle"
	line "de type aller vers"
	cont "le CAP d'AZURIA."
	done
; 0x1842a9

UnknownText_0x1842a9: ; 0x1842a9
	text "Il y a une caverne"
	line "ici qui abrite un"

	para "#MON affreuse-"
	line "ment puissant."
	done
; 0x1842ee

CooltrainerMText_BlocksCeruleanCave:
	text "Je suis désolé."

	para "Cette grotte est"
	line "trop dangereuse"
	cont "pour les citoyens"
	cont "ordinaires."
	done


UnknownText_0x1842ee: ; 0x1842ee
	text "Hein?"

	para "Mon CHERCH'OBJET"
	line "capte quelque"
	cont "chose."
	done
; 0x184312

UnknownText_0x184312: ; 0x184312
	text "AZURIA"

	para "Entourée d'une"
	line "étrange aura bleue"
	done
; 0x184345

UnknownText_0x184345: ; 0x184345
	text "ARENE #MON"
	line "d'AZURIA"

	para "CHAMPIONNE:"
	cont "ONDINE"

	para "Une vraie petite"
	line "sirène"
	done
; 0x184381

UnknownText_0x184381: ; 0x184381
	text "Il y a une affiche"
	line "ici<...>"

	para "Les CYCLES A GOGO"
	line "sont à DOUBLON-"
	cont "VILLE à JOHTO<...>"
	done
; 0x1843cc

UnknownText_0x1843cc: ; 0x1843cc
	text "Il y a une affiche"
	line "ici<...>"

	para "Non au vol."
	line "Oui au bonheur."

	para "POLICE d'AZURIA"
	done
; 0x18443b

UnknownText_0x18443b: ; 0x18443b
	text "CAP d'AZURIA"
	line "Tout droit."
	done
; 0x184450

UnknownText_0x184450: ; 0x184450
	text "C'est fermé<...>"
	done
; 0x18445d

CeruleanCity_MapEventHeader: ; 0x18445d
	; filler
	db 0, 0

	; warps
	db 7
	warp_def $f, $7, 1, GROUP_CERULEAN_GYM_BADGE_SPEECH_HOUSE, MAP_CERULEAN_GYM_BADGE_SPEECH_HOUSE
	warp_def $11, $1c, 1, GROUP_CERULEAN_POLICE_STATION, MAP_CERULEAN_POLICE_STATION
	warp_def $13, $d, 1, GROUP_CERULEAN_TRADE_SPEECH_HOUSE, MAP_CERULEAN_TRADE_SPEECH_HOUSE
	warp_def $15, $13, 1, GROUP_CERULEAN_POKECENTER_1F, MAP_CERULEAN_POKECENTER_1F
	warp_def $17, $1e, 1, GROUP_CERULEAN_GYM, MAP_CERULEAN_GYM
	warp_def $1d, $19, 2, GROUP_CERULEAN_MART, MAP_CERULEAN_MART
	warp_def $d, $2, 1, GROUP_CERULEANCAVE1, MAP_CERULEANCAVE1

	; xy triggers
	db 0

	; signposts
	db 9
	signpost 23, 23, $0, MapCeruleanCitySignpost0Script
	signpost 25, 27, $0, MapCeruleanCitySignpost1Script
	signpost 29, 11, $0, MapCeruleanCitySignpost2Script
	signpost 17, 25, $0, MapCeruleanCitySignpost3Script
	signpost 7, 23, $0, MapCeruleanCitySignpost4Script
	signpost 29, 14, $0, MapCeruleanCitySignpost5Script
	signpost 21, 20, $0, MapCeruleanCitySignpost6Script
	signpost 29, 26, $0, MapCeruleanCitySignpost7Script
	signpost 12, 4, $7, MapCeruleanCitySignpostItem8

	; people-events
	db 7
	person_event SPRITE_COOLTRAINER_M, 27, 19, $2, 2, 2, -1, -1, 8 + PAL_OW_BLUE, 0, 0, CooltrainerMScript_0x184009, -1
	person_event SPRITE_SUPER_NERD, 19, 27, $2, 1, 1, -1, -1, 8 + PAL_OW_BLUE, 0, 0, SuperNerdScript_0x18401d, -1
	person_event SPRITE_SLOWPOKE, 28, 24, $1, 0, 0, -1, -1, 0, 0, 0, SlowpokeScript_0x184020, -1
	person_event SPRITE_COOLTRAINER_F, 28, 25, $8, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, CooltrainerFScript_0x18402a, -1
	person_event SPRITE_FISHER, 30, 34, $5, 0, 1, -1, -1, 8 + PAL_OW_RED, 0, 0, FisherScript_0x18404a, -1
	person_event SPRITE_YOUNGSTER, 16, 10, $3, 0, 1, -1, -1, 8 + PAL_OW_RED, 0, 0, YoungsterScript_0x184064, -1
	person_event SPRITE_COOLTRAINER_M, 18, 6, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, CooltrainerMScript_BlocksCeruleanCave, EVENT_COOLTRAINER_BLOCKING_CERULEAN_CAVE
; 0x1844fc

