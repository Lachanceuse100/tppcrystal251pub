Route17_MapScriptHeader: ; 0x1ad0a6
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 5, UnknownScript_0x1ad0ab
; 0x1ad0ab

UnknownScript_0x1ad0ab: ; 0x1ad0ab
	setflag ENGINE_ALWAYS_ON_BIKE
	setflag ENGINE_DOWNHILL
	return
; 0x1ad0b2

TrainerBikerCharles: ; 0x1ad0b2
	; bit/flag number
	dw $436

	; trainer group && trainer id
	db BIKER, CHARLES

	; text when seen
	dw BikerCharlesSeenText

	; text when trainer beaten
	dw BikerCharlesBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw BikerCharlesScript
; 0x1ad0be

BikerCharlesScript: ; 0x1ad0be
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ad293
	waitbutton
	closetext
	end
; 0x1ad0c6

TrainerBikerRiley: ; 0x1ad0c6
	; bit/flag number
	dw $437

	; trainer group && trainer id
	db BIKER, RILEY

	; text when seen
	dw BikerRileySeenText

	; text when trainer beaten
	dw BikerRileyBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw BikerRileyScript
; 0x1ad0d2

BikerRileyScript: ; 0x1ad0d2
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ad13b
	waitbutton
	closetext
	end
; 0x1ad0da

TrainerBikerJoel: ; 0x1ad0da
	; bit/flag number
	dw $438

	; trainer group && trainer id
	db BIKER, JOEL

	; text when seen
	dw BikerJoelSeenText

	; text when trainer beaten
	dw BikerJoelBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw BikerJoelScript
; 0x1ad0e6

BikerJoelScript: ; 0x1ad0e6
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ad196
	waitbutton
	closetext
	end
; 0x1ad0ee

TrainerBikerGlenn: ; 0x1ad0ee
	; bit/flag number
	dw $439

	; trainer group && trainer id
	db BIKER, GLENN

	; text when seen
	dw BikerGlennSeenText

	; text when trainer beaten
	dw BikerGlennBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw BikerGlennScript
; 0x1ad0fa

BikerGlennScript: ; 0x1ad0fa
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ad225
	waitbutton
	closetext
	end
; 0x1ad102

MapRoute17SignpostItem0: ; 0x1ad102
	dw $00f6
	db MAX_ETHER

; 0x1ad105

MapRoute17SignpostItem1: ; 0x1ad105
	dw $00f7
	db MAX_ELIXER

; 0x1ad108

BikerRileySeenText: ; 0x1ad108
	text "Tu es de JOHTO?"
	line "Va t-aon!"
	done
; 0x1ad12a

BikerRileyBeatenText: ; 0x1ad12a
	text "Aïe, ça pique!"
	done
; 0x1ad13b

UnknownText_0x1ad13b: ; 0x1ad13b
	text "Tu es de KANTO?"
	line "Pardon!"
	done
; 0x1ad15c

BikerJoelSeenText: ; 0x1ad15c
	text "Tu sais quel est"
	line "mon groupe"
	cont "sanguin?"

	para "ABeille plus!"

	para "<...>"

	para "J'y arrive vrai-"
	line "ment pas<...>"
	done
; 0x1ad178

BikerJoelBeatenText: ; 0x1ad178
	text "Je peux te piquer"
	line "une blague?"
	done
; 0x1ad196

UnknownText_0x1ad196: ; 0x1ad196
	text "Ces hautes herbes"
	line "sont infestés de"
	cont "DARDARGNAN!"

	para "L'eau est le seul"
	line "endroit tran-"
	cont "quille."
	done
; 0x1ad1e0

BikerGlennSeenText: ; 0x1ad1e0
	text "Pas besoin d'une"
	line "taille de guêpe"
	cont "pour être top"
	cont "modèle!"

	para "<...> Héhé."
	done
; 0x1ad203

BikerGlennBeatenText: ; 0x1ad203
	text "Tu me files le"
	line "bourdon<...>"
	done
; 0x1ad225

UnknownText_0x1ad225: ; 0x1ad225
	text "Les DARDARGNAN"
	line "m'ont piqué par-"
	cont "tout!"
	done
; 0x1ad25c

BikerCharlesSeenText: ; 0x1ad25c
	text "Subeille! J'ai"
	line "réussi!"

	para "<...>"

	para "Je sais, mes bla-"
	line "gues ne volent"
	cont "jamais très haut<...>"
	done
; 0x1ad27a

BikerCharlesBeatenText: ; 0x1ad27a
	text "Ne me pollen pas"
	line "ma journée!"
	done
; 0x1ad293

UnknownText_0x1ad293: ; 0x1ad293
	text "Cette période de"
	line "l'année est hor-"
	cont "rible."

	para "Alors on se diver-"
	line "tit avec nos"
	cont "blagues a 2 balls."
	done
; 0x1ad2c5

Route17_MapEventHeader: ; 0x1ad2c5
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $52, $11, 1, GROUP_ROUTE_17_18_GATE, MAP_ROUTE_17_18_GATE
	warp_def $53, $11, 2, GROUP_ROUTE_17_18_GATE, MAP_ROUTE_17_18_GATE

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 54, 9, $7, MapRoute17SignpostItem0
	signpost 77, 8, $7, MapRoute17SignpostItem1

	; people-events
	db 4
	person_event SPRITE_BIKER, 21, 8, $a, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 4, TrainerBikerRiley, -1
	person_event SPRITE_BIKER, 72, 13, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 1, TrainerBikerJoel, -1
	person_event SPRITE_BIKER, 57, 7, $a, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 3, TrainerBikerGlenn, -1
	person_event SPRITE_BIKER, 84, 10, $9, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 4, TrainerBikerCharles, -1
; 0x1ad313

