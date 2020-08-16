Route4_MapScriptHeader: ; 0x1ae1ce
	; trigger count
	db 0

	; callback count
	db 0
; 0x1ae1d0

TrainerBird_keeperHank: ; 0x1ae1d0
	; bit/flag number
	dw $402

	; trainer group && trainer id
	db BIRD_KEEPER, HANK

	; text when seen
	dw Bird_keeperHankSeenText

	; text when trainer beaten
	dw Bird_keeperHankBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bird_keeperHankScript
; 0x1ae1dc

Bird_keeperHankScript: ; 0x1ae1dc
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ae258
	waitbutton
	closetext
	end
; 0x1ae1e4

TrainerPicnickerHope: ; 0x1ae1e4
	; bit/flag number
	dw $483

	; trainer group && trainer id
	db PICNICKER, HOPE

	; text when seen
	dw PicnickerHopeSeenText

	; text when trainer beaten
	dw PicnickerHopeBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PicnickerHopeScript
; 0x1ae1f0

PicnickerHopeScript: ; 0x1ae1f0
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ae320
	waitbutton
	closetext
	end
; 0x1ae1f8

TrainerPicnickerSharon: ; 0x1ae1f8
	; bit/flag number
	dw $484

	; trainer group && trainer id
	db PICNICKER, SHARON

	; text when seen
	dw PicnickerSharonSeenText

	; text when trainer beaten
	dw PicnickerSharonBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PicnickerSharonScript
; 0x1ae204

PicnickerSharonScript: ; 0x1ae204
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ae369
	waitbutton
	closetext
	end
; 0x1ae20c

MapRoute4Signpost0Script: ; 0x1ae20c
	jumptext UnknownText_0x1ae384
; 0x1ae20f

ItemFragment_0x1ae20f: ; 0x1ae20f
	db HP_UP, 1
; 0x1ae211

MapRoute4SignpostItem1: ; 0x1ae211
	dw $00f1
	db ULTRA_BALL

; 0x1ae214

Bird_keeperHankSeenText: ; 0x1ae214
	text "J'entraîne mes"
	line "#MON. Un petit"
	cont "combat?"
	done
; 0x1ae241

Bird_keeperHankBeatenText: ; 0x1ae241
	text "Ack! Perdu<...>"
	done
; 0x1ae258

UnknownText_0x1ae258: ; 0x1ae258
	text "Si tu veux entraî-"
	line "ner un #MON en"

	para "particulier, mets-"
	line "le en premier et"

	para "change le tout de"
	line "suite."

	para "Mais bon, tu dois"
	line "déjà le savoir."
	done
; 0x1ae2ce

PicnickerHopeSeenText: ; 0x1ae2ce
	text "Je sens que je"
	line "peux gagner."

	para "Voyons si j'ai"
	line "raison!"
	done
; 0x1ae306

PicnickerHopeBeatenText: ; 0x1ae306
	text "Rahhh, bah non."
	done
; 0x1ae320

UnknownText_0x1ae320: ; 0x1ae320
	text "Des MELOFEE appa-"
	line "raissent au MONT"

	para "SELENITE, mais où"
	line "exactement?"
	done
; 0x1ae35e

PicnickerSharonSeenText: ; 0x1ae35e
	text "Euh<...>"
	line "Je<...>"
	done
; 0x1ae366

PicnickerSharonBeatenText: ; 0x1ae366
	text "<...>"
	done
; 0x1ae369

UnknownText_0x1ae369: ; 0x1ae369
	text "<...><...>Je retourne"
	line "m'entraîner<...>"
	done
; 0x1ae384

UnknownText_0x1ae384: ; 0x1ae384
	text "MONT SELENITE"

	para "La BOUTIQUE de"
	line "SOUVENIRS et de"
	cont "l'autre côté de la"
	cont "grotte."
	done
; 0x1ae3ab

Route4_MapEventHeader: ; 0x1ae3ab
	; filler
	db 0, 0

	; warps
	db 1
	warp_def $5, $2, 8, GROUP_MT_MOON_B2F, MAP_MT_MOON_B2F

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 7, 3, $0, MapRoute4Signpost0Script
	signpost 3, 10, $7, MapRoute4SignpostItem1

	; people-events
	db 5
	person_event SPRITE_YOUNGSTER, 13, 21, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerBird_keeperHank, -1
	person_event SPRITE_LASS, 12, 13, $8, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 4, TrainerPicnickerHope, -1
	person_event SPRITE_LASS, 10, 25, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 4, TrainerPicnickerSharon, -1
	person_event SPRITE_POKE_BALL, 7, 30, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x1ae20f, EVENT_ITEM_ROUTE_4_HP_UP
	person_event SPRITE_COOLTRAINER_M, 8, 46, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, ObjectEvent, EVENT_COOLTRAINER_BLOCKING_CERULEAN_CAVE
; 0x1ae3f4

