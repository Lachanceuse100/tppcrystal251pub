ViridianForest_MapScriptHeader: ; 0x1ac2ba
	; trigger count
	db 0

	; callback count
	db 0
; 0x1ac2bc

TrainerBug_catcherRob: ; 0x1ac2bc
	; bit/flag number
	dw $539

	; trainer group && trainer id
	db BUG_CATCHER, ROB

	; text when seen
	dw Bug_catcherRobSeenText

	; text when trainer beaten
	dw Bug_catcherRobBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bug_catcherRobScript
; 0x1ac2c8

Bug_catcherRobScript: ; 0x1ac2c8
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ac34d
	waitbutton
	closetext
	end
; 0x1ac2d0

TrainerBug_catcherEd: ; 0x1ac2d0
	; bit/flag number
	dw $53a

	; trainer group && trainer id
	db BUG_CATCHER, ED

	; text when seen
	dw Bug_catcherEdSeenText

	; text when trainer beaten
	dw Bug_catcherEdBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bug_catcherEdScript
; 0x1awLinkMode

Bug_catcherEdScript: ; 0x1awLinkMode
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ac3cf
	waitbutton
	closetext
	end
; 0x1ac2e4

TrainerBug_catcherDoug: ; 0x1ac2e4
	; bit/flag number
	dw $543

	; trainer group && trainer id
	db BUG_CATCHER, DOUG

	; text when seen
	dw Bug_catcherDougSeenText

	; text when trainer beaten
	dw Bug_catcherDougBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bug_catcherDougScript
; 0x1ac2f0

Bug_catcherDougScript: ; 0x1ac2f0
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ac423
	waitbutton
	closetext
	end
; 0x1ac2f8

ItemFragment_0x1ac2fe: ; 0x1ac2fe
	db DIRE_HIT, 1
; 0x1ac300

ItemFragment_0x1ac300: ; 0x1ac300
	db MAX_POTION, 1
; 0x1ac302

FruitTreeScript_0x1ac306: ; 0x1ac306
	fruittree $19
; 0x1ac308

MapRoute2SignpostItem2: ; 0x1ac308
	dw $00ed
	db MAX_ETHER

; 0x1ac30b

MapRoute2SignpostItem3: ; 0x1ac30b
	dw $00ee
	db FULL_HEAL

; 0x1ac30e

MapRoute2SignpostItem4: ; 0x1ac30e
	dw $00ef
	db FULL_RESTORE

; 0x1ac311

MapRoute2SignpostItem5: ; 0x1ac311
	dw $00f0
	db REVIVE

; 0x1ac314

Bug_catcherRobSeenText: ; 0x1ac314
	text "Mes #MON "
	line "insectes sont ba-"
	cont "lèzes! Prépare toi"
	cont "à perdre!"
	done
; 0x1ac33d

Bug_catcherRobBeatenText: ; 0x1ac33d
	text "Je me suis fait"
	line "fouetter<...>"
	done
; 0x1ac34d

UnknownText_0x1ac34d: ; 0x1ac34d
	text "Je vais chercher"
	line "des meilleurs"
	cont "#MON insectes."
	done
; 0x1ac376

Bug_catcherEdSeenText: ; 0x1ac376
	text "Tu ne te coupes"
	line "pas quand tu"

	para "marche dans l'"
	line "herbe en short?"
	done
; 0x1ac3bc

Bug_catcherEdBeatenText: ; 0x1ac3bc
	text "Aïe, aïe, aïe!"
	done
; 0x1ac3cf

UnknownText_0x1ac3cf: ; 0x1ac3cf
	text "Ca pique quand tu"
	line "prends un bain."
	done
; 0x1ac3fa

Bug_catcherDougSeenText: ; 0x1ac3fa
	text "Pourquoi les"
	line "filles n'aiment"
	cont "pas les #MON"
	cont "insectes?"
	done
; 0x1ac419

Bug_catcherDougBeatenText: ; 0x1ac419
	text "Oh non!"
	done
; 0x1ac423

UnknownText_0x1ac423: ; 0x1ac423
	text "Les #MON"
	line "insectes c'est"

	para "comme des grosses"
	line "peluches quand tu"

	para "appuies sur leur"
	line "estomac!"
	done
; 0x1ac47a

ViridianForestSignpostText1:
	text "ASTUCE"

	para "Affaiblissez les"
	line "#MON avant"
	cont "de tenter une"
	cont "capture!"

	para "Les #MON en"
	line "pleine forme peu-"
	cont "vent se libérer!"
	done

ViridianForestSignpostText2:
	text "Contre le poison,"
	line "achetez des"
	cont "ANTIDOTE à la"
	cont "boutique #MON."
	done

ViridianForestSignpostText3:
	text "ASTUCE"

	para "Pour éviter les"
	line "combats, éloignez"
	cont "vous des hautes"
	cont "herbes!"
	done

ViridianForestSignpostText4:
	text "ASTUCE"

	para "Contacter le PROF."
	line "CHEN avec le PC"
	cont "pour faire évaluer"
	cont "votre #DEX!"
	done

ViridianForestSignpostText5:
	text "ASTUCE"

	para "Ne volez pas les"
	line "#MON des autres"
	cont "dresseurs!"

	para "Capturez seulement"
	line "les #MON"
	cont "sauvages!"
	done

ViridianForestSignpostText6:
	text "SORTIE DE LA FORET"
	line "DE JADE. ARGENTA"
	cont "DROIT DEVANT"
	done

MapViridianForestSignpost0Script:
	jumptext ViridianForestSignpostText1

MapViridianForestSignpost1Script:
	jumptext ViridianForestSignpostText2

MapViridianForestSignpost2Script:
	jumptext ViridianForestSignpostText3

MapViridianForestSignpost3Script:
	jumptext ViridianForestSignpostText4

MapViridianForestSignpost4Script:
	jumptext ViridianForestSignpostText5

MapViridianForestSignpost5Script:
	jumptext ViridianForestSignpostText6

ViridianForest_MapEventHeader: ; 0x1ac4af
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $2f, $10, 3, GROUP_VIRIDIAN_FOREST_GATE_SOUTH, MAP_VIRIDIAN_FOREST_GATE_SOUTH
	warp_def $2F, $11, 3, GROUP_VIRIDIAN_FOREST_GATE_SOUTH, MAP_VIRIDIAN_FOREST_GATE_SOUTH
	warp_def $1, $1, 1, GROUP_VIRIDIAN_FOREST_GATE_NORTH, MAP_VIRIDIAN_FOREST_GATE_NORTH

	; xy triggers
	db 0

	; signposts
	db 10
	signpost $2D, $12, $0, MapViridianForestSignpost0Script
	signpost $20, $10, $0, MapViridianForestSignpost1Script
	signpost $28, $18, $0, MapViridianForestSignpost2Script
	signpost $11, $1A, $0, MapViridianForestSignpost3Script
	signpost $18, $4, $0, MapViridianForestSignpost4Script
	signpost $3, $2, $0, MapViridianForestSignpost5Script

	signpost $29, $10, $7, MapRoute2SignpostItem2
	signpost $E, $1B, $7, MapRoute2SignpostItem3
	signpost $13, $D, $7, MapRoute2SignpostItem4
	signpost $1F, $0, $7, MapRoute2SignpostItem5

	; people-events
	db 6
	person_event SPRITE_BUG_CATCHER, $1A, $7, $8, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 5, TrainerBug_catcherRob, -1
	person_event SPRITE_BUG_CATCHER, $D, $16, $1f, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 3, TrainerBug_catcherEd, -1
	person_event SPRITE_BUG_CATCHER, $2b, $1D, $9, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 3, TrainerBug_catcherDoug, -1

	person_event SPRITE_POKE_BALL, 46, 6, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x1ac2fe, EVENT_ITEM_ROUTE_2_DIRE_HIT
	person_event SPRITE_POKE_BALL, 33, 16, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x1ac300, EVENT_ITEM_ROUTE_2_MAX_POTION
	person_event SPRITE_FRUIT_TREE, 6, 35, $1, 0, 0, -1, -1, 0, 0, 0, FruitTreeScript_0x1ac306, -1
; 0x1ac554

