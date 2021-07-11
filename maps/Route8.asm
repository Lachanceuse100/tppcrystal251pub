Route8_MapScriptHeader: ; 0x6c000
	; trigger count
	db 0

	; callback count
	db 0
; 0x6c002

TrainerBikerDwayne: ; 0x6c002
	; bit/flag number
	dw $433

	; trainer group && trainer id
	db BIKER, DWAYNE

	; text when seen
	dw BikerDwayneSeenText

	; text when trainer beaten
	dw BikerDwayneBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw BikerDwayneScript
; 0x6c00e

BikerDwayneScript: ; 0x6c00e
	talkaftercancel
	loadfont
	writetext UnknownText_0x6c0c8
	waitbutton
	closetext
	end
; 0x6c016

TrainerBikerHarris: ; 0x6c016
	; bit/flag number
	dw $434

	; trainer group && trainer id
	db BIKER, HARRIS

	; text when seen
	dw BikerHarrisSeenText

	; text when trainer beaten
	dw BikerHarrisBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw BikerHarrisScript
; 0x6c022

BikerHarrisScript: ; 0x6c022
	talkaftercancel
	loadfont
	writetext UnknownText_0x6c143
	waitbutton
	closetext
	end
; 0x6c02a

TrainerBikerZeke: ; 0x6c02a
	; bit/flag number
	dw $435

	; trainer group && trainer id
	db BIKER, ZEKE

	; text when seen
	dw BikerZekeSeenText

	; text when trainer beaten
	dw BikerZekeBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw BikerZekeScript
; 0x6c036

BikerZekeScript: ; 0x6c036
	talkaftercancel
	loadfont
	writetext UnknownText_0x6c1a3
	waitbutton
	closetext
	end
; 0x6c03e

TrainerSupernerdSam: ; 0x6c03e
	; bit/flag number
	dw $586

	; trainer group && trainer id
	db SUPER_NERD, SAM

	; text when seen
	dw SupernerdSamSeenText

	; text when trainer beaten
	dw SupernerdSamBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SupernerdSamScript
; 0x6c04a

SupernerdSamScript: ; 0x6c04a
	talkaftercancel
	loadfont
	writetext UnknownText_0x6c219
	waitbutton
	closetext
	end
; 0x6c052

TrainerSupernerdTom: ; 0x6c052
	; bit/flag number
	dw $587

	; trainer group && trainer id
	db SUPER_NERD, TOM

	; text when seen
	dw SupernerdTomSeenText

	; text when trainer beaten
	dw SupernerdTomBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SupernerdTomScript
; 0x6c05e

SupernerdTomScript: ; 0x6c05e
	talkaftercancel
	loadfont
	writetext UnknownText_0x6c27e
	waitbutton
	closetext
	end
; 0x6c066

MapRoute8Signpost1Script: ; 0x6c066
	jumptext UnknownText_0x6c2aa
; 0x6c069

MapRoute8Signpost0Script: ; 0x6c069
	jumptext UnknownText_0x6c2b7
; 0x6c06c

FruitTreeScript_0x6c06c: ; 0x6c06c
	fruittree $1b
; 0x6c06e

BikerDwayneSeenText: ; 0x6c06e
	text "Nous sommes la"
	line "CHORALE de KANTO!"

	para "C'est pas un mor-"
	line "veux de JOHTO qui"
	cont "nous fera tomber!"
	done
; 0x6c0be

BikerDwayneBeatenText: ; 0x6c0be
	text "Ah, mais tu es de"
	line "KANTO en fait?"
	done
; 0x6c0c8

UnknownText_0x6c0c8: ; 0x6c0c8
	text "Beaucoup de nos"
	line "camarades sont"
	cont "tombés au cours"
	cont "des années<...>"
	done
; 0x6c0f4

BikerHarrisSeenText: ; 0x6c0f4
	text "Les flics ont fer-"
	line "més notre"
	cont "SOUTERRAIN!"

	para "Nous voulons sa"
	line "réouverture!"
	done
; 0x6c134

BikerHarrisBeatenText: ; 0x6c134
	text "Ai-je été aban-"
	line "donné?"
	done
; 0x6c143

UnknownText_0x6c143: ; 0x6c143
	text "Nous avons perdu"
	line "notre SOUTERRAIN."

	para "Il ne me reste que"
	line "notre groupe de"
	cont "CHORALE<...>"
	done
; 0x6c167

BikerZekeSeenText: ; 0x6c167
	text "Nous sommes la"
	line "CHORALE de KANTO!"

	para "On chante fort!"
	done
; 0x6c194

BikerZekeBeatenText: ; 0x6c194
	text "Oh non!"
	done
; 0x6c1a3

UnknownText_0x6c1a3: ; 0x6c1a3
	text "Nous voulons notre"
	line "liberté!"

	para "Ce n'est pas une"
	line "émeute!"
	done
; 0x6c1d0

SupernerdSamSeenText: ; 0x6c1d0
	text "Je reviens de"
	line "CELADOPOLE!"
	done
; 0x6c1f3

SupernerdSamBeatenText: ; 0x6c1f3
	text "Pas assez gluant!"
	done
; 0x6c219

UnknownText_0x6c219: ; 0x6c219
	text "Il y a un étang"
	line "plein de TADMORV!"

	para "Je suis tombé<...>"
	done
; 0x6c23d

SupernerdTomSeenText: ; 0x6c23d
	text "Il y a des fan-"
	line "tômes partout"
	para "depuis que la TOUR"
	line "#MON a fermé."
	done
; 0x6c25d

SupernerdTomBeatenText: ; 0x6c25d
	text "Ca fait peur,"
	line "hein?"
	done
; 0x6c27e

UnknownText_0x6c27e: ; 0x6c27e
	text "Les rumeurs disent"
	line "qu'il y a des fan-"
	cont "tômes à la TOUR"
	cont "RADIO<...>"
	done
; 0x6c2aa

UnknownText_0x6c2aa: ; 0x6c2aa
	text "C'est fermé<...>"
	done
; 0x6c2b7

UnknownText_0x6c2b7: ; 0x6c2b7
	text "L'affiche est"
	line "arrachée."

	para "Impossible de la"
	line "lire<...>"
	done

Snorlax8:
	loadfont
	special SpecialSnorlaxAwake
	iftrue WakeSnorlax8
	checkitem POKE_FLUTE
	iftrue .FluteWakeSnorlax
	writetext Snorlax8Text
	waitbutton
	closetext
	end
.FluteWakeSnorlax
	writetext Snorlax8WakeyWakeyPrompt
	yesorno
	iffalse .nope
	farscall _PokefluteSnorlaxScript
	end
.nope
	closetext
	end

WakeSnorlax8:
	writetext Snorlax8WakeText
	pause 15
	cry SNORLAX
	closetext
	writecode VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadpokedata SNORLAX, 85
	startbattle
	writebyte SNORLAX
	special SpecialMonCheck
	iffalse .DontKillSnorlax
	disappear $8
.DontKillSnorlax
	returnafterbattle
	end

Snorlax8WakeyWakeyPrompt:
	text "RONFLEX dort"
	line "paisiblement<...>"

	para "Jouer de la #"
	line "FLUTE?"
	done

Snorlax8Text:
	text "RONFLEX dort"
	line "paisiblement<...>"
	done

Snorlax8WakeText:
	text "Vous mettez votre"
	line "# MATOS près du"
	cont "RONFLEX endormi<...>"

	para "<...>"

	para "RONFLEX se"
	line "réveille!"
	done

; 0x6c2e1

Route8_MapEventHeader: ; 0x6c2e1
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $4, $4, 3, GROUP_ROUTE_8_SAFFRON_GATE, MAP_ROUTE_8_SAFFRON_GATE
	warp_def $5, $4, 4, GROUP_ROUTE_8_SAFFRON_GATE, MAP_ROUTE_8_SAFFRON_GATE

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 7, 11, $0, MapRoute8Signpost0Script
	signpost 5, 10, $0, MapRoute8Signpost1Script

	; people-events
	db 7
	person_event SPRITE_BIKER, 12, 14, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 5, TrainerBikerDwayne, -1
	person_event SPRITE_BIKER, 13, 14, $8, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 5, TrainerBikerHarris, -1
	person_event SPRITE_BIKER, 14, 14, $8, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 5, TrainerBikerZeke, -1
	person_event SPRITE_SUPER_NERD, 6, 27, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 3, TrainerSupernerdSam, -1
	person_event SPRITE_SUPER_NERD, 16, 35, $a, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 4, TrainerSupernerdTom, -1
	person_event SPRITE_FRUIT_TREE, 9, 37, $1, 0, 0, -1, -1, 0, 0, 0, FruitTreeScript_0x6c06c, -1
	person_event SPRITE_BIG_SNORLAX, 12, 40, $15, 0, 0, -1, -1, 0, 0, 0, Snorlax8, EVENT_ROUTE_8_SNORLAX
; 0x6c349

