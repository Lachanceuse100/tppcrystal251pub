PewterMartRB_MapScriptHeader: ; 0x1a2dc9
	; trigger count
	db 0

	; callback count
	db 0
; 0x1a2dcb

PewterMartRBClerk: ; 0x1a2dcb
	loadfont
	pokemart $0, $0029
	closetext
	end
; 0x1a2dd2

PewterMartRBYoungsterScript: ; 0x1a2dd2
	jumptextfaceplayer _PewterMartText_74cd5
; 0x1a2dd5

PewterMartRBSuperNerdScript: ; 0x1a2dd5
	jumptextfaceplayer _PewterMartText_74cc6
; 0x1a2dd8

_PewterMartText_74cc6:
	text "Un monsieur"
	line "bizarre m'a fait"
	cont "acheter ce #MON"
	cont "poisson!"

	para "Il est trop nul"
	line "et m'a coûté ¥500!"
	done

_PewterMartText_74cd5:
	text "Si tu élèves bien"
	line "tes #MON, même"
	cont "les plus faibles,"
	cont "Il ne se passera"
	cont "que des bonnes"
	cont "choses!"
	done


PewterMartRB_MapEventHeader: ; 0x1a2eae
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 3, GROUP_PEWTER_CITY_RB, MAP_PEWTER_CITY_RB
	warp_def $7, $3, 3, GROUP_PEWTER_CITY_RB, MAP_PEWTER_CITY_RB

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_CLERK, 7, 5, $9, 0, 0, -1, -1, 0, 0, 0, PewterMartRBClerk, -1
	person_event SPRITE_YOUNGSTER, 6, 13, $5, 0, 2, -1, -1, 0, 0, 0, PewterMartRBYoungsterScript, -1
	person_event SPRITE_SUPER_NERD, 10, 10, $3, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, PewterMartRBSuperNerdScript, -1
; 0x1a2ee5

