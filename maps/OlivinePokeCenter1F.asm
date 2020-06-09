OlivinePokeCenter1F_MapScriptHeader: ; 0x9c000
	; trigger count
	db 0

	; callback count
	db 0
; 0x9c002

NurseScript_0x9c002: ; 0x9c002
	jumpstd pokecenternurse
; 0x9c005

FishingGuruScript_0x9c005: ; 0x9c005
	jumpstd happinesschecknpc
; 0x9c008

FisherScript_0x9c008: ; 0x9c008
	jumptextfaceplayer UnknownText_0x9c00e
; 0x9c00b

TeacherScript_0x9c00b: ; 0x9c00b
	jumptextfaceplayer UnknownText_0x9c086
; 0x9c00e

UnknownText_0x9c00e: ; 0x9c00e
	text "Le gars a la"
	line "SALLE DE DANSE"

	para "de ROSALIA est"
	line "très généreux."

	para "Il a appris FORCE"
	line "à mon #MON."

	para "Maintenant il peut"
	line "bouger les"
	cont "rochers!"
	done
; 0x9c086

UnknownText_0x9c086: ; 0x9c086
	text "Il y a quelqu'un"
	line "à IRISIA de l'"
	cont "autre côté de la"
	cont "mer."

	para "Je l'ai entendu se"
	line "vanter de ses"
	cont "#MON rares."
	done
; 0x9c0e4

OlivinePokeCenter1F_MapEventHeader: ; 0x9c0e4
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $7, $3, 1, GROUP_OLIVINE_CITY, MAP_OLIVINE_CITY
	warp_def $7, $4, 1, GROUP_OLIVINE_CITY, MAP_OLIVINE_CITY
	warp_def $7, $0, 1, GROUP_POKECENTER_2F, MAP_POKECENTER_2F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 4
	person_event SPRITE_NURSE, 5, 7, $6, 0, 0, -1, -1, 0, 0, 0, NurseScript_0x9c002, -1
	person_event SPRITE_FISHING_GURU, 8, 12, $5, 0, 1, -1, -1, 0, 0, 0, FishingGuruScript_0x9c005, -1
	person_event SPRITE_FISHER, 7, 6, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, FisherScript_0x9c008, -1
	person_event SPRITE_TEACHER, 5, 11, $6, 0, 0, -1, -1, 0, 0, 0, TeacherScript_0x9c00b, -1
; 0x9c12d

