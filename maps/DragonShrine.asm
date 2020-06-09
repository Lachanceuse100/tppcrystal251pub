DragonShrine_MapScriptHeader: ; 0x18d014
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x18d01e, $0000
	dw UnknownScript_0x18d022, $0000

	; callback count
	db 0
; 0x18d01e

UnknownScript_0x18d01e: ; 0x18d01e
	priorityjump UnknownScript_0x18d023
	end
; 0x18d022

UnknownScript_0x18d022: ; 0x18d022
	end
; 0x18d023

UnknownScript_0x18d023: ; 0x18d023
	applymovement $0, MovementData_0x18d2bf
	applymovement $2, MovementData_0x18d2c7
	loadfont
	writetext UnknownText_0x18d2ea
	buttonsound
UnknownScript_0x18d030: ; 0x18d030
	setevent EVENT_001_STD
	writetext UnknownText_0x18d3bc
	buttonsound
	loadmenudata MenuDataHeader_0x18d215
	interpretmenu2
	writebackup
	if_equal $1, UnknownScript_0x18d0a9
	if_equal $2, UnknownScript_0x18d0cb
	if_equal $3, UnknownScript_0x18d0a9
	end
; 0x18d049

UnknownScript_0x18d049: ; 0x18d049
	setevent EVENT_002_STD
	writetext UnknownText_0x18d3d3
	buttonsound
	loadmenudata MenuDataHeader_0x18d234
	interpretmenu2
	writebackup
	if_equal $1, UnknownScript_0x18d0a9
	if_equal $2, UnknownScript_0x18d0a9
	if_equal $3, UnknownScript_0x18d0cb
UnknownScript_0x18d061: ; 0x18d061
	setevent EVENT_003_STD
	writetext UnknownText_0x18d3f3
	buttonsound
	loadmenudata MenuDataHeader_0x18d258
	interpretmenu2
	writebackup
	if_equal $1, UnknownScript_0x18d0cb
	if_equal $2, UnknownScript_0x18d0a9
	if_equal $3, UnknownScript_0x18d0a9
UnknownScript_0x18d079: ; 0x18d079
	setevent EVENT_004_STD
	writetext UnknownText_0x18d420
	buttonsound
	loadmenudata MenuDataHeader_0x18d283
	interpretmenu2
	writebackup
	if_equal $1, UnknownScript_0x18d0a9
	if_equal $2, UnknownScript_0x18d0cb
	if_equal $3, UnknownScript_0x18d0a9
UnknownScript_0x18d091: ; 0x18d091
	setevent EVENT_005_STD
	writetext UnknownText_0x18d44a
	buttonsound
	loadmenudata MenuDataHeader_0x18d2a5
	interpretmenu2
	writebackup
	if_equal $1, UnknownScript_0x18d0cb
	if_equal $2, UnknownScript_0x18d0a9
	if_equal $3, UnknownScript_0x18d0cb
UnknownScript_0x18d0a9: ; 0x18d0a9
	checkevent EVENT_005_STD
	iftrue UnknownScript_0x18d100
	writetext UnknownText_0x18d82d
	buttonsound
	checkevent EVENT_004_STD
	iftrue UnknownScript_0x18d091
	checkevent EVENT_003_STD
	iftrue UnknownScript_0x18d079
	checkevent EVENT_002_STD
	iftrue UnknownScript_0x18d061
	checkevent EVENT_001_STD
	iftrue UnknownScript_0x18d049
UnknownScript_0x18d0cb: ; 0x18d0cb
	closetext
	spriteface $2, $2
	loadfont
	writetext UnknownText_0x18d7f6
	waitbutton
	closetext
	spriteface $2, $0
	loadfont
	writetext UnknownText_0x18d816
	waitbutton
	closetext
	setevent EVENT_WRONG_ANSWER_IN_DRAGON_SHRINE_QUIZ
	loadfont
	checkevent EVENT_005_STD
	iftrue UnknownScript_0x18d091
	checkevent EVENT_004_STD
	iftrue UnknownScript_0x18d079
	checkevent EVENT_003_STD
	iftrue UnknownScript_0x18d061
	checkevent EVENT_002_STD
	iftrue UnknownScript_0x18d049
	checkevent EVENT_001_STD
	iftrue UnknownScript_0x18d030
UnknownScript_0x18d100: ; 0x18d100
	writetext UnknownText_0x18d47c
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	showemote $0, $0, 15
	playmusic MUSIC_CLAIR
	appear $5
	waitsfx
	spriteface $0, $0
	pause 30
	applymovement $5, MovementData_0x18d2d4
	spriteface $5, $3
	spriteface $0, $2
	spriteface $2, $2
	loadfont
	writetext UnknownText_0x18d916
	waitbutton
	closetext
	special Functionc48f
	applymovement $5, MovementData_0x18d2da
	loadfont
	writetext UnknownText_0x18d974
	waitbutton
	closetext
	applymovement $5, MovementData_0x18d2dd
	loadfont
	writetext UnknownText_0x18d983
	waitbutton
	closetext
	applymovement $2, MovementData_0x18d2c9
	spriteface $5, $1
	loadfont
	writetext UnknownText_0x18d520
	waitbutton
	closetext
	showemote $0, $5, 15
	loadfont
	writetext UnknownText_0x18d9ae
	waitbutton
	closetext
	applymovement $5, MovementData_0x18d2e0
	loadfont
	writetext UnknownText_0x18d9bf
	waitbutton
	setflag ENGINE_RISINGBADGE
	playsound SFX_GET_BADGE
	waitsfx
	special RestartMapMusic
	specialphonecall $8
	dotrigger $1
	domaptrigger GROUP_DRAGONS_DEN_B1F, MAP_DRAGONS_DEN_B1F, $1
	writetext UnknownText_0x18d9f2
	buttonsound
	writetext UnknownText_0x18da0b
	waitbutton
	closetext
	applymovement $2, MovementData_0x18d2ce
	spriteface $5, $1
	applymovement $2, MovementData_0x18d2d1
	spriteface $0, $1
	loadfont
	writetext UnknownText_0x18d5a3
	waitbutton
	closetext
	loadfont
	writetext UnknownText_0x18dab4
	waitbutton
	closetext
	applymovement $5, MovementData_0x18d2e3
	playsound SFX_ENTER_DOOR
	disappear $5
	waitsfx
	setevent EVENT_000_STD
	end
; 0x18d1a5

ElderScript_0x18d1a5: ; 0x18d1a5
	faceplayer
	loadfont
	checkevent EVENT_000_STD
	iftrue UnknownScript_0x18d1f9
	checkevent EVENT_006_STD
	iftrue UnknownScript_0x18d1ff
	checkevent EVENT_RECEIVED_DRATINI_FROM_DRAGON_SHRINE
	iffalse UnknownScript_0x18d1c5
	checkevent EVENT_BEAT_RIVAL_IN_MT_MOON
	iftrue UnknownScript_0x18d1f3
	writetext UnknownText_0x18d724
	waitbutton
	closetext
	end
; 0x18d1c5

UnknownScript_0x18d1c5: ; 0x18d1c5
	writetext UnknownText_0x18d604
	waitbutton
	checkcode VAR_PARTYCOUNT
	if_equal $6, UnknownScript_0x18d1ed
	writetext UnknownText_0x18d697
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke DRATINI, 53, 0, 0
	checkevent EVENT_WRONG_ANSWER_IN_DRAGON_SHRINE_QUIZ
	special SpecialDratini
	setevent EVENT_RECEIVED_DRATINI_FROM_DRAGON_SHRINE
	setevent EVENT_006_STD
	writetext UnknownText_0x18d6ca
	waitbutton
	closetext
	end
; 0x18d1ed

UnknownScript_0x18d1ed: ; 0x18d1ed
	writetext UnknownText_0x18d6ac
	waitbutton
	closetext
	end
; 0x18d1f3

UnknownScript_0x18d1f3: ; 0x18d1f3
	writetext UnknownText_0x18d782
	waitbutton
	closetext
	end
; 0x18d1f9

UnknownScript_0x18d1f9: ; 0x18d1f9
	writetext UnknownText_0x18d5e5
	waitbutton
	closetext
	end
; 0x18d1ff

UnknownScript_0x18d1ff: ; 0x18d1ff
	writetext UnknownText_0x18d6ca
	waitbutton
	closetext
	end
; 0x18d205

ElderScript_0x18d205: ; 0x18d205
	faceplayer
	loadfont
	writetext UnknownText_0x18d840
	waitbutton
	closetext
	end
; 0x18d20d

ElderScript_0x18d20d: ; 0x18d20d
	faceplayer
	loadfont
	writetext UnknownText_0x18d8b1
	waitbutton
	closetext
	end
; 0x18d215


MenuDataHeader_0x18d215: ; 0x18d215
	db $40 ; flags
	db 04, 08 ; start coords
	db 11, 19 ; end coords
	dw MenuData2_0x18d21d
	db 1 ; default option
; 0x18d21d

MenuData2_0x18d21d: ; 0x18d21d
	db $81 ; flags
	db 3 ; items
	db "Copain@"
	db "Esclave@"
	db "Ami@"
; 0x18d234


MenuDataHeader_0x18d234: ; 0x18d234
	db $40 ; flags
	db 04, 05 ; start coords
	db 11, 19 ; end coords
	dw MenuData2_0x18d23c
	db 1 ; default option
; 0x18d23c

MenuData2_0x18d23c: ; 0x18d23c
	db $81 ; flags
	db 3 ; items
	db "Stratégie@"
	db "Entraînement@"
	db "Triche@"
; 0x18d258


MenuDataHeader_0x18d258: ; 0x18d258
	db $40 ; flags
	db 04, 05 ; start coords
	db 11, 19 ; end coords
	dw MenuData2_0x18d260
	db 1 ; default option
; 0x18d260

MenuData2_0x18d260: ; 0x18d260
	db $81 ; flags
	db 3 ; items
	db "Dres. faible@"
	db "Dres. fort@"
	db "Peu importe@"
; 0x18d283


MenuDataHeader_0x18d283: ; 0x18d283
	db $40 ; flags
	db 04, 08 ; start coords
	db 11, 19 ; end coords
	dw MenuData2_0x18d28b
	db 1 ; default option
; 0x18d28b

MenuData2_0x18d28b: ; 0x18d28b
	db $81 ; flags
	db 3 ; items
	db "Amour@"
	db "Violence@"
	db "Savoir@"
; 0x18d2a5


MenuDataHeader_0x18d2a5: ; 0x18d2a5
	db $40 ; flags
	db 04, 09 ; start coords
	db 11, 19 ; end coords
	dw MenuData2_0x18d2ad
	db 1 ; default option
; 0x18d2ad

MenuData2_0x18d2ad: ; 0x18d2ad
	db $81 ; flags
	db 3 ; items
	db "Puissant@"
	db "Les deux@"
	db "Faible@"
; 0x18d2bf


MovementData_0x18d2bf: ; 0x18d2bf
	slow_step_up
	slow_step_up
	slow_step_up
	slow_step_right
	slow_step_up
	slow_step_up
	slow_step_up
	step_end
; 0x18d2c7

MovementData_0x18d2c7: ; 0x18d2c7
	slow_step_down
	step_end
; 0x18d2c9

MovementData_0x18d2c9: ; 0x18d2c9
	slow_step_left
	slow_step_left
	slow_step_left
	turn_head_down
	step_end
; 0x18d2ce

MovementData_0x18d2ce: ; 0x18d2ce
	slow_step_right
	slow_step_right
	step_end
; 0x18d2d1

MovementData_0x18d2d1: ; 0x18d2d1
	slow_step_right
	turn_head_down
	step_end
; 0x18d2d4

MovementData_0x18d2d4: ; 0x18d2d4
	slow_step_up
	slow_step_up
	slow_step_up
	slow_step_up
	slow_step_up
	step_end
; 0x18d2da

MovementData_0x18d2da: ; 0x18d2da
	fix_facing
	big_step_left
	step_end
; 0x18d2dd

MovementData_0x18d2dd: ; 0x18d2dd
	slow_step_left
	remove_fixed_facing
	step_end
; 0x18d2e0

MovementData_0x18d2e0: ; 0x18d2e0
	slow_step_right
	slow_step_right
	step_end
; 0x18d2e3

MovementData_0x18d2e3: ; 0x18d2e3
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end
; 0x18d2ea

UnknownText_0x18d2ea: ; 0x18d2ea
	text "Hmm<...>"
	line "Bienvenue."

	para "Ne parle pas."

	para "SANDRA t'a dit de"
	line "venir, c'est ça?"

	para "Coriace la petite<...>"

	para "Je dois te mettre"
	line "à l'épreuve."

	para "Pas d'inquiétude,"
	line "tu ne dois répon-"
	cont "dre qu'à quelques"
	cont "questions."

	para "On commence?"
	done
; 0x18d3bc

UnknownText_0x18d3bc: ; 0x18d3bc
	text "Que représente un"
	line "#MON pour toi?"
	done
; 0x18d3d3

UnknownText_0x18d3d3: ; 0x18d3d3
	text "Qu'est-ce qui"
	line "t'aides à gagner"
	cont "les combats?"
	done
; 0x18d3f3

UnknownText_0x18d3f3: ; 0x18d3f3
	text "Quel type de"
	line "dresseur veux-tu"
	cont "affronter?"
	done
; 0x18d420

UnknownText_0x18d420: ; 0x18d420
	text "Quelle est la cho-"
	line "se la plus impor-"
	cont "tante pour entraî-"
	cont "ner un #MON?"
	done
; 0x18d44a

UnknownText_0x18d44a: ; 0x18d44a
	text "#MON puissant."
	line "#MON faible."

	para "Lequel est le plus"
	line "important?"
	done
; 0x18d47c

UnknownText_0x18d47c: ; 0x18d47c
	text "Hmm<...> Je vois<...>"

	para "Tu as de vrais"
	line "sentiments pour"
	cont "les #MON."

	para "Je te félicite."

	para "Cette conviction"
	line "est importante!"

	para "<PLAYER>, ne perds"
	line "pas cette fois."

	para "Cela t'aidera"
	line "pour la LIGUE"
	cont "#MON."
	done
; 0x18d520

UnknownText_0x18d520: ; 0x18d520
	text "SANDRA!"

	para "Cet enfant est"
	line "impeccable, tant"
	cont "son talent que son"
	cont "esprit!"

	para "Admets ta défaite"
	line "et remets ton"
	cont "BADGE LEVER!"

	para "<...>Ou dois-je en"
	line "informer PETER?"
	done
; 0x18d5a3

UnknownText_0x18d5a3: ; 0x18d5a3
	text "SANDRA<...>"

	para "Penche-toi sur"
	line "tes lacunes<...>"

	para "Prends exemple sur"
	line "<PLAYER>."
	done
; 0x18d5e5

UnknownText_0x18d5e5: ; 0x18d5e5
	text "N'hésite pas à"
	line "revenir en ce"
	cont "saint lieu."
	done
; 0x18d604

UnknownText_0x18d604: ; 0x18d604
	text "Hm<...>"
	line "Bienvenue."

	para "Tu arrives au bon"
	line "moment."

	para "J'ai quelque chose"
	line "pour toi."

	para "Ce MINIDRACO est"
	line "la preuve de ta"
	cont "valeur<...>"
	done
; 0x18d697

UnknownText_0x18d697: ; 0x18d697
	text "<PLAYER> reçoit"
	line "MINIDRACO!"
	done
; 0x18d6ac

UnknownText_0x18d6ac: ; 0x18d6ac
	text "Hmm? Ton équipe"
	line "est pleine."
	done
; 0x18d6ca

UnknownText_0x18d6ca: ; 0x18d6ca
	text "Les #MON dra-"
	line "gons représentent"
	cont "notre clan."

	para "Tu es digne d'en"
	line "posséder un."
	done
; 0x18d724

UnknownText_0x18d724: ; 0x18d724
	text "SANDRA a appris"
	line "quelque chose en"
	cont "te connaissant."

	para "Etant son grand-"
	line "père, je te"
	cont "remercie."
	done
; 0x18d782

UnknownText_0x18d782: ; 0x18d782
	text "Un garçon de ton"
	line "âge s'entraîne"
	cont "ici."

	para "Il est comme l'é-"
	line "tait SANDRA plus"

	para "jeune. Je suis"
	line "un peu inquiet<...>"
	done
; 0x18d7f6

UnknownText_0x18d7f6: ; 0x18d7f6
	text "Je ne suis pas sûr"
	line "d'avoir bien"
	cont "entendu<...>"
	done
; 0x18d816

UnknownText_0x18d816: ; 0x18d816
	text "Peux-tu répéter?"
	done
; 0x18d82d

UnknownText_0x18d82d: ; 0x18d82d
	text "Oh, je vois<...>"
	done
; 0x18d840

UnknownText_0x18d840: ; 0x18d840
	text "Un rebelle des"
	line "fossiles."

	para "Un champion des"
	line "fossiles."

	para "Une légende qui"
	line "devint le"
	cont "meilleur."

	para "Et toi, quel sera"
	line "ton destin?"
	done
; 0x18d8b1

UnknownText_0x18d8b1: ; 0x18d8b1
	text "Tu connais maître"
	line "PETER?"

	para "Il ressemble à"
	line "notre MAITRE étant"
	cont "jeune."

	para "C'est dans leur"
	line "sang."
	done
; 0x18d916

UnknownText_0x18d916: ; 0x18d916
	text "Alors?"

	para "Je ne vois pas"
	line "pourquoi je"
	cont "demande<...>"

	para "Tu as échoué,"
	line "n'est-ce pas?"

	para $56, $56, $56, $56, $56, $56

	para "<...>Quoi? Réussi?"
	done
; 0x18d974

UnknownText_0x18d974: ; 0x18d974
	text "C'est une erreur!"
	done
; 0x18d983

UnknownText_0x18d983: ; 0x18d983
	text "Tu mens!"

	para "Même moi je n'ai"
	line "pas été approuvé!"
	done
; 0x18d9ae

UnknownText_0x18d9ae: ; 0x18d9ae
	text "Je<...> Je comprends<...>"
	done
; 0x18d9bf

UnknownText_0x18d9bf: ; 0x18d9bf
	text "Tiens, voilà le"
	line "BADGE LEVER<...>"

	para "Allez! Prends-le!"
	done
; 0x18d9f2

UnknownText_0x18d9f2: ; 0x18d9f2
	text "<PLAYER> reçoit"
	line "le BADGE LEVER."
	done
; 0x18da0b

UnknownText_0x18da0b: ; 0x18da0b
	text "Le BADGE LEVER"
	line "permet à tes"

	para "#MON de lancer"
	line "une capacité pour"
	cont "escalader les"
	cont "cascades."

	para "De plus, tous les"
	line "#MON t'obéiront"

	para "sans poser de"
	line "questions."
	done
; 0x18dab4

UnknownText_0x18dab4: ; 0x18dab4
	db $0, $56, $56, $56, $56, $56, $56, $57
; 0x18dabc

DragonShrine_MapEventHeader: ; 0x18dabc
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $9, $4, 2, GROUP_DRAGONS_DEN_B1F, MAP_DRAGONS_DEN_B1F
	warp_def $9, $5, 2, GROUP_DRAGONS_DEN_B1F, MAP_DRAGONS_DEN_B1F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 4
	person_event SPRITE_ELDER, 5, 9, $6, 0, 0, -1, -1, 0, 0, 0, ElderScript_0x18d1a5, EVENT_000_STD
	person_event SPRITE_ELDER, 8, 6, $9, 0, 0, -1, -1, 0, 0, 0, ElderScript_0x18d205, EVENT_000_STD
	person_event SPRITE_ELDER, 8, 11, $8, 0, 0, -1, -1, 0, 0, 0, ElderScript_0x18d20d, EVENT_000_STD
	person_event SPRITE_CLAIR, 12, 8, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ObjectEvent, EVENT_CLAIR_IN_DRAGON_SHRINE
; 0x18db00

