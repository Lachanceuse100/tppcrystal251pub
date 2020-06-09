OlivineLighthouse3F_MapScriptHeader: ; 0x5b23b
	; trigger count
	db 0

	; callback count
	db 0
; 0x5b23d

TrainerBird_keeperTheo: ; 0x5b23d
	; bit/flag number
	dw $3fe

	; trainer group && trainer id
	db BIRD_KEEPER, THEO

	; text when seen
	dw Bird_keeperTheoSeenText

	; text when trainer beaten
	dw Bird_keeperTheoBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bird_keeperTheoScript
; 0x5b249

Bird_keeperTheoScript: ; 0x5b249
	talkaftercancel
	loadfont
	writetext UnknownText_0x5b2df
	waitbutton
	closetext
	end
; 0x5b251

TrainerGentlemanPreston: ; 0x5b251
	; bit/flag number
	dw $49a

	; trainer group && trainer id
	db GENTLEMAN, PRESTON

	; text when seen
	dw GentlemanPrestonSeenText

	; text when trainer beaten
	dw GentlemanPrestonBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GentlemanPrestonScript
; 0x5b25d

GentlemanPrestonScript: ; 0x5b25d
	talkaftercancel
	loadfont
	writetext UnknownText_0x5b457
	waitbutton
	closetext
	end
; 0x5b265

TrainerSailorTerrell: ; 0x5b265
	; bit/flag number
	dw $577

	; trainer group && trainer id
	db SAILOR, TERRELL

	; text when seen
	dw SailorTerrellSeenText

	; text when trainer beaten
	dw SailorTerrellBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SailorTerrellScript
; 0x5b271

SailorTerrellScript: ; 0x5b271
	talkaftercancel
	loadfont
	writetext UnknownText_0x5b384
	waitbutton
	closetext
	end
; 0x5b279

ItemFragment_0x5b279: ; 0x5b279
	db ETHER, 1
; 0x5b27b

Bird_keeperTheoSeenText: ; 0x5b27b
	text "Je collectionne"
	line "les #MON"
	cont "oiseaux rares."
	done
; 0x5b2c4

Bird_keeperTheoBeatenText: ; 0x5b2c4
	text "Sales oiseaux<...>"
	done
; 0x5b2df

UnknownText_0x5b2df: ; 0x5b2df
	text "Comment tu fais"
	line "pour monter?"

	para "Je veux voir le"
	line "#MON malade,"

	para "mais j'arrive pas"
	line "à monter<...>"
	done
; 0x5b333

SailorTerrellSeenText: ; 0x5b333
	text "Enfin la terre!"

	para "Je promène mes"
	line "chiens."
	done
; 0x5b365

SailorTerrellBeatenText: ; 0x5b365
	text "Tu es aussi fort"
	line "que gentil<...>"
	done
; 0x5b384

UnknownText_0x5b384: ; 0x5b384
	text "Chaque fois que je"
	line "reviens ici, je"
	cont "visite l'ARENE."

	para "Le type de #MON"
	line "de la CHAMPIONNE"

	para "d'ARENE a changé"
	line "sans que je le"
	cont "remarque."
	done
; 0x5b3f4

GentlemanPrestonSeenText: ; 0x5b3f4
	text "Je parcours la"
	line "terre en quête"
	cont "d'entraînement."

	para "En garde!"
	done
; 0x5b437

GentlemanPrestonBeatenText: ; 0x5b437
	text "Bon. Je vais errer"
	line "autre part alors<...>"
	done
; 0x5b457

UnknownText_0x5b457: ; 0x5b457
	text "JASMINE utilisait"
	line "des #MON ROCHE"
	cont "comme ONIX avant."
	done
; 0x5b481

OlivineLighthouse3F_MapEventHeader: ; 0x5b481
	; filler
	db 0, 0

	; warps
	db 9
	warp_def $3, $d, 1, GROUP_OLIVINE_LIGHTHOUSE_4F, MAP_OLIVINE_LIGHTHOUSE_4F
	warp_def $3, $5, 2, GROUP_OLIVINE_LIGHTHOUSE_2F, MAP_OLIVINE_LIGHTHOUSE_2F
	warp_def $5, $9, 4, GROUP_OLIVINE_LIGHTHOUSE_4F, MAP_OLIVINE_LIGHTHOUSE_4F
	warp_def $b, $10, 5, GROUP_OLIVINE_LIGHTHOUSE_2F, MAP_OLIVINE_LIGHTHOUSE_2F
	warp_def $b, $11, 6, GROUP_OLIVINE_LIGHTHOUSE_2F, MAP_OLIVINE_LIGHTHOUSE_2F
	warp_def $9, $10, 5, GROUP_OLIVINE_LIGHTHOUSE_4F, MAP_OLIVINE_LIGHTHOUSE_4F
	warp_def $9, $11, 6, GROUP_OLIVINE_LIGHTHOUSE_4F, MAP_OLIVINE_LIGHTHOUSE_4F
	warp_def $3, $8, 7, GROUP_OLIVINE_LIGHTHOUSE_4F, MAP_OLIVINE_LIGHTHOUSE_4F
	warp_def $3, $9, 8, GROUP_OLIVINE_LIGHTHOUSE_4F, MAP_OLIVINE_LIGHTHOUSE_4F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 4
	person_event SPRITE_SAILOR, 6, 13, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 1, TrainerSailorTerrell, -1
	person_event SPRITE_GENTLEMAN, 9, 17, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 4, TrainerGentlemanPreston, -1
	person_event SPRITE_YOUNGSTER, 13, 7, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerBird_keeperTheo, -1
	person_event SPRITE_POKE_BALL, 6, 12, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x5b279, EVENT_ITEM_OLIVINE_LIGHTHOUSE_3F_ETHER
; 0x5b4e8

