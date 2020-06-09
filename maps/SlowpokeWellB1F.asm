SlowpokeWellB1F_MapScriptHeader: ; 0x5a5d3
	; trigger count
	db 0

	; callback count
	db 0
; 0x5a5d5

KurtScript_0x5a5d5: ; 0x5a5d5
	jumptextfaceplayer UnknownText_0x5a6b5
; 0x5a5d8

TrainerGruntM29: ; 0x5a5d8
	; bit/flag number
	dw $50d

	; trainer group && trainer id
	db GRUNTM, 29

	; text when seen
	dw GruntM29SeenText

	; text when trainer beaten
	dw GruntM29BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntM29Script
; 0x5a5e4

GruntM29Script: ; 0x5a5e4
	talkaftercancel
	loadfont
	writetext TrainerGruntM29SlowpokeProfitText
	waitbutton
	closetext
	end
; 0x5a5ec

TrainerGruntM1: ; 0x5a5ec
	; bit/flag number
	dw $4f1

	; trainer group && trainer id
	db GRUNTM, 1

	; text when seen
	dw GruntM1SeenText

	; text when trainer beaten
	dw GruntM1BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntM1Script
; 0x5a5f8

GruntM1Script: ; 0x5a5f8
	loadfont
	writetext TrainerGruntM1WhenTalkText
	waitbutton
	closetext
	special Special_FadeToBlack
	special Functiond91
	disappear $2
	disappear $3
	disappear $4
	disappear $5
	pause 15
	special Function8c0ab
	disappear $8
	moveperson $8, $b, $6
	appear $8
	applymovement $8, KurtSlowpokeWellVictoryMovementData
	spriteface $0, $3
	loadfont
	writetext KurtLeaveSlowpokeWellText
	waitbutton
	closetext
	setevent EVENT_CLEARED_SLOWPOKE_WELL
	variablesprite $6, $4
	domaptrigger GROUP_AZALEA_TOWN, MAP_AZALEA_TOWN, $1
	clearevent EVENT_APPRENTICE_IN_ILEX_FOREST
	clearevent EVENT_ILEX_FOREST_FARFETCHD
	setevent EVENT_FARFETCHD_IN_CHARCOAL_KILN
	setevent EVENT_APPRENTICE_IN_CHARCOAL_KILN
	setevent EVENT_SLOWPOKE_IN_THE_WELL
	setevent EVENT_KURT_IN_HIS_HOUSE_3
	clearevent EVENT_SLOWPOKE_IN_AZALEA_TOWN
	clearevent EVENT_SLOWPOKE_IN_KURTS_HOUSE
	clearevent EVENT_KURT_IN_HIS_HOUSE_1
	special Function8c084
	special HealParty
	pause 15
	warp GROUP_KURTS_HOUSE, MAP_KURTS_HOUSE, $3, $3
	end
; 0x5a659

TrainerGruntM2: ; 0x5a659
	; bit/flag number
	dw $4f2

	; trainer group && trainer id
	db GRUNTM, 2

	; text when seen
	dw GruntM2SeenText

	; text when trainer beaten
	dw GruntM2BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntM2Script
; 0x5a665

GruntM2Script: ; 0x5a665
	talkaftercancel
	loadfont
	writetext UnknownText_0x5aaf2
	waitbutton
	closetext
	end
; 0x5a66d

TrainerGruntF1: ; 0x5a66d
	; bit/flag number
	dw $510

	; trainer group && trainer id
	db GRUNTF, 1

	; text when seen
	dw GruntF1SeenText

	; text when trainer beaten
	dw GruntF1BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntF1Script
; 0x5a679

GruntF1Script: ; 0x5a679
	talkaftercancel
	loadfont
	writetext UnknownText_0x5ab8d
	waitbutton
	closetext
	end
; 0x5a681

SlowpokeScript_0x5a681: ; 0x5a681
	faceplayer
	loadfont
	cry SLOWPOKE
	writetext UnknownText_0x5abcb
	yesorno
	iftrue UnknownScript_0x5a68f
	closetext
	end
; 0x5a68f

UnknownScript_0x5a68f: ; 0x5a68f
	writetext UnknownText_0x5ac09
	waitbutton
	closetext
	end
; 0x5a695

SlowpokeScript_0x5a695: ; 0x5a695
	faceplayer
	loadfont
	writetext UnknownText_0x5ac61
	cry SLOWPOKE
	waitbutton
	closetext
	end
; 0x5a6a0

BoulderScript_0x5a6a0: ; 0x5a6a0
	jumpstd strengthboulder
; 0x5a6a3

ItemFragment_0x5a6a3: ; 0x5a6a3
	db HYPER_POTION, 1
; 0x5a6a5

KurtSlowpokeWellVictoryMovementData: ; 0x5a6a5
	step_left
	step_left
	step_left
	step_left
	step_up
	accelerate_last
	accelerate_last
	accelerate_last
	step_left
	step_up
	step_up
	accelerate_last
	accelerate_last
	accelerate_last
	turn_head_left
	step_end
; 0x5a6b5

UnknownText_0x5a6b5: ; 0x5a6b5
	text "FARGAS: Salut,"
	line "<PLAYER>!"

	para "Le garde a décampé"
	line "quand je lui ai"
	cont "crié dessus<...>"

	para "Et puis j'ai voulu"
	line "descendre dans le"
	cont "PUITS."

	para "Je me suis raté"
	line "et<...> je peux plus"
	cont "bouger."

	para "Raaaah, si j'étais"
	line "en forme, mes"

	para "#MON les au-"
	line "raient punis<...>"

	para "Bon, pas grave."

	para "<PLAYER>, va les"
	line "écrabouiller à"
	cont "ma place!"
	done
; 0x5a7ca

KurtLeaveSlowpokeWellText: ; 0x5a7ca
	text "FARGAS: Bravo,"
	line "<PLAYER>!"

	para "La TEAM ROCKET"
	line "est partie."

	para "Mon dos va mieux."
	line "Allez, on y va!"
	done
; 0x5a825

GruntM29SeenText: ; 0x5a825
	text "Bon sang! Je mon-"
	line "tais la garde"

	para "quand un vieux"
	line "dingue m'a crié"
	cont "dessus."

	para "J'ai tellement"
	line "sursauté que je"
	cont "suis tombé ici."

	para "<...>"

	para "Je vais calmer mes"
	line "nerfs sur ta face!"
	done
; 0x5a8cc

GruntM29BeatenText: ; 0x5a8cc
	text "Ce n'est vraiment"
	line "pas ma journée!"
	done
; 0x5a8e8

TrainerGruntM29SlowpokeProfitText: ; 0x5a8e8
	text "Bien sûr qu'on"
	line "vends des"
	cont "QUEUE de RAMOLOSS."

	para "On est la TEAM"
	line "ROCKET!"

	para "On fera n'importe"
	line "quoi pour de"
	cont "l'argent!"
	done
; 0x5a98b

GruntM1SeenText: ; 0x5a98b
	text "Tu veux quoi?"

	para "Si tu viens nous"
	line "embêter, ça va"
	cont "barder!"
	done
; 0x5a9d0

GruntM1BeatenText: ; 0x5a9d0
	text "Pas mal, mais tu"
	line "verras la"
	cont "prochaine fois!"
	done
; 0x5a9fc

TrainerGruntM1WhenTalkText: ; 0x5a9fc
	text "La TEAM ROCKET a"
	line "été dissoute il y"
	cont "a trois mois<...>"

	para "Mais on a continué"
	line "nos activités dans"
	cont "l'ombre."

	para "Et maintenant<...>"
	line "On va tout faire"
	cont "sauter!"
	done
; 0x5aa8d

GruntM2SeenText: ; 0x5aa8d
	text "Arrêter de voler"
	line "les QUEUES?"

	para "Et notre réputa-"
	line "tion petit malin?"
	done
; 0x5aadf

GruntM2BeatenText: ; 0x5aadf
	text "Trop puissant<...>"
	done
; 0x5aaf2

UnknownText_0x5aaf2: ; 0x5aaf2
	text "On a besoin de"
	line "sous à la TEAM"
	cont "ROCKET<...>"

	para "C'est pas facile"
	line "d'être un SBIRE"
	done
; 0x5ab43

GruntF1SeenText: ; 0x5ab43
	text "Arrêter de voler"
	line "les QUEUES?"

	para "Elle est bien"
	line "bonne celle-là<...>"
	done
; 0x5ab7b

GruntF1BeatenText: ; 0x5ab7b
	text "Sale gosse!"
	done
; 0x5ab8d

UnknownText_0x5ab8d: ; 0x5ab8d
	text "Ca repousse vite"
	line "une QUEUE de"
	cont "RAMOLOSS!"

	para "Alors on peut les"
	line "vendre, non?"
	done
; 0x5abcb

UnknownText_0x5abcb: ; 0x5abcb
	text "Un RAMOLOSS sans"
	line "sa QUEUE<...>"

	para "Oh? Il a une."
	line "LETTRE. On la lit?"
	done
; 0x5ac09

UnknownText_0x5ac09: ; 0x5ac09
	text "<PLAYER> lit la"
	line "LETTRE."

	para "Sois sage et occu-"
	line "pe-toi bien de la"

	para "maison avec pépé"
	line "et RAMOLOSS"

	para "Bisous. Papa."
	done
; 0x5ac61

UnknownText_0x5ac61: ; 0x5ac61
	text "Un RAMOLOSS sans"
	line "sa QUEUE<...>"
	done
; 0x5ac84

SlowpokeWellB1F_MapEventHeader: ; 0x5ac84
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $f, $11, 6, GROUP_AZALEA_TOWN, MAP_AZALEA_TOWN
	warp_def $b, $7, 1, GROUP_SLOWPOKE_WELL_B2F, MAP_SLOWPOKE_WELL_B2F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 9
	person_event SPRITE_ROCKET, 11, 19, $6, 0, 0, -1, -1, 0, 2, 3, TrainerGruntM29, EVENT_ROCKET_TAKEOVER_OF_AZALEA_TOWN
	person_event SPRITE_ROCKET, 6, 9, $6, 0, 0, -1, -1, 0, 2, 1, TrainerGruntM1, EVENT_ROCKET_TAKEOVER_OF_AZALEA_TOWN
	person_event SPRITE_ROCKET, 10, 9, $9, 0, 0, -1, -1, 0, 2, 2, TrainerGruntM2, EVENT_ROCKET_TAKEOVER_OF_AZALEA_TOWN
	person_event SPRITE_ROCKET_GIRL, 8, 14, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 4, TrainerGruntF1, EVENT_ROCKET_TAKEOVER_OF_AZALEA_TOWN
	person_event SPRITE_SLOWPOKE, 8, 11, $1, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SlowpokeScript_0x5a681, EVENT_SLOWPOKE_IN_THE_WELL
	person_event SPRITE_SLOWPOKE, 6, 10, $1, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SlowpokeScript_0x5a695, EVENT_SLOWPOKE_IN_THE_WELL
	person_event SPRITE_KURT, 18, 20, $7, 0, 0, -1, -1, 0, 0, 0, KurtScript_0x5a5d5, EVENT_KURT_IN_HIS_HOUSE_3
	person_event SPRITE_BOULDER, 6, 7, $19, 0, 0, -1, -1, 0, 0, 0, BoulderScript_0x5a6a0, -1
	person_event SPRITE_POKE_BALL, 7, 14, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x5a6a3, EVENT_ITEM_SLOWPOKE_WELL_B1F_SUPER_POTION
; 0x5ad09

