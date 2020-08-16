CeladonMansionRoofHouse_MapScriptHeader: ; 0x71afb
	; trigger count
	db 0

	; callback count
	db 0
; 0x71afd

PharmacistScript_0x71afd: ; 0x71afd
	faceplayer
	loadfont
	checkevent EVENT_GOT_TM03_CURSE
	iftrue UnknownScript_0x71b21
	writetext UnknownText_0x71b27
	buttonsound
	checktime $4
	iftrue UnknownScript_0x71b14
	writetext UnknownText_0x71b4a
	waitbutton
	closetext
	end
; 0x71b14

UnknownScript_0x71b14: ; 0x71b14
	writetext UnknownText_0x71ba3
	buttonsound
	verbosegiveitem TM_SHADOW_BALL, 1
	iffalse UnknownScript_0x71b25
	setevent EVENT_GOT_TM03_CURSE
UnknownScript_0x71b21: ; 0x71b21
	writetext UnknownText_0x71db3
	waitbutton
UnknownScript_0x71b25: ; 0x71b25
	closetext
	end
; 0x71b27

UnknownText_0x71b27: ; 0x71b27
	text "Je vais te racon-"
	line "ter une histoire<...>"
	done
; 0x71b4a

UnknownText_0x71b4a: ; 0x71b4a
	text "Mais ce n'est pas"
	line "marrant si il y a"

	para "encore de la lu-"
	line "mière dehors."

	para "Reviens cette"
	line "nuit, d'accord?"
	done
; 0x71ba3

UnknownText_0x71ba3: ; 0x71ba3
	text "Il était une fois,"
	line "un petit garçon"

	para "qui reçut une nou-"
	line "velle BICYCLETTE."

	para "Il voulut l'essa-"
	line "yer tout de suite."

	para "Il s'amusait et"
	line "n'avait pas remar-"

	para "qué que le soleil"
	line "s'était couché<...>"

	para "Tout en pédalant"
	line "dans la nuit, la"

	para "BICYCLETTE commen-"
	line "çait soudainement"
	cont "à ralentir."

	para "Les pédales devin-"
	line "rent lourdes!"

	para "Et quand il s'ar-"
	line "rêta de pédaler,"

	para "la BICYCLETTE se"
	line "mit à rouler vers"
	cont "l'arrière!"

	para "Il lui semblait"
	line "que le vélo était"

	para "maudit et tentait"
	line "de l'entraîner"
	cont "vers les ténèbres!"

	para "<...>"

	para "<...>"

	para "CRIIIIIIC!"

	para "Il montait en fait"
	line "la pente de la"
	cont "PISTE CYCLABLE!"

	para "<...>"
	line "Ba-dum ba-dum!"

	para "Pour m'avoir écou-"
	line "té patiemment, je"
	cont "veux t'offrir ça,"
	cont "la CT30."
	done
; 0x71db3

UnknownText_0x71db3: ; 0x71db3
	text "CT30: BALL'OMBRE."

	para "Une capacité ter-"
	line "rifiante qui fait"
	cont "peur!"
	done
; 0x71e03

CeladonMansionRoofHouse_MapEventHeader: ; 0x71e03
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 3, GROUP_CELADON_MANSION_ROOF, MAP_CELADON_MANSION_ROOF
	warp_def $7, $3, 3, GROUP_CELADON_MANSION_ROOF, MAP_CELADON_MANSION_ROOF

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_PHARMACIST, 6, 7, $6, 2, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, PharmacistScript_0x71afd, -1
; 0x71e20

