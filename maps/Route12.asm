Route12_MapScriptHeader: ; 0x1a6fb3
	; trigger count
	db 0

	; callback count
	db 0
; 0x1a6fb5

TrainerFisherKyle: ; 0x1a6fb5
	; bit/flag number
	dw $451

	; trainer group && trainer id
	db FISHER, KYLE

	; text when seen
	dw FisherKyleSeenText

	; text when trainer beaten
	dw FisherKyleBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw FisherKyleScript
; 0x1a6fc1

FisherKyleScript: ; 0x1a6fc1
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a7238
	waitbutton
	closetext
	end
; 0x1a6fc9

TrainerFisherMartin: ; 0x1a6fc9
	; bit/flag number
	dw $45a

	; trainer group && trainer id
	db FISHER, MARTIN

	; text when seen
	dw FisherMartinSeenText

	; text when trainer beaten
	dw FisherMartinBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw FisherMartinScript
; 0x1a6fd5

FisherMartinScript: ; 0x1a6fd5
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a704c
	waitbutton
	closetext
	end
; 0x1a6fdd

TrainerFisherStephen: ; 0x1a6fdd
	; bit/flag number
	dw $45b

	; trainer group && trainer id
	db FISHER, STEPHEN

	; text when seen
	dw FisherStephenSeenText

	; text when trainer beaten
	dw FisherStephenBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw FisherStephenScript
; 0x1a6fe9

FisherStephenScript: ; 0x1a6fe9
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a70d4
	waitbutton
	closetext
	end
; 0x1a6ff1

TrainerFisherBarney: ; 0x1a6ff1
	; bit/flag number
	dw $45c

	; trainer group && trainer id
	db FISHER, BARNEY

	; text when seen
	dw FisherBarneySeenText

	; text when trainer beaten
	dw FisherBarneyBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw FisherBarneyScript
; 0x1a6ffd

FisherBarneyScript: ; 0x1a6ffd
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a716d
	waitbutton
	closetext
	end
; 0x1a7005

TrainerFisherWilly:
	trainer EVENT_BEAT_FISHER_WILLY, FISHER, WILLY, FisherWillySeenText, FisherWillyBeatenText, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext FisherWillyAfterText
	waitbutton
	closetext
	end

MapRoute12Signpost0Script: ; 0x1a7005
	jumptext UnknownText_0x1a72a0
; 0x1a7008

MapRoute12Signpost1Script: ; 0x1a7008
	jumptext UnknownText_0x1a72c1
; 0x1a700b

ItemFragment_0x1a700b: ; 0x1a700b
	db CALCIUM, 1
; 0x1a700d

ItemFragment_0x1a700d: ; 0x1a700d
	db NUGGET, 1
; 0x1a700f

MapRoute12SignpostItem2: ; 0x1a700f
	dw $00f3
	db ELIXER

; 0x1a7012

FisherMartinSeenText: ; 0x1a7012
	text "La patience est la"
	line "meilleure arme"
	cont "pour pêcher<...>"
	done
; 0x1a7043

FisherMartinBeatenText: ; 0x1a7043
	text "Gwaaah!"
	done
; 0x1a704c

UnknownText_0x1a704c: ; 0x1a704c
	text "Je suis trop"
	line "impatient!"
	done
; 0x1a706b

FisherStephenSeenText: ; 0x1a706b
	text "Depuis que la TOUR"
	line "#MON a fermé,"

	para "il y a des fan-"
	line "tômes à la nuit."
	done
; 0x1a70b4

FisherStephenBeatenText: ; 0x1a70b4
	text "Ils font peur aux"
	line "poissons!"
	done
; 0x1a70d4

UnknownText_0x1a70d4: ; 0x1a70d4
	text "La TOUR #MON"
	line "n'existe plus."

	para "Mais il paraît que"
	line "les fantômes sont"
	cont "toujours là."
	done
; 0x1a711d

FisherBarneySeenText: ; 0x1a711d
	text "Quelle est la"
	line "chose la plus im-"
	cont "portante dans nos"
	cont "vies quotidiennes?"
	done
; 0x1a714e

FisherBarneyBeatenText: ; 0x1a714e
	text "La réponse va vous"
	line "étonner!"
	done
; 0x1a716d

UnknownText_0x1a716d: ; 0x1a716d
	text "Je crois que"
	line "l'électricité est"

	para "la chose la plus"
	line "importante."

	para "Sinon les gens ne"
	line "feraient pas tant"

	para "d'histoires à pro-"
	line "pos de la panne de"
	cont "la CENTRALE."
	done
; 0x1a7214

FisherKyleSeenText: ; 0x1a7214
	text "Tu t'en souviens?"
	done
; 0x1a7226

FisherKyleBeatenText: ; 0x1a7226
	text "Tu te souviens?"
	done
; 0x1a7238

UnknownText_0x1a7238: ; 0x1a7238
	text "La petite secousse"
	line "que l'on sent"

	para "quand on ferre un"
	line "#MON<...>"

	para "C'est la plus"
	line "belle des sensa-"
	cont "tions!"
	done
; 0x1a72a0

FisherWillySeenText:
	text "Ah, j'ai une bonne"
	line "prise!"
	done

FisherWillyBeatenText:
	text "Pas si bonne<...>"
	done

FisherWillyAfterText:
	text "La variété, ça"
	line "pimente la vie!"
	done

UnknownText_0x1a72a0: ; 0x1a72a0
	text "ROUTE 12"
	line "NORD: LAVANVILLE"
	done
; 0x1a72c1

UnknownText_0x1a72c1: ; 0x1a72c1
	text "COIN PECHE"
	done
; 0x1a72cf

Route12_MapEventHeader: ; 0x1a72cf
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $21, $b, 1, GROUP_ROUTE_12_SUPER_ROD_HOUSE, MAP_ROUTE_12_SUPER_ROD_HOUSE
	warp_def 26, 2, 3, GROUP_ROUTE_11_12_GATE, MAP_ROUTE_11_12_GATE
	warp_def 27, 2, 4, GROUP_ROUTE_11_12_GATE, MAP_ROUTE_11_12_GATE

	; xy triggers
	db 0

	; signposts
	db 3
	signpost 27, 11, $0, MapRoute12Signpost0Script
	signpost 9, 13, $0, MapRoute12Signpost1Script
	signpost 13, 14, $7, MapRoute12SignpostItem2

	; people-events
	db 7
	person_event SPRITE_FISHER, 17, 9, $a, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 1, TrainerFisherMartin, -1
	person_event SPRITE_FISHER, 27, 18, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 1, TrainerFisherStephen, -1
	person_event SPRITE_FISHER, 42, 14, $8, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 5, TrainerFisherBarney, -1
	person_event SPRITE_FISHER, 11, 10, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 3, TrainerFisherKyle, -1
	person_event SPRITE_POKE_BALL, 47, 9, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x1a700b, EVENT_ITEM_ROUTE_12_CALCIUM
	person_event SPRITE_POKE_BALL, 55, 9, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x1a700d, EVENT_ITEM_ROUTE_12_NUGGET
	person_event SPRITE_FISHER, 53, 16, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 4, TrainerFisherWilly, -1
; 0x1a7337



