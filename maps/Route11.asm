Route11_MapScriptHeader: ; 0x68000
	; trigger count
	db 0

	; callback count
	db 0
; 0x68002

TrainerYoungsterOwen: ; 0x68002
	; bit/flag number
	dw $5b3

	; trainer group && trainer id
	db YOUNGSTER, OWEN

	; text when seen
	dw YoungsterOwenSeenText

	; text when trainer beaten
	dw YoungsterOwenBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw YoungsterOwenScript
; 0x6800e

YoungsterOwenScript: ; 0x6800e
	talkaftercancel
	loadfont
	writetext UnknownText_0x680b2
	waitbutton
	closetext
	end
; 0x68016

TrainerYoungsterJason: ; 0x68016
	; bit/flag number
	dw $5b4

	; trainer group && trainer id
	db YOUNGSTER, JASON

	; text when seen
	dw YoungsterJasonSeenText

	; text when trainer beaten
	dw YoungsterJasonBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw YoungsterJasonScript
; 0x68022

YoungsterJasonScript: ; 0x68022
	talkaftercancel
	loadfont
	writetext UnknownText_0x6814a
	waitbutton
	closetext
	end
; 0x6802a

TrainerPsychicHerman: ; 0x6802a
	; bit/flag number
	dw $43c

	; trainer group && trainer id
	db PSYCHIC_T, HERMAN

	; text when seen
	dw PsychicHermanSeenText

	; text when trainer beaten
	dw PsychicHermanBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PsychicHermanScript
; 0x68036

PsychicHermanScript: ; 0x68036
	talkaftercancel
	loadfont
	writetext UnknownText_0x6817b
	waitbutton
	closetext
	end
; 0x6803e

TrainerPsychicFidel: ; 0x6803e
	; bit/flag number
	dw $43d

	; trainer group && trainer id
	db PSYCHIC_T, FIDEL

	; text when seen
	dw PsychicFidelSeenText

	; text when trainer beaten
	dw PsychicFidelBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PsychicFidelScript
; 0x6804a

PsychicFidelScript: ; 0x6804a
	talkaftercancel
	loadfont
	writetext UnknownText_0x681ec
	waitbutton
	closetext
	end
; 0x68052

MapRoute11Signpost0Script: ; 0x68052
	jumptext UnknownText_0x68238
; 0x68055

FruitTreeScript_0x68055: ; 0x68055
	fruittree $18
; 0x68057

MapRoute11SignpostItem1: ; 0x68057
	dw $00f5
	db REVIVE

; 0x6805a

YoungsterOwenSeenText: ; 0x6805a
	text "Y'a pas de triche"
	line "à #MON."

	para "Il faut rester"
	line "honnête!"
	done
; 0x68097

YoungsterOwenBeatenText: ; 0x68097
	text "J'ai combattu"
	line "loyalement et avec"
	cont "honneur."
	done
; 0x680b2

UnknownText_0x680b2: ; 0x680b2
	text "C'est ici que j'ai"
	line "attrapé mon"
	cont "HERBIZARRE."
	done
; 0x680f3

YoungsterJasonSeenText: ; 0x680f3
	text "Porter des shorts"
	line "dans l'herbe, ça"

	para "pique à fond<...>"
	line "Pas cool."
	done
; 0x68131

YoungsterJasonBeatenText: ; 0x68131
	text "Aïe!"
	done
; 0x6814a

UnknownText_0x6814a: ; 0x6814a
	text "Je vais choper"
	line "d'autres #MON"
	cont "dans les herbes."
	done
; 0x68175

PsychicHermanSeenText: ; 0x68175
	text "<...>"
	done
; 0x68178

PsychicHermanBeatenText: ; 0x68178
	text "<...>"
	done
; 0x6817b

UnknownText_0x6817b: ; 0x6817b
	text "<...>"

	para "J'ai perdu les"
	line "yeux fermés<...>"
	done
; 0x681a1

PsychicFidelSeenText: ; 0x681a1
	text "Je vois tout<...>"

	para "Passé, présent,"
	line "futur<...>"
	done
; 0x681cd

PsychicFidelBeatenText: ; 0x681cd
	text "Je ne l'avais pas"
	line "prévu<...>"
	done
; 0x681ec

UnknownText_0x681ec: ; 0x681ec
	text "Volonté,"
	line "conviction<...>"

	para "Tu as gagné car tu"
	line "crois en tes"
	cont "#MON."
	done
; 0x68238

UnknownText_0x68238: ; 0x68238
	text "ROUTE 11"
	done
; 0x68242

Route11_MapEventHeader: ; 0x68242
	; filler
	db 0, 0

	; warps
	db 2
	warp_def 8, 35, 1, GROUP_ROUTE_11_12_GATE, MAP_ROUTE_11_12_GATE
	warp_def 9, 35, 2, GROUP_ROUTE_11_12_GATE, MAP_ROUTE_11_12_GATE

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 7, 3, $0, MapRoute11Signpost0Script
	signpost 5, 32, $7, MapRoute11SignpostItem1

	; people-events
	db 5
	person_event SPRITE_YOUNGSTER, 18, 26, $a, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerYoungsterOwen, -1
	person_event SPRITE_YOUNGSTER, 8, 24, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerYoungsterJason, -1
	person_event SPRITE_YOUNGSTER, 11, 32, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 1, TrainerPsychicHerman, -1
	person_event SPRITE_YOUNGSTER, 10, 12, $a, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerPsychicFidel, -1
	person_event SPRITE_FRUIT_TREE, 6, 36, $1, 0, 0, -1, -1, 0, 0, 0, FruitTreeScript_0x68055, -1
; 0x68293

