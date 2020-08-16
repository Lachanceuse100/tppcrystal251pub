FastShipCabins_NNW_NNE_NE_MapScriptHeader: ; 0x75577
	; trigger count
	db 0

	; callback count
	db 0
; 0x75579

TrainerCooltrainermSean: ; 0x75579
	; bit/flag number
	dw $557

	; trainer group && trainer id
	db COOLTRAINERM, SEAN

	; text when seen
	dw CooltrainermSeanSeenText

	; text when trainer beaten
	dw CooltrainermSeanBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CooltrainermSeanScript
; 0x75585

CooltrainermSeanScript: ; 0x75585
	talkaftercancel
	loadfont
	writetext UnknownText_0x7567b
	waitbutton
	closetext
	end
; 0x7558d

TrainerCooltrainerfCarol: ; 0x7558d
	; bit/flag number
	dw $567

	; trainer group && trainer id
	db COOLTRAINERF, CAROL

	; text when seen
	dw CooltrainerfCarolSeenText

	; text when trainer beaten
	dw CooltrainerfCarolBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CooltrainerfCarolScript
; 0x75599

CooltrainerfCarolScript: ; 0x75599
	talkaftercancel
	loadfont
	writetext UnknownText_0x756f7
	waitbutton
	closetext
	end
; 0x755a1

TrainerPokemaniacEthan: ; 0x755a1
	; bit/flag number
	dw $4eb

	; trainer group && trainer id
	db POKEMANIAC, ETHAN

	; text when seen
	dw PokemaniacEthanSeenText

	; text when trainer beaten
	dw PokemaniacEthanBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PokemaniacEthanScript
; 0x755ad

PokemaniacEthanScript: ; 0x755ad
	talkaftercancel
	loadfont
	writetext UnknownText_0x7574b
	waitbutton
	closetext
	end
; 0x755b5

TrainerHikerNoland: ; 0x755b5
	; bit/flag number
	dw $531

	; trainer group && trainer id
	db HIKER, NOLAND

	; text when seen
	dw HikerNolandSeenText

	; text when trainer beaten
	dw HikerNolandBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw HikerNolandScript
; 0x755c1

HikerNolandScript: ; 0x755c1
	talkaftercancel
	loadfont
	writetext UnknownText_0x757d4
	waitbutton
	closetext
	end
; 0x755c9

TrainerGentlemanEdward: ; 0x755c9
	; bit/flag number
	dw $49b

	; trainer group && trainer id
	db GENTLEMAN, EDWARD

	; text when seen
	dw GentlemanEdwardSeenText

	; text when trainer beaten
	dw GentlemanEdwardBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GentlemanEdwardScript
; 0x755d5

GentlemanEdwardScript: ; 0x755d5
	talkaftercancel
	loadfont
	writetext UnknownText_0x75937
	waitbutton
	closetext
	end
; 0x755dd

TrainerBurglarCorey: ; 0x755dd
	; bit/flag number
	dw $42f

	; trainer group && trainer id
	db BURGLAR, COREY

	; text when seen
	dw BurglarCoreySeenText

	; text when trainer beaten
	dw BurglarCoreyBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw BurglarCoreyScript
; 0x755e9

BurglarCoreyScript: ; 0x755e9
	talkaftercancel
	loadfont
	writetext UnknownText_0x75996
	waitbutton
	closetext
	end
; 0x755f1

SailorScript_0x755f1: ; 0x755f1
	special SaveMusic
	playmusic MUSIC_HIKER_ENCOUNTER
	faceplayer
	loadfont
	writetext UnknownText_0x75812
	waitbutton
	closetext
	winlosstext UnknownText_0x75897, $0000
	loadtrainer SAILOR, STANLY
	startbattle
	reloadmap
	special HealParty
	setevent EVENT_BEAT_SAILOR_STANLY
	loadfont
	writetext UnknownText_0x758b1
	waitbutton
	closetext
	setevent EVENT_FAST_SHIP_033
	domaptrigger GROUP_FAST_SHIP_B1F, MAP_FAST_SHIP_B1F, $1
	checkcode VAR_FACING
	if_equal $3, UnknownScript_0x75629
	applymovement $6, MovementData_0x75637
	playsound SFX_EXIT_BUILDING
	disappear $6
	waitsfx
	end
; 0x75629

UnknownScript_0x75629: ; 0x75629
	applymovement $6, MovementData_0x7563c
	playsound SFX_EXIT_BUILDING
	disappear $6
	waitsfx
	end
; 0x75634

MapFastShipCabins_NNW_NNE_NESignpost2Script: ; 0x75634
	jumpstd trashcan
; 0x75637

MovementData_0x75637: ; 0x75637
	step_left
	step_left
	step_up
	step_up
	step_end
; 0x7563c

MovementData_0x7563c: ; 0x7563c
	step_down
	step_left
	step_left
	step_up
	step_up
	step_up
	step_end
; 0x75643

CooltrainermSeanSeenText: ; 0x75643
	text "Je vais à KANTO"
	line "pour m'entraîner."
	done
; 0x75669

CooltrainermSeanBeatenText: ; 0x75669
	text "Je voulais gagner!"
	done
; 0x7567b

UnknownText_0x7567b: ; 0x7567b
	text "Les dresseurs de"
	line "JOHTO peuvent af-"

	para "fronter les CHAM-"
	line "PIONS de KANTO."
	done
; 0x756b3

CooltrainerfCarolSeenText: ; 0x756b3
	text "Je m'entraîne pour"
	line "être la meilleure!"
	done
; 0x756d5

CooltrainerfCarolBeatenText: ; 0x756d5
	text "Qu'est-ce que tu"
	line "as de plus?"
	done
; 0x756f7

UnknownText_0x756f7: ; 0x756f7
	text "Je te battrai un"
	line "jour!"
	done
; 0x75716

PokemaniacEthanSeenText: ; 0x75716
	text "Tu connais LILY?"
	line "C'est un super DJ"
	cont "de KANTO."
	done
; 0x75741

PokemaniacEthanBeatenText: ; 0x75741
	text "Gyaaaah!"
	done
; 0x7574b

UnknownText_0x7574b: ; 0x7574b
	text "LILY est cool mais"
	line "LULA est la"
	cont "meilleure!"

	para "Je veux connaître"
	line "les stations de"
	cont "radio de JOHTO!"
	done
; 0x75797

HikerNolandSeenText: ; 0x75797
	text "Une âme solitaire?"
	line "Alors<...> Combat!"
	done
; 0x757b9

HikerNolandBeatenText: ; 0x757b9
	text "T'es trop, toi!"
	line "Pfouiii!"
	done
; 0x757d4

UnknownText_0x757d4: ; 0x757d4
	text "Tu crois qu'il y à"
	line "de belles monta-"
	cont "gnes à KANTO?"
	done
; 0x75812

UnknownText_0x75812: ; 0x75812
	text "Ouais, j'suis un"
	line "marin. Un vrai"
	cont "de vrai."

	para "Hein? Mais non,"
	line "je bosse là, je"
	cont "te jure."

	para "C'est juste que la"
	line "cabine était vide"
	cont "alors j'ai fait"
	cont "une p'tite sieste."

	para "Raaaah, oublie."
	line "Combat!"
	done
; 0x75897

UnknownText_0x75897: ; 0x75897
	text "Pardon! C'est ma"
	line "faute!"
	done
; 0x758b1

UnknownText_0x758b1: ; 0x758b1
	text "Hé, c'est épuisant"
	line "tout le boulot qu'"
	cont "on a, tu sais?"
	
	para "Bon, j'y retourne."
	done
; 0x758f1

GentlemanEdwardSeenText: ; 0x758f1
	text "J'ai perdu un truc"
	line "super important<...>"
	done
; 0x75923

GentlemanEdwardBeatenText: ; 0x75923
	text "Je<...> Je le trouve"
	line "pas<...>"
	done
; 0x75937

UnknownText_0x75937: ; 0x75937
	text "Je laisse tomber."
	line "Ce n'est pas la"

	para "peine de chercher."
	line "Oublie!"
	done
; 0x75970

BurglarCoreySeenText: ; 0x75970
	text "Ouaiiis!"
	line "Le bol!"
	done
; 0x75980

BurglarCoreyBeatenText: ; 0x75980
	text "Ohhhh!"
	line "Pas de bol!"
	done
; 0x75996

UnknownText_0x75996: ; 0x75996
	text "J'ai trouvé une"
	line "belle pièce."

	para "Quelqu'un a dû"
	line "la perdre<...>"
	done
; 0x759ce

FastShipCabins_NNW_NNE_NE_MapEventHeader: ; 0x759ce
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $0, $2, 2, GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F
	warp_def $c, $2, 3, GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F
	warp_def $18, $2, 4, GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F

	; xy triggers
	db 0

	; signposts
	db 3
	signpost 13, 6, $0, MapFastShipCabins_NNW_NNE_NESignpost2Script
	signpost 19, 7, $0, MapFastShipCabins_NNW_NNE_NESignpost2Script
	signpost 31, 7, $0, MapFastShipCabins_NNW_NNE_NESignpost2Script

	; people-events
	db 7
	person_event SPRITE_COOLTRAINER_M, 7, 8, $a, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 2, TrainerCooltrainermSean, EVENT_FAST_SHIP_POPULATION_2
	person_event SPRITE_COOLTRAINER_F, 9, 5, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerCooltrainerfCarol, EVENT_FAST_SHIP_POPULATION_2
	person_event SPRITE_SUPER_NERD, 9, 5, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerPokemaniacEthan, EVENT_FAST_SHIP_POPULATION_3
	person_event SPRITE_POKEFAN_M, 21, 8, $7, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 3, TrainerHikerNoland, EVENT_FAST_SHIP_POPULATION_1
	person_event SPRITE_SAILOR, 30, 8, $3, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, SailorScript_0x755f1, EVENT_FAST_SHIP_GOOD_FOR_NOTHING_SAILOR
	person_event SPRITE_GENTLEMAN, 34, 11, $3, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 1, TrainerGentlemanEdward, EVENT_FAST_SHIP_POPULATION_2
	person_event SPRITE_PHARMACIST, 34, 6, $7, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 4, TrainerBurglarCorey, EVENT_FAST_SHIP_POPULATION_3
; 0x75a4d

