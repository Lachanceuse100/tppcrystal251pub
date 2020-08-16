FastShipCabins_SW_SSW_NW_MapScriptHeader: ; 0x75a4d
	; trigger count
	db 0

	; callback count
	db 0
; 0x75a4f

TrainerFirebreatherLyle: ; 0x75a4f
	; bit/flag number
	dw $44d

	; trainer group && trainer id
	db FIREBREATHER, LYLE

	; text when seen
	dw FirebreatherLyleSeenText

	; text when trainer beaten
	dw FirebreatherLyleBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw FirebreatherLyleScript
; 0x75a5b

FirebreatherLyleScript: ; 0x75a5b
	talkaftercancel
	loadfont
	writetext UnknownText_0x75b52
	waitbutton
	closetext
	end
; 0x75a63

TrainerBug_catcherKen: ; 0x75a63
	; bit/flag number
	dw $540

	; trainer group && trainer id
	db BUG_CATCHER, KEN

	; text when seen
	dw Bug_catcherKenSeenText

	; text when trainer beaten
	dw Bug_catcherKenBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bug_catcherKenScript
; 0x75a6f

Bug_catcherKenScript: ; 0x75a6f
	talkaftercancel
	loadfont
	writetext UnknownText_0x75bd5
	waitbutton
	closetext
	end
; 0x75a77

TrainerBeautyCassie: ; 0x75a77
	; bit/flag number
	dw $4b2

	; trainer group && trainer id
	db BEAUTY, CASSIE

	; text when seen
	dw BeautyCassieSeenText

	; text when trainer beaten
	dw BeautyCassieBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw BeautyCassieScript
; 0x75a83

BeautyCassieScript: ; 0x75a83
	talkaftercancel
	loadfont
	writetext UnknownText_0x75c43
	waitbutton
	closetext
	end
; 0x75a8b

TrainerGuitaristClyde: ; 0x75a8b
	; bit/flag number
	dw $493

	; trainer group && trainer id
	db GUITARIST, CLYDE

	; text when seen
	dw GuitaristClydeSeenText

	; text when trainer beaten
	dw GuitaristClydeBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GuitaristClydeScript
; 0x75a97

GuitaristClydeScript: ; 0x75a97
	talkaftercancel
	special Function10630f
	iftrue UnknownScript_0x75aa5
	loadfont
	writetext UnknownText_0x75d65
	waitbutton
	closetext
	end
; 0x75aa5

UnknownScript_0x75aa5: ; 0x75aa5
	loadfont
	writetext UnknownText_0x75cfe
	waitbutton
	closetext
	end
; 0x75aac

MapFastShipCabins_SW_SSW_NWSignpost1Script: ; 0x75aac
	loadfont
	writetext UnknownText_0x75da4
	waitbutton
	closetext
	special Special_FadeToBlack
	special Functiond91
	special Function1060a2
	special HealParty
	playmusic MUSIC_HEAL
	pause 60
	special RestartMapMusic
	special Function8c0ab
	loadfont
	writetext UnknownText_0x75dc1
	waitbutton
	closetext
	checkevent EVENT_FAST_SHIP_ARRIVED
	iftrue UnknownScript_0x75ae1
	checkevent EVENT_FAST_SHIP_032
	iftrue UnknownScript_0x75ae2
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iftrue UnknownScript_0x75ae2
UnknownScript_0x75ae1: ; 0x75ae1
	end
; 0x75ae2

UnknownScript_0x75ae2: ; 0x75ae2
	playsound SFX_ELEVATOR_END
	pause 30
	checkevent EVENT_FAST_SHIP_WESTBOUND
	iftrue UnknownScript_0x75af7
	loadfont
	writetext UnknownText_0x75e0f
	waitbutton
	closetext
	setevent EVENT_FAST_SHIP_ARRIVED
	end
; 0x75af7

UnknownScript_0x75af7: ; 0x75af7
	loadfont
	writetext UnknownText_0x75dde
	waitbutton
	closetext
	setevent EVENT_FAST_SHIP_ARRIVED
	end
; 0x75b01

MapFastShipCabins_SW_SSW_NWSignpost2Script: ; 0x75b01
	jumpstd trashcan
; 0x75b04

FirebreatherLyleSeenText: ; 0x75b04
	text "Je vais à KANTO"
	line "me donner en"
	cont "spectacle!"
	done
; 0x75b38

FirebreatherLyleBeatenText: ; 0x75b38
	text "Pfff<...> Ma flamme"
	line "est miniscule<...>"
	done
; 0x75b52

UnknownText_0x75b52: ; 0x75b52
	text "Le feu c'est nul"
	line "sur l'eau, non?"

	para "Ca change rien?"
	line "Vraiment?"
	done
; 0x75b8e

Bug_catcherKenSeenText: ; 0x75b8e
	text "Je vais chez ma"
	line "grand-mère pour"
	para "attraper des"
	line "insectes!"
	done
; 0x75bbd

Bug_catcherKenBeatenText: ; 0x75bbd
	text "Ooh!"
	line "Quelle force!"
	done
; 0x75bd5

UnknownText_0x75bd5: ; 0x75bd5
	text "Il y a plein de"
	line "#MON dans les"
	cont "arbres de JOHTO!"
	done
; 0x75c07

BeautyCassieSeenText: ; 0x75c07
	text "J'essaie d'oublier"
	line "mes malheurs<...>"
	cont "COMBAT!"
	done
; 0x75c32

BeautyCassieBeatenText: ; 0x75c32
	text "Mon coeur est en"
	line "pleurs<...>"
	done
; 0x75c43

UnknownText_0x75c43: ; 0x75c43
	text "Voyager fait ou-"
	line "blier les peines"
	cont "de coeur."

	para "Mais un BATEAU"
	line "EXPRESS va trop"
	cont "vite!"
	done
; 0x75ca6

GuitaristClydeSeenText: ; 0x75ca6
	text "Je vais audition-"
	line "ner à la STATION"

	para "RADIO de DOUBLON-"
	line "VILLE."
	done
; 0x75ce4

GuitaristClydeBeatenText: ; 0x75ce4
	text "Wouh!"
	line "Un bide!"
	done
; 0x75cfe

UnknownText_0x75cfe: ; 0x75cfe
	text "Je devais faire"
	line "débuts à la TOUR"
	cont "de COMBAT<...>"

	para "Je vais retourner"
	line "à CARMIN SUR MER"
	cont "m'entraîner<...>"
	done
; 0x75d65

UnknownText_0x75d65: ; 0x75d65
	text "Au fait, c'est"
	line "quoi le BON NUMERO"
	cont "de cette semaine?"
	done
; 0x75da4

UnknownText_0x75da4: ; 0x75da4
	text "Un lit douillet!"
	line "Allez, au dodo<...>"
	done
; 0x75dc1

UnknownText_0x75dc1: ; 0x75dc1
	text "Ah<...> C'est la"
	line "super pêche!"
	done
; 0x75dde

UnknownText_0x75dde: ; 0x75dde
	text "Le BATEAU EXPRESS"
	line "AQUARIA est arrivé"
	cont "à OLIVILLE."
	done
; 0x75e0f

UnknownText_0x75e0f: ; 0x75e0f
	text "Le BATEAU EXPRESS"
	line "AQUARIA est arrivé"
	cont "à CARMIN SUR MER."
	done
; 0x75e42

FastShipCabins_SW_SSW_NW_MapEventHeader: ; 0x75e42
	; filler
	db 0, 0

	; warps
	db 5
	warp_def $0, $2, 5, GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F
	warp_def $13, $2, 6, GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F
	warp_def $13, $3, 6, GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F
	warp_def $1f, $2, 7, GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F
	warp_def $1f, $3, 7, GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F

	; xy triggers
	db 0

	; signposts
	db 3
	signpost 1, 7, $0, MapFastShipCabins_SW_SSW_NWSignpost1Script
	signpost 2, 7, $0, MapFastShipCabins_SW_SSW_NWSignpost1Script
	signpost 7, 7, $0, MapFastShipCabins_SW_SSW_NWSignpost2Script

	; people-events
	db 4
	person_event SPRITE_FISHER, 19, 5, $1e, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 2, TrainerFirebreatherLyle, EVENT_FAST_SHIP_POPULATION_1
	person_event SPRITE_BUG_CATCHER, 19, 10, $a, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 2, TrainerBug_catcherKen, EVENT_FAST_SHIP_POPULATION_3
	person_event SPRITE_BUENA, 30, 5, $a, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerBeautyCassie, EVENT_FAST_SHIP_POPULATION_2
	person_event SPRITE_ROCKER, 32, 7, $1e, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 2, TrainerGuitaristClyde, EVENT_FAST_SHIP_POPULATION_3
; 0x75ea4

