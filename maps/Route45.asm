Route45_MapScriptHeader: ; 0x19e09f
	; trigger count
	db 0

	; callback count
	db 0
; 0x19e0a1

TrainerBlackbeltKenji3: ; 0x19e0a1
	; bit/flag number
	dw $4ab

	; trainer group && trainer id
	db BLACKBELT_T, KENJI3

	; text when seen
	dw BlackbeltKenji3SeenText

	; text when trainer beaten
	dw BlackbeltKenji3BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw BlackbeltKenji3Script
; 0x19e0ad

BlackbeltKenji3Script: ; 0x19e0ad
	writecode VAR_CALLERID, $22
	talkaftercancel
	loadfont
	checkcellnum $22
	iftrue UnknownScript_0x19e0e4
	checkevent EVENT_ROUTE_45_299
	iftrue UnknownScript_0x19e0cd
	special Function11485
	writetext UnknownText_0x19e5e2
	waitbutton
	setevent EVENT_ROUTE_45_299
	scall UnknownScript_0x19e11b
	jump UnknownScript_0x19e0d0
; 0x19e0cd

UnknownScript_0x19e0cd: ; 0x19e0cd
	scall UnknownScript_0x19e11f
UnknownScript_0x19e0d0: ; 0x19e0d0
	askforphonenumber $22
	if_equal $1, UnknownScript_0x19e12f
	if_equal $2, UnknownScript_0x19e12b
	trainertotext BLACKBELT_T, KENJI3, $0
	scall UnknownScript_0x19e123
	jump UnknownScript_0x19e127
; 0x19e0e4

UnknownScript_0x19e0e4: ; 0x19e0e4
	checkcode VAR_KENJIBREAK
	if_not_equal $1, UnknownScript_0x19e127
	checktime $1
	iftrue UnknownScript_0x19e10c
	checktime $4
	iftrue UnknownScript_0x19e112
	checkevent EVENT_ROUTE_45_26A
	iffalse UnknownScript_0x19e127
	scall UnknownScript_0x19e137
	verbosegiveitem PP_UP, 1
	iffalse UnknownScript_0x19e118
	clearevent EVENT_ROUTE_45_26A
	special Function11485
	jump UnknownScript_0x19e127
; 0x19e10c

UnknownScript_0x19e10c: ; 0x19e10c
	writetext UnknownText_0x19e634
	waitbutton
	closetext
	end
; 0x19e112

UnknownScript_0x19e112: ; 0x19e112
	writetext UnknownText_0x19e66c
	waitbutton
	closetext
	end
; 0x19e118

UnknownScript_0x19e118: ; 0x19e118
	jump UnknownScript_0x19e13b
; 0x19e11b

UnknownScript_0x19e11b: ; 0x19e11b
	jumpstd asknumber1m
	end
; 0x19e11f

UnknownScript_0x19e11f: ; 0x19e11f
	jumpstd asknumber2m
	end
; 0x19e123

UnknownScript_0x19e123: ; 0x19e123
	jumpstd registerednumberm
	end
; 0x19e127

UnknownScript_0x19e127: ; 0x19e127
	jumpstd numberacceptedm
	end
; 0x19e12b

UnknownScript_0x19e12b: ; 0x19e12b
	jumpstd numberdeclinedm
	end
; 0x19e12f

UnknownScript_0x19e12f: ; 0x19e12f
	jumpstd phonefullm
	end
; 0x19e133

UnknownScript_0x19e133: ; 0x19e133
	jumpstd rematchm
	end
; 0x19e137

UnknownScript_0x19e137: ; 0x19e137
	jumpstd giftm
	end
; 0x19e13b

UnknownScript_0x19e13b: ; 0x19e13b
	jumpstd packfullm
	end
; 0x19e13f

UnknownScript_0x19e13f: ; 0x19e13f
	setevent EVENT_PARRY_IRON
	jumpstd packfullm
	end
; 0x19e146

UnknownScript_0x19e146: ; 0x19e146
	jumpstd rematchgiftm
	end
; 0x19e14a

TrainerHikerErik: ; 0x19e14a
	; bit/flag number
	dw $52a

	; trainer group && trainer id
	db HIKER, ERIK

	; text when seen
	dw HikerErikSeenText

	; text when trainer beaten
	dw HikerErikBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw HikerErikScript
; 0x19e156

HikerErikScript: ; 0x19e156
	talkaftercancel
	loadfont
	writetext UnknownText_0x19e301
	waitbutton
	closetext
	end
; 0x19e15e

TrainerHikerMichael: ; 0x19e15e
	; bit/flag number
	dw $52b

	; trainer group && trainer id
	db HIKER, MICHAEL

	; text when seen
	dw HikerMichaelSeenText

	; text when trainer beaten
	dw HikerMichaelBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw HikerMichaelScript
; 0x19e16a

HikerMichaelScript: ; 0x19e16a
	talkaftercancel
	loadfont
	writetext UnknownText_0x19e3b1
	waitbutton
	closetext
	end
; 0x19e172

TrainerHikerParry3: ; 0x19e172
	; bit/flag number
	dw $52c

	; trainer group && trainer id
	db HIKER, PARRY3

	; text when seen
	dw HikerParry3SeenText

	; text when trainer beaten
	dw HikerParry3BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw HikerParry3Script
; 0x19e17e

HikerParry3Script: ; 0x19e17e
	writecode VAR_CALLERID, $23
	talkaftercancel
	loadfont
	checkflag ENGINE_PARRY
	iftrue UnknownScript_0x19e1b8
	checkcellnum $23
	iftrue UnknownScript_0x19e127
	checkevent EVENT_ROUTE_45_29B
	iftrue UnknownScript_0x19e1a1
	writetext UnknownText_0x19e434
	buttonsound
	setevent EVENT_ROUTE_45_29B
	scall UnknownScript_0x19e11b
	jump UnknownScript_0x19e1a4
; 0x19e1a1

UnknownScript_0x19e1a1: ; 0x19e1a1
	scall UnknownScript_0x19e11f
UnknownScript_0x19e1a4: ; 0x19e1a4
	askforphonenumber $23
	if_equal $1, UnknownScript_0x19e12f
	if_equal $2, UnknownScript_0x19e12b
	trainertotext HIKER, PARRY1, $0
	scall UnknownScript_0x19e123
	jump UnknownScript_0x19e127
; 0x19e1b8

UnknownScript_0x19e1b8: ; 0x19e1b8
	scall UnknownScript_0x19e133
	winlosstext HikerParry3BeatenText, $0000
	copybytetovar wda0c
	if_equal $2, UnknownScript_0x19e1cf
	if_equal $1, UnknownScript_0x19e1d5
	if_equal $0, UnknownScript_0x19e1db
UnknownScript_0x19e1cf: ; 0x19e1c
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue UnknownScript_0x19e1f5
UnknownScript_0x19e1d5: ; 0x19e1d5
	checkevent EVENT_FIRST_TIME_HALL_OF_FAME
	iftrue UnknownScript_0x19e1e8
UnknownScript_0x19e1db: ; 0x19e1db
	loadtrainer HIKER, PARRY3
	startbattle
	returnafterbattle
	loadvar wda0c, $1
	clearflag ENGINE_PARRY
	end
; 0x19e1e8

UnknownScript_0x19e1e8: ; 0x19e1e8
	loadtrainer HIKER, PARRY1
	startbattle
	returnafterbattle
	loadvar wda0c, $2
	clearflag ENGINE_PARRY
	end
; 0x19e1f5

UnknownScript_0x19e1f5: ; 0x19e1f5
	loadtrainer HIKER, PARRY2
	startbattle
	returnafterbattle
	clearflag ENGINE_PARRY
	checkevent EVENT_PARRY_IRON
	iftrue UnknownScript_0x19e219
	checkevent EVENT_ROUTE_45_268
	iftrue UnknownScript_0x19e218
	scall UnknownScript_0x19e146
	verbosegiveitem IRON, 1
	iffalse UnknownScript_0x19e13f
	setevent EVENT_ROUTE_45_268
	jump UnknownScript_0x19e127
; 0x19e218

UnknownScript_0x19e218: ; 0x19e218
	end
; 0x19e219

UnknownScript_0x19e219: ; 0x19e219
	loadfont
	writetext UnknownText_0x19e52c
	waitbutton
	verbosegiveitem IRON, 1
	iffalse UnknownScript_0x19e13f
	clearevent EVENT_PARRY_IRON
	setevent EVENT_ROUTE_45_268
	jump UnknownScript_0x19e127
; 0x19e22d

TrainerHikerTimothy: ; 0x19e22d
	; bit/flag number
	dw $52d

	; trainer group && trainer id
	db HIKER, TIMOTHY

	; text when seen
	dw HikerTimothySeenText

	; text when trainer beaten
	dw HikerTimothyBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw HikerTimothyScript
; 0x19e239

HikerTimothyScript: ; 0x19e239
	talkaftercancel
	loadfont
	writetext UnknownText_0x19e4f1
	waitbutton
	closetext
	end
; 0x19e241

TrainerCooltrainermRyan: ; 0x19e241
	; bit/flag number
	dw $54f

	; trainer group && trainer id
	db COOLTRAINERM, RYAN

	; text when seen
	dw CooltrainermRyanSeenText

	; text when trainer beaten
	dw CooltrainermRyanBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CooltrainermRyanScript
; 0x19e24d

CooltrainermRyanScript: ; 0x19e24d
	talkaftercancel
	loadfont
	writetext UnknownText_0x19e70d
	waitbutton
	closetext
	end
; 0x19e255

TrainerCooltrainerfKelly: ; 0x19e255
	; bit/flag number
	dw $561

	; trainer group && trainer id
	db COOLTRAINERF, KELLY

	; text when seen
	dw CooltrainerfKellySeenText

	; text when trainer beaten
	dw CooltrainerfKellyBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CooltrainerfKellyScript
; 0x19e261

CooltrainerfKellyScript: ; 0x19e261
	talkaftercancel
	loadfont
	writetext UnknownText_0x19e7d1
	waitbutton
	closetext
	end
; 0x19e269

YoungsterScript_0x19e269: ; 0x19e269
	faceplayer
	loadfont
	checkevent EVENT_BEAT_CAMPER_QUENTIN
	iftrue UnknownScript_0x19e285
	writetext UnknownText_0x19e87f
	waitbutton
	closetext
	winlosstext UnknownText_0x19e899, $0000
	loadtrainer CAMPER, QUENTIN
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_CAMPER_QUENTIN
	closetext
	end
; 0x19e285

UnknownScript_0x19e285: ; 0x19e285
	writetext UnknownText_0x19e8bb
	waitbutton
	closetext
	end
; 0x19e28b

UnknownScript_0x19e28b: ; 0x19e28b
	writetext UnknownText_0x19e830
	waitbutton
	closetext
	end
; 0x19e291

MapRoute45Signpost0Script: ; 0x19e291
	jumptext UnknownText_0x19e8fe
; 0x19e294

FruitTreeScript_0x19e294: ; 0x19e294
	fruittree $c
; 0x19e296

ItemFragment_0x19e296: ; 0x19e296
	db NUGGET, 1
; 0x19e298

ItemFragment_0x19e298: ; 0x19e298
	db REVIVE, 1
; 0x19e29a

ItemFragment_0x19e29a: ; 0x19e29a
	db ELIXER, 1
; 0x19e29c

ItemFragment_0x19e29c: ; 0x19e29c
	db MAX_POTION, 1
; 0x19e29e

MapRoute45SignpostItem1: ; 0x19e29e
	dw $00af
	db PP_UP

; 0x19e2a1

HikerErikSeenText: ; 0x19e2a1
	text "Il faut être prêt"
	line "à tout!"

	para "Laisse moi voir si"
	line "tu as bien élevé"
	cont "tes #MON!"
	done
; 0x19e2ef

HikerErikBeatenText: ; 0x19e2ef
	text "Oh, j'ai perdu!"
	done
; 0x19e301

UnknownText_0x19e301: ; 0x19e301
	text "Je vais retourner"
	line "a la ROUTE DE"

	para "GLACE et m'entraî-"
	line "ner plus."
	done
; 0x19e33d

HikerMichaelSeenText: ; 0x19e33d
	text "Tu as du cran!"
	line "Mais tu sais quoi?"

	para "J'en ai plus que"
	line "toi!"
	done
; 0x19e392

HikerMichaelBeatenText: ; 0x19e392
	text "Mes #MON n'ont"
	line "pas assez de cran!"
	done
; 0x19e3b1

UnknownText_0x19e3b1: ; 0x19e3b1
	text "J'adore les PV"
	line "PLUS! Miam, miam!"

	para "Je bois ceux de"
	line "mes #MON."

	para "Je peux pas m'en"
	line "empêcher!"
	done
; 0x19e3fd

HikerParry3SeenText: ; 0x19e3fd
	text "Mes #MON sont"
	line "super boostés!"
	done
; 0x19e418

HikerParry3BeatenText: ; 0x19e418
	text "Wahahah! Je suis"
	line "trop nul!"
	done
; 0x19e434

UnknownText_0x19e434: ; 0x19e434
	text "C'est pas mon truc"
	line "de réfléchir."

	para "Je préfère cogner!"
	done
; 0x19e47a

HikerTimothySeenText: ; 0x19e47a
	text "Pourquoi j'aime"
	line "l'escalade?"

	para "Parce que j'aime"
	line "la montagne."

	para "Pourquoi j'aime"
	line "les #MON?"

	para "Parce que j'aime"
	line "combattre!"
	done
; 0x19e4d6

HikerTimothyBeatenText: ; 0x19e4d6
	text "Mais<...> Il y a aussi"
	line "les défaites!"
	done
; 0x19e4f1

UnknownText_0x19e4f1: ; 0x19e4f1
	text "Découvrir les"
	line "#MON est la"

	para "meilleure chose"
	line "qui me soit"
	cont "arrivé!"
	done
; 0x19e52c

UnknownText_0x19e52c: ; 0x19e52c
	text "Je n'arrive pas du"
	line "tout à gagner."

	para "Continue comme ça!"

	para "Oh, voilà le ca-"
	line "deau que je vou-"

	para "lais te donner la"
	line "dernière fois."
	done
; 0x19e59c

BlackbeltKenji3SeenText: ; 0x19e59c
	text "Je m'entraîne en"
	line "solitaire."

	para "Voilà le résultat!"
	done
; 0x19e5d7

BlackbeltKenji3BeatenText: ; 0x19e5d7
	text "Waaaargh!"
	done
; 0x19e5e2

UnknownText_0x19e5e2: ; 0x19e5e2
	text "Très bien, tu"
	line "l'auras voulu!"

	para "Je vais continuer"
	line "mon entraînement"
	cont "en solitaire."
	done
; 0x19e634

UnknownText_0x19e634: ; 0x19e634
	text "Je vais m'entraî-"
	line "ner un peu plus"
	cont "avant le déjeuner."
	done
; 0x19e66c

UnknownText_0x19e66c: ; 0x19e66c
	text "On s'est bien re-"
	line "posés et on est"
	cont "prêt a repartir!"

	para "Nous repartons"
	line "nous entraîner!"
	done
; 0x19e6cb

CooltrainermRyanSeenText: ; 0x19e6cb
	text "Comment entraînes-"
	line "tu tes #MON?"
	done
; 0x19e6f6

CooltrainermRyanBeatenText: ; 0x19e6f6
	text "Tu as mon respect."
	done
; 0x19e70d

UnknownText_0x19e70d: ; 0x19e70d
	text "Je vois que tu"
	line "prends soin de tes"
	cont "#MON."

	para "Votre amitié vous"
	line "sauvera des situa-"
	cont "tions difficiles."
	done
; 0x19e76f

CooltrainerfKellySeenText: ; 0x19e76f
	text "Quelle est ta"
	line "stratégie?"

	para "Utiliser des capa-"
	line "cités puissantes"
	cont "au hasard ne sert"
	cont "à rien."
	done
; 0x19e7c2

CooltrainerfKellyBeatenText: ; 0x19e7c2
	text "D'accord. J'ai"
	line "perdu."
	done
; 0x19e7d1

UnknownText_0x19e7d1: ; 0x19e7d1
	text "C'est mieux de se"
	line "préparer face au"
	cont "plus de types"
	cont "possibles."
	done
; 0x19e830

UnknownText_0x19e830: ; 0x19e830
	text "Je suis vraiment,"
	line "vraiment fort!"

	para "Y a t-il un en-"
	line "droit ou je peux"
	cont "prouver ma force?"
	done
; 0x19e87f

UnknownText_0x19e87f: ; 0x19e87f
	text "Je suis vraiment,"
	line "vraiment fort!"
	done
; 0x19e899

UnknownText_0x19e899: ; 0x19e899
	text "J'étais fort à la"
	line "TOUR DE COMBAT<...>"
	done
; 0x19e8bb

UnknownText_0x19e8bb: ; 0x19e8bb
	text "Tu as déjà été à"
	line "la TOUR DE COMBAT?"

	para "Je n'ai jamais,"
	line "jamais perdu mais<...>"
	done
; 0x19e8fe

UnknownText_0x19e8fe: ; 0x19e8fe
	text "ROUTE 45"

	para "CHEMIN de MONTAGNE"
	line "Tout droit."
	done
; 0x19e91b

Route45_MapEventHeader: ; 0x19e91b
	; filler
	db 0, 0

	; warps
	db 1
	warp_def $5, $2, 1, GROUP_DARK_CAVE_BLACKTHORN_ENTRANCE, MAP_DARK_CAVE_BLACKTHORN_ENTRANCE

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 4, 10, $0, MapRoute45Signpost0Script
	signpost 80, 13, $7, MapRoute45SignpostItem1

	; people-events
	db 13
	person_event SPRITE_POKEFAN_M, 20, 14, $9, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 1, TrainerHikerErik, -1
	person_event SPRITE_POKEFAN_M, 69, 19, $9, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 2, TrainerHikerMichael, -1
	person_event SPRITE_POKEFAN_M, 32, 9, $7, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 2, TrainerHikerParry3, -1
	person_event SPRITE_POKEFAN_M, 69, 13, $8, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 1, TrainerHikerTimothy, -1
	person_event SPRITE_BLACK_BELT, 54, 15, $a, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 2, TrainerBlackbeltKenji3, -1
	person_event SPRITE_COOLTRAINER_M, 22, 21, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, TrainerCooltrainermRyan, -1
	person_event SPRITE_COOLTRAINER_F, 40, 9, $a, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerCooltrainerfKelly, -1
	person_event SPRITE_FRUIT_TREE, 86, 20, $1, 0, 0, -1, -1, 0, 0, 0, FruitTreeScript_0x19e294, -1
	person_event SPRITE_POKE_BALL, 55, 10, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x19e296, EVENT_ITEM_ROUTE_45_NUGGET
	person_event SPRITE_POKE_BALL, 70, 9, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x19e298, EVENT_ITEM_ROUTE_45_REVIVE
	person_event SPRITE_POKE_BALL, 24, 10, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x19e29a, EVENT_ITEM_ROUTE_45_ELIXER
	person_event SPRITE_POKE_BALL, 37, 11, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x19e29c, EVENT_ITEM_ROUTE_45_MAX_POTION
	person_event SPRITE_YOUNGSTER, 74, 8, $3, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, YoungsterScript_0x19e269, -1
; 0x19e9d9

