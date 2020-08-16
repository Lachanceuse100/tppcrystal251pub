RedsHouse1F_MapScriptHeader: ; 0x19ae9c
	; trigger count
	db 1

	; triggers
	dw UnknownScript_0x19aea2, $0000

	; callback count
	db 0
; 0x19aea2

UnknownScript_0x19aea2: ; 0x19aea2
	end
; 0x19aea3

RedsMomScript_0x19aea3: ; 0x19aea3
	faceplayer
	loadfont
	checkevent EVENT_MET_REDS_MOM
	iftrue UnknownScript_0x19aeb4
	writetext UnknownText_0x19aec0
	waitbutton
	closetext
	setevent EVENT_MET_REDS_MOM
	end
; 0x19aeb4

UnknownScript_0x19aeb4: ; 0x19aeb4
	writetext UnknownText_0x19af81
	waitbutton
	closetext
	end
; 0x19aeba

MapRedsHouse1FSignpost2Script: ; 0x19aeba
	jumptext UnknownText_0x19afe8
; 0x19aebd

MapRedsHouse1FSignpost1Script: ; 0x19aebd
	jumpstd picturebookshelf
; 0x19aec0

UnknownText_0x19aec0: ; 0x19aec0
	text "AIIIAAB est parti"
	line "il y a longtemps."

	para "Il ne m'a pas"
	line "appelé, je ne sais"
	cont "pas du tout où il"
	cont "est."

	para "Pas de nouvelles,"
	line "bonne nouvelle,"
	cont "comme on dit."

	para "Mais je m'inquiète"
	line "quand même<...>"
	done
; 0x19af81

UnknownText_0x19af81: ; 0x19af81
	text "Bonjour, qui"
	line "es-tu?"

	para "Oh, tu habitais"
	line "ici avec ta MAMAN"
	cont "avant?"

	para "<...>"

	para "Tu étais à bord"
	line "de l'OCEANE quand"
	cont "il a coulé?"

	para "Tu as l'air sauf,"
	line "dieu merci."

	para "J'espère que mon"
	line "fils AIIIAAB ne"
	cont "s'est pas attiré"
	cont "des ennuis lui non"
	cont "plus."

	para "Il est toujours"
	line "occupé à s'entraî-"
	cont "ner et il n'a ja-"
	cont "mais le temps de"
	cont "me parler."

	para "Tu peux rester un"
	line "peu, si tu veux."
	done
; 0x19afe8

UnknownText_0x19afe8: ; 0x19afe8
	text "Il y a des progra-"
	line "mmes non diffusés"
	cont "dans JOHTO<...>"
	done
; 0x19b017

RedsHouse1F_MapEventHeader: ; 0x19b017
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $7, $2, 1, GROUP_PALLET_TOWN, MAP_PALLET_TOWN
	warp_def $7, $3, 1, GROUP_PALLET_TOWN, MAP_PALLET_TOWN
	warp_def $0, $7, 1, GROUP_REDS_HOUSE_2F, MAP_REDS_HOUSE_2F

	; xy triggers
	db 0

	; signposts
	db 3
	signpost 1, 0, $0, MapRedsHouse1FSignpost1Script
	signpost 1, 1, $0, MapRedsHouse1FSignpost1Script
	signpost 1, 2, $0, MapRedsHouse1FSignpost2Script

	; people-events
	db 1
	person_event SPRITE_REDS_MOM, 7, 9, $8, 0, 0, -1, -1, 0, 0, 0, RedsMomScript_0x19aea3, -1
; 0x19b048

