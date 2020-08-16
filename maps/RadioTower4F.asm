RadioTower4F_MapScriptHeader: ; 0x5eb80
	; trigger count
	db 0

	; callback count
	db 0
; 0x5eb82

FisherScript_0x5eb82: ; 0x5eb82
	jumptextfaceplayer UnknownText_0x5ec12
; 0x5eb85

TeacherScript_0x5eb85: ; 0x5eb85
	faceplayer
	loadfont
	checkevent EVENT_GOT_PINK_BOW_FROM_MARY
	iftrue UnknownScript_0x5ebac
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue UnknownScript_0x5eb99
	writetext UnknownText_0x5ec68
	waitbutton
	closetext
	end
; 0x5eb99

UnknownScript_0x5eb99: ; 0x5eb99
	writetext UnknownText_0x5ecab
	buttonsound
	verbosegiveitem PINK_BOW, 1
	iffalse UnknownScript_0x5ebb0
	writetext UnknownText_0x5ecef
	waitbutton
	closetext
	setevent EVENT_GOT_PINK_BOW_FROM_MARY
	end
; 0x5ebac

UnknownScript_0x5ebac: ; 0x5ebac
	writetext UnknownText_0x5ed2c
	waitbutton
UnknownScript_0x5ebb0: ; 0x5ebb0
	closetext
	end
; 0x5ebb2

GrowlitheScript_0x5ebb2: ; 0x5ebb2
	loadfont
	writetext UnknownText_0x5ed66
	cry MEOWTH
	waitbutton
	closetext
	end
; 0x5ebbc

TrainerGruntM10: ; 0x5ebbc
	; bit/flag number
	dw $4fa

	; trainer group && trainer id
	db GRUNTM, 10

	; text when seen
	dw GruntM10SeenText

	; text when trainer beaten
	dw GruntM10BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntM10Script
; 0x5ebc8

GruntM10Script: ; 0x5ebc8
	talkaftercancel
	loadfont
	writetext UnknownText_0x5ede2
	waitbutton
	closetext
	end
; 0x5ebd0

TrainerExecutivem2: ; 0x5ebd0
	; bit/flag number
	dw $572

	; trainer group && trainer id
	db EXECUTIVEM, 2

	; text when seen
	dw Executivem2SeenText

	; text when trainer beaten
	dw Executivem2BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Executivem2Script
; 0x5ebdc

Executivem2Script: ; 0x5ebdc
	talkaftercancel
	loadfont
	writetext UnknownText_0x5ee69
	waitbutton
	closetext
	end
; 0x5ebe4

TrainerGruntF4: ; 0x5ebe4
	; bit/flag number
	dw $513

	; trainer group && trainer id
	db GRUNTF, 4

	; text when seen
	dw GruntF4SeenText

	; text when trainer beaten
	dw GruntF4BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntF4Script
; 0x5ebf0

GruntF4Script: ; 0x5ebf0
	talkaftercancel
	loadfont
	writetext UnknownText_0x5ef31
	waitbutton
	closetext
	end
; 0x5ebf8

TrainerScientistRich: ; 0x5ebf8
	; bit/flag number
	dw $4a3

	; trainer group && trainer id
	db SCIENTIST, RICH

	; text when seen
	dw ScientistRichSeenText

	; text when trainer beaten
	dw ScientistRichBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw ScientistRichScript
; 0x5ec04

ScientistRichScript: ; 0x5ec04
	talkaftercancel
	loadfont
	writetext UnknownText_0x5efcb
	waitbutton
	closetext
	end
; 0x5ec0c

MapRadioTower4FSignpost0Script: ; 0x5ec0c
	jumptext UnknownText_0x5effe
; 0x5ec0f

MapRadioTower4FSignpost1Script: ; 0x5ec0f
	jumptext UnknownText_0x5f00d
; 0x5ec12

UnknownText_0x5ec12: ; 0x5ec12
	text "J'écoutais la ra-"
	line "dio tout en visi-"
	cont "tant les RUINES."

	para "J'y ai entendu une"
	line "émission étrange."
	done
; 0x5ec68

UnknownText_0x5ec68: ; 0x5ec68
	text "LULA: Pourquoi?"
	line "Pourquoi tant de"
	cont "haine?"

	para "MIAOUSS, à l'aide!"
	done
; 0x5ecab

UnknownText_0x5ecab: ; 0x5ecab
	text "LULA: Oh! Tu es"
	line "formidable!"

	para "Puis-je te remer-"
	line "cier avec ceci?"
	done
; 0x5ecef

UnknownText_0x5ecef: ; 0x5ecef
	text "LULA: C'est pour"
	line "les #MON qui"

	para "connaissent des"
	line "techniques du type"
	cont "FEE."
	done
; 0x5ed2c

UnknownText_0x5ed2c: ; 0x5ed2c
	text "LULA: Ecoute mon"
	line "émission avec le"

	para "PROF.CHEN: la"
	line "CHRONIQUE #MON."
	done
; 0x5ed66

UnknownText_0x5ed66: ; 0x5ed66
	text "MIAOUSS: Miaou<...>"
	done
; 0x5ed77

GruntM10SeenText: ; 0x5ed77
	text "Tu comptes sauver"
	line "le DIRECTEUR?"

	para "Je crois que ça va"
	line "pas être possible."
	cont "Je vais t'écraser!"
	done
; 0x5edcf

GruntM10BeatenText: ; 0x5edcf
	text "Incroyable!"
	done
; 0x5ede2

UnknownText_0x5ede2: ; 0x5ede2
	text "Je<...> J'y crois"
	line "pas!"
	done
; 0x5ee04

Executivem2SeenText: ; 0x5ee04
	text "Stop! On m'appelle"
	line "la forteresse de"
	cont "la TEAM ROCKET!"

	para "Tu n'iras pas plus"
	line "loin mon poussin!"
	done
; 0x5ee50

Executivem2BeatenText: ; 0x5ee50
	text "Non!"
	line "Ma forteresse!"
	done
; 0x5ee69

UnknownText_0x5ee69: ; 0x5ee69
	text "J'ai du trop m'"
	line "appuyer sur la"
	cont "puissance de"
	cont "l'ADN. BERZERK<...>"
	done
; 0x5eec4

GruntF4SeenText: ; 0x5eec4
	text "As-tu rencontré"
	line "notre"
	cont "scientifique?"

	para "RICH a crée"
	line "l'ADN. BERZERK!"

	para "Mais moi, je l'ai"
	line "maitrisé!"
	done
; 0x5ef15

GruntF4BeatenText: ; 0x5ef15
	text "Ca n'a pas suffit?"
	done
; 0x5ef31

UnknownText_0x5ef31: ; 0x5ef31
	text "Stupide RICH<...>"

	para "Son ADN. BERZERK"
	line "a des effets"
	cont "secondaires"
	cont "horribles<...>"
	done
; 0x5ef62

ScientistRichSeenText: ; 0x5ef62
	text "Parfait."

	para "Cette TOUR RADIO"
	line "sera parfaite pour"
	cont "nos plans."
	done
; 0x5efa3

ScientistRichBeatenText: ; 0x5efa3
	text "Hmmm<...>"

	para "Tout plan comprend"
	line "certains accrocs."
	done
; 0x5efcb

UnknownText_0x5efcb: ; 0x5efcb
	text "J'ai aidé à la"
	line "création de l'ADN."
	cont "BERZERK."

	para "Je le regrette"
	line "encore<...>"

	para "Nous avons commis"
	line "des atrocités<...>"
	done
; 0x5effe

UnknownText_0x5effe: ; 0x5effe
	text "3EME PRODUCTION"
	done
; 0x5f00d

UnknownText_0x5f00d: ; 0x5f00d
	text "3EME STUDIO 2"
	done
; 0x5f01a

RadioTower4F_MapEventHeader: ; 0x5f01a
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $0, $0, 1, GROUP_RADIO_TOWER_5F, MAP_RADIO_TOWER_5F
	warp_def $0, $9, 2, GROUP_RADIO_TOWER_3F, MAP_RADIO_TOWER_3F
	warp_def $0, $c, 2, GROUP_RADIO_TOWER_5F, MAP_RADIO_TOWER_5F
	warp_def $0, $11, 3, GROUP_RADIO_TOWER_3F, MAP_RADIO_TOWER_3F

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 0, 7, $0, MapRadioTower4FSignpost0Script
	signpost 0, 15, $0, MapRadioTower4FSignpost1Script

	; people-events
	db 7
	person_event SPRITE_FISHER, 8, 10, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, FisherScript_0x5eb82, EVENT_CIVILIANS_EVACUATED_RADIO_TOWER_UPPER_FLOORS
	person_event SPRITE_TEACHER, 10, 18, $3, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, TeacherScript_0x5eb85, -1
	person_event SPRITE_GROWLITHE, 11, 16, $16, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, GrowlitheScript_0x5ebb2, -1
	person_event SPRITE_ROCKET, 10, 9, $1f, 0, 0, -1, -1, 0, 2, 3, TrainerGruntM10, EVENT_ROCKET_TAKEOVER_OF_GOLDENROD
	person_event SPRITE_ROCKET, 5, 18, $8, 0, 2, -1, -1, 0, 2, 2, TrainerExecutivem2, EVENT_ROCKET_TAKEOVER_OF_GOLDENROD
	person_event SPRITE_ROCKET_GIRL, 8, 16, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, TrainerGruntF4, EVENT_ROCKET_TAKEOVER_OF_GOLDENROD
	person_event SPRITE_SCIENTIST, 6, 8, $8, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 4, TrainerScientistRich, EVENT_ROCKET_TAKEOVER_OF_GOLDENROD
; 0x5f099



