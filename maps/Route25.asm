Route25_MapScriptHeader: ; 0x19ee94
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x19ee9e, $0000
	dw UnknownScript_0x19ee9f, $0000

	; callback count
	db 0
; 0x19ee9e

UnknownScript_0x19ee9e: ; 0x19ee9e
	end
; 0x19ee9f

UnknownScript_0x19ee9f: ; 0x19ee9f
	end
; 0x19eea0

UnknownScript_0x19eea0: ; 0x19eea0
	showemote $4, $2, 15
	pause 30
	showemote $0, $3, 10
	spriteface $2, $0
	applymovement $3, MovementData_0x19efe8
	disappear $3
	pause 15
	playmusic MUSIC_BEAUTY_ENCOUNTER
	spriteface $2, $1
	pause 10
	applymovement $2, MovementData_0x19efed
	loadfont
	writetext UnknownText_0x19f006
	waitbutton
	closetext
	spriteface $0, $0
	applymovement $2, MovementData_0x19effa
	spriteface $0, $2
	applymovement $2, MovementData_0x19f000
	disappear $2
	clearevent EVENT_CERULEAN_GYM_POPULATION
	dotrigger $0
	special RestartMapMusic
	end
; 0x19eee0

UnknownScript_0x19eee0: ; 0x19eee0
	showemote $4, $2, 15
	pause 30
	showemote $0, $3, 10
	spriteface $2, $0
	applymovement $3, MovementData_0x19efea
	disappear $3
	pause 15
	playmusic MUSIC_BEAUTY_ENCOUNTER
	spriteface $2, $1
	pause 10
	applymovement $2, MovementData_0x19eff4
	loadfont
	writetext UnknownText_0x19f006
	waitbutton
	closetext
	spriteface $0, $1
	applymovement $2, MovementData_0x19effd
	spriteface $0, $2
	applymovement $2, MovementData_0x19f000
	disappear $2
	clearevent EVENT_CERULEAN_GYM_POPULATION
	dotrigger $0
	special RestartMapMusic
	end
; 0x19ef20

TrainerSchoolboyDudley: ; 0x19ef20
	; bit/flag number
	dw $472

	; trainer group && trainer id
	db SCHOOLBOY, DUDLEY

	; text when seen
	dw SchoolboyDudleySeenText

	; text when trainer beaten
	dw SchoolboyDudleyBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SchoolboyDudleyScript
; 0x19ef2c

SchoolboyDudleyScript: ; 0x19ef2c
	talkaftercancel
	loadfont
	writetext UnknownText_0x19f1b5
	waitbutton
	closetext
	end
; 0x19ef34

TrainerLassEllen: ; 0x19ef34
	; bit/flag number
	dw $51f

	; trainer group && trainer id
	db LASS, ELLEN

	; text when seen
	dw LassEllenSeenText

	; text when trainer beaten
	dw LassEllenBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw LassEllenScript
; 0x19ef40

LassEllenScript: ; 0x19ef40
	talkaftercancel
	loadfont
	writetext UnknownText_0x19f208
	waitbutton
	closetext
	end
; 0x19ef48

TrainerSchoolboyJoe: ; 0x19ef48
	; bit/flag number
	dw $473

	; trainer group && trainer id
	db SCHOOLBOY, JOE

	; text when seen
	dw SchoolboyJoeSeenText

	; text when trainer beaten
	dw SchoolboyJoeBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SchoolboyJoeScript
; 0x19ef54

SchoolboyJoeScript: ; 0x19ef54
	talkaftercancel
	loadfont
	writetext UnknownText_0x19f25c
	waitbutton
	closetext
	end
; 0x19ef5c

TrainerLassLaura: ; 0x19ef5c
	; bit/flag number
	dw $51b

	; trainer group && trainer id
	db LASS, LAURA

	; text when seen
	dw LassLauraSeenText

	; text when trainer beaten
	dw LassLauraBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw LassLauraScript
; 0x19ef68

LassLauraScript: ; 0x19ef68
	talkaftercancel
	loadfont
	writetext UnknownText_0x19f2a6
	waitbutton
	closetext
	end
; 0x19ef70

TrainerCamperLloyd: ; 0x19ef70
	; bit/flag number
	dw $41f

	; trainer group && trainer id
	db CAMPER, LLOYD

	; text when seen
	dw CamperLloydSeenText

	; text when trainer beaten
	dw CamperLloydBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CamperLloydScript
; 0x19ef7c

CamperLloydScript: ; 0x19ef7c
	talkaftercancel
	loadfont
	writetext UnknownText_0x19f2f8
	waitbutton
	closetext
	end
; 0x19ef84

TrainerLassShannon: ; 0x19ef84
	; bit/flag number
	dw $51c

	; trainer group && trainer id
	db LASS, SHANNON

	; text when seen
	dw LassShannonSeenText

	; text when trainer beaten
	dw LassShannonBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw LassShannonScript
; 0x19ef90

LassShannonScript: ; 0x19ef90
	talkaftercancel
	loadfont
	writetext UnknownText_0x19f35b
	waitbutton
	closetext
	end
; 0x19ef98

TrainerSupernerdPat: ; 0x19ef98
	; bit/flag number
	dw $588

	; trainer group && trainer id
	db SUPER_NERD, PAT

	; text when seen
	dw SupernerdPatSeenText

	; text when trainer beaten
	dw SupernerdPatBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SupernerdPatScript
; 0x19efa4

SupernerdPatScript: ; 0x19efa4
	talkaftercancel
	loadfont
	writetext UnknownText_0x19f41a
	waitbutton
	closetext
	end
; 0x19efac

CooltrainerMScript_0x19efac: ; 0x19efac
	faceplayer
	loadfont
	checkevent EVENT_BEAT_COOLTRAINER_KEVIN
	iftrue UnknownScript_0x19efda
	checkevent EVENT_CLEARED_NUGGET_BRIDGE
	iftrue UnknownScript_0x19efc7
	writetext UnknownText_0x19f43b
	buttonsound
	verbosegiveitem NUGGET, 1
	iffalse UnknownScript_0x19efde
	setevent EVENT_CLEARED_NUGGET_BRIDGE
UnknownScript_0x19efc7: ; 0x19efc7
	writetext UnknownText_0x19f49d
	waitbutton
	closetext
	winlosstext UnknownText_0x19f4fd, $0000
	loadtrainer COOLTRAINERM, KEVIN
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_COOLTRAINER_KEVIN
	loadfont
UnknownScript_0x19efda: ; 0x19efda
	writetext UnknownText_0x19f520
	waitbutton
UnknownScript_0x19efde: ; 0x19efde
	closetext
	end
; 0x19efe0

MapRoute25Signpost0Script: ; 0x19efe0
	jumptext UnknownText_0x19f567
; 0x19efe3

ItemFragment_0x19efe3: ; 0x19efe3
	db PROTEIN, 1
; 0x19efe5

MapRoute25SignpostItem1: ; 0x19efe5
	dw $00f8
	db HYPER_POTION

; 0x19efe8

MovementData_0x19efe8: ; 0x19efe8
	big_step_down
	step_end
; 0x19efea

MovementData_0x19efea: ; 0x19efea
	big_step_down
	big_step_down
	step_end
; 0x19efed

MovementData_0x19efed: ; 0x19efed
	step_up
	step_up
	step_up
	step_left
	step_left
	step_left
	step_end
; 0x19eff4

MovementData_0x19eff4: ; 0x19eff4
	step_up
	step_up
	step_left
	step_left
	step_left
	step_end
; 0x19effa

MovementData_0x19effa: ; 0x19effa
	step_down
	step_left
	step_end
; 0x19effd

MovementData_0x19effd: ; 0x19effd
	step_up
	step_left
	step_end
; 0x19f000

MovementData_0x19f000: ; 0x19f000
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end
; 0x19f006

UnknownText_0x19f006: ; 0x19f006
	text "ONDINE: Aaaah!"
	line "Pourquoi t'es là,"

	para "toi? Tu nous as"
	line "dérangés"

	para "Tu sais comment on"
	line "appelle les gens"
	cont "comme toi?"

	para "Des pestes!"

	para "Tu m'as bien en-"
	line "tendu, des pestes!"

	para "<...>"

	para "<...>Oh? Tes BADGES!"
	line "Ils viennent des"
	cont "ARENES de JOHTO?"

	para "Si tu en as 8,"
	line "c'est que t'es pas"
	cont "mal<...>"

	para "OK. Viens à"
	line "l'ARENE d'AZURIA."

	para "Je te lance un"
	line "défi."

	para "Je suis ONDINE,"
	line "la CHAMPIONNE"
	
	para "d'AZURIA et je"
	line "vais te faire"

	para "payer pour mon"
	line "rencard!"
	done
; 0x19f14d

SchoolboyDudleySeenText: ; 0x19f14d
	text "Bats les six"
	line "dresseurs pour"
	cont "gagner un prix!"

	para "Tu crois en être"
	line "capable?"
	done
; 0x19f1a2

SchoolboyDudleyBeatenText: ; 0x19f1a2
	text "Whoa! Pas mal."
	done
; 0x19f1b5

UnknownText_0x19f1b5: ; 0x19f1b5
	text "J'ai fait de mon"
	line "mieux. Je n'ai pas"
	cont "de regrets."
	done
; 0x19f1d8

LassEllenSeenText: ; 0x19f1d8
	text "J'suis deuxième!"
	line "C'est du sérieux!"
	done
; 0x19f1f5

LassEllenBeatenText: ; 0x19f1f5
	text "Impossible!"
	done
; 0x19f208

UnknownText_0x19f208: ; 0x19f208
	text "J'ai fait de mon"
	line "mieux. Je n'ai pas"
	cont "de regrets."
	done
; 0x19f22b

SchoolboyJoeSeenText: ; 0x19f22b
	text "Numéro 3!"
	line "Tu vas en baver!"
	done
; 0x19f249

SchoolboyJoeBeatenText: ; 0x19f249
	text "Ouille! Perdu!"
	done
; 0x19f25c

UnknownText_0x19f25c: ; 0x19f25c
	text "J'ai fait de mon"
	line "mieux. Je n'ai pas"
	cont "de regrets."
	done
; 0x19f27f

LassLauraSeenText: ; 0x19f27f
	text "Numéro 4!"
	line "Tu fatigues?"
	done
; 0x19f299

LassLauraBeatenText: ; 0x19f299
	text "Non!"

	para "Mes petits bébés<...>"
	done
; 0x19f2a6

UnknownText_0x19f2a6: ; 0x19f2a6
	text "J'ai fait de mon"
	line "mieux. Je n'ai pas"
	cont "de regrets."
	done
; 0x19f2c9

CamperLloydSeenText: ; 0x19f2c9
	text "OK! Numéro 5."
	line "Je vais t'écraser!"
	done
; 0x19f2e7

CamperLloydBeatenText: ; 0x19f2e7
	text "Whoa! T'es trop!"
	done
; 0x19f2f8

UnknownText_0x19f2f8: ; 0x19f2f8
	text "J'ai fait de mon"
	line "mieux. Je n'ai pas"
	cont "de regrets."
	done
; 0x19f31b

LassShannonSeenText: ; 0x19f31b
	text "Dernier rempart!"
	line "Autant te dire<...>"
	cont "Ca va être dur!"
	done
; 0x19f34b

LassShannonBeatenText: ; 0x19f34b
	text "Sans blague?"
	done
; 0x19f35b

UnknownText_0x19f35b: ; 0x19f35b
	text "J'ai fait de mon"
	line "mieux. Je n'ai pas"
	cont "de regrets."
	done
; 0x19f37e

SupernerdPatSeenText: ; 0x19f37e
	text "Hin hin hin<...>"

	para "J'ai rien à voir"
	line "avec les six"
	cont "autres dresseurs."

	para "Je suis là pour te"
	line "battre au moment"

	para "où tu es le plus"
	line "à plat."
	done
; 0x19f401

SupernerdPatBeatenText: ; 0x19f401
	text "Tu te fatigues"
	line "jamais?"
	done
; 0x19f41a

UnknownText_0x19f41a: ; 0x19f41a
	text "Pardon<...> Je ne"
	line "tricherai plus<...>"
	done
; 0x19f43b

UnknownText_0x19f43b: ; 0x19f43b
	text "Tu as livré un"
	line "combat de plus que"

	para "prévu mais tu as"
	line "quand même gagné."

	para "Tu as bien mérité"
	line "ton prix."
	done
; 0x19f49d

UnknownText_0x19f49d: ; 0x19f49d
	text "Mais après avoir"
	line "vu ton combat, je"

	para "voudrais savoir ce"
	line "que je vaux contre"
	cont "toi."

	para "Ca te dit?"
	line "Alors c'est parti."
	done
; 0x19f4fd

UnknownText_0x19f4fd: ; 0x19f4fd
	text "Ouais! C'était un"
	line "super combat!"
	done
; 0x19f520

UnknownText_0x19f520: ; 0x19f520
	text "Quelle belle"
	line "rencontre!"

	para "Toi et tes #MON"
	line "êtes vraiment"
	cont "impressionnants!"
	done
; 0x19f567

UnknownText_0x19f567: ; 0x19f567
	text "VILLA"
	line "MAISON DE LEO"
	done
; 0x19f581

UnknownText_0x19f581: ; 0x19f581
	text "MAISON DE LEO"
	done
; 0x19f58f

Route25_MapEventHeader: ; 0x19f58f
	; filler
	db 0, 0

	; warps
	db 1
	warp_def $5, $2f, 1, GROUP_BILLS_HOUSE, MAP_BILLS_HOUSE

	; xy triggers
	db 2
	xy_trigger 1, $6, $2a, $0, UnknownScript_0x19eea0, $0, $0
	xy_trigger 1, $7, $2a, $0, UnknownScript_0x19eee0, $0, $0

	; signposts
	db 2
	signpost 5, 45, $0, MapRoute25Signpost0Script
	signpost 5, 4, $7, MapRoute25SignpostItem1

	; people-events
	db 11
	person_event SPRITE_MISTY, 13, 50, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, ObjectEvent, EVENT_MISTY_AND_HER_DATE_ON_CERULEAN_CAPE
	person_event SPRITE_COOLTRAINER_M, 14, 50, $8, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ObjectEvent, EVENT_MISTY_AND_HER_DATE_ON_CERULEAN_CAPE
	person_event SPRITE_YOUNGSTER, 12, 16, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerSchoolboyDudley, -1
	person_event SPRITE_LASS, 15, 20, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerLassEllen, -1
	person_event SPRITE_YOUNGSTER, 12, 25, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 1, TrainerSchoolboyJoe, -1
	person_event SPRITE_LASS, 10, 26, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerLassLaura, -1
	person_event SPRITE_YOUNGSTER, 8, 29, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 2, TrainerCamperLloyd, -1
	person_event SPRITE_LASS, 15, 32, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 1, TrainerLassShannon, -1
	person_event SPRITE_SUPER_NERD, 11, 35, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 1, TrainerSupernerdPat, -1
	person_event SPRITE_COOLTRAINER_M, 12, 41, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, CooltrainerMScript_0x19efac, -1
	person_event SPRITE_POKE_BALL, 8, 36, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x19efe3, EVENT_ITEM_ROUTE_25_PROTEIN
; 0x19f643



