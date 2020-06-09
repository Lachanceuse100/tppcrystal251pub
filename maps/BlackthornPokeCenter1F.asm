BlackthornPokeCenter1F_MapScriptHeader: ; 0x195b77
	; trigger count
	db 0

	; callback count
	db 0
; 0x195b79

NurseScript_0x195b79: ; 0x195b79
	jumpstd pokecenternurse
; 0x195b7c

GentlemanScript_0x195b7c: ; 0x195b7c
	jumptextfaceplayer UnknownText_0x195b85
; 0x195b7f

TwinScript_0x195b7f: ; 0x195b7f
	jumptextfaceplayer UnknownText_0x195bfd
; 0x195b82

CooltrainerMScript_0x195b82: ; 0x195b82
	jumpstd happinesschecknpc
; 0x195b85

UnknownText_0x195b85: ; 0x195b85
	text "Au fin fond du"
	line "PLATEAU INDIGO se"

	para "trouve la LIGUE"
	line "#MON."

	para "On dit que seuls"
	line "les meilleurs"

	para "dresseurs du coin"
	line "s'y rassemblent."
	done
; 0x195bfd

UnknownText_0x195bfd: ; 0x195bfd
	text "Il y avait une"
	line "capacité que je"

	para "voulais donner à"
	line "mon #MON<...>"

	para "Alors j'ai demandé"
	line "a l'EFFACEUR DE"
	cont "CAPACITES de lui"
	cont "faire oublier une"
	cont "CS."
	done
; 0x195c69

BlackthornPokeCenter1F_MapEventHeader: ; 0x195c69
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $7, $3, 5, GROUP_BLACKTHORN_CITY, MAP_BLACKTHORN_CITY
	warp_def $7, $4, 5, GROUP_BLACKTHORN_CITY, MAP_BLACKTHORN_CITY
	warp_def $7, $0, 1, GROUP_POKECENTER_2F, MAP_POKECENTER_2F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 4
	person_event SPRITE_NURSE, 5, 7, $6, 0, 0, -1, -1, 0, 0, 0, NurseScript_0x195b79, -1
	person_event SPRITE_GENTLEMAN, 7, 9, $6, 0, 0, -1, -1, 0, 0, 0, GentlemanScript_0x195b7c, -1
	person_event SPRITE_TWIN, 8, 5, $3, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, TwinScript_0x195b7f, -1
	person_event SPRITE_COOLTRAINER_M, 10, 11, $5, 0, 1, -1, -1, 8 + PAL_OW_RED, 0, 0, CooltrainerMScript_0x195b82, -1
; 0x195cb2

