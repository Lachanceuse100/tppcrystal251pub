Route13_MapScriptHeader: ; 0x1a2430
	; trigger count
	db 0

	; callback count
	db 0
; 0x1a2432

TrainerPokefanmAlex: ; 0x1a2432
	; bit/flag number
	dw $4d8

	; trainer group && trainer id
	db POKEFANM, ALEX

	; text when seen
	dw PokefanmAlexSeenText

	; text when trainer beaten
	dw PokefanmAlexBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PokefanmAlexScript
; 0x1a243e

PokefanmAlexScript: ; 0x1a243e
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a24e3
	waitbutton
	closetext
	end
; 0x1a2446

TrainerPokefanmJoshua: ; 0x1a2446
	; bit/flag number
	dw $4d0

	; trainer group && trainer id
	db POKEFANM, JOSHUA

	; text when seen
	dw PokefanmJoshuaSeenText

	; text when trainer beaten
	dw PokefanmJoshuaBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PokefanmJoshuaScript
; 0x1a2452

PokefanmJoshuaScript: ; 0x1a2452
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a254f
	waitbutton
	closetext
	end
; 0x1a245a

TrainerBird_keeperPerry: ; 0x1a245a
	; bit/flag number
	dw $409

	; trainer group && trainer id
	db BIRD_KEEPER, PERRY

	; text when seen
	dw Bird_keeperPerrySeenText

	; text when trainer beaten
	dw Bird_keeperPerryBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bird_keeperPerryScript
; 0x1a2466

Bird_keeperPerryScript: ; 0x1a2466
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a25db
	waitbutton
	closetext
	end
; 0x1a246e

TrainerBird_keeperBret: ; 0x1a246e
	; bit/flag number
	dw $40a

	; trainer group && trainer id
	db BIRD_KEEPER, BRET

	; text when seen
	dw Bird_keeperBretSeenText

	; text when trainer beaten
	dw Bird_keeperBretBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bird_keeperBretScript
; 0x1a247a

Bird_keeperBretScript: ; 0x1a247a
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a2662
	waitbutton
	closetext
	end
; 0x1a2482

TrainerHikerKenny: ; 0x1a2482
	; bit/flag number
	dw $533

	; trainer group && trainer id
	db HIKER, KENNY

	; text when seen
	dw HikerKennySeenText

	; text when trainer beaten
	dw HikerKennyBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw HikerKennyScript
; 0x1a248e

HikerKennyScript: ; 0x1a248e
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a26c2
	waitbutton
	closetext
	end
; 0x1a2496

MapRoute13Signpost0Script: ; 0x1a2496
	jumptext UnknownText_0x1a271c
; 0x1a2499

MapRoute13Signpost1Script: ; 0x1a2499
	jumptext UnknownText_0x1a275b
; 0x1a249c

MapRoute13Signpost2Script: ; 0x1a249c
	jumptext UnknownText_0x1a277d
; 0x1a249f

MapRoute13SignpostItem3: ; 0x1a249f
	dw $00f4
	db CALCIUM

; 0x1a24a2

PokefanmAlexSeenText: ; 0x1a24a2
	text "A genoux devant"
	line "mes #MON!"
	done
; 0x1a24c2

PokefanmAlexBeatenText: ; 0x1a24c2
	text "PERE: Que<...> Comment"
	line "oses-tu défier ma"
	cont "monarchie!"

	para "FILS: Papa, stop!"
	line "S'il te plaît<...>"
	done
; 0x1a24e3

UnknownText_0x1a24e3: ; 0x1a24e3
	text "Il n'y a que moi"
	line "qui veuille deve-"
	cont "nir un roi?"
	done
; 0x1a250f

PokefanmJoshuaSeenText: ; 0x1a250f
	text "Moi et mon fils"
	line "avons déménagé ici"
	cont "depuis une loin-"
	cont "taine région."
	done
; 0x1a2542

PokefanmJoshuaBeatenText: ; 0x1a2542
	start_asm
	ld a, [Options2]
	bit 3, a
	ld hl, .imperial
	ret nz
	ld hl, .metric
	ret

.imperial
	text "PERE: Six pieds"
	line "sous terre<...>"

	para "FILS: Bravo<...>"
	done
; 0x1a254f

.metric
	text "PERE: Six pieds"
	line "sous terre<...>"

	para "FILS: Bravo<...>"
	done

UnknownText_0x1a254f: ; 0x1a254f
	text "On viens acheter"
	line "de la laitue avant"
	cont "de rentrer."
	done
; 0x1a2591

Bird_keeperPerrySeenText: ; 0x1a2591
	text "L'agilité est LA"
	line "caractéristique"
	cont "des #MON"
	cont "oiseaux."
	done
; 0x1a25bd

Bird_keeperPerryBeatenText: ; 0x1a25bd
	text "CANARTICHO n'est"
	line "pas très rapide<...>"
	done
; 0x1a25db

UnknownText_0x1a25db: ; 0x1a25db
	text "Tes #MON sont"
	line "très bien entraî-"
	cont "nés."
	done
; 0x1a2604

Bird_keeperBretSeenText: ; 0x1a2604
	text "Regarde mes beaux"
	line "#MON. Regarde"
	cont "leurs couleurs!"
	done
; 0x1a2649

Bird_keeperBretBeatenText: ; 0x1a2649
	text "Non! Mes insectes!"
	done
; 0x1a2662

UnknownText_0x1a2662: ; 0x1a2662
	text "Ce ne sont pas des"
	line "oiseaux mais ils"

	para "sont plus marrant"
	line "à chouchouter!"
	done
; 0x1a2686

HikerKennySeenText: ; 0x1a2686
	text "Je vais passer à"
	line "la GROTTE pour"
	cont "choper un ONIX."
	done
; 0x1a26b9

HikerKennyBeatenText: ; 0x1a26b9
	text "J'ai perdu<...>"
	done
; 0x1a26c2

UnknownText_0x1a26c2: ; 0x1a26c2
	text "La terre change<...>"
	line "Petit à petit."

	para "Les montagnes, les"
	line "paysages<...> Tout"
	cont "évolue."
	done
; 0x1a271c

UnknownText_0x1a271c: ; 0x1a271c
	text "ASTUCE"

	para "Regardez à gauche"
	line "de cette pancarte."
	done
; 0x1a275b

UnknownText_0x1a275b: ; 0x1a275b
	text "ROUTE 13"

	para "Nord du PONT du"
	line "SILENCE."
	done
; 0x1a277d

UnknownText_0x1a277d: ; 0x1a277d
	text "NORD: LAVANVILLE"
	line "OUEST: PARMANIE"
	done
; 0x1a27aa

Route13_MapEventHeader: ; 0x1a27aa
	; filler
	db 0, 0

	; warps
	db 0

	; xy triggers
	db 0

	; signposts
	db 4
	signpost 13, 29, $0, MapRoute13Signpost0Script
	signpost 11, 41, $0, MapRoute13Signpost1Script
	signpost 13, 17, $0, MapRoute13Signpost2Script
	signpost 13, 30, $7, MapRoute13SignpostItem3

	; people-events
	db 5
	person_event SPRITE_YOUNGSTER, 10, 46, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 2, TrainerBird_keeperPerry, -1
	person_event SPRITE_YOUNGSTER, 10, 47, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 2, TrainerBird_keeperBret, -1
	person_event SPRITE_POKEFAN_M, 12, 36, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerPokefanmJoshua, -1
	person_event SPRITE_POKEFAN_M, 14, 18, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 4, TrainerHikerKenny, -1
	person_event SPRITE_POKEFAN_M, 10, 29, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 4, TrainerPokefanmAlex, -1
; 0x1a2805

