NationalPark_MapScriptHeader: ; 0x5c000
	; trigger count
	db 0

	; callback count
	db 0
; 0x5c002

LassScript_0x5c002: ; 0x5c002
	jumptextfaceplayer UnknownText_0x5c1d3
; 0x5c005

PokefanFScript_0x5c005: ; 0x5c005
	jumptextfaceplayer UnknownText_0x5c22e
; 0x5c008

TeacherScript_0x5c008: ; 0x5c008
	faceplayer
	loadfont
	checkevent EVENT_GOT_QUICK_CLAW
	iftrue UnknownScript_0x5c01d
	writetext UnknownText_0x5c265
	buttonsound
	verbosegiveitem QUICK_CLAW, 1
	iffalse UnknownScript_0x5c021
	setevent EVENT_GOT_QUICK_CLAW
UnknownScript_0x5c01d: ; 0x5c01d
	writetext UnknownText_0x5c30d
	waitbutton
UnknownScript_0x5c021: ; 0x5c021
	closetext
	end
; 0x5c023

YoungsterScript_0x5c023: ; 0x5c023
	jumptextfaceplayer UnknownText_0x5c35d
; 0x5c026

YoungsterScript_0x5c026: ; 0x5c026
	jumptextfaceplayer UnknownText_0x5c38f
; 0x5c029

TeacherScript_0x5c029: ; 0x5c029
	jumptextfaceplayer UnknownText_0x5c3bc
; 0x5c02c

GrowlitheScript_0x5c02c: ; 0x5c02c
	faceplayer
	loadfont
	writetext UnknownText_0x5c416
	cry PERSIAN
	waitbutton
	closetext
	end
; 0x5c037

GameboyKidScript_0x5c037: ; 0x5c037
	faceplayer
	loadfont
	writetext UnknownText_0x5c42a
	waitbutton
	closetext
	spriteface $e, $0
	end
; 0x5c042

TrainerSchoolboyJack1: ; 0x5c042
	; bit/flag number
	dw $46c

	; trainer group && trainer id
	db SCHOOLBOY, JACK1

	; text when seen
	dw SchoolboyJack1SeenText

	; text when trainer beaten
	dw SchoolboyJack1BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SchoolboyJack1Script
; 0x5c04e

SchoolboyJack1Script: ; 0x5c04e
	writecode VAR_CALLERID, $5
	talkaftercancel
	loadfont
	checkflag ENGINE_JACK
	iftrue UnknownScript_0x5c088
	checkcellnum $5
	iftrue UnknownScript_0x5c108
	checkevent EVENT_TALKED_TO_SCHOOLBOY_JACK_AFTER_BATTLE
	iftrue UnknownScript_0x5c071
	writetext UnknownText_0x5c4f3
	buttonsound
	setevent EVENT_TALKED_TO_SCHOOLBOY_JACK_AFTER_BATTLE
	scall UnknownScript_0x5c0fc
	jump UnknownScript_0x5c074
; 0x5c071

UnknownScript_0x5c071: ; 0x5c071
	scall UnknownScript_0x5c100
UnknownScript_0x5c074: ; 0x5c074
	askforphonenumber $5
	if_equal $1, UnknownScript_0x5c110
	if_equal $2, UnknownScript_0x5c10c
	trainertotext SCHOOLBOY, JACK1, $0
	scall UnknownScript_0x5c104
	jump UnknownScript_0x5c108
; 0x5c088

UnknownScript_0x5c088: ; 0x5c088
	scall UnknownScript_0x5c114
	winlosstext SchoolboyJack1BeatenText, $0000
	copybytetovar wd9f2
	if_equal $4, UnknownScript_0x5c0a7
	if_equal $3, UnknownScript_0x5c0ad
	if_equal $2, UnknownScript_0x5c0b3
	if_equal $1, UnknownScript_0x5c0b9
	if_equal $0, UnknownScript_0x5c0bf
UnknownScript_0x5c0a7: ; 0x5c0a7
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue UnknownScript_0x5c0f3
UnknownScript_0x5c0ad: ; 0x5c0ad
	checkevent EVENT_FIRST_TIME_HALL_OF_FAME
	iftrue UnknownScript_0x5c0e6
UnknownScript_0x5c0b3: ; 0x5c0b3
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue UnknownScript_0x5c0d9
UnknownScript_0x5c0b9: ; 0x5c0b9
	checkflag ENGINE_FLYPOINT_OLIVINE
	iftrue UnknownScript_0x5c0cc
UnknownScript_0x5c0bf: ; 0x5c0bf
	loadtrainer SCHOOLBOY, JACK1
	startbattle
	returnafterbattle
	loadvar wd9f2, $1
	clearflag ENGINE_JACK
	end
; 0x5c0cc

UnknownScript_0x5c0cc: ; 0x5c0cc
	loadtrainer SCHOOLBOY, JACK2
	startbattle
	returnafterbattle
	loadvar wd9f2, $2
	clearflag ENGINE_JACK
	end
; 0x5c0d9

UnknownScript_0x5c0d9: ; 0x5c0d9
	loadtrainer SCHOOLBOY, JACK3
	startbattle
	returnafterbattle
	loadvar wd9f2, $3
	clearflag ENGINE_JACK
	end
; 0x5c0e6

UnknownScript_0x5c0e6: ; 0x5c0e6
	loadtrainer SCHOOLBOY, JACK4
	startbattle
	returnafterbattle
	loadvar wd9f2, $4
	clearflag ENGINE_JACK
	end
; 0x5c0f3

UnknownScript_0x5c0f3: ; 0x5c0f3
	loadtrainer SCHOOLBOY, JACK5
	startbattle
	returnafterbattle
	clearflag ENGINE_JACK
	end
; 0x5c0fc

UnknownScript_0x5c0fc: ; 0x5c0fc
	jumpstd asknumber1m
	end
; 0x5c100

UnknownScript_0x5c100: ; 0x5c100
	jumpstd asknumber2m
	end
; 0x5c104

UnknownScript_0x5c104: ; 0x5c104
	jumpstd registerednumberm
	end
; 0x5c108

UnknownScript_0x5c108: ; 0x5c108
	jumpstd numberacceptedm
	end
; 0x5c10c

UnknownScript_0x5c10c: ; 0x5c10c
	jumpstd numberdeclinedm
	end
; 0x5c110

UnknownScript_0x5c110: ; 0x5c110
	jumpstd phonefullm
	end
; 0x5c114

UnknownScript_0x5c114: ; 0x5c114
	jumpstd rematchm
	end
; 0x5c118

TrainerPokefanmWilliam: ; 0x5c118
	; bit/flag number
	dw $4cd

	; trainer group && trainer id
	db POKEFANM, WILLIAM

	; text when seen
	dw PokefanmWilliamSeenText

	; text when trainer beaten
	dw PokefanmWilliamBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PokefanmWilliamScript
; 0x5c124

PokefanmWilliamScript: ; 0x5c124
	talkaftercancel
	loadfont
	writetext UnknownText_0x5c645
	waitbutton
	closetext
	end
; 0x5c12c

TrainerPokefanfBeverly1: ; 0x5c12c
	; bit/flag number
	dw $4d9

	; trainer group && trainer id
	db POKEFANF, BEVERLY1

	; text when seen
	dw PokefanfBeverly1SeenText

	; text when trainer beaten
	dw PokefanfBeverly1BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PokefanfBeverly1Script
; 0x5c138

PokefanfBeverly1Script: ; 0x5c138
	writecode VAR_CALLERID, $6
	talkaftercancel
	loadfont
	checkflag ENGINE_BEVERLY_HAS_NUGGET
	iftrue UnknownScript_0x5c177
	checkcellnum $6
	iftrue UnknownScript_0x5c19b
	checkpoke MARILL
	iffalse UnknownScript_0x5c189
	checkevent EVENT_SHOWED_BEVERLY_MARILL
	iftrue UnknownScript_0x5c160
	writetext UnknownText_0x5c5bd
	buttonsound
	setevent EVENT_SHOWED_BEVERLY_MARILL
	scall UnknownScript_0x5c18f
	jump UnknownScript_0x5c163
; 0x5c160

UnknownScript_0x5c160: ; 0x5c160
	scall UnknownScript_0x5c193
UnknownScript_0x5c163: ; 0x5c163
	askforphonenumber $6
	if_equal $1, UnknownScript_0x5c1a3
	if_equal $2, UnknownScript_0x5c19f
	trainertotext POKEFANF, BEVERLY1, $0
	scall UnknownScript_0x5c197
	jump UnknownScript_0x5c19b
; 0x5c177

UnknownScript_0x5c177: ; 0x5c177
	scall UnknownScript_0x5c1a7
	verbosegiveitem NUGGET, 1
	iffalse UnknownScript_0x5c186
	clearflag ENGINE_BEVERLY_HAS_NUGGET
	jump UnknownScript_0x5c19b
; 0x5c186

UnknownScript_0x5c186: ; 0x5c186
	jump UnknownScript_0x5c1ab
; 0x5c189

UnknownScript_0x5c189: ; 0x5c189
	writetext UnknownText_0x5c68a
	waitbutton
	closetext
	end
; 0x5c18f

UnknownScript_0x5c18f: ; 0x5c18f
	jumpstd asknumber1f
	end
; 0x5c193

UnknownScript_0x5c193: ; 0x5c193
	jumpstd asknumber2f
	end
; 0x5c197

UnknownScript_0x5c197: ; 0x5c197
	jumpstd registerednumberf
	end
; 0x5c19b

UnknownScript_0x5c19b: ; 0x5c19b
	jumpstd numberacceptedf
	end
; 0x5c19f

UnknownScript_0x5c19f: ; 0x5c19f
	jumpstd numberdeclinedf
	end
; 0x5c1a3

UnknownScript_0x5c1a3: ; 0x5c1a3
	jumpstd phonefullf
	end
; 0x5c1a7

UnknownScript_0x5c1a7: ; 0x5c1a7
	jumpstd giftf
	end
; 0x5c1ab

UnknownScript_0x5c1ab: ; 0x5c1ab
	jumpstd packfullf
	end
; 0x5c1af

TrainerLassKrise: ; 0x5c1af
	; bit/flag number
	dw $518

	; trainer group && trainer id
	db LASS, KRISE

	; text when seen
	dw LassKriseSeenText

	; text when trainer beaten
	dw LassKriseBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw LassKriseScript
; 0x5c1bb

LassKriseScript: ; 0x5c1bb
	talkaftercancel
	loadfont
	writetext UnknownText_0x5c71d
	waitbutton
	closetext
	end
; 0x5c1c3

MapNationalParkSignpost0Script: ; 0x5c1c3
	jumptext UnknownText_0x5c750
; 0x5c1c6

MapNationalParkSignpost1Script: ; 0x5c1c6
	jumptext UnknownText_0x5c771
; 0x5c1c9

MapNationalParkSignpost3Script: ; 0x5c1c9
	jumptext UnknownText_0x5c7c6
; 0x5c1cc

ItemFragment_0x5c1cc: ; 0x5c1cc
	db FREEZE_GUARD, 1
; 0x5c1ce

ItemFragment_0x5c1ce: ; 0x5c1ce
	db TM_DIG, 1
; 0x5c1d0

MapNationalParkSignpostItem2: ; 0x5c1d0
	dw $0084
	db FULL_HEAL

; 0x5c1d3

UnknownText_0x5c1d3: ; 0x5c1d3
	text "Regarde mon sac!"

	para "J'ai imprimé mes"
	line "#MON préférés"

	para "de mon #DEX et"
	line "je les ais collés"
	cont "à mon sac!"
	done
; 0x5c22e

UnknownText_0x5c22e: ; 0x5c22e
	text "C'est une LETTRE"
	line "de ma fille."
	cont "C'est cool, hein?"
	done
; 0x5c265

UnknownText_0x5c265: ; 0x5c265
	text "Où est ton cahier?"

	para "<...>Heu, pardon."
	line "Etre maîtresse"

	para "d'école donne de"
	line "petites manies."

	para "Tu es un dresseur"
	line "#MON?"

	para "Etre élève modèle"
	line "mértie un petit"

	para "quelque chose."
	line "Tiens donc!"
	done
; 0x5c30d

UnknownText_0x5c30d: ; 0x5c30d
	text "Fais tenir cette"
	line "VIVE GRIFFE à un"
	cont "#MON."

	para "Il frappera plus"
	line "souvent en premier"
	cont "en combat."
	done
; 0x5c35d

UnknownText_0x5c35d: ; 0x5c35d
	text "Je m'amuse avec"
	line "les autocollants"
	cont "que j'ai imprimés"
	cont "de mon #DEX."
	done
; 0x5c38f

UnknownText_0x5c38f: ; 0x5c38f
	text "Je gagne les auto-"
	line "collants du #-"
	cont "DEX de l'adversai-"
	cont "re si je le bats."
	done
; 0x5c3bc

UnknownText_0x5c3bc: ; 0x5c3bc
	text "Je me promène dans"
	line "le PARC mais je ne"

	para "vais jamais dans"
	line "l'herbe."

	para "Les dresseurs veu-"
	line "lent toujours se"
	cont "battre<...>"
	done
; 0x5c416

UnknownText_0x5c416: ; 0x5c416
	text "PERSIAN: Siaaaan!"
	done
; 0x5c42a

UnknownText_0x5c42a: ; 0x5c42a
	text "J'imprime mon"
	line "#DEX."

	para "On peut aussi im-"
	line "primer des trucs"

	para "comme les LETTRES"
	line "ou les BOITES PC."
	done
; 0x5c47e

SchoolboyJack1SeenText: ; 0x5c47e
	text "Grand est le monde"
	line "des #MON."

	para "Tant de choses"
	line "sont encore incon-"
	cont "nues."

	para "Mais moi<...> J'en"
	line "sais plus que toi!"
	done
; 0x5c4e4

SchoolboyJack1BeatenText: ; 0x5c4e4
	text "Qu-qu-quoi?"
	done
; 0x5c4f3

UnknownText_0x5c4f3: ; 0x5c4f3
	text "C'est dur d'opti-"
	line "miser les capaci-"
	cont "tés des #MON."

	para "Par exemple<...>"

	para "Tu peux utiliser"
	line "des CT, ou les"
	cont "faire se reprodui-"
	cont "re pour des capa-"
	cont "cités exclusives."

	para "Il y a aussi les"
	line "maîtres de"
	cont "capacités."
	done
; 0x5c552

PokefanfBeverly1SeenText: ; 0x5c552
	text "Mes #MON sont"
	line "les meilleurs."

	para "Je suis tellement"
	line "fière de mes"
	cont "petits chéris."
	done
; 0x5c59e

PokefanfBeverly1BeatenText: ; 0x5c59e
	text "L'honneur est"
	line "sauf<...>"
	done
; 0x5c5bd

UnknownText_0x5c5bd: ; 0x5c5bd
	text "Je dois dire, tes"
	line "#MON aussi sont"
	cont "mignons."
	done
; 0x5c5e9

PokefanmWilliamSeenText: ; 0x5c5e9
	text "On adore les #-"
	line "MON, même si eux"
	cont "nous détestent."

	para "C'est ça être un"
	line "vrai FAN."
	done
; 0x5c639

PokefanmWilliamBeatenText: ; 0x5c639
	text "M-mon #MON!"
	done
; 0x5c645

UnknownText_0x5c645: ; 0x5c645
	text "Je perds le combat"
	line "mais mes #MON"

	para "sont de loin les"
	line "plus beaux.."
	done
; 0x5c68a

UnknownText_0x5c68a: ; 0x5c68a
	text "Une amie a un"
	line "MARILL!"

	para "Je les trouves"
	line "trop mignon."

	para "J'adorerais avoir"
	line "un MARILL<...>"
	done
; 0x5c6e4

LassKriseSeenText: ; 0x5c6e4
	text "Bonjour? Pourquoi"
	line "tu me regardes?"

	para "Oh, un combat? OK!"
	done
; 0x5c715

LassKriseBeatenText: ; 0x5c715
	text "<...>Hmmm<...>"
	done
; 0x5c71d

UnknownText_0x5c71d: ; 0x5c71d
	text "Je pensais que tu"
	line "me regardais parce"
	cont "que j'étais"
	cont "mignonne!"
	done
; 0x5c750

UnknownText_0x5c750: ; 0x5c750
	text "AIRE DE REPOS du"
	line "PARC NATUREL"
	done
; 0x5c771

UnknownText_0x5c771: ; 0x5c771
	text "C'est quoi cette"
	line "affiche?"

	para "Se battre unique-"
	line "ment dans l'herbe."

	para "LE GARDIEN DU"
	line "PARC NATUREL."
	done
; 0x5c7c6

UnknownText_0x5c7c6: ; 0x5c7c6
	text "ASTUCE"

	para "Imprimer les"
	line "LETTRES en les"
	cont "ouvrant et appuyer"
	cont "sur START."
	done
; 0x5c806

NationalPark_MapEventHeader: ; 0x5c806
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $12, $21, 1, GROUP_ROUTE_36_NATIONAL_PARK_GATE, MAP_ROUTE_36_NATIONAL_PARK_GATE
	warp_def $13, $21, 2, GROUP_ROUTE_36_NATIONAL_PARK_GATE, MAP_ROUTE_36_NATIONAL_PARK_GATE
	warp_def $2f, $a, 1, GROUP_ROUTE_35_NATIONAL_PARK_GATE, MAP_ROUTE_35_NATIONAL_PARK_GATE
	warp_def $2f, $b, 2, GROUP_ROUTE_35_NATIONAL_PARK_GATE, MAP_ROUTE_35_NATIONAL_PARK_GATE

	; xy triggers
	db 0

	; signposts
	db 4
	signpost 44, 14, $0, MapNationalParkSignpost0Script
	signpost 31, 27, $0, MapNationalParkSignpost1Script
	signpost 47, 6, $7, MapNationalParkSignpostItem2
	signpost 4, 12, $0, MapNationalParkSignpost3Script

	; people-events
	db 14
	person_event SPRITE_LASS, 28, 19, $5, 0, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, LassScript_0x5c002, -1
	person_event SPRITE_POKEFAN_F, 8, 18, $6, 0, 0, -1, -1, 0, 0, 0, PokefanFScript_0x5c005, -1
	person_event SPRITE_TEACHER, 44, 31, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, TeacherScript_0x5c008, -1
	person_event SPRITE_YOUNGSTER, 45, 15, $8, 0, 0, -1, -1, 0, 0, 0, YoungsterScript_0x5c023, -1
	person_event SPRITE_YOUNGSTER, 45, 14, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, YoungsterScript_0x5c026, -1
	person_event SPRITE_TEACHER, 45, 21, $2, 2, 1, -1, -1, 0, 0, 0, TeacherScript_0x5c029, -1
	person_event SPRITE_GROWLITHE, 44, 30, $16, 0, 0, -1, -1, 0, 0, 0, GrowlitheScript_0x5c02c, -1
	person_event SPRITE_YOUNGSTER, 27, 31, $a, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerSchoolboyJack1, -1
	person_event SPRITE_POKEFAN_F, 33, 22, $a, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 2, TrainerPokefanfBeverly1, -1
	person_event SPRITE_POKEFAN_M, 13, 20, $a, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 2, TrainerPokefanmWilliam, -1
	person_event SPRITE_LASS, 18, 12, $a, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerLassKrise, -1
	person_event SPRITE_POKE_BALL, 16, 39, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x5c1cc, EVENT_ITEM_NATIONALPARK_PARLYZ_HEAL
	person_event SPRITE_GAMEBOY_KID, 10, 30, $6, 0, 0, -1, -1, 0, 0, 0, GameboyKidScript_0x5c037, -1
	person_event SPRITE_POKE_BALL, 47, 5, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x5c1ce, EVENT_ITEM_NATIONALPARK_TM_DIG
; 0x5c8ea

