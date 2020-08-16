CeladonCafe_MapScriptHeader: ; 0x73047
	; trigger count
	db 0

	; callback count
	db 0
; 0x73049

SuperNerdScript_0x73049: ; 0x73049
	faceplayer
	loadfont
	writetext UnknownText_0x730de
	waitbutton
	closetext
	end
; 0x73051

FisherScript_0x73051: ; 0x73051
	loadfont
	writetext UnknownText_0x73129
	waitbutton
	closetext
	faceplayer
	loadfont
	writetext UnknownText_0x7313a
	waitbutton
	closetext
	spriteface $3, $2
	end
; 0x73062

FisherScript_0x73062: ; 0x73062
	loadfont
	writetext UnknownText_0x7316a
	waitbutton
	closetext
	faceplayer
	loadfont
	writetext UnknownText_0x73178
	waitbutton
	closetext
	spriteface $4, $3
	end
; 0x73073

FisherScript_0x73073: ; 0x73073
	loadfont
	writetext UnknownText_0x731ae
	waitbutton
	closetext
	faceplayer
	loadfont
	writetext UnknownText_0x731bd
	waitbutton
	closetext
	spriteface $5, $3
	end
; 0x73084

TeacherScript_0x73084: ; 0x73084
	checkitem COIN_CASE
	iftrue UnknownScript_0x7309a
	loadfont
	writetext UnknownText_0x73201
	waitbutton
	closetext
	faceplayer
	loadfont
	writetext UnknownText_0x73212
	waitbutton
	closetext
	spriteface $6, $2
	end
; 0x7309a

UnknownScript_0x7309a: ; 0x7309a
	loadfont
	writetext UnknownText_0x73254
	waitbutton
	closetext
	spriteface $6, $3
	loadfont
	writetext UnknownText_0x73278
	waitbutton
	closetext
	spriteface $6, $2
	end
; 0x730ad

MapCeladonCafeSignpost0Script: ; 0x730ad
	jumptext UnknownText_0x73285
; 0x730b0

MapCeladonCafeSignpost1Script: ; 0x730b0
	checkevent EVENT_FOUND_LEFTOVERS_IN_CELADON_CAFE
	iftrue UnknownScript_0x730db
	giveitem LEFTOVERS, $1
	iffalse UnknownScript_0x730cd
	loadfont
	itemtotext LEFTOVERS, $0
	writetext UnknownText_0x732e7
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	setevent EVENT_FOUND_LEFTOVERS_IN_CELADON_CAFE
	end
; 0x730cd

UnknownScript_0x730cd: ; 0x730cd
	loadfont
	itemtotext LEFTOVERS, $0
	writetext UnknownText_0x732e7
	buttonsound
	writetext UnknownText_0x732f7
	waitbutton
	closetext
	end
; 0x730db

UnknownScript_0x730db: ; 0x730db
	jumpstd trashcan
; 0x730de

UnknownText_0x730de: ; 0x730de
	text "Salut!"

	para "On tient un con-"
	line "cours de bouffe."

	para "Nous ne servons"
	line "personne pour"
	cont "l'instant. Désolé."
	done
; 0x73129

UnknownText_0x73129: ; 0x73129
	text "<...>Tousse, crache<...>"
	done
; 0x7313a

UnknownText_0x7313a: ; 0x7313a
	text "Me parle pas!"

	para "Tu vas casser mon"
	line "élan!"
	done
; 0x7316a

UnknownText_0x7316a: ; 0x7316a
	text "<...>tousse<...> mâche<...>"
	done
; 0x73178

UnknownText_0x73178: ; 0x73178
	text "Je préfère la"
	line "quantité à la qua-"
	cont "lité."

	para "Je ne suis heureux"
	line "que rassasié!"
	done
; 0x731ae

UnknownText_0x731ae: ; 0x731ae
	text "Miam, bouffe<...>"
	done
; 0x731bd

UnknownText_0x731bd: ; 0x731bd
	text "Ici la nourriture"
	line "est bonne mais"
	cont "celle de DOUBLON-"
	cont "VILLE est la"
	cont "meilleure."
	done
; 0x73201

UnknownText_0x73201: ; 0x73201
	text "Mâche<...> Croque<...>"
	done
; 0x73212

UnknownText_0x73212: ; 0x73212
	text "Personne ne te"
	line "donnera de BOITE"

	para "JETON, ici. Va"
	line "voir à JOHTO."
	done
; 0x73254

UnknownText_0x73254: ; 0x73254
	text "Croque<...> Croque<...>"

	para "J'ai pas fini!"
	done
; 0x73278

UnknownText_0x73278: ; 0x73278
	text "La suite, CHEF!"
	done
; 0x73285

UnknownText_0x73285: ; 0x73285
	text "Concours de"
	line "bouffe! Pas de"

	para "temps limite!"
	line "Une joie sans fin!"

	para "C'est gratuit pour"
	line "le vainqueur!"
	done
; 0x732e7

UnknownText_0x732e7: ; 0x732e7
	text "<PLAYER> trouve:"
	line "@"
	text_from_ram StringBuffer3
	text "."
	done
; 0x732f7

UnknownText_0x732f7: ; 0x732f7
	text "Mais <PLAYER> ne"
	line "peut plus rien"
	cont "porter<...>"
	done
; 0x73316

CeladonCafe_MapEventHeader: ; 0x73316
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $6, 9, GROUP_CELADON_CITY, MAP_CELADON_CITY
	warp_def $7, $7, 9, GROUP_CELADON_CITY, MAP_CELADON_CITY

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 0, 5, $0, MapCeladonCafeSignpost0Script
	signpost 1, 7, $0, MapCeladonCafeSignpost1Script

	; people-events
	db 5
	person_event SPRITE_SUPER_NERD, 7, 13, $8, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, SuperNerdScript_0x73049, -1
	person_event SPRITE_FISHER, 10, 8, $8, 0, 0, -1, -1, 0, 0, 0, FisherScript_0x73051, -1
	person_event SPRITE_FISHER, 11, 5, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, FisherScript_0x73062, -1
	person_event SPRITE_FISHER, 6, 5, $9, 0, 0, -1, -1, 0, 0, 0, FisherScript_0x73073, -1
	person_event SPRITE_TEACHER, 7, 8, $8, 0, 0, -1, -1, 0, 0, 0, TeacherScript_0x73084, -1
; 0x73371

