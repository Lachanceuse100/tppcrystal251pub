EcruteakItemfinderHouse_MapScriptHeader: ; 0x9a5f9
	; trigger count
	db 0

	; callback count
	db 0
; 0x9a5fb

CooltrainerMScript_0x9a5fb: ; 0x9a5fb
	faceplayer
	loadfont
	checkevent EVENT_GOT_ITEMFINDER
	iftrue UnknownScript_0x9a614
	writetext UnknownText_0x9a63c
	yesorno
	iffalse UnknownScript_0x9a61a
	writetext UnknownText_0x9a6b5
	buttonsound
	verbosegiveitem ITEMFINDER, 1
	setevent EVENT_GOT_ITEMFINDER
UnknownScript_0x9a614: ; 0x9a614
	writetext UnknownText_0x9a70e
	waitbutton
	closetext
	end
; 0x9a61a

UnknownScript_0x9a61a: ; 0x9a61a
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .pronoun_game
	writetext UnknownText_0x9a805
	waitbutton
	closetext
	end
; 0x9a620
.pronoun_game
	writetext UnknownText_0x9a805_F
	waitbutton
	closetext
	end

PokedexScript_0x9a620: ; 0x9a620
	loadfont
	writetext UnknownText_0x9a826
	yesorno
	iftrue UnknownScript_0x9a62a
	closetext
	end
; 0x9a62a

UnknownScript_0x9a62a: ; 0x9a62a
	writetext UnknownText_0x9a84c
	yesorno
	iftrue UnknownScript_0x9a633
	closetext
	end
; 0x9a633

UnknownScript_0x9a633: ; 0x9a633
	writetext UnknownText_0x9a902
	waitbutton
	closetext
	end
; 0x9a639

MapEcruteakItemfinderHouseSignpost0Script: ; 0x9a639
	jumpstd radio2
; 0x9a63c

UnknownText_0x9a63c: ; 0x9a63c
	text "Ah. A l'aventure"
	line "avec tes #MON?"

	para "Mais qu'est-ce"
	line "qu'une aventure"
	cont "sans une chasse au"
	cont "trésor?"

	para "J'ai raison ou"
	line "j'ai"
	done
; 0x9a6b5

UnknownText_0x9a6b5: ; 0x9a6b5
	text "Cool! Tu comprends"
	line "le vrai esprit de"
	cont "l'aventure."

	para "J'aime ça! Prends"
	line "ça avec toi."
	done
; 0x9a70e

UnknownText_0x9a70e: ; 0x9a70e
	text "Il y a beaucoup"
	line "d'objets cachés"
	cont "par terre."

	para "Le CHERCH'OBJET"
	line "est capable de les"
	cont "débusquer."

	para "Ca ne montre pas"
	line "l'endroit exact"

	para "donc il faut cher-"
	line "cher toi même."

	para "Ah oui, il paraît"
	line "qu'il y a des"

	para "objets dans la"
	line "TOUR CENDREE de"
	cont "ROSALIA."
	done
; 0x9a805

UnknownText_0x9a805: ; 0x9a805
	text "Oh<...> Chacun son"
	line "style après tout<...>"
	done
; 0x9a826

UnknownText_0x9a805_F:
	text "Oh<...> Chacun son"
	line "style après tout<...>"
	done

UnknownText_0x9a826: ; 0x9a826
	text "HISTOIRE DE"
	line "ROSALIA"

	para "Désirez-vous lire?"
	done
; 0x9a84c

UnknownText_0x9a84c: ; 0x9a84c
	text "Il existait deux"
	line "tours à ROSALIA."

	para "Chacune d'elle"
	line "était le perchoir"
	cont "d'un puissant"
	cont "#MON volant."

	para "Mais l'une des"
	line "tours à complète-"
	cont "ment brûlé."

	para "Les deux #MON"
	line "n'ont jamais été"
	cont "revus depuis<...>"

	para "Continuer à lire?"
	done
; 0x9a902

UnknownText_0x9a902: ; 0x9a902
	text "ROSALIA était"
	line "aussi la demeure"

	para "de trois #MON"
	line "qui couraient"
	cont "autour de la"
	cont "ville."

	para "Ils étaient soi-"
	line "disant nés de"

	para "l'eau, de la"
	line "foudre et du feu."

	para "Mais ils ne"
	line "pouvaient pas"
	cont "contenir toute"
	cont "leur puissance."

	para "C'est la raison"
	line "pour laquelle ils"

	para "couraient sans"
	line "cesse."
	done
; 0x9a9f5

EcruteakItemfinderHouse_MapEventHeader: ; 0x9a9f5
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $3, 11, GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY
	warp_def $7, $4, 11, GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 1, 2, $0, MapEcruteakItemfinderHouseSignpost0Script

	; people-events
	db 2
	person_event SPRITE_COOLTRAINER_M, 7, 6, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, CooltrainerMScript_0x9a5fb, -1
	person_event SPRITE_POKEDEX, 7, 7, $1, 0, 0, -1, -1, 0, 0, 0, PokedexScript_0x9a620, -1
; 0x9aa24

