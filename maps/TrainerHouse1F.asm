TrainerHouse1F_MapScriptHeader: ; 0x9af65
	; trigger count
	db 0

	; callback count
	db 0
; 0x9af67

ReceptionistScript_0x9af67: ; 0x9af67
	jumptextfaceplayer UnknownText_0x9af7f
; 0x9af6a

CooltrainerMScript_0x9af6a: ; 0x9af6a
	jumptextfaceplayer UnknownText_0x9b025
; 0x9af6d

CooltrainerFScript_0x9af6d: ; 0x9af6d
	jumptextfaceplayer UnknownText_0x9b0b5
; 0x9af70

YoungsterScript_0x9af70: ; 0x9af70
	jumptextfaceplayer UnknownText_0x9b11d
; 0x9af73

GentlemanScript_0x9af73: ; 0x9af73
	jumptextfaceplayer UnknownText_0x9b1c9
; 0x9af76

MapTrainerHouse1FSignpost0Script: ; 0x9af76
	jumptext UnknownText_0x9b1f4
; 0x9af79

MapTrainerHouse1FSignpost1Script: ; 0x9af79
	jumptext UnknownText_0x9b25d
; 0x9af7c

MapTrainerHouse1FSignpost2Script: ; 0x9af7c
	jumptext UnknownText_0x9b2c1
; 0x9af7f

UnknownText_0x9af7f: ; 0x9af7f
	text "Bienvenue au CLUB"
	line "des DRESSEURS,"

	para "l'attraction de"
	line "JADIELLE."

	para "Nous accueillons"
	line "les dresseurs."

	para "Vous pouvez com-"
	line "battre les meil-"

	para "leurs à l'étage"
	line "inférieur."
	done
; 0x9b025

UnknownText_0x9b025: ; 0x9b025
	text "JADIELLE est la"
	line "ville voisine du"
	cont "PLATEAU INDIGO."

	para "Elle a été cons-"
	line "truite à cet en-"

	para "droit à cause du"
	line "passage important"

	para "des dresseurs vers"
	line "le PLATEAU INDIGO."
	done
; 0x9b0b5

UnknownText_0x9b0b5: ; 0x9b0b5
	text "Des combats d'en-"
	line "traînement se dé-"
	cont "roulent en bas."

	para "J'aimerais bien"
	line "voir comment se"

	para "débrouille le"
	line "MAITRE de JOHTO."
	done
; 0x9b11d

UnknownText_0x9b11d: ; 0x9b11d
	text "J'imagine qu'on ne"
	line "peut pas devenir"

	para "MAITRE sans avoir"
	line "tout vu et combat-"
	cont "tu tout le monde."

	para "Le MAITRE de"
	line "PALETTE a voyagé"

	para "dans tous les"
	line "coins de KANTO."
	done
; 0x9b1c9

UnknownText_0x9b1c9: ; 0x9b1c9
	text "Fouiii<...> j'ai trop"
	line "combattu. Je fais"
	cont "une pause."
	done
; 0x9b1f4

UnknownText_0x9b1f4: ; 0x9b1f4
	text "Des combats d'en-"
	line "traînement se dé-"
	
	para "roulent en bas,"
	line "dans le HALL d'EN-"
	cont "TRAINEMENT."

	para "Les dresseurs les"
	line "plus talentueux"
	cont "y sont invités."
	done
; 0x9b25d

UnknownText_0x9b25d: ; 0x9b25d
	text "Comme pour les"
	line "combats en exté-"

	para "rieur, il n'y a"
	line "pas de règles spé-"

	para "ciales ici. Tout"
	line "est permis!"
	done
; 0x9b2c1

UnknownText_0x9b2c1: ; 0x9b2c1
	text "<...>C'est quoi ça?"
	line "Une note sur la"
	cont "stratégie?"

	para "On dirait des tra-"
	line "cés faits par un"
	cont "ONIX<...>"

	para "C'est pas lisible"
	line "en tout cas."
	done
; 0x9b31f

TrainerHouse1F_MapEventHeader: ; 0x9b31f
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $d, $2, 3, GROUP_VIRIDIAN_CITY, MAP_VIRIDIAN_CITY
	warp_def $d, $3, 3, GROUP_VIRIDIAN_CITY, MAP_VIRIDIAN_CITY
	warp_def $2, $8, 1, GROUP_TRAINER_HOUSE_B1F, MAP_TRAINER_HOUSE_B1F

	; xy triggers
	db 0

	; signposts
	db 3
	signpost 0, 5, $0, MapTrainerHouse1FSignpost0Script
	signpost 0, 7, $0, MapTrainerHouse1FSignpost1Script
	signpost 10, 7, $0, MapTrainerHouse1FSignpost2Script

	; people-events
	db 5
	person_event SPRITE_RECEPTIONIST, 15, 4, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ReceptionistScript_0x9af67, -1
	person_event SPRITE_COOLTRAINER_M, 15, 11, $7, 0, 0, -1, -1, 0, 0, 0, CooltrainerMScript_0x9af6a, -1
	person_event SPRITE_COOLTRAINER_F, 6, 10, $6, 0, 2, -1, -1, 8 + PAL_OW_RED, 0, 0, CooltrainerFScript_0x9af6d, -1
	person_event SPRITE_YOUNGSTER, 12, 8, $5, 0, 2, -1, -1, 8 + PAL_OW_RED, 0, 0, YoungsterScript_0x9af70, -1
	person_event SPRITE_GENTLEMAN, 8, 6, $9, 0, 0, -1, -1, 0, 0, 0, GentlemanScript_0x9af73, -1
; 0x9b384

