GoldenrodDeptStore2F_MapScriptHeader: ; 0x55b5b
	; trigger count
	db 0

	; callback count
	db 0
; 0x55b5d

ClerkScript_0x55b5d: ; 0x55b5d
	faceplayer
	loadfont
	pokemart $0, $0005
	closetext
	end
; 0x55b65

ClerkScript_0x55b65: ; 0x55b65
	faceplayer
	loadfont
	pokemart $0, $0006
	closetext
	end
; 0x55b6d

YoungsterScript_0x55b6d: ; 0x55b6d
	jumptextfaceplayer UnknownText_0x55c25
; 0x55b70

CooltrainerFScript_0x55b70: ; 0x55b70
	jumptextfaceplayer UnknownText_0x55c7b
; 0x55b73

GentlemanScript_0x55b73: ; 0x55b73
	jumptextfaceplayer UnknownText_0x55cb7
; 0x55b76

MapGoldenrodDeptStore2FSignpost0Script: ; 0x55b76
	jumptext UnknownText_0x55d28
; 0x55b79

MapGoldenrodDeptStore2FSignpost1Script: ; 0x55b79
	jumpstd elevatorbutton
; 0x55b7c

; possibly unused
UnknownText_0x55b7c: ; 0x55b7c
	text "Nous avons l'in-"
	line "tention de vendre"
	cont "des objets à tenir"
	cont "par les #MON."

	para "Voici un échanti-"
	line "llon. Votre #-"
	cont "MON peut le tenir."
	done
; 0x55bd3

; possibly unused
UnknownText_0x55bd3: ; 0x55bd3
	text "En donnant à tes"
	line "#MON des objets,"

	para "les dresseurs peu-"
	line "vent développer de"
	cont "nouvelles"
	cont "stratégies."
	done
; 0x55c25

UnknownText_0x55c25: ; 0x55c25
	text "Le #MATOS peut"
	line "enregistrer jusqu'"
	cont "à dix numéros."

	para "C'est difficile de"
	line "décider quel"
	cont "numéro garder."
	done
; 0x55c7b

UnknownText_0x55c7b: ; 0x55c7b
	text "J'ai eu mon"
	line "PORYGON au CASINO."

	para "Maintenant, c'est"
	line "mon meilleur ami."
	done
; 0x55cb7

UnknownText_0x55cb7: ; 0x55cb7
	text "Ce CENTRE COMMER-"
	line "CIAL montre que"

	para "DOUBLONVILLE est"
	line "une grande ville."

	para "La marchandise est"
	line "la meilleure de la"
	cont "région."
	done
; 0x55d28

UnknownText_0x55d28: ; 0x55d28
	text "Votre compagnon"
	line "de voyage."

	para "1ER: BOUTIQUE"
	line "     DRESSEUR"
	done
; 0x55d56

GoldenrodDeptStore2F_MapEventHeader: ; 0x55d56
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $0, $c, 1, GROUP_GOLDENROD_DEPT_STORE_3F, MAP_GOLDENROD_DEPT_STORE_3F
	warp_def $0, $f, 3, GROUP_GOLDENROD_DEPT_STORE_1F, MAP_GOLDENROD_DEPT_STORE_1F
	warp_def $0, $2, 1, GROUP_GOLDENROD_DEPT_STORE_ELEVATOR, MAP_GOLDENROD_DEPT_STORE_ELEVATOR

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 0, 14, $0, MapGoldenrodDeptStore2FSignpost0Script
	signpost 0, 3, $0, MapGoldenrodDeptStore2FSignpost1Script

	; people-events
	db 5
	person_event SPRITE_CLERK, 9, 17, $7, 0, 0, -1, -1, 0, 0, 0, ClerkScript_0x55b5d, -1
	person_event SPRITE_CLERK, 10, 17, $8, 0, 0, -1, -1, 0, 0, 0, ClerkScript_0x55b65, -1
	person_event SPRITE_YOUNGSTER, 10, 13, $4, 1, 0, -1, -1, 0, 0, 0, YoungsterScript_0x55b6d, -1
	person_event SPRITE_COOLTRAINER_F, 6, 10, $5, 0, 2, -1, -1, 8 + PAL_OW_RED, 0, 0, CooltrainerFScript_0x55b70, -1
	person_event SPRITE_GENTLEMAN, 10, 6, $3, 0, 0, -1, -1, 0, 0, 0, GentlemanScript_0x55b73, -1
; 0x55db6

