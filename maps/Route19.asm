Route19_MapScriptHeader: ; 0x19e9d9
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 1, UnknownScript_0x19e9de
; 0x19e9de

UnknownScript_0x19e9de: ; 0x19e9de
	checkevent EVENT_ROAD_WORK_ON_ROUTE_19_FINISHED
	iftrue UnknownScript_0x19e9fc
	changeblock $6, $6, $7a
	changeblock $8, $6, $7a
	changeblock $a, $6, $7a
	changeblock $c, $8, $7a
	changeblock $4, $8, $7a
	changeblock $a, $a, $7a
UnknownScript_0x19e9fc: ; 0x19e9fc
	return
; 0x19e9fd

TrainerSwimmerfDawn: ; 0x19e9fd
	; bit/flag number
	dw $3f3

	; trainer group && trainer id
	db SWIMMERF, DAWN

	; text when seen
	dw SwimmerfDawnSeenText

	; text when trainer beaten
	dw SwimmerfDawnBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SwimmerfDawnScript
; 0x19ea09

SwimmerfDawnScript: ; 0x19ea09
	talkaftercancel
	loadfont
	writetext UnknownText_0x19ebad
	waitbutton
	closetext
	end
; 0x19ea11

TrainerSwimmermHarold: ; 0x19ea11
	; bit/flag number
	dw $594

	; trainer group && trainer id
	db SWIMMERM, HAROLD

	; text when seen
	dw SwimmermHaroldSeenText

	; text when trainer beaten
	dw SwimmermHaroldBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SwimmermHaroldScript
; 0x19ea1d

SwimmermHaroldScript: ; 0x19ea1d
	talkaftercancel
	loadfont
	writetext UnknownText_0x19eab4
	waitbutton
	closetext
	end
; 0x19ea25

TrainerSwimmermJerome: ; 0x19ea25
	; bit/flag number
	dw $5a1

	; trainer group && trainer id
	db SWIMMERM, JEROME

	; text when seen
	dw SwimmermJeromeSeenText

	; text when trainer beaten
	dw SwimmermJeromeBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SwimmermJeromeScript
; 0x19ea31

SwimmermJeromeScript: ; 0x19ea31
	talkaftercancel
	loadfont
	writetext UnknownText_0x19ec7e
	waitbutton
	closetext
	end
; 0x19ea39

TrainerSwimmermTucker: ; 0x19ea39
	; bit/flag number
	dw $5a2

	; trainer group && trainer id
	db SWIMMERM, TUCKER

	; text when seen
	dw SwimmermTuckerSeenText

	; text when trainer beaten
	dw SwimmermTuckerBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SwimmermTuckerScript
; 0x19ea45

SwimmermTuckerScript: ; 0x19ea45
	talkaftercancel
	loadfont
	writetext UnknownText_0x19eb3b
	waitbutton
	closetext
	end
; 0x19ea4d

FisherScript_0x19ea4d: ; 0x19ea4d
	faceplayer
	loadfont
	checkevent EVENT_ROAD_WORK_ON_ROUTE_19_FINISHED
	iftrue UnknownScript_0x19ea5b
	writetext UnknownText_0x19ecaf
	waitbutton
	closetext
	end
; 0x19ea5b

UnknownScript_0x19ea5b: ; 0x19ea5b
	writetext UnknownText_0x19ed24
	waitbutton
	closetext
	end
; 0x19ea61

FisherScript_0x19ea61: ; 0x19ea61
	faceplayer
	loadfont
	checkevent EVENT_ROAD_WORK_ON_ROUTE_19_FINISHED
	iftrue UnknownScript_0x19ea6f
	writetext UnknownText_0x19ed45
	waitbutton
	closetext
	end
; 0x19ea6f

UnknownScript_0x19ea6f: ; 0x19ea6f
	writetext UnknownText_0x19ed7d
	waitbutton
	closetext
	end
; 0x19ea75

MapRoute19Signpost0Script: ; 0x19ea75
	jumptext UnknownText_0x19edbc
; 0x19ea78

MapRoute19Signpost1Script: ; 0x19ea78
	jumptext UnknownText_0x19ede5
; 0x19ea7b

SwimmermHaroldSeenText: ; 0x19ea7b
	text "Tu as été au"
	line "volcan?"

	para "Il y fait chaud"
	line "mais j'ai trouvé"
	cont "des #MON trop"
	cont "cool!"
	done
; 0x19eaad

SwimmermHaroldBeatenText: ; 0x19eaad
	text "Gloup<...>"
	done
; 0x19eab4

UnknownText_0x19eab4: ; 0x19eab4
	text "Il fait beaucoup"
	line "trop chaud au"
	cont "volcan."

	para "J'ai pas osé"
	line "l'explorer."
	done
; 0x19eafa

SwimmermTuckerSeenText: ; 0x19eafa
	text "Pfff, pfff<...>"
	line "PARMANIE<...> n'est<...>"

	para "plus<...> très<...>"
	line "loin<...>!"
	done
; 0x19eb2d

SwimmermTuckerBeatenText: ; 0x19eb2d
	text "Je me noie!"
	done
; 0x19eb3b

UnknownText_0x19eb3b: ; 0x19eb3b
	text "J'ai<...> demandé à ma"
	line "copine de nager"
	cont "jusqu'à PARMANIE."
	cont "Pfff<...>"
	done
; 0x19eb6f

SwimmerfDawnSeenText: ; 0x19eb6f
	text "Ca m'énerve les"
	line "mauviettes<...>"
	done
; 0x19eb8e

SwimmerfDawnBeatenText: ; 0x19eb8e
	text "Je peux te battre"
	line "à la nage<...>"
	done
; 0x19ebad

UnknownText_0x19ebad: ; 0x19ebad
	text "PARMANIE et les"
	line "ILES ECUME sont à"

	para "deux coups de"
	line "brasse, hein<...>?"

	para "Ca lui apprendra"
	line "à se la péter à"

	para "mon copain, quelle"
	line "mauviette!"
	done
; 0x19ec19

SwimmermJeromeSeenText: ; 0x19ec19
	text "Nager?"
	line "Je déteste ça."

	para "Je patauge"
	line "J'éclabousse."
	cont "Ca défoule."
	done
; 0x19ec66

SwimmermJeromeBeatenText: ; 0x19ec66
	text "Je croyais pouvoir"
	line "gagner."
	done
; 0x19ec7e

UnknownText_0x19ec7e: ; 0x19ec7e
	text "J'ai attrapé ces"
	line "#MON dans"
	cont "l'eau."

	para "Il peut y avoir"
	line "d'autres espèces"
	para "selon ou tu SURF."
	done
; 0x19ecaf

UnknownText_0x19ecaf: ; 0x19ecaf
	text "Cette route est"
	line "fermée pour cause"
	cont "de travaux."

	para "Si tu veux aller à"
	line "CRAMOIS'ILE, il"

	para "faut passer au sud"
	line "de BOURG PALETTE."
	done
; 0x19ed24

UnknownText_0x19ed24: ; 0x19ed24
	text "Je transpire."
	line "Allez! A l'eau!"
	done
; 0x19ed45

UnknownText_0x19ed45: ; 0x19ed45
	text "Combien de temps"
	line "cela prendrait-il"
	cont "de bouger ce"
	cont "rocher?"
	done
; 0x19ed7d

UnknownText_0x19ed7d: ; 0x19ed7d
	text "Les travaux sont"
	line "enfin finis."

	para "Je peux enfin re-"
	line "tourner à la"
	cont "pêche, youpi!"
	done
; 0x19edbc

UnknownText_0x19edbc: ; 0x19edbc
	text "ROUTE 19"

	para "PARAMANIE -"
	line "ILES ECUME"
	done
; 0x19ede5

UnknownText_0x19ede5: ; 0x19ede5
	text "Soyez prudent si"
	line "vous vous dirigez"
	cont "vers les ILES"
	cont "ECUME."

	para "POLICE de PARMANIE"
	done
; 0x19ee31

Route19_MapEventHeader: ; 0x19ee31
	; filler
	db 0, 0

	; warps
	db 1
	warp_def $3, $7, 3, GROUP_ROUTE_19___FUCHSIA_GATE, MAP_ROUTE_19___FUCHSIA_GATE

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 13, 11, $0, MapRoute19Signpost0Script
	signpost 1, 11, $0, MapRoute19Signpost1Script

	; people-events
	db 6
	person_event SPRITE_SWIMMER_GIRL, 27, 13, $8, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 0, TrainerSwimmerfDawn, -1
	person_event SPRITE_SWIMMER_GUY, 32, 17, $a, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerSwimmermHarold, -1
	person_event SPRITE_SWIMMER_GUY, 21, 15, $a, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerSwimmermJerome, -1
	person_event SPRITE_SWIMMER_GUY, 27, 12, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 0, TrainerSwimmermTucker, -1
	person_event SPRITE_FISHER, 9, 13, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 1, FisherScript_0x19ea4d, -1
	person_event SPRITE_FISHER, 9, 15, $5, 0, 1, -1, -1, 8 + PAL_OW_BLUE, 0, 1, FisherScript_0x19ea61, -1
; 0x19ee94

