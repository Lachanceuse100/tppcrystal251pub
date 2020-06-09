OlivineMart_MapScriptHeader: ; 0x9cac5
	; trigger count
	db 0

	; callback count
	db 0
; 0x9cac7

ClerkScript_0x9cac7: ; 0x9cac7
	loadfont
	pokemart $0, $000d
	closetext
	end
; 0x9cace

CooltrainerFScript_0x9cace: ; 0x9cace
	jumptextfaceplayer UnknownText_0x9cad4
; 0x9cad1

LassScript_0x9cad1: ; 0x9cad1
	jumptextfaceplayer UnknownText_0x9cb16
; 0x9cad4

UnknownText_0x9cad4: ; 0x9cad4
	text "Tes #MON"
	line "connaissent-ils la"

	para "capacité pour por-"
	line "ter les gens sur"
	cont "l'eau?"
	done
; 0x9cb16

UnknownText_0x9cb16: ; 0x9cb16
	text "Mon PAPILUSION est"
	line "revenu de chez mon"
	cont "copain."

	para "Il avait une"
	line "lettre avec lui."

	para "Alors voyons voir<...>"

	para "Ah! Non! C'est un"
	line "secret!"
	done
; 0x9cb9e

OlivineMart_MapEventHeader: ; 0x9cb9e
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 8, GROUP_OLIVINE_CITY, MAP_OLIVINE_CITY
	warp_def $7, $3, 8, GROUP_OLIVINE_CITY, MAP_OLIVINE_CITY

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_CLERK, 7, 5, $9, 0, 0, -1, -1, 0, 0, 0, ClerkScript_0x9cac7, -1
	person_event SPRITE_COOLTRAINER_F, 6, 10, $5, 0, 2, -1, -1, 8 + PAL_OW_GREEN, 0, 0, CooltrainerFScript_0x9cace, -1
	person_event SPRITE_LASS, 10, 5, $8, 0, 0, -1, -1, 0, 0, 0, LassScript_0x9cad1, -1
; 0x9cbd5

