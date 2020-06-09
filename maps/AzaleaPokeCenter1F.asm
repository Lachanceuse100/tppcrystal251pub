AzaleaPokeCenter1F_MapScriptHeader: ; 0x18db21
	; trigger count
	db 1

	; triggers
	dw UnknownScript_0x18db27, $0000

	; callback count
	db 0
; 0x18db27

UnknownScript_0x18db27: ; 0x18db27
	end
; 0x18db28

NurseScript_0x18db28: ; 0x18db28
	jumpstd pokecenternurse
; 0x18db2b

GentlemanScript_0x18db2b: ; 0x18db2b
	jumptextfaceplayer UnknownText_0x18db34
; 0x18db2e

FishingGuruScript_0x18db2e: ; 0x18db2e
	jumptextfaceplayer UnknownText_0x18dbee
; 0x18db31

PokefanFScript_0x18db31: ; 0x18db31
	jumptextfaceplayer UnknownText_0x18dc19
; 0x18db34

UnknownText_0x18db34: ; 0x18db34
	text "Est-ce que tes"
	line "#MON ont appris"
	cont "des CS?"

	para "Tu peux les uti-"
	line "liser même si tes"
	cont "#MON sont K.O."
	done
; 0x18db88

UnknownText_0x18db88: ; 0x18db88
	text "C'est LEO qui à"
	line "crée le système"

	para "pour stocker des"
	line "#MON dans"
	cont "un PC."

	para "Le PC de LEO peut"
	line "garder jusqu'à 20"
	cont "#MON par boîte."
	done
; 0x18dbee

UnknownText_0x18dbee: ; 0x18dbee
	text "Le PC de LEO peut"
	line "garder jusqu'à 20"
	cont "#MON par boîte."
	done
; 0x18dc19

UnknownText_0x18dc19: ; 0x18dc19
	text "Connais-tu les"
	line "NOIGRUMES?"

	para "Ouvres-en un,"
	line "vide-le et"

	para "remplis-le avec un"
	line "appareil spécial."

	para "Tu pourras alors"
	line "t'en servir pour"
	cont "attraper des"
	cont "#MON."

	para "Avant que les #"
	line "BALLS ne soient"

	para "inventées, tout le"
	line "monde utilisait"
	cont "les NOIGRUMES."
	done
; 0x18dccf

AzaleaPokeCenter1F_MapEventHeader: ; 0x18dccf
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $7, $3, 1, GROUP_AZALEA_TOWN, MAP_AZALEA_TOWN
	warp_def $7, $4, 1, GROUP_AZALEA_TOWN, MAP_AZALEA_TOWN
	warp_def $7, $0, 1, GROUP_POKECENTER_2F, MAP_POKECENTER_2F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 4
	person_event SPRITE_NURSE, 5, 7, $6, 0, 0, -1, -1, 0, 0, 0, NurseScript_0x18db28, -1
	person_event SPRITE_GENTLEMAN, 10, 13, $4, 1, 0, -1, -1, 0, 0, 0, GentlemanScript_0x18db2b, -1
	person_event SPRITE_FISHING_GURU, 5, 10, $6, 0, 0, -1, -1, 0, 0, 0, FishingGuruScript_0x18db2e, -1
	person_event SPRITE_POKEFAN_F, 8, 5, $2, 2, 1, -1, -1, 0, 0, 0, PokefanFScript_0x18db31, -1
; 0x18dd18

