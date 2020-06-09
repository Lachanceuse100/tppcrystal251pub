EarlsPokemonAcademy_MapScriptHeader: ; 0x68a5a
	; trigger count
	db 0

	; callback count
	db 0
; 0x68a5c

FisherScript_0x68a5c: ; 0x68a5c
	applymovement $2, MovementData_0x68b2d
	faceplayer
	loadfont
	writetext UnknownText_0x68b3b
	yesorno
	iffalse UnknownScript_0x68a70
	writetext UnknownText_0x68bbd
	yesorno
	iffalse UnknownScript_0x68a7d
UnknownScript_0x68a70: ; 0x68a70
	writetext UnknownText_0x68c51
	yesorno
	iffalse UnknownScript_0x68a7d
	writetext UnknownText_0x68c7b
	waitbutton
	closetext
	end
; 0x68a7d

UnknownScript_0x68a7d: ; 0x68a7d
	writetext UnknownText_0x68d31
	waitbutton
	closetext
	end
; 0x68a83

YoungsterScript_0x68a83: ; 0x68a83
	jumptextfaceplayer UnknownText_0x68d80
; 0x68a86

GameboyKidScript_0x68a86: ; 0x68a86
	faceplayer
	loadfont
	writetext UnknownText_0x68dda
	waitbutton
	closetext
	spriteface $4, $0
	end
; 0x68a91

GameboyKidScript_0x68a91: ; 0x68a91
	faceplayer
	loadfont
	writetext UnknownText_0x68e07
	waitbutton
	closetext
	spriteface $5, $0
	end
; 0x68a9c

YoungsterScript_0x68a9c: ; 0x68a9c
	jumptextfaceplayer UnknownText_0x68e39
; 0x68a9f

MapEarlsPokemonAcademySignpost3Script: ; 0x68a9f
	loadfont
	writetext UnknownText_0x68eb2
UnknownScript_0x68aa3: ; 0x68aa3
	loadmenudata MenuDataHeader_0x68ae1
	interpretmenu
	writebackup
	if_equal $1, UnknownScript_0x68abe
	if_equal $2, UnknownScript_0x68ac5
	if_equal $3, UnknownScript_0x68acc
	if_equal $4, UnknownScript_0x68ad3
	if_equal $5, UnknownScript_0x68ada
	closetext
	end
; 0x68abe

UnknownScript_0x68abe: ; 0x68abe
	writetext UnknownText_0x68efe
	waitbutton
	jump UnknownScript_0x68aa3
; 0x68ac5

UnknownScript_0x68ac5: ; 0x68ac5
	writetext UnknownText_0x68f80
	waitbutton
	jump UnknownScript_0x68aa3
; 0x68acc

UnknownScript_0x68acc: ; 0x68acc
	writetext UnknownText_0x68fe2
	waitbutton
	jump UnknownScript_0x68aa3
; 0x68ad3

UnknownScript_0x68ad3: ; 0x68ad3
	writetext UnknownText_0x69055
	waitbutton
	jump UnknownScript_0x68aa3
; 0x68ada

UnknownScript_0x68ada: ; 0x68ada
	writetext UnknownText_0x690cb
	waitbutton
	jump UnknownScript_0x68aa3
; 0x68ae1


MenuDataHeader_0x68ae1: ; 0x68ae1
	db $40 ; flags
	db 00, 00 ; start coords
	db 08, 11 ; end coords
	dw MenuData2_0x68ae9
	db 1 ; default option
; 0x68ae9

MenuData2_0x68ae9: ; 0x68ae9
	db $80 ; flags
	dn 3, 2 ; rows, columns
	db 5 ; spacing
	dbw BANK(UnknownText_0x68af2), UnknownText_0x68af2
	dbw $1a, $0000
; 0x68af2

UnknownText_0x68af2: ; 0x68af2
	db "PSN@"
	db "PAR@"
	db "SOM@"
	db "BRU@"
	db "GEL@"
	db "QUIT@"
; 0x68b0b


PokedexScript_0x68b0b: ; 0x68b0b
	loadfont
	writetext UnknownText_0x69136
	yesorno
	iffalse UnknownScript_0x68b25
	writetext UnknownText_0x69197
	yesorno
	iffalse UnknownScript_0x68b25
	writetext UnknownText_0x69207
	yesorno
	iffalse UnknownScript_0x68b25
	writetext UnknownText_0x69287
	waitbutton
UnknownScript_0x68b25: ; 0x68b25
	closetext
	end
; 0x68b27

UnknownScript_0x68b27: ; 0x68b27
	jumptext UnknownText_0x69344
; 0x68b2a

MapEarlsPokemonAcademySignpost1Script: ; 0x68b2a
	jumpstd difficultbookshelf
; 0x68b2d

MovementData_0x68b2d: ; 0x68b2d
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	step_end
; 0x68b3b

UnknownText_0x68b3b: ; 0x68b3b
	text "THEOPHILE je suis!"

	para "Magnifique sont"
	line "tes #MON!"

	para "T'enseigner je"
	line "vais pour être un"
	cont "meilleur dresseur!"

	para "Tu veux savoir"
	line "quoi? Un gagnant"
	cont "tu veux être?"
	done
; 0x68bbd

UnknownText_0x68bbd: ; 0x68bbd
	text "Bien! T'enseigner"
	line "je vais!"

	para "En combat, les"
	line "#MON en haut de"
	cont "la liste sortent"
	cont "en premier."

	para "Change l'ordre,"
	line "les combats seront"
	cont "plus facile,"
	cont "peut-être."

	para "En entendre plus,"
	line "veux-tu?"
	done
; 0x68c51

UnknownText_0x68c51: ; 0x68c51
	text "Alors, comment"
	line "élever tes #MON"
	cont "tu veux savoir?"
	done
; 0x68c7b

UnknownText_0x68c7b: ; 0x68c7b
	text "Bien! T'enseigner"
	line "je vais!"

	para "Si un #MON est"
	line "en combat même"

	para "brièvement. Des"
	line "Points d'EXP. il"
	cont "gagne."

	para "En haut de l'équi-"
	line "pe, met les #-"
	cont "MON faibles."

	para "Change rapidement"
	line "en combat!"

	para "Comme ça, forts"
	line "les #MON"
	cont "deviennent!"
	done
; 0x68d31

UnknownText_0x68d31: ; 0x68d31
	text "Oh! Intelligent"
	line "tu es! Rien de"
	cont "plus je peux"
	cont "t'enseigner"

	para "Super tes #MON"
	line "doivent être!"
	done
; 0x68d80

UnknownText_0x68d80: ; 0x68d80
	text "Je prends des"
	line "notes de la leçon"
	cont "du professeur."

	para "Je devrais aussi"
	line "copier ce qu'il y"
	cont "a sur le tableau."
	done
; 0x68dda

UnknownText_0x68dda: ; 0x68dda
	text "J'ai échangé mon"
	line "meilleur #MON"
	cont "avec la personne à"
	cont "côté de moi."
	done
; 0x68e07

UnknownText_0x68e07: ; 0x68e07
	text "Hein? Le #MON"
	line "que j'ai reçu"
	cont "tient quelque"
	cont "chose!"
	done
; 0x68e39

UnknownText_0x68e39: ; 0x68e39
	text "Un #MON tenant"
	line "une BAIE peut se"
	cont "soigner en combat<...>"

	para "D'autres objets"
	line "peuvent être tenus"
	cont "par les #MON<...>"

	para "C'est dur de"
	line "prendre des notes<...>"
	done
; 0x68eb2

UnknownText_0x68eb2: ; 0x68eb2
	text "Le tableau décrit"
	line "les changements de"
	cont "STATUT des #MON"
	cont "en combat."
	done
; 0x68eeb

UnknownText_0x68eeb: ; 0x68eeb
	text "Lire quel sujet?"
	done
; 0x68efe

UnknownText_0x68efe: ; 0x68efe
	text "Empoisonné, les PV"
	line "d'un #MON des-"
	cont "cendent lentement."

	para "Le poison reste"
	line "après les combats."

	para "Utilisez un ANTI-"
	line "DOTE pour soigner"
	cont "l'empoisonnement."
	done
; 0x68f80

UnknownText_0x68f80: ; 0x68f80
	text "La paralysie peut"
	line "empêcher le #-"
	cont "MON de bouger."

	para "La paralysie reste"
	line "après les combats."

	para "Utilisez des ANTI-"
	line "PARA pour guérir."
	done
; 0x68fe2

UnknownText_0x68fe2: ; 0x68fe2
	text "Un #MON ne peux"
	line "pas attaquer si"
	cont "il dort!"

	para "Les #MON"
	line "restent endormis"
	cont "après les combats."

	para "Utilisez des"
	line "REVEIL pour les"
	cont "réveiller."
	done
; 0x69055

UnknownText_0x69055: ; 0x69055
	text "Une brûlure réduit"
	line "la puissance et la"
	cont "vitesse en plus"
	cont "d'infliger des"
	cont "dégâts graduels."

	para "La brûlure reste"
	line "après les combats."

	para "Elle se traite"
	line "avec l'ANTI-BRULE."
	done
; 0x690cb

UnknownText_0x690cb: ; 0x690cb
	text "Un #MON gelé"
	line "devient totalement"
	cont "immobile!"

	para "Le gel reste même"
	line "après les combats."

	para "Elle se traite"
	line "avec l'ANTI-GEL."
	done
; 0x69136

UnknownText_0x69136: ; 0x69136
	text "Vous regardez le"
	line "cahier!"

	para "Les # BALL"
	line "peuvent capturer"
	cont "des #MON."

	para "Jusqu'à 6 #MON"
	line "peuvent être"
	cont "transportés."

	para "Continuer de lire?"
	done
; 0x69197

UnknownText_0x69197: ; 0x69197
	text "Avant de lancer"
	line "une # BALL, il"
	cont "faut affaiblir"
	cont "la cible."

	para "Un #MON brûlé"
	line "ou empoisonné est"
	cont "plus facile à"
	cont "attraper."

	para "Continuer de lire?"
	done
; 0x69207

UnknownText_0x69207: ; 0x69207
	text "Certaines attaques"
	line "peuvent rendre"
	cont "confus."

	para "La confusion peut"
	line "pousser un #MON"
	cont "à s'attaquer lui-"
	cont "même."

	para "Quitter le combat"
	line "annule l'effet de"
	cont "la confusion."

	para "Continuer de lire?"
	done
; 0x69287

UnknownText_0x69287: ; 0x69287
	text "Le but de chaque"
	line "dresseur #MON"
	cont "est de s'engager"
	cont "dans des combats"
	cont "#MON contre d'"
	cont "autres dresseurs"

	para "Des combats se"
	line "tiennent en"
	cont "permanence dans"
	cont "les ARENES"
	cont "#MON."

	para "La page suivante"
	line "est<...> Blanche!"

	para "Garçon: Je, euh<...>"

	para "Je n'ai encore"
	line "rien écris<...>"
	done
; 0x69344

UnknownText_0x69344: ; 0x69344
	text "Cette machine"
	line "imprime des"
	cont "stickers!"
	done
; 0x69375

EarlsPokemonAcademy_MapEventHeader: ; 0x69375
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $f, $3, 3, GROUP_VIOLET_CITY, MAP_VIOLET_CITY
	warp_def $f, $4, 3, GROUP_VIOLET_CITY, MAP_VIOLET_CITY

	; xy triggers
	db 0

	; signposts
	db 4
	signpost 1, 0, $0, MapEarlsPokemonAcademySignpost1Script
	signpost 1, 1, $0, MapEarlsPokemonAcademySignpost1Script
	signpost 0, 3, $0, MapEarlsPokemonAcademySignpost3Script
	signpost 0, 4, $0, MapEarlsPokemonAcademySignpost3Script

	; people-events
	db 6
	person_event SPRITE_FISHER, 6, 8, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, FisherScript_0x68a5c, EVENT_EARL_INSIDE
	person_event SPRITE_YOUNGSTER, 9, 6, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, YoungsterScript_0x68a83, -1
	person_event SPRITE_GAMEBOY_KID, 15, 7, $6, 0, 0, -1, -1, 0, 0, 0, GameboyKidScript_0x68a86, -1
	person_event SPRITE_GAMEBOY_KID, 15, 8, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, GameboyKidScript_0x68a91, -1
	person_event SPRITE_YOUNGSTER, 11, 8, $7, 0, 0, -1, -1, 0, 0, 0, YoungsterScript_0x68a9c, -1
	person_event SPRITE_POKEDEX, 8, 6, $1, 0, 0, -1, -1, 0, 0, 0, PokedexScript_0x68b0b, -1
; 0x693e7

