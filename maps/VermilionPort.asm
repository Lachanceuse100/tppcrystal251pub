VermilionPort_MapScriptHeader: ; 0x74d90
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x74d9d, $0000
	dw UnknownScript_0x74d9e, $0000

	; callback count
	db 0

	; callbacks
; 0x74d9d

UnknownScript_0x74d9d: ; 0x74d9d
	end
; 0x74d9e

UnknownScript_0x74d9e: ; 0x74d9e
	priorityjump UnknownScript_0x74da6
	end
; 0x74da2

UnknownScript_0x74da6: ; 0x74da6
	applymovement $0, MovementData_0x74ef3
	appear $2
	dotrigger $0
	setevent EVENT_FAST_SHIP_GRANDDAUGHTER_IN_CAPTAINS_QUARTERS
	setevent EVENT_FAST_SHIP_GRANDFATHER_IN_HIS_CABIN
	setevent EVENT_FAST_SHIP_POPULATION_1
	clearevent EVENT_OLIVINE_PORT_PASSAGE_POKEFAN_M
	setevent EVENT_FAST_SHIP_FIRST_TIME
	setevent EVENT_000_STD
	end
; 0x74dc4

SailorScript_0x74dc4: ; 0x74dc4
	faceplayer
	loadfont
	checkevent EVENT_000_STD
	iftrue UnknownScript_0x74e1a
	writetext UnknownText_0x74f06
	waitbutton
	closetext
	spriteface $2, $0
	pause 10
	playsound SFX_EXIT_BUILDING
	disappear $2
	waitsfx
	applymovement $0, MovementData_0x74ef1
	playsound SFX_EXIT_BUILDING
	special Function8c084
	waitsfx
	setevent EVENT_FAST_SHIP_POPULATION_2
	clearevent EVENT_FAST_SHIP_POPULATION_3
	clearevent EVENT_BEAT_POKEMANIAC_ETHAN
	clearevent EVENT_BEAT_BURGLAR_COREY
	clearevent EVENT_BEAT_BUG_CATCHER_KEN
	clearevent EVENT_BEAT_GUITARIST_CLYDE
	clearevent EVENT_BEAT_POKEFANM_JEREMY
	clearevent EVENT_BEAT_POKEFANF_GEORGIA
	clearevent EVENT_BEAT_SAILOR_KENNETH
	clearevent EVENT_BEAT_TEACHER_SHIRLEY
	clearevent EVENT_BEAT_SCHOOLBOY_NATE
	clearevent EVENT_BEAT_SCHOOLBOY_RICKY
	setevent EVENT_FAST_SHIP_WESTBOUND
	appear $2
	domaptrigger GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F, $1
	warp GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F, $19, $1
	end
; 0x74e1a

UnknownScript_0x74e1a: ; 0x74e1a
	writetext UnknownText_0x74f31
	waitbutton
	closetext
	end
; 0x74e20

UnknownScript_0x74e20: ; 0x74e20
	spriteface $3, $3
	checkevent EVENT_000_STD
	iftrue UnknownScript_0x74e86
	checkevent EVENT_001_STD
	iftrue UnknownScript_0x74e86
	spriteface $0, $2
	loadfont
	checkcode VAR_WEEKDAY
	if_equal MONDAY, UnknownScript_0x74e72
	if_equal TUESDAY, UnknownScript_0x74e72
	if_equal THURSDAY, UnknownScript_0x74e7c
	if_equal FRIDAY, UnknownScript_0x74e7c
	if_equal SATURDAY, UnknownScript_0x74e7c
	writetext UnknownText_0x74f4d
	yesorno
	iffalse UnknownScript_0x74e8d
	writetext UnknownText_0x74f8b
	buttonsound
	checkitem S_S_TICKET
	iffalse UnknownScript_0x74e68
	writetext UnknownText_0x74fc2
	waitbutton
	closetext
	setevent EVENT_001_STD
	applymovement $0, MovementData_0x74ef8
	jump SailorScript_0x74dc4
; 0x74e68

UnknownScript_0x74e68: ; 0x74e68
	writetext UnknownText_0x74ff2
	waitbutton
	closetext
	applymovement $0, MovementData_0x74ef5
	end
; 0x74e72

UnknownScript_0x74e72: ; 0x74e72
	writetext UnknownText_0x75059
	waitbutton
	closetext
	applymovement $0, MovementData_0x74ef5
	end
; 0x74e7c

UnknownScript_0x74e7c: ; 0x74e7c
	writetext UnknownText_0x75080
	waitbutton
	closetext
	applymovement $0, MovementData_0x74ef5
	end
; 0x74e86

UnknownScript_0x74e86: ; 0x74e86
	end
; 0x74e87

UnknownScript_0x74e87: ; 0x74e87
	writetext UnknownText_0x74fa7
	waitbutton
	closetext
	end
; 0x74e8d

UnknownScript_0x74e8d: ; 0x74e8d
	writetext UnknownText_0x74fa7
	waitbutton
	closetext
	applymovement $0, MovementData_0x74ef5
	end
; 0x74e97

SailorScript_0x74e97: ; 0x74e97
	faceplayer
	loadfont
	checkevent EVENT_000_STD
	iftrue UnknownScript_0x74e1a
	checkcode VAR_WEEKDAY
	if_equal MONDAY, UnknownScript_0x74eda
	if_equal TUESDAY, UnknownScript_0x74eda
	if_equal THURSDAY, UnknownScript_0x74ee0
	if_equal FRIDAY, UnknownScript_0x74ee0
	if_equal SATURDAY, UnknownScript_0x74ee0
	writetext UnknownText_0x74f4d
	yesorno
	iffalse UnknownScript_0x74e87
	writetext UnknownText_0x74f8b
	buttonsound
	checkitem S_S_TICKET
	iffalse UnknownScript_0x74ed4
	writetext UnknownText_0x74fc2
	waitbutton
	closetext
	setevent EVENT_001_STD
	applymovement $0, MovementData_0x74efe
	jump SailorScript_0x74dc4
; 0x74ed4

UnknownScript_0x74ed4: ; 0x74ed4
	writetext UnknownText_0x74ff2
	waitbutton
	closetext
	end
; 0x74eda

UnknownScript_0x74eda: ; 0x74eda
	writetext UnknownText_0x75059
	waitbutton
	closetext
	end
; 0x74ee0

UnknownScript_0x74ee0: ; 0x74ee0
	writetext UnknownText_0x75080
	waitbutton
	closetext
	end
; 0x74ee6

SuperNerdScript_0x74ee6: ; 0x74ee6
	faceplayer
	loadfont
	writetext UnknownText_0x750a6
	waitbutton
	closetext
	end
; 0x74eee

MapVermilionPortSignpostItem0: ; 0x74eee
	dw $00eb
	db IRON

; 0x74ef1

MovementData_0x74ef1: ; 0x74ef1
	step_down
	step_end
; 0x74ef3

MovementData_0x74ef3: ; 0x74ef3
	step_up
	step_end
; 0x74ef5

MovementData_0x74ef5: ; 0x74ef5
	step_right
	turn_head_left
	step_end
; 0x74ef8

MovementData_0x74ef8: ; 0x74ef8
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end
; 0x74efe

MovementData_0x74efe: ; 0x74efe
	step_right
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end
; 0x74f06

UnknownText_0x74f06: ; 0x74f06
	text "Le départ est"
	line "proche. Tout le"
	cont "monde à bord!"
	done
; 0x74f31

UnknownText_0x74f31: ; 0x74f31
	text "On ne monte plus"
	line "à bord."
	done
; 0x74f4d

UnknownText_0x74f4d: ; 0x74f4d
	text "Bienvenue au"
	line "BATEAU EXPRESS:"
	cont "L'AQUARIA"

	para "Allez-vous monter"
	line "à bord?"
	done
; 0x74f8b

UnknownText_0x74f8b: ; 0x74f8b
	text "Puis-je voir votre"
	line "PASSE BATEAU?"
	done
; 0x74fa7

UnknownText_0x74fa7: ; 0x74fa7
	text "Nous espérons vous"
	line "revoir bientôt!"
	done
; 0x74fc2

UnknownText_0x74fc2: ; 0x74fc2
	text "<PLAYER> montre"
	line "son PASSE BATEAU."

	para "Parfait."
	line "Merci bien!"
	done
; 0x74ff2

UnknownText_0x74ff2: ; 0x74ff2
	text "<PLAYER> voudrait"
	line "bien montrer son"
	cont "PASSE BATEAU<...>"

	para "<...>Mais ou peut-il"
	line "bien être?"

	para "Désolé!"
	line "On ne monte à bord"

	para "que sur présen-"
	line "tation du PASSE"
	cont "BATEAU."
	done
; 0x75059

UnknownText_0x75059: ; 0x75059
	text "Le BATEAU EXPRESS"
	line "partira Mercredi"
	cont "prochain."
	done
; 0x75080

UnknownText_0x75080: ; 0x75080
	text "Le BATEAU EXPRESS"
	line "partira Dimanche"
	cont "prochain."
	done
; 0x750a6

UnknownText_0x750a6: ; 0x750a6
	text "Tu viens de JOHTO?"

	para "On dit qu'il y a"
	line "plein de #MON"
	cont "rares là-bas."
	done
; 0x750e3

MewIslandSailorWalk: ; 0x74ef8
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

SailorScript_MewIsland:
	faceplayer
	loadfont
	checkevent EVENT_TALKED_TO_MEW_ISLAND_GUY
	iftrue SailorScript_MewIslandMain
	checkevent EVENT_GOT_RESEARCH_NOTES
	iftrue MewIslandGotNotes
	writetext MewSailorLostMapText
	waitbutton
	closetext
	end

MewIslandGotNotes:
	checkevent EVENT_SURGE_REMATCH
	iftrue MewIslandGotBoth
	checkevent EVENT_MEW_ISLAND_SURGE_CHALLENGE
	iftrue MewSailorAlreadyChallenged
	writetext MewSailorNoSurgeText
	buttonsound
	setevent EVENT_MEW_ISLAND_SURGE_CHALLENGE
MewSailorAlreadyChallenged:
	writetext MewSailorChallengeText
	waitbutton
	closetext
	end

MewIslandGotBoth:
	setevent EVENT_TALKED_TO_MEW_ISLAND_GUY
	writetext MewSailorIntroduceText
	yesorno
	iffalse SailorScript_ChoseNo
	iftrue SailorScript_MewIslandAskSkip
SailorScript_MewIslandMain:
	writetext MewSailorAskText
	yesorno
	iffalse SailorScript_ChoseNo
SailorScript_MewIslandAskSkip:
	writetext MewSailorYesText
	waitbutton
	closetext
	follow $5, $0
	applymovement $5, MewIslandSailorWalk
	playsound SFX_EXIT_BUILDING
	special Function8c084
	pause 15
	warp GROUP_MEWISLANDENTRANCEDOCK, MAP_MEWISLANDENTRANCEDOCK, $7, $f
	end

SailorScript_ChoseNo:
	writetext MewSailorNoText
	waitbutton
	closetext
	end

MewSailorNoSurgeText:
	text "Oh, ces RECHERCHES"
	line "indiquent un"
	cont "endroit sur la"
	cont "CARTE."

	para "Mais GUYANA est"
	line "dangereux<...>"
	
	para "Les #MON sauva-"
	line "ges mettent même"
	cont "les CHAMPIONS en"
	cont "difficulté."	
	done

MewSailorChallengeText:
	text "Il va falloir que"
	line "mon supérieur, le"

	para "MAJOR BOB, me"
	line "donne le feu vert"
	
	para "avant de t'y"
	line "emmener."
	done

MewSailorYesText:
	text "Bien, suis moi."
	done

MewSailorNoText:
	text "Très bien."
	done

MewSailorAskText:
	text "Tu veux que je"
	line "t'emmène à GUYANA?"
	done

MewSailorLostMapText:
	text "J'ai chassé un"
	line "#MON rare sur"
	cont "une île pas loin."

	para "Mais ma seule"
	line "carte à été mangée"
	cont "par un MAGICARPE<...>"
	done

MewSailorIntroduceText:
	text "Tu as réussi à"
	line "battre BOB?"
	cont "Sans handicap?!"

	para "Tu devrais pouvoir"
	line "encaisser ce voya-"
	cont "ge alors!"

	para "On met les voiles?"
	done

VermilionPort_MapEventHeader: ; 0x750e3
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $5, $9, 5, GROUP_VERMILION_PORT_PASSAGE, MAP_VERMILION_PORT_PASSAGE
	warp_def $11, $7, 1, GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F

	; xy triggers
	db 1
	xy_trigger 0, $b, $7, $0, UnknownScript_0x74e20, $0, $0

	; signposts
	db 1
	signpost 13, 16, $7, MapVermilionPortSignpostItem0

	; people-events
	db 4
	person_event SPRITE_SAILOR, 21, 11, $7, 0, 0, -1, -1, 0, 0, 0, SailorScript_0x74dc4, EVENT_SAILOR_IN_VERMILION_PORT
	person_event SPRITE_SAILOR, 15, 10, $9, 0, 0, -1, -1, 0, 0, 0, SailorScript_0x74e97, -1
	person_event SPRITE_SUPER_NERD, 15, 15, $5, 0, 2, -1, -1, 0, 0, 0, SuperNerdScript_0x74ee6, -1
	person_event SPRITE_SAILOR, 18, 19, $7, 0, 0, -1, -1, 0, 0, 0, SailorScript_MewIsland, -1
; 0x75127

