RadioTower5F_MapScriptHeader: ; 0x60000
	; trigger count
	db 3

	; triggers
	dw UnknownScript_0x6000e, $0000
	dw UnknownScript_0x6000f, $0000
	dw UnknownScript_0x60010, $0000

	; callback count
	db 1
	dbw 1, OpenRaikouDoor
; 0x6000e

UnknownScript_0x6000e: ; 0x6000e
	end
; 0x6000f

UnknownScript_0x6000f: ; 0x6000f
	end
; 0x60010

UnknownScript_0x60010: ; 0x60010
	end
; 0x60011
OpenRaikouDoor:
	checkevent EVENT_OPENED_RAIKOU_DOOR
	iffalse .skip_door
	changeblock 3, 0, $03
.skip_door
	return

UnknownScript_0x60011: ; 0x60011
	spriteface $2, $1
	showemote $0, $2, 15
	loadfont
	writetext UnknownText_0x60128
	waitbutton
	closetext
	applymovement $2, MovementData_0x60109
	special SaveMusic
	playmusic MUSIC_ROCKET_ENCOUNTER
	loadfont
	writetext UnknownText_0x60147
	waitbutton
	closetext
	winlosstext UnknownText_0x60223, $0000
	setlasttalked $2
	loadtrainer EXECUTIVEM, 3
	startbattle
	returnafterbattle
	loadfont
	writetext UnknownText_0x60246
	buttonsound
	verbosegiveitem BASEMENT_KEY, 1
	closetext
	dotrigger $1
	setevent EVENT_BEAT_ROCKET_EXECUTIVEM_573
	end
; 0x60046

GentlemanScript_0x60046: ; 0x60046
	faceplayer
	loadfont
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue UnknownScript_0x60054
	writetext UnknownText_0x60246
	waitbutton
	closetext
	end
; 0x60054

UnknownScript_0x60054: ; 0x60054
	writetext UnknownText_0x60824
	waitbutton
	closetext
	end
; 0x6005a

TrainerExecutivef1: ; 0x6005a
	; bit/flag number
	dw $56f

	; trainer group && trainer id
	db EXECUTIVEF, 1

	; text when seen
	dw Executivef1SeenText

	; text when trainer beaten
	dw Executivef1BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Executivef1Script
; 0x60066

Executivef1Script: ; 0x60066
	talkaftercancel
	loadfont
	writetext UnknownText_0x60358
	waitbutton
	closetext
	end
; 0x6006e

UnknownScript_0x6006e: ; 0x6006e
	applymovement $0, MovementData_0x60125
	playmusic MUSIC_ROCKET_ENCOUNTER
	spriteface $3, $3
	loadfont
	writetext UnknownText_0x603d1
	waitbutton
	closetext
	winlosstext UnknownText_0x604f3, $0000
	setlasttalked $3
	loadtrainer EXECUTIVEM, 1
	startbattle
	returnafterbattle
	loadfont
	writetext UnknownText_0x6050e
	waitbutton
	closetext
	special Special_FadeToBlack
	special Functiond91
	disappear $3
	disappear $4
	pause 15
	special Function8c0ab
	setevent EVENT_BEAT_ROCKET_EXECUTIVEF_571
	setevent EVENT_CLEARED_RADIO_TOWER
	clearflag ENGINE_BIKE_SHOP_CALL_ENABLED
	setevent EVENT_ROCKET_IN_GOLDENROD_1
	setevent EVENT_ROCKET_IN_GOLDENROD_2
	setevent EVENT_ROCKET_TAKEOVER_OF_GOLDENROD
	clearevent EVENT_MAHOGANY_MART_TRUE_OWNERS
	clearflag ENGINE_ROCKETS_IN_MAHOGANY
	clearevent EVENT_CIVILIANS_EVACUATED_GOLDENROD
	clearevent EVENT_CIVILIANS_EVACUATED_RADIO_TOWER_UPPER_FLOORS
	setevent EVENT_GUY_BLOCKING_BLACKTHORN_GYM
	clearevent EVENT_GUY_NOT_BLOCKING_BLACKTHORN_GYM
	special PlayMapMusic
	disappear $2
	moveperson $2, $c, $0
	appear $2
	applymovement $2, MovementData_0x6010f
	spriteface $0, $3
	loadfont
	writetext UnknownText_0x605b2
	buttonsound
	verbosegiveitem CLEAR_BELL, 1
	writetext UnknownText_0x6062c
	waitbutton
	closetext
	dotrigger $2
	domaptrigger GROUP_ECRUTEAK_HOUSE, MAP_ECRUTEAK_HOUSE, $0
	setevent EVENT_GOT_CLEAR_BELL
	setevent EVENT_SET_AFTER_GETTING_CLEAR_BELL
	jump UnknownScript_0x600f1
; 0x600f1

UnknownScript_0x600f1: ; 0x600f1
	applymovement $2, MovementData_0x6011a
	playsound SFX_EXIT_BUILDING
	disappear $2
	end
; 0x600fb

RockerScript_0x600fb: ; 0x600fb
	jumptextfaceplayer UnknownText_0x608be
; 0x600fe

ItemFragment_0x600fe: ; 0x600fe
	db ULTRA_BALL, 1
; 0x60100

MapRadioTower5FSignpost0Script: ; 0x60100
	dw EVENT_OPENED_RAIKOU_DOOR, .script
.script
	loadfont
	checkevent EVENT_FOUGHT_SUICUNE
	iftrue .hidden_switch
	writetext UnknownText_0x608e0
	waitbutton
	closetext
	end
.hidden_switch
	writetext SwitchBehindPosterText
	playsound SFX_PUSH_BUTTON
	waitsfx
	closetext
	changeblock 3, 0, $03
	reloadmappart
	playsound SFX_ENTER_DOOR
	waitsfx
	setevent EVENT_OPENED_RAIKOU_DOOR
	end
; 0x60103

MapRadioTower5FSignpost2Script: ; 0x60103
	jumptext UnknownText_0x608f9
; 0x60106

MapRadioTower5FSignpost4Script: ; 0x60106
	jumpstd magazinebookshelf
; 0x60109

MovementData_0x60109: ; 0x60109
	step_left
	step_left
	step_left
	step_up
	step_up
	step_end
; 0x6010f

MovementData_0x6010f: ; 0x6010f
	step_down
	step_down
	step_right
	step_right
	step_right
	step_right
	step_down
	step_down
	step_down
	step_left
	step_end
; 0x6011a

MovementData_0x6011a: ; 0x6011a
	step_right
	step_up
	step_up
	step_up
	step_left
	step_left
	step_left
	step_left
	step_up
	step_up
	step_end
; 0x60125

MovementData_0x60125: ; 0x60125
	step_left
	step_left
	step_end
; 0x60128

UnknownText_0x60128: ; 0x60128
	text "T-toi! Tu es venu"
	line "me s-sauver?"
	done
; 0x60147

UnknownText_0x60147: ; 0x60147
	text "C'est ce que tu"
	line "voulais entendre?"

	para "Et oui! Je suis"
	line "un imposteur!"

	para "Cette mascarade"
	line "était nécessaire"
	cont "à notre invasion!"

	para "Veux-tu savoir où"
	line "est caché le vrai"
	cont "DIRECTEUR?"

	para "Ha! Jamais de la"
	line "vie!"
	done
; 0x60223

UnknownText_0x60223: ; 0x60223
	text "OK, OK. Je vais"
	line "parler."
	done
; 0x60246

UnknownText_0x60246: ; 0x60246
	text "On a planqué le"
	line "DIRECTEUR dans"

	para "l'ENTREPOT"
	line "SOUTERRAIN."

	para "C'est tout au bout"
	line "du SOUTERRAIN."

	para "Mais t'y arriveras"
	line "jamais<...>"
	done
; 0x602cb

Executivef1SeenText: ; 0x602cb
	text "Tu te souviens de"
	line "moi? Dans la"
	cont "planque à ACAJOU?"

	para "J'avais perdu<...>"
	line "Mais cette fois<...>"

	para "Je suis prête!"
	done
; 0x6031e

Executivef1BeatenText: ; 0x6031e
	text "Ce n'est pas"
	line "possible!"

	para "Je donne tout et"
	line "je perds encore<...>"
	done
; 0x60358

UnknownText_0x60358: ; 0x60358
	text "<PLAYER>, hein?"

	para "Une peste comme"
	line "toi ne voit pas"

	para "la grandeur de"
	line "la TEAM ROCKET."

	para "C'est dommage."
	line "J'admire ta"
	cont "puissance."
	done
; 0x603d1

UnknownText_0x603d1: ; 0x603d1
	text "Oh? Tu es déjà là?"

	para "Tu dois avoir un"
	line "sacré talent."

	para "Nous allons con-"
	line "trôler cette STA-"

	para "TION de RADIO pour"
	line "annoncer au monde"
	cont "notre retour."

	para "Cela devrait faire"
	line "revenir notre chef"

	para "GIOVANNI de son"
	line "entraînement solo."

	para "La goire passée de"
	line "la TEAM ROCKET"
	cont "sera restituée."

	para "Et ce n'est pas"
	line "toi qui pourras y"
	cont "faire quoi que ce"
	cont "soit."
	done
; 0x604f3

UnknownText_0x604f3: ; 0x604f3
	text "Non! Pardon,"
	line "GIOVANNI!"
	done
; 0x6050e

UnknownText_0x6050e: ; 0x6050e
	text "Impossible!"

	para "Nos rêves se"
	line "brisent."

	para "Je ne suis pas"
	line "digne."

	para "Comme GIOVANNI l'a"
	line "fait jadis, je"

	para "vais dissoudre la"
	line "TEAM ROCKET."

	para "Adieu."
	done
; 0x605b2

UnknownText_0x605b2: ; 0x605b2
	text "DIRECTEUR:"
	line "Merci <PLAY_G>!"

	para "Ton courage a"
	line "sauvé les #MON"
	cont "du monde entier."

	para "Ce n'est pas grand"
	line "chose, mais c'est"
	cont "pour toi."
	done
; 0x6062c

UnknownText_0x6062c: ; 0x6062c
	text "Il y avait une"
	line "tour ici à"
	cont "DOUBLONVILLE."

	para "Mais elle était en"
	line "mauvais état."

	para "On l'a alors rem-"
	line "placée par notre"
	cont "TOUR RADIO."

	para "Pendant les tra-"
	line "vaux, nous avons"
	cont "trouvé ce glas."

	para "On dit qu'une"
	line "multitude de #-"

	para "MON différents"
	line "vivaient ici."

	para "Alors<...>"

	para "Ce glas a peut-"
	line "être un lien avec"

	para "la TOUR FERRAILLE"
	line "de ROSALIA.<...>"

	para "Ah!"

	para "Ca me rappelle<...>"

	para "J'ai entendu un"
	line "des types de la"
	cont "TEAM ROCKET."

	para "Apparamment, il se"
	line "passe des trucs à"
	cont "la TOUR FERRAILLE."

	para "A mon avis, tu"
	line "devrais y aller."

	para "OK, je retourne"
	line "au BUREAU."
	done
; 0x60824

UnknownText_0x60824: ; 0x60824
	text "DIRECTEUR: Salut,"
	line "<PLAY_G>!"

	para "Tu sais, j'adore"
	line "les #MON."

	para "J'ai construit"
	line "cette TOUR RADIO"

	para "pour crier au mon-"
	line "de mon amour."

	para "J'espère que les"
	line "gens aiment nos"
	cont "émissions."
	done
; 0x608be

UnknownText_0x608be: ; 0x608be
	text "BEN: Tu écoutes"
	line "notre musique?"
	done
; 0x608e0

UnknownText_0x608e0: ; 0x608e0
	para "4EME BUREAU"
	line "     DIRECTION"
	done
; 0x608f9
SwitchBehindPosterText:
	text "Hé!"

	para "Un switch derrière"
	line "ce poster!?"
	cont "Appuyons<...>"
	done

UnknownText_0x608f9: ; 0x608f9
	text "4EME STUDIO 1"
	done
; 0x60906

RadioTower5F_MapEventHeader: ; 0x60906
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $0, $0, 1, GROUP_RADIO_TOWER_4F, MAP_RADIO_TOWER_4F
	warp_def $0, $c, 3, GROUP_RADIO_TOWER_4F, MAP_RADIO_TOWER_4F
	warp_def $0, $3, 1, GROUP_RAIKOU_ROOM, MAP_RAIKOU_ROOM

	; xy triggers
	db 2
	xy_trigger 0, $3, $0, $0, UnknownScript_0x60011, $0, $0
	xy_trigger 1, $5, $10, $0, UnknownScript_0x6006e, $0, $0

	; signposts
	db 5
	signpost 0, 3, $6, MapRadioTower5FSignpost0Script
	signpost 0, 11, $0, MapRadioTower5FSignpost2Script
	signpost 0, 15, $0, MapRadioTower5FSignpost2Script
	signpost 1, 16, $0, MapRadioTower5FSignpost4Script
	signpost 1, 17, $0, MapRadioTower5FSignpost4Script

	; people-events
	db 5
	person_event SPRITE_GENTLEMAN, 10, 7, $3, 0, 0, -1, -1, 0, 0, 0, GentlemanScript_0x60046, -1
	person_event SPRITE_ROCKET, 9, 17, $8, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_ROCKET_TAKEOVER_OF_GOLDENROD
	person_event SPRITE_ROCKET_GIRL, 6, 21, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, TrainerExecutivef1, EVENT_ROCKET_TAKEOVER_OF_GOLDENROD
	person_event SPRITE_ROCKER, 9, 17, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, RockerScript_0x600fb, EVENT_CIVILIANS_EVACUATED_RADIO_TOWER_UPPER_FLOORS
	person_event SPRITE_POKE_BALL, 9, 12, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x600fe, EVENT_ITEM_RADIOTOWER_5F_ULTRA_BALL
; 0x60980

