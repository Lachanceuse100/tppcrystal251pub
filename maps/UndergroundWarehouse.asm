UndergroundWarehouse_MapScriptHeader: ; 0x7d94b
	; trigger count
	db 2

	dw UndergroundWarehouse_MapTrigger1, $0000
	dw UndergroundWarehouse_MapTrigger2, $0000

	; callback count
	db 1

	; callbacks

	dbw 5, UnknownScript_0x7d950
; 0x7d950

UndergroundWarehouse_MapTrigger1:
	priorityjump UndergroundWarehouse_BurglarSimonScript1
	end

UndergroundWarehouse_MapTrigger2:
	end

UndergroundWarehouse_BurglarSimonScript1:
	showemote $0, $9, 15
	pause 15
	spriteface $9, $0
	playmusic MUSIC_POKEMANIAC_ENCOUNTER
	loadfont
	writetext UndergroundWarehouse_BurglarSimonText1
	waitbutton
	closetext
	checkcode VAR_XCOORD
	if_equal $3, UndergroundWarehouse_BurglarSimonScript1a
	applymovement $9, UndergroundWarehouse_BurglarSimonMovement1
	jump UndergroundWarehouse_BurglarSimonScript1b
UndergroundWarehouse_BurglarSimonScript1a:
	applymovement $9, UndergroundWarehouse_BurglarSimonMovement1a
UndergroundWarehouse_BurglarSimonScript1b:
	winlosstext UndergroundWarehouse_BurglarSimonTextLoss, $0000
	loadtrainer BURGLAR, SIMON_3
	startbattle
	reloadmapmusic
	returnafterbattle
	playmusic MUSIC_POKEMANIAC_ENCOUNTER
	loadfont
	writetext UndergroundWarehouse_BurglarSimonText2
	buttonsound
	random 3
	if_equal 1, UndergroundWarehouse_BurglarSimonScript_GiveFireStone
	if_equal 2, UndergroundWarehouse_BurglarSimonScript_GiveWaterStone
	verbosegiveitem THUNDERSTONE, 1
	jump UndergroundWarehouse_BurglarSimonScript2
UndergroundWarehouse_BurglarSimonScript_GiveFireStone:
	verbosegiveitem FIRE_STONE, 1
	jump UndergroundWarehouse_BurglarSimonScript2
UndergroundWarehouse_BurglarSimonScript_GiveWaterStone:
	verbosegiveitem WATER_STONE, 1
UndergroundWarehouse_BurglarSimonScript2:
	writetext UndergroundWarehouse_BurglarSimonText3
	waitbutton
	closetext
	checkcode VAR_XCOORD
	if_equal $3, UndergroundWarehouse_BurglarSimonScript2a
	applymovement $9, UndergroundWarehouse_BurglarSimonMovement1a
	jump UndergroundWarehouse_BurglarSimonScript2b
UndergroundWarehouse_BurglarSimonScript2a:
	applymovement $9, UndergroundWarehouse_BurglarSimonMovement2
UndergroundWarehouse_BurglarSimonScript2b:
	playsound SFX_EXIT_BUILDING
	disappear $9
	pause 15
	special DeleteSavedMusic
	playmapmusic
	dotrigger $1
	end

UndergroundWarehouse_BurglarSimonMovement1a:
	big_step_right
UndergroundWarehouse_BurglarSimonMovement1:
	big_step_down
	step_end

UndergroundWarehouse_BurglarSimonMovement2:
	big_step_left
	big_step_down
	step_end

UnknownScript_0x7d950: ; 0x7d950
	clearevent EVENT_SWITCH_1
	clearevent EVENT_SWITCH_2
	clearevent EVENT_SWITCH_3
	clearevent EVENT_EMERGENCY_SWITCH
	clearevent EVENT_SWITCH_4
	clearevent EVENT_SWITCH_5
	clearevent EVENT_SWITCH_6
	clearevent EVENT_SWITCH_7
	clearevent EVENT_SWITCH_8
	clearevent EVENT_SWITCH_9
	clearevent EVENT_SWITCH_10
	clearevent EVENT_SWITCH_11
	clearevent EVENT_SWITCH_12
	clearevent EVENT_SWITCH_13
	clearevent EVENT_SWITCH_14
	writebyte $0
	copyvartobyte UndergroundSwitchPositions
	return
; 0x7d983

TrainerGruntM24: ; 0x7d983
	; bit/flag number
	dw $508

	; trainer group && trainer id
	db GRUNTM, 24

	; text when seen
	dw GruntM24SeenText

	; text when trainer beaten
	dw GruntM24BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntM24Script
; 0x7d98f

GruntM24Script: ; 0x7d98f
	talkaftercancel
	loadfont
	writetext UnknownText_0x7da48
	waitbutton
	closetext
	end
; 0x7d997

TrainerGruntM14: ; 0x7d997
	; bit/flag number
	dw $4fe

	; trainer group && trainer id
	db GRUNTM, 14

	; text when seen
	dw GruntM14SeenText

	; text when trainer beaten
	dw GruntM14BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntM14Script
; 0x7d9a3

GruntM14Script: ; 0x7d9a3
	talkaftercancel
	loadfont
	writetext UnknownText_0x7db01
	waitbutton
	closetext
	end
; 0x7d9ab

TrainerGruntM15: ; 0x7d9ab
	; bit/flag number
	dw $4ff

	; trainer group && trainer id
	db GRUNTM, 15

	; text when seen
	dw GruntM15SeenText

	; text when trainer beaten
	dw GruntM15BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntM15Script
; 0x7d9b7

GruntM15Script: ; 0x7d9b7
	talkaftercancel
	loadfont
	writetext UnknownText_0x7db8e
	waitbutton
	closetext
	end
; 0x7d9bf

GentlemanScript_0x7d9bf: ; 0x7d9bf
	faceplayer
	loadfont
	checkevent EVENT_GOT_CARD_KEY
	iftrue UnknownScript_0x7d9de
	writetext UnknownText_0x7dbc6
	buttonsound
	verbosegiveitem CARD_KEY, 1
	setevent EVENT_GOT_CARD_KEY
	setevent EVENT_GOLDENROD_DEPT_STORE_BASEMENT_LAYOUT_1
	clearevent EVENT_GOLDENROD_DEPT_STORE_BASEMENT_LAYOUT_2
	clearevent EVENT_GOLDENROD_DEPT_STORE_BASEMENT_LAYOUT_3
	writetext UnknownText_0x7dc5b
	buttonsound
UnknownScript_0x7d9de: ; 0x7d9de
	writetext UnknownText_0x7dc8d
	waitbutton
	closetext
	end
; 0x7d9e4

ItemFragment_0x7d9e4: ; 0x7d9e4
	db MAX_ETHER, 1
; 0x7d9e6

ItemFragment_0x7d9e6: ; 0x7d9e6
	db TM_SLEEP_TALK, 1
; 0x7d9e8

ItemFragment_0x7d9e8: ; 0x7d9e8
	db ULTRA_BALL, 1
; 0x7d9ea

UndergroundWarehouse_BurglarSimonText1:
	text "Hé!"

	para "Arrête de fourrer"
	line "ton nez dans mes"
	cont "affaires!"
	done

UndergroundWarehouse_BurglarSimonTextLoss:
	text "Zut."
	done

UndergroundWarehouse_BurglarSimonText2:
	text "J'ai entendu que"
	line "la TEAM ROCKET a"

	para "assiégé ce lieu"
	line "et je pensais y"
	cont "trouver le"
	cont "jackpot!"

	para "Tu parles d'une"
	line "déception<...>"

	para "Tiens, ça te fera"
	line "sûrement plaisir."
	done

UndergroundWarehouse_BurglarSimonText3:
	text "A plus!"
	done

GruntM24SeenText: ; 0x7d9ea
	text "Comment es-tu"
	line "arrivé la?"

	para "Peu importe. Je"
	line "vais me débarasser"
	cont "de toi!"
	done
; 0x7da34

GruntM24BeatenText: ; 0x7da34
	text "Tu m'as bien eu<...>"
	done
; 0x7da48

UnknownText_0x7da48: ; 0x7da48
	text "La TEAM ROCKET"
	line "vivra dans l'at-"
	cont "tente du retour du"
	cont "grand GIOVANNI."

	para "Nous sommes prêts"
	line "à tout."
	done
; 0x7daa7

GruntM14SeenText: ; 0x7daa7
	text "Pas un pas de"
	line "plus!"

	para "Mes ennemis, j'en"
	line "fais de la purée."
	cont "Même les gosses!"
	done
; 0x7daf6

GruntM14BeatenText: ; 0x7daf6
	text "Purée!"
	done
; 0x7db01

UnknownText_0x7db01: ; 0x7db01
	text "J'ai perdu<...>"

	para "Pardonnez-moi<...>"
	line "GIOVANNI!"
	done
; 0x7db27

GruntM15SeenText: ; 0x7db27
	text "Gnyak Gnyak Gnyak!"
	line "Je me souviens de"

	para "toi! Tu m'as battu"
	line "à notre planque!"
	done
; 0x7db6b

GruntM15BeatenText: ; 0x7db6b
	text "Gnyak!"
	line "Encore?"
	done
; 0x7db8e

UnknownText_0x7db8e: ; 0x7db8e
	text "Gnyaaaaaaak!"
	line "Je me souviendrai"
	cont "de toi!"
	done
; 0x7dbc6

UnknownText_0x7dbc6: ; 0x7dbc6
	text "DIRECTEUR: Qui?"
	line "Quoi? Tu es là"
	cont "pour me sauver?"

	para "Merci!"

	para "La TOUR RADIO!"

	para "Que se passe-t-il"
	line "là-bas?"

	para "Contrôlée par la"
	line "TEAM ROCKET?"

	para "Tiens. Prends"
	line "cette CARTE MAGN."
	done
; 0x7dc5b

UnknownText_0x7dc5b: ; 0x7dc5b
	text "DIRECTEUR: Utilise"
	line "cette carte pour"
	cont "ouvrir les volets"
	cont "du 2ème."
	done
; 0x7dc8d

UnknownText_0x7dc8d: ; 0x7dc8d
	text "Je t'en supplie<...>"
	line "Aide-nous."

	para "Dieu seul sait ce"
	line "qu'ils feront en"

	para "contrôlant le"
	line "transmetteur."

	para "Ils pourront même"
	line "manipuler les"

	para "#MON grâce à un"
	line "signal spécial!"

	para "Tu es mon seul"
	line "espoir."

	para "Sauve la TOUR"
	line "RADIO<...>"

	para "Sauve tous les"
	line "gentils #MON!"
	done
; 0x7dd84

UndergroundWarehouse_MapEventHeader: ; 0x7dd84
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $c, $2, 2, GROUP_UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES, MAP_UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES
	warp_def $c, $3, 3, GROUP_UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES, MAP_UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES
	warp_def $2, $11, 1, GROUP_GOLDENROD_DEPT_STORE_B1F, MAP_GOLDENROD_DEPT_STORE_B1F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 8
	person_event SPRITE_ROCKET, 12, 13, $7, 0, 0, -1, -1, 0, 2, 3, TrainerGruntM24, EVENT_ROCKET_TAKEOVER_OF_GOLDENROD
	person_event SPRITE_ROCKET, 19, 12, $7, 0, 0, -1, -1, 0, 2, 3, TrainerGruntM14, EVENT_ROCKET_TAKEOVER_OF_GOLDENROD
	person_event SPRITE_ROCKET, 7, 18, $9, 0, 0, -1, -1, 0, 2, 4, TrainerGruntM15, EVENT_ROCKET_TAKEOVER_OF_GOLDENROD
	person_event SPRITE_GENTLEMAN, 12, 16, $3, 0, 0, -1, -1, 0, 0, 0, GentlemanScript_0x7d9bf, EVENT_ROCKET_TAKEOVER_OF_GOLDENROD
	person_event SPRITE_POKE_BALL, 19, 22, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x7d9e4, EVENT_ITEM_UNDEGROUND_WAREHOUSE_MAX_ETHER
	person_event SPRITE_POKE_BALL, 13, 17, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x7d9e6, EVENT_ITEM_UNDEGROUND_WAREHOUSE_TM_SLEEP_TALK
	person_event SPRITE_POKE_BALL, 5, 6, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x7d9e8, EVENT_ITEM_UNDEGROUND_WAREHOUSE_ULTRA_BALL
	person_event SPRITE_PHARMACIST, 14, 6, $8, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ObjectEvent, EVENT_BEAT_SIMON_3
; 0x7ddf4

