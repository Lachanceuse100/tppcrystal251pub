BattleTowerOutside_MapScriptHeader: ; 0x9f852
	; trigger count
	db 0

	; callback count
	db 2

	; callbacks

	dbw 1, UnknownScript_0x9f85a

	dbw 2, UnknownScript_0x9f85b
; 0x9f85a

UnknownScript_0x9f85a: ; 0x9f85a
	return
; 0x9f85b

UnknownScript_0x9f85b: ; 0x9f85b
	clearevent EVENT_BATTLE_TOWER_SPRITE_SET_INIT
	return
; 0x9f85f

StandingYoungsterScript_0x9f85f: ; 0x9f85f
	jumptextfaceplayer UnknownText_0x9f930
; 0x9f862

BuenaScript_0x9f862: ; 0x9f862
	jumptextfaceplayer UnknownText_0x9f9db
; 0x9f865

SailorScript_0x9f865: ; 0x9f865
	jumptextfaceplayer UnknownText_0x9fa8c
; 0x9f868

MapBattleTowerOutsideSignpost0Script: ; 0x9f868
	jumptext UnknownText_0x9fafc
; 0x9f86b

;UnknownText_0x9f86b: ; 0x9f86b
;	text "Wow, the BATTLE"
;	line "TOWER is huge! My"

;	para "neck is tired from"
;	line "looking up at it."
;	done
; 0x9f8b3

;UnknownText_0x9f8b3: ; 0x9f8b3
;	text "Wow, the BATTLE"
;	line "TOWER is huge!"

;	para "Since there are a"
;	line "whole bunch of"

;	para "trainers inside,"
;	line "there must also be"

;	para "a wide variety of"
;	line "#MON."
;	done
; 0x9f930

UnknownText_0x9f930: ; 0x9f930
	text "La TOUR DE COMBAT"
	line "est immense!"

	para "Il doit y avoir"
	line "plein de #MON"
	cont "différents!"
	done
; 0x9f97b

UnknownText_0x9f97b: ; 0x9f97b
	text "Mais qu'est-ce"
	line "qu'ils font ici?"

	para "D'après le nom, je"
	line "suppose que ça"

	para "doit être pour les"
	line "combats #MON."
	done
; 0x9f9db

UnknownText_0x9f9db: ; 0x9f9db
	text "Tes adversaires"
	line "ont le même nombre"
	cont "de #MON que"
	cont "toi."

	para "Je me demande"
	line "combien je devrais"
	cont "en prendre<...>"

	done
; 0x9fa32

;UnknownText_0x9fa32: ; 0x9fa32
	;text "Ehehehe<...>"
	;line "I sneaked out of"
;	cont "work to come here."

;	para "I'm never giving"
;	line "up until I become"
;	cont "a LEADER!"
;	done
; 0x9fa8c

UnknownText_0x9fa8c: ; 0x9fa8c
	text "Héhéhé. Je me suis"
	line "éclipsé du boulot."

	para "Je ne peux pas"
	line "partir avant"
	cont "d'avoir gagner."

	para "Je dois tout rem-"
	line "porter. A tout"
	cont "prix!"
	done
; 0x9faee

UnknownText_0x9faee: ; 0x9faee
	text "TOUR DE COMBAT"
	done
; 0x9fafc

UnknownText_0x9fafc: ; 0x9fafc
	text "TOUR DE COMBAT"

	para "Le super défi de"
	line "tout dresseur!"
	done
; 0x9fb2f

;UnknownText_0x9fb2f: ; 0x9fb2f
;	text "The BATTLE TOWER's"
;	line "doors are closed<...>"
;	done
; 0x9fb54

;UnknownText_0x9fb54: ; 0x9fb54
;	text "It's open!"
;	done
; 0x9fb5f

BattleTowerOutside_MapEventHeader: ; 0x9fb5f
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $15, $8, 3, GROUP_ROUTE_40_BATTLE_TOWER_GATE, MAP_ROUTE_40_BATTLE_TOWER_GATE
	warp_def $15, $9, 4, GROUP_ROUTE_40_BATTLE_TOWER_GATE, MAP_ROUTE_40_BATTLE_TOWER_GATE
	warp_def $9, $8, 1, GROUP_BATTLE_TOWER_1F, MAP_BATTLE_TOWER_1F
	warp_def $9, $9, 2, GROUP_BATTLE_TOWER_1F, MAP_BATTLE_TOWER_1F

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 10, 10, $0, MapBattleTowerOutsideSignpost0Script

	; people-events
	db 4
	person_event SPRITE_STANDING_YOUNGSTER, 16, 10, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, StandingYoungsterScript_0x9f85f, -1
	person_event SPRITE_BUENA, 15, 17, $2, 1, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, BuenaScript_0x9f862, -1
	person_event SPRITE_SAILOR, 22, 16, $5, 0, 1, -1, -1, 0, 0, 0, SailorScript_0x9f865, EVENT_BATTLE_TOWER_SPRITE_SET_INIT
	person_event SPRITE_LASS, 28, 16, $3, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ObjectEvent, -1
; 0x9fbb2


