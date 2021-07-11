FastShipCabins_SE_SSE_CaptainsCabin_MapScriptHeader: ; 0x75ea4
	; trigger count
	db 0

	; callback count
	db 0
; 0x75ea6

UnknownScript_0x75ea6: ; 0x75ea6
	end
; 0x75ea7

CaptainScript_0x75ea7: ; 0x75ea7
	faceplayer
	loadfont
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iftrue UnknownScript_0x75eb5
	writetext UnknownText_0x76012
	waitbutton
	closetext
	end
; 0x75eb5

UnknownScript_0x75eb5: ; 0x75eb5
	writetext UnknownText_0x76064
	waitbutton
	closetext
	end
; 0x75ebb

TwinScript_0x75ebb: ; 0x75ebb
	spriteface $5, $3
	loadfont
	writetext UnknownText_0x761e0
	waitbutton
	closetext
	faceplayer
	loadfont
	writetext UnknownText_0x7621f
	waitbutton
	closetext
	special Special_FadeToBlack
	special Functiond91
	disappear $5
	applymovement $0, MovementData_0x76004
	moveperson $4, $3, $13
	appear $4
	spriteface $0, $1
	spriteface $4, $1
	special Function8c0ab
	spriteface $3, $0
	showemote $0, $3, 15
	applymovement $4, MovementData_0x7600c
	spriteface $3, $3
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue UnknownScript_0x75f03
	loadfont
	writetext UnknownText_0x76284
	waitbutton
	closetext
	jump UnknownScript_0x75f09
; 0x75f03

UnknownScript_0x75f03: ; 0x75f03
	loadfont
	writetext UnknownText_0x762c6
	waitbutton
	closetext
UnknownScript_0x75f09: ; 0x75f09
	spriteface $5, $0
	applymovement $3, MovementData_0x76010
	loadfont
	writetext UnknownText_0x76143
	buttonsound
	setevent EVENT_SAILOR_IN_VERMILION_PORT
	domaptrigger GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F, $0
	jump UnknownScript_0x75f37
; 0x75f1f

GentlemanScript_0x75f1f: ; 0x75f1f
	faceplayer
	loadfont
	checkevent EVENT_GOT_METAL_COAT_FROM_GRANDPA_ON_SS_AQUA
	iftrue UnknownScript_0x75f67
	checkevent EVENT_FAST_SHIP_GRANDDAUGHTER_IN_HER_CABIN
	iftrue UnknownScript_0x75f58
	writetext UnknownText_0x760ae
	waitbutton
	closetext
	domaptrigger GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F, $0
	end
; 0x75f37

UnknownScript_0x75f37: ; 0x75f37
	writetext UnknownText_0x7619b
	buttonsound
	verbosegiveitem METAL_COAT, 1
	iffalse UnknownScript_0x75f44
	setevent EVENT_GOT_METAL_COAT_FROM_GRANDPA_ON_SS_AQUA
UnknownScript_0x75f44: ; 0x75f44
	closetext
	waitsfx
	playsound SFX_ELEVATOR_END
	pause 30
	loadfont
	writetext UnknownText_0x76645
	waitbutton
	setevent EVENT_FAST_SHIP_ARRIVED
	setevent EVENT_FAST_SHIP_032
	closetext
	end
; 0x75f58

UnknownScript_0x75f58: ; 0x75f58
	writetext UnknownText_0x7619b
	buttonsound
	verbosegiveitem METAL_COAT, 1
	iffalse UnknownScript_0x75f65
	setevent EVENT_GOT_METAL_COAT_FROM_GRANDPA_ON_SS_AQUA
UnknownScript_0x75f65: ; 0x75f65
	closetext
	end
; 0x75f67

UnknownScript_0x75f67: ; 0x75f67
	writetext UnknownText_0x761be
	waitbutton
	closetext
	end
; 0x75f6d

TwinScript_0x75f6d: ; 0x75f6d
	faceplayer
	loadfont
	writetext UnknownText_0x7630d
	waitbutton
	closetext
	end
; 0x75f75

TrainerPokefanmColin: ; 0x75f75
	; bit/flag number
	dw $4d5

	; trainer group && trainer id
	db POKEFANM, COLIN

	; text when seen
	dw PokefanmColinSeenText

	; text when trainer beaten
	dw PokefanmColinBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PokefanmColinScript
; 0x75f81

PokefanmColinScript: ; 0x75f81
	talkaftercancel
	loadfont
	writetext UnknownText_0x7635b
	waitbutton
	closetext
	end
; 0x75f89

TrainerTwinsMegandpeg1: ; 0x75f89
	; bit/flag number
	dw $46a

	; trainer group && trainer id
	db TWINS, MEGANDPEG1

	; text when seen
	dw TwinsMegandpeg1SeenText

	; text when trainer beaten
	dw TwinsMegandpeg1BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw TwinsMegandpeg1Script
; 0x75f95

TwinsMegandpeg1Script: ; 0x75f95
	talkaftercancel
	loadfont
	writetext UnknownText_0x763c2
	waitbutton
	closetext
	end
; 0x75f9d

TrainerTwinsMegandpeg2: ; 0x75f9d
	; bit/flag number
	dw $46a

	; trainer group && trainer id
	db TWINS, MEGANDPEG2

	; text when seen
	dw TwinsMegandpeg2SeenText

	; text when trainer beaten
	dw TwinsMegandpeg2BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw TwinsMegandpeg2Script
; 0x75fa9

TwinsMegandpeg2Script: ; 0x75fa9
	talkaftercancel
	loadfont
	writetext UnknownText_0x76428
	waitbutton
	closetext
	end
; 0x75fb1

TrainerPsychicRodney: ; 0x75fb1
	; bit/flag number
	dw $445

	; trainer group && trainer id
	db PSYCHIC_T, RODNEY

	; text when seen
	dw PsychicRodneySeenText

	; text when trainer beaten
	dw PsychicRodneyBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PsychicRodneyScript
; 0x75fbd

PsychicRodneyScript: ; 0x75fbd
	talkaftercancel
	loadfont
	writetext UnknownText_0x76497
	waitbutton
	closetext
	end
; 0x75fc5

TrainerPokefanmJeremy: ; 0x75fc5
	; bit/flag number
	dw $4d4

	; trainer group && trainer id
	db POKEFANM, JEREMY

	; text when seen
	dw PokefanmJeremySeenText

	; text when trainer beaten
	dw PokefanmJeremyBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PokefanmJeremyScript
; 0x75fd1

PokefanmJeremyScript: ; 0x75fd1
	talkaftercancel
	loadfont
	writetext UnknownText_0x7651c
	waitbutton
	closetext
	end
; 0x75fd9

TrainerPokefanfGeorgia: ; 0x75fd9
	; bit/flag number
	dw $4dd

	; trainer group && trainer id
	db POKEFANF, GEORGIA

	; text when seen
	dw PokefanfGeorgiaSeenText

	; text when trainer beaten
	dw PokefanfGeorgiaBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PokefanfGeorgiaScript
; 0x75fe5

PokefanfGeorgiaScript: ; 0x75fe5
	talkaftercancel
	loadfont
	writetext UnknownText_0x76596
	waitbutton
	closetext
	end
; 0x75fed

TrainerSupernerdShawn: ; 0x75fed
	; bit/flag number
	dw $589

	; trainer group && trainer id
	db SUPER_NERD, SHAWN

	; text when seen
	dw SupernerdShawnSeenText

	; text when trainer beaten
	dw SupernerdShawnBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SupernerdShawnScript
; 0x75ff9

SupernerdShawnScript: ; 0x75ff9
	talkaftercancel
	loadfont
	writetext UnknownText_0x7660f
	waitbutton
	closetext
	end
; 0x76001

MapFastShipCabins_SE_SSE_CaptainsCabinSignpost0Script: ; 0x76001
	jumpstd trashcan
; 0x76004

MovementData_0x76004: ; 0x76004
	big_step_right
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	step_end
; 0x7600c

MovementData_0x7600c: ; 0x7600c
	step_up
	step_up
	turn_head_left
	step_end
; 0x76010

MovementData_0x76010: ; 0x76010
	step_down
	step_end
; 0x76012

UnknownText_0x76012: ; 0x76012
	text "Ouf! Merci d'être"
	line "venu."

	para "Cette petite fille"
	line "était épuisante!"
	done
; 0x76064

UnknownText_0x76064: ; 0x76064
	text "Comment trouves-tu"
	line "l'AQUARIA?"

	para "C'est comme si il"
	line "volait sur les"
	cont "vagues<...>"
	done
; 0x760ae

UnknownText_0x760ae: ; 0x760ae
	text "Oh, bonjour<...>"

	para "Je ne trouve tou-"
	line "jours pas ma"
	cont "petite-fille."

	para "Elle à beaucoup d'"
	line "énergie, j'espère"
	
	para "qu'elle n'embête"
	line "personne<...>"
	done
; 0x76143

UnknownText_0x76143: ; 0x76143
	text "<PLAY_G>, c'est ça?"
	line "On m'a dit que tu"
	cont "as pris soin de ma"
	cont "petite-fille."

	para "Je tiens à te re-"
	line "mercier pour ça."
	done
; 0x7619b

UnknownText_0x7619b: ; 0x7619b
	text "Je sais! Je veux"
	line "que tu acceptes"
	cont "ceci!"
	done
; 0x761be

UnknownText_0x761be: ; 0x761be
	text "Nous voyageons"
	line "autour du monde."
	done
; 0x761e0

UnknownText_0x761e0: ; 0x761e0
	text "Hé CAPITAINE! Tu"
	line "joues avec moi?"

	para "Steuplait?"
	line "Steuplait m'sieur!"
	done
; 0x7621f

UnknownText_0x7621f: ; 0x7621f
	text "Tu viens jouer"
	line "avec moi?"

	para "<...>Oh!"

	para "Pépé s'inquiète"
	line "pour moi?"

	para "J'y vais!"

	para "Je dois trouver"
	line "mon pépé!"
	done
; 0x76284

UnknownText_0x76284: ; 0x76284
	text "Je suis là pépé!"
	line "Je jouais avec le"

	para "CAPITAINE et ce"
	line "garçon!"
	done
; 0x762c6

UnknownText_0x762c6: ; 0x762c6
	text "Je suis là pépé!"
	line "Je jouais avec le"

	para "CAPITAINE et cette"
	line "fille!"
	done
; 0x7630d

UnknownText_0x7630d: ; 0x7630d
	text "Je me suis bien"
	line "amusée!"
	done
; 0x76329

PokefanmColinSeenText: ; 0x76329
	text "Toi, tu veux te"
	line "battre contre moi?"
	done
; 0x7634c

PokefanmColinBeatenText: ; 0x7634c
	text "FILS: Papa, j'au-"
	line "rais quoi pour"
	cont "Noël?"
	done
; 0x7635b

UnknownText_0x7635b: ; 0x7635b
	text "On verra ce que le"
	line "CADOIZO nous ap-"
	cont "porte, fiston!"
	done
; 0x7638e

TwinsMegandpeg1SeenText: ; 0x7638e
	text "Tu me prends pour"
	line "un bébé?"
	cont "C'est pas juste!"
	done
; 0x763b4

TwinsMegandpeg1BeatenText: ; 0x763b4
	text "Oh! Perdu!"
	done
; 0x763c2

UnknownText_0x763c2: ; 0x763c2
	text "On est des filles!"
	line "Pas des bébés!"
	done
; 0x763e9

TwinsMegandpeg2SeenText: ; 0x763e9
	text "Je suis pas un"
	line "bébé!"

	para "C'est pas beau de"
	line "dire ça!"
	done
; 0x7641a

TwinsMegandpeg2BeatenText: ; 0x7641a
	text "Oh! Perdu!"
	done
; 0x76428

UnknownText_0x76428: ; 0x76428
	text "Les enfants sont"
	line "plus malin que"
	cont "les adultes!"
	done
; 0x76455

PsychicRodneySeenText: ; 0x76455
	text "Chuut! Mon cerveau"
	line "capte un signal"
	cont "radio!"
	done
; 0x76481

PsychicRodneyBeatenText: ; 0x76481
	text "<...> J'entends"
	line "quelque chose!"
	done
; 0x76497

UnknownText_0x76497: ; 0x76497
	text "Je vois. Tu peux"
	line "écouter la radio"
	cont "de JOHTO sur le"
	cont "BATEAU EXPRESS."
	done
; 0x764ce

PokefanmJeremySeenText: ; 0x764ce
	text "T'en penses quoi?"
	line "Mes #MON sont"
	cont "beaux, non?"
	done
; 0x764fe

PokefanmJeremyBeatenText: ; 0x764fe
	text "Oh, non! Mes beaux"
	line "#MON!"
	done
; 0x7651c

UnknownText_0x7651c: ; 0x7651c
	text "Je dois aller au"
	line "SALON #MON et"
	cont "les toiletter!"
	done
; 0x7654f

PokefanfGeorgiaSeenText: ; 0x7654f
	text "Je vais faire mes"
	line "courses au GRAND"
	cont "MAGASIN et puis<...>"
	done
; 0x7657d

PokefanfGeorgiaBeatenText: ; 0x7657d
	text "Qu'est-ce que je"
	line "devais faire?"
	done
; 0x76596

UnknownText_0x76596: ; 0x76596
	text "Ah oui! Je dois"
	line "aller chercher mon"
	cont "#MON à la"
	cont "PENSION?"
	done
; 0x765c7

SupernerdShawnSeenText: ; 0x765c7
	text "Quels types de"
	line "# BALLS as-tu"
	cont "sur toi?"
	done
; 0x765f4

SupernerdShawnBeatenText: ; 0x765f4
	text "Attends! Stop!"
	line "Pitié!"
	done
; 0x7660f

UnknownText_0x7660f: ; 0x7660f
	text "Il faut utiliser"
	line "les bonnes BALLS"
	cont "en fonction de la"
	cont "situation."
	done
; 0x76645

UnknownText_0x76645: ; 0x76645
	text "Le BATEAU EXPRESS"
	line "AQUARIA est arrivé"
	cont "à CARMIN SUR MER."
	done
; 0x76678

FastShipCabins_SE_SSE_CaptainsCabin_MapEventHeader: ; 0x76678
	; filler
	db 0, 0

	; warps
	db 6
	warp_def $7, $2, 8, GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F
	warp_def $7, $3, 8, GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F
	warp_def $13, $2, 9, GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F
	warp_def $13, $3, 9, GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F
	warp_def $21, $2, 10, GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F
	warp_def $21, $3, 10, GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 25, 4, $0, MapFastShipCabins_SE_SSE_CaptainsCabinSignpost0Script

	; people-events
	db 11
	person_event SPRITE_CAPTAIN, 29, 7, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, CaptainScript_0x75ea7, -1
	person_event SPRITE_GENTLEMAN, 21, 6, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, GentlemanScript_0x75f1f, EVENT_FAST_SHIP_GRANDFATHER_IN_HIS_CABIN
	person_event SPRITE_TWIN, 21, 7, $a, 0, 0, -1, -1, 0, 0, 0, TwinScript_0x75f6d, EVENT_FAST_SHIP_GRANDDAUGHTER_IN_CAPTAINS_QUARTERS
	person_event SPRITE_TWIN, 29, 6, $a, 0, 0, -1, -1, 0, 0, 0, TwinScript_0x75ebb, EVENT_FAST_SHIP_GRANDDAUGHTER_IN_HER_CABIN
	person_event SPRITE_POKEFAN_M, 10, 9, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 5, TrainerPokefanmColin, EVENT_FAST_SHIP_POPULATION_1
	person_event SPRITE_TWIN, 8, 6, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, TrainerTwinsMegandpeg1, EVENT_FAST_SHIP_POPULATION_1
	person_event SPRITE_TWIN, 8, 7, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, TrainerTwinsMegandpeg2, EVENT_FAST_SHIP_POPULATION_1
	person_event SPRITE_SUPER_NERD, 9, 9, $8, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 5, TrainerPsychicRodney, EVENT_FAST_SHIP_POPULATION_2
	person_event SPRITE_POKEFAN_M, 7, 6, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerPokefanmJeremy, EVENT_FAST_SHIP_POPULATION_3
	person_event SPRITE_POKEFAN_F, 9, 9, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, TrainerPokefanfGeorgia, EVENT_FAST_SHIP_POPULATION_3
	person_event SPRITE_SUPER_NERD, 19, 5, $3, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 2, TrainerSupernerdShawn, EVENT_FAST_SHIP_POPULATION_2
; 0x76730

