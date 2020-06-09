TeamRocketBaseB2F_MapScriptHeader: ; 0x6cf70
	; trigger count
	db 4

	; triggers
	dw UnknownScript_0x6cf85, $0000
	dw UnknownScript_0x6cf86, $0000
	dw UnknownScript_0x6cf87, $0000
	dw UnknownScript_0x6cf88, $0000

	; callback count
	db 1

	; callbacks

	dbw 1, UnknownScript_0x6cf89
; 0x6cf85

UnknownScript_0x6cf85: ; 0x6cf85
	end
; 0x6cf86

UnknownScript_0x6cf86: ; 0x6cf86
	end
; 0x6cf87

UnknownScript_0x6cf87: ; 0x6cf87
	end
; 0x6cf88

UnknownScript_0x6cf88: ; 0x6cf88
	end
; 0x6cf89

UnknownScript_0x6cf89: ; 0x6cf89
	checkevent EVENT_OPENED_DOOR_TO_ROCKET_HIDEOUT_TRANSMITTER
	iftrue UnknownScript_0x6cf90
	return
; 0x6cf90

UnknownScript_0x6cf90: ; 0x6cf90
	changeblock $e, $c, $7
	return
; 0x6cf95

UnknownScript_0x6cf95: ; 0x6cf95
	moveperson $4, $9, $d
	jump UnknownScript_0x6cfac
; 0x6cf9c

UnknownScript_0x6cf9c: ; 0x6cf9c
	moveperson $3, $15, $10
	moveperson $2, $15, $10
	moveperson $5, $a, $d
	moveperson $4, $a, $d
UnknownScript_0x6cfac: ; 0x6cfac
	appear $3
	appear $2
	loadfont
	writetext UnknownText_0x6d2ad
	waitbutton
	closetext
	spriteface $0, $0
	showemote $0, $0, 15
	applymovement $0, MovementData_0x6d21f
	special SaveMusic
	playmusic MUSIC_ROCKET_ENCOUNTER
	applymovement $3, MovementData_0x6d224
	spriteface $0, $1
	applymovement $2, MovementData_0x6d22f
	loadfont
	writetext UnknownText_0x6d2c3
	waitbutton
	closetext
	cry DRAGONITE
	spriteface $3, $2
	spriteface $0, $2
	appear $5
	applymovement $5, MovementData_0x6d236
	applymovement $3, MovementData_0x6d23b
	applymovement $2, MovementData_0x6d24c
	appear $4
	applymovement $4, MovementData_0x6d244
	loadfont
	writetext UnknownText_0x6d38c
	waitbutton
	closetext
	spriteface $0, $3
	applymovement $3, MovementData_0x6d241
	loadfont
	writetext UnknownText_0x6d3bd
	waitbutton
	closetext
	applymovement $2, MovementData_0x6d24a
	applymovement $3, MovementData_0x6d248
	winlosstext UnknownText_0x6d45c, $0000
	setlasttalked $3
	loadtrainer EXECUTIVEF, 2
	startbattle
	disappear $5
	setevent EVENT_EXECUTIVEF_IN_ROCKET_BASE_B2F
	setevent EVENT_ROCKET_WHO_FIGHTS_LANCE_IN_ROCKET_BASE_B2F
	setevent EVENT_LANCE_IN_ROCKET_BASE_B2F
	returnafterbattle
	setevent EVENT_BEAT_ROCKET_EXECUTIVEF_570
	loadfont
	writetext UnknownText_0x6d4c6
	waitbutton
	closetext
	special Special_FadeToBlack
	special Functiond91
	disappear $2
	disappear $3
	disappear $c
	disappear $d
	disappear $e
	pause 15
	special Function8c0ab
	dotrigger $2
	clearevent EVENT_LANCE_IN_ROCKET_BASE_B2F
	spriteface $4, $0
	loadfont
	writetext UnknownText_0x6d5d8
	waitbutton
	closetext
	applymovement $4, MovementData_0x6d250
	spriteface $0, $1
	loadfont
	writetext UnknownText_0x6d64e
	waitbutton
	closetext
	follow $4, $0
	applymovement $4, MovementData_0x6d254
	stopfollow
	applymovement $4, MovementData_0x6d258
	loadfont
	writetext UnknownText_0x6d6cf
	waitbutton
	closetext
	applymovement $4, MovementData_0x6d267
	disappear $4
; 0x6d075

UnknownScript_0x6d075: ; 0x6d075
	applymovement $0, MovementData_0x6d271
	end
; 0x6d07a

UnknownScript_0x6d07a: ; 0x6d07a
	loadfont
	writetext UnknownText_0x6d7ea
	waitbutton
	closetext
	applymovement $0, MovementData_0x6d278
	end
; 0x6d085

UnknownScript_0x6d085: ; 0x6d085
	spriteface $0, $1
	jump UnknownScript_0x6d091
; 0x6d08b

UnknownScript_0x6d08b: ; 0x6d08b
	spriteface $0, $3
	spriteface $4, $2
UnknownScript_0x6d091: ; 0x6d091
	loadfont
	writetext UnknownText_0x6da97
	waitbutton
	closetext
	special Function8c084
	special Function1060a2
	playsound SFX_FULL_HEAL
	special HealParty
	special Function8c079
	loadfont
	writetext UnknownText_0x6daf7
	waitbutton
	closetext
	dotrigger $1
	setevent EVENT_HEALED_BY_LANCE_ROCKET_BASE
	checkcode VAR_FACING
	if_equal $3, UnknownScript_0x6d0be
	applymovement $4, MovementData_0x6d212
	disappear $4
	end
; 0x6d0be

UnknownScript_0x6d0be: ; 0x6d0be
	applymovement $4, MovementData_0x6d219
	disappear $4
	end
; 0x6d0c5

TrainerGruntM17: ; 0x6d0c5
	; bit/flag number
	dw $501

	; trainer group && trainer id
	db GRUNTM, 17

	; text when seen
	dw GruntM17SeenText

	; text when trainer beaten
	dw GruntM17BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntM17Script
; 0x6d0d1

GruntM17Script: ; 0x6d0d1
	talkaftercancel
	loadfont
	writetext UnknownText_0x6db88
	waitbutton
	closetext
	end
; 0x6d0d9

TrainerGruntM18: ; 0x6d0d9
	; bit/flag number
	dw $502

	; trainer group && trainer id
	db GRUNTM, 18

	; text when seen
	dw GruntM18SeenText

	; text when trainer beaten
	dw GruntM18BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntM18Script
; 0x6d0e5

GruntM18Script: ; 0x6d0e5
	talkaftercancel
	loadfont
	writetext UnknownText_0x6dc1a
	waitbutton
	closetext
	end
; 0x6d0ed

TrainerGruntM19: ; 0x6d0ed
	; bit/flag number
	dw $503

	; trainer group && trainer id
	db GRUNTM, 19

	; text when seen
	dw GruntM19SeenText

	; text when trainer beaten
	dw GruntM19BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntM19Script
; 0x6d0f9

GruntM19Script: ; 0x6d0f9
	talkaftercancel
	loadfont
	writetext UnknownText_0x6dcd1
	waitbutton
	closetext
	end
; 0x6d101

VoltorbScript_0x6d101: ; 0x6d101
	cry ELECTRODE
	loadpokedata ELECTRODE, 40
	startbattle
	iftrue UnknownScript_0x6d182
	disappear $6
	disappear $9
	checkevent EVENT_ROCKET_BASE_ELECTRODE_1
	iffalse UnknownScript_0x6d182
	checkevent EVENT_ROCKET_BASE_ELECTRODE_2
	iffalse UnknownScript_0x6d182
	checkevent EVENT_ROCKET_BASE_ELECTRODE_3
	iffalse UnknownScript_0x6d182
	returnafterbattle
	special PlayMapMusic
	applymovement $0, MovementData_0x6d28c
	jump UnknownScript_0x6d184
; 0x6d12c

VoltorbScript_0x6d12c: ; 0x6d12c
	cry ELECTRODE
	loadpokedata ELECTRODE, 40
	startbattle
	iftrue UnknownScript_0x6d182
	disappear $7
	disappear $a
	checkevent EVENT_ROCKET_BASE_ELECTRODE_1
	iffalse UnknownScript_0x6d182
	checkevent EVENT_ROCKET_BASE_ELECTRODE_2
	iffalse UnknownScript_0x6d182
	checkevent EVENT_ROCKET_BASE_ELECTRODE_3
	iffalse UnknownScript_0x6d182
	returnafterbattle
	special PlayMapMusic
	applymovement $0, MovementData_0x6d299
	jump UnknownScript_0x6d184
; 0x6d157

VoltorbScript_0x6d157: ; 0x6d157
	cry ELECTRODE
	loadpokedata ELECTRODE, 40
	startbattle
	iftrue UnknownScript_0x6d182
	disappear $8
	disappear $b
	checkevent EVENT_ROCKET_BASE_ELECTRODE_1
	iffalse UnknownScript_0x6d182
	checkevent EVENT_ROCKET_BASE_ELECTRODE_2
	iffalse UnknownScript_0x6d182
	checkevent EVENT_ROCKET_BASE_ELECTRODE_3
	iffalse UnknownScript_0x6d182
	returnafterbattle
	special PlayMapMusic
	applymovement $0, MovementData_0x6d2a4
	jump UnknownScript_0x6d184
; 0x6d182

UnknownScript_0x6d182: ; 0x6d182
	returnafterbattle
	end
; 0x6d184

UnknownScript_0x6d184: ; 0x6d184
	moveperson $4, $12, $6
	appear $4
	applymovement $4, MovementData_0x6d27a
	spriteface $0, $3
	loadfont
	writetext UnknownText_0x6d809
	buttonsound
	verbosegiveitem HM_SURF, 1
	setevent EVENT_GOT_HM06_WHIRLPOOL
	writetext UnknownText_0x6d8f8
	waitbutton
	closetext
	spriteface $4, $0
	loadfont
	writetext UnknownText_0x6d994
	waitbutton
	closetext
	spriteface $0, $0
	applymovement $4, MovementData_0x6d283
	disappear $4
	setevent EVENT_CLEARED_ROCKET_HIDEOUT
	clearflag ENGINE_ROCKET_SIGNAL_ON_CH20
	setevent EVENT_ROCKETS_IN_ROUTE_43_GATE
	setevent EVENT_FISHER_BLOCKING_GYM_IN_MAHOGANY_TOWN
	dotrigger $3
	clearevent EVENT_LAKE_OF_RAGE_TRAINERS
	setevent EVENT_TURNED_OFF_SECURITY_CAMERAS
	setevent EVENT_SECURITY_CAMERA_1
	setevent EVENT_SECURITY_CAMERA_2
	setevent EVENT_SECURITY_CAMERA_3
	setevent EVENT_SECURITY_CAMERA_4
	setevent EVENT_SECURITY_CAMERA_5
	variablesprite SPRITE_AZALEA_ROCKET, SPRITE_SUPER_NERD
	end
; 0x6d1d7

MapTeamRocketBaseB2FSignpostPtr1: ; 0x6d1d7
	dw $0300
	dw MapTeamRocketBaseB2FSignpost1Script

; 0x6d1db

MapTeamRocketBaseB2FSignpost1Script: ; 0x6d1db
	loadfont
	checkevent EVENT_LEARNED_HAIL_GIOVANNI
	iftrue UnknownScript_0x6d1e8
	writetext UnknownText_0x6dd39
	waitbutton
	closetext
	end
; 0x6d1e8

UnknownScript_0x6d1e8: ; 0x6d1e8
	writetext UnknownText_0x6dd6b
	waitbutton
	playsound SFX_ENTER_DOOR
	changeblock $e, $c, $7
	reloadmappart
	closetext
	setevent EVENT_OPENED_DOOR_TO_ROCKET_HIDEOUT_TRANSMITTER
	waitsfx
	end
; 0x6d1fa

MapTeamRocketBaseB2FSignpost21Script: ; 0x6d1fa
	loadfont
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue UnknownScript_0x6d207
	writetext UnknownText_0x6dda7
	waitbutton
	closetext
	end
; 0x6d207

UnknownScript_0x6d207: ; 0x6d207
	writetext UnknownText_0x6de03
	waitbutton
	closetext
	end
; 0x6d20d

ItemFragment_0x6d20d: ; 0x6d20d
	db TM_DARK_PULSE, 1
; 0x6d20f

MapTeamRocketBaseB2FSignpostItem22: ; 0x6d20f
	dw $0087
	db FULL_HEAL

; 0x6d212

MovementData_0x6d212: ; 0x6d212
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end
; 0x6d219

MovementData_0x6d219: ; 0x6d219
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end
; 0x6d21f

MovementData_0x6d21f: ; 0x6d21f
	step_down
	step_down
	step_down
	turn_head_right
	step_end
; 0x6d224

MovementData_0x6d224: ; 0x6d224
	big_step_left
	big_step_left
	big_step_up
	big_step_up
	big_step_up
	big_step_left
	big_step_left
	big_step_left
	big_step_left
	turn_head_down
	step_end
; 0x6d22f

MovementData_0x6d22f: ; 0x6d22f
	big_step_left
	big_step_left
	big_step_up
	big_step_up
	big_step_left
	big_step_left
	step_end
; 0x6d236

MovementData_0x6d236: ; 0x6d236
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	step_end
; 0x6d23b

MovementData_0x6d23b: ; 0x6d23b
	fix_facing
	db $39 ; movement
	jump_step_right
	db $38 ; movement
	remove_fixed_facing
	step_end
; 0x6d241

MovementData_0x6d241: ; 0x6d241
	slow_step_down
	turn_head_left
	step_end
; 0x6d244

MovementData_0x6d244: ; 0x6d244
	step_right
	step_right
	step_right
	step_end
; 0x6d248

MovementData_0x6d248: ; 0x6d248
	big_step_left
	step_end
; 0x6d24a

MovementData_0x6d24a: ; 0x6d24a
	big_step_left
	step_end
; 0x6d24c

MovementData_0x6d24c: ; 0x6d24c
	big_step_left
	big_step_up
	turn_head_left
	step_end
; 0x6d250

MovementData_0x6d250: ; 0x6d250
	step_right
	step_right
	turn_head_down
	step_end
; 0x6d254

MovementData_0x6d254: ; 0x6d254
	step_up
	step_up
	step_up
	step_end
; 0x6d258

MovementData_0x6d258: ; 0x6d258
	accelerate_last
	step_left
	step_left
	turn_head_up
	accelerate_last
	step_right
	step_right
	step_right
	step_right
	turn_head_up
	accelerate_last
	step_left
	step_left
	turn_head_down
	step_end
; 0x6d267

MovementData_0x6d267: ; 0x6d267
	step_right
	step_right
	step_right
	step_right
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end
; 0x6d271

MovementData_0x6d271: ; 0x6d271
	step_up
	step_left
	step_left
	step_left
	step_left
	turn_head_up
	step_end
; 0x6d278

MovementData_0x6d278: ; 0x6d278
	step_left
	step_end
; 0x6d27a

MovementData_0x6d27a: ; 0x6d27a
	step_down
	step_down
	step_down
	step_down
	step_down
	step_left
	step_left
	step_left
	step_end
; 0x6d283

MovementData_0x6d283: ; 0x6d283
	step_down
	step_down
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end
; 0x6d28c

MovementData_0x6d28c: ; 0x6d28c
	step_right
	step_right
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_right
	step_right
	step_right
	step_right
	step_end
; 0x6d299

MovementData_0x6d299: ; 0x6d299
	step_right
	step_right
	step_down
	step_down
	step_down
	step_down
	step_right
	step_right
	step_right
	step_right
	step_end
; 0x6d2a4

MovementData_0x6d2a4: ; 0x6d2a4
	step_right
	step_right
	step_down
	step_down
	step_right
	step_right
	step_right
	step_right
	step_end
; 0x6d2ad

UnknownText_0x6d2ad: ; 0x6d2ad
	text "Reste où tu es!"
	done
; 0x6d2c3

UnknownText_0x6d2c3: ; 0x6d2c3
	text "On peut pas"
	line "laisser une peste"
	cont "comme toi traîner"
	cont "par ici."

	para "Tu portes un coup"
	line "a la fierté de la"
	cont "TEAM ROCKET, tu"
	cont "comprends?"

	para "T'es peut-être"
	line "fort, mais t'as"

	para "aucune chance a"
	line "deux contre un."

	para "Désolée bébé,"
	line "mais c'est l'heure"
	cont "de la fessée!"
	done
; 0x6d38c

UnknownText_0x6d38c: ; 0x6d38c
	text "Dis donc! Moi"
	line "aussi je veux"
	cont "m'amuser."
	done
; 0x6d3bd

UnknownText_0x6d3bd: ; 0x6d3bd
	text "Quoi? Tu avais un"
	line "complice?"

	para "Où est ton sens de"
	line "l'honneur?"

	para "En tant que rem-"
	line "plaçant du boss"

	para "GIOVANNI, je vais"
	line "te montrer qu'il"

	para "faut pas te mêler"
	line "des affaires de la"
	cont "TEAM ROCKET!"
	done
; 0x6d45c

UnknownText_0x6d45c: ; 0x6d45c
	text "Tss, c'est vrai"
	line "que t'es balèze."

	para "Dommage."

	para "Si tu venais à la"
	line "TEAM ROCKET, tu"

	para "deviendrais vite"
	line "un grand"
	cont "commandant."
	done
; 0x6d4c6

UnknownText_0x6d4c6: ; 0x6d4c6
	text "<...>Cette cachette"
	line "est fichue<...>"

	para "C'est pas grave."
	line "L'opération radio"
	cont "est une réussite"
	cont "totale."

	para "On se fiche de"
	line "cette cachette"
	cont "maintenant."

	para "Nous avons"
	line "d'autres plans."

	para "Vous allez vite"
	line "comprendre la"

	para "puissance de la"
	line "TEAM ROCKET."

	para "Amusez-vous tant"
	line "que vous le"
	cont "pouvez."

	para "Hahahahahaha!"
	done
; 0x6d5d8

UnknownText_0x6d5d8: ; 0x6d5d8
	text "PETER: Terminé!"
	line "On a battu tous"

	para "les gars de la"
	line "TEAM ROCKET du"
	cont "coin."

	para "Je m'inquiète à"
	line "propos du jeune"

	para "homme que j'ai"
	line "combattu<...>"
	done
; 0x6d64e

UnknownText_0x6d64e: ; 0x6d64e
	text "Pardon, <PLAY_G>."
	line "J'étais en train"

	para "de t'admirer en"
	line "silence."

	para "Bon, il faut qu'on"
	line "éteigne cet"

	para "étrange signal"
	line "radio."
	done
; 0x6d6cf

UnknownText_0x6d6cf: ; 0x6d6cf
	text "C'est cette machi-"
	line "ne qui cause tous"
	cont "ces problèmes."

	para "Je ne vois pas"
	line "d'interrupteur<...>"

	para "Il n'y a pas le"
	line "choix: il faut"

	para "mettre K.O. tous"
	line "les ELECTRODE."

	para "Cela devrait arrê-"
	line "ter cette machine"

	para "de transmettre ce"
	line "signal."

	para "Je n'aime pas ça,"
	line "ce n'est pas la"
	cont "faute des #MON<...>"

	para "<PLAY_G>, on fait"
	line "chacun un côté."
	done
; 0x6d7ea

UnknownText_0x6d7ea: ; 0x6d7ea
	text "PETER: Je m'occupe"
	line "de ce côté."
	done
; 0x6d809

UnknownText_0x6d809: ; 0x6d809
	text "PETER: Cet étrange"
	line "signal s'est enfin"
	cont "arrêté."

	para "Le LAC doit être"
	line "revenu à la"
	cont "normal."

	para "Tu es formidable!"
	line "Je te remercie au"

	para "nom de tous les"
	line "#MON."

	para "Au fait, voilà"
	line "pour toi."

	para "Je l'ai trouvée"
	line "par terre mais je"
	cont "n'en ai pas"
	cont "besoin."
	done
; 0x6d8e6

UnknownText_0x6d8e6: ; 0x6d8e6
	text "<PLAYER> reçoit"
	line "CS03."
	done
; 0x6d8f8

UnknownText_0x6d8f8: ; 0x6d8f8
	text "C'est SURF"
	line "Apprends-là à un"

	para "#MON EAU pour"
	line "aller sur l'eau en"
	cont "dehors des"
	cont "combats."

	para "Garde ceci a"
	line "l'esprit."

	para "Il te faudra le"
	line "BADGE de l'ARENE"
	cont "de ROSALIA."
	done
; 0x6d994

UnknownText_0x6d994: ; 0x6d994
	text "<PLAY_G><...>"

	para "Devenir le meil-"
	line "leur dresseur"

	para "#MON prend du"
	line "temps et est très"
	cont "difficile<...>"

	para "Tu penses tenir"
	line "le coup?"

	para "<...>"

	para "Je vois."
	line "Tu as raison."

	para "Tu ne poursuivrais"
	line "pas ce rêve si tu"

	para "abandonnais si"
	line "facilement."

	para "Je suis impatient"
	line "de te revoir!"
	done
; 0x6da97

UnknownText_0x6da97: ; 0x6da97
	text "PETER: Tu vas"
	line "bien?"

	para "Tes #MON ont"
	line "l'air fatigués."

	para "Tiens, soigne-les"
	line "avec mon médica-"
	cont "ment."
	done
; 0x6daf7

UnknownText_0x6daf7: ; 0x6daf7
	text "PETER: <PLAY_G>,"
	line "ensemble pour les"
	cont "#MON!"
	done
; 0x6db22

GruntM17SeenText: ; 0x6db22
	text "Les NOSFERAPTI"
	line "sont courant la"
	cont "nuit."
	done
; 0x6db79

GruntM17BeatenText: ; 0x6db79
	text "Amener des chauve-"
	line "souris ici n'était"
	cont "pas une bonne"
	cont "idée<...>"
	done
; 0x6db88

UnknownText_0x6db88: ; 0x6db88
	text "La famille des"
	line "NOSFERAPTI consis-"
	cont "te en des #MON"
	cont "POISON."

	para "Ils sont faibles"
	line "face au #MON"
	cont "PSY comme STAROSS."
	done
; 0x6dbca

GruntM18SeenText: ; 0x6dbca
	text "Je vais t'appren-"
	line "dre un truc ou"

	para "deux sur l'évolu-"
	line "tion des #MON."
	done
; 0x6dc09

GruntM18BeatenText: ; 0x6dc09
	text "Raté<...>"
	done
; 0x6dc1a

UnknownText_0x6dc1a: ; 0x6dc1a
	text "Tu peux facilement"
	line "annuler l'évolu-"
	cont "tion d'un #MON"
	cont "qui combat."

	para "Ce n'est pas le"
	line "cas si tu utilises"
	cont "un SUPER BONBON."

	para "ONIX n'évolue pas"
	line "seulement grâce au"
	cont "niveau en"
	cont "revanche."
	done
; 0x6dcb0

GruntM19SeenText: ; 0x6dcb0
	text "Espèce de sale"
	line "peste!"
	done
; 0x6dcc9

GruntM19BeatenText: ; 0x6dcc9
	text "Grrrrr<...>"
	done
; 0x6dcd1

UnknownText_0x6dcd1: ; 0x6dcd1
	text "Seul le chef"
	line "connaît le mot de"
	cont "passe de la porte."

	para "Où est le chef?"
	line "Qui sait? Va le"
	cont "chercher toi-même."
	done
; 0x6dd39

UnknownText_0x6dd39: ; 0x6dd39
	text "La porte est"
	line "fermée<...>"

	para "Il faut un mot"
	line "de passe."
	done
; 0x6dd6b

UnknownText_0x6dd6b: ; 0x6dd6b
	text "La porte est"
	line "fermée<...>"

	para "<PLAYER> rentre"
	line "le mot de passe."

	para "La porte s'ouvre!"
	done
; 0x6dda7

UnknownText_0x6dda7: ; 0x6dda7
	text "C'est l'émetteur"
	line "radio qui transmet"

	para "ce sinistre"
	line "signal."

	para "Il tourne à fond"
	line "les manettes!"
	done
; 0x6de03

UnknownText_0x6de03: ; 0x6de03
	text "L'émetteur radio"
	line "a enfin interrompu"

	para "son signal"
	line "maléfique."
	done
; 0x6de44

TeamRocketBaseB2F_MapEventHeader: ; 0x6de44
	; filler
	db 0, 0

	; warps
	db 5
	warp_def $e, $3, 2, GROUP_TEAM_ROCKET_BASE_B1F, MAP_TEAM_ROCKET_BASE_B1F
	warp_def $2, $3, 1, GROUP_TEAM_ROCKET_BASE_B3F, MAP_TEAM_ROCKET_BASE_B3F
	warp_def $2, $1b, 2, GROUP_TEAM_ROCKET_BASE_B3F, MAP_TEAM_ROCKET_BASE_B3F
	warp_def $6, $3, 3, GROUP_TEAM_ROCKET_BASE_B3F, MAP_TEAM_ROCKET_BASE_B3F
	warp_def $e, $1b, 4, GROUP_TEAM_ROCKET_BASE_B3F, MAP_TEAM_ROCKET_BASE_B3F

	; xy triggers
	db 9
	xy_trigger 0, $e, $5, $0, UnknownScript_0x6d085, $0, $0
	xy_trigger 0, $d, $4, $0, UnknownScript_0x6d08b, $0, $0
	xy_trigger 1, $b, $e, $0, UnknownScript_0x6cf95, $0, $0
	xy_trigger 1, $b, $f, $0, UnknownScript_0x6cf9c, $0, $0
	xy_trigger 2, $c, $e, $0, UnknownScript_0x6d075, $0, $0
	xy_trigger 2, $c, $f, $0, UnknownScript_0x6d075, $0, $0
	xy_trigger 2, $3, $c, $0, UnknownScript_0x6d07a, $0, $0
	xy_trigger 2, $a, $c, $0, UnknownScript_0x6d07a, $0, $0
	xy_trigger 2, $b, $c, $0, UnknownScript_0x6d07a, $0, $0

	; signposts
	db 23
	signpost 12, 14, $6, MapTeamRocketBaseB2FSignpostPtr1
	signpost 12, 15, $6, MapTeamRocketBaseB2FSignpostPtr1
	signpost 9, 17, $0, MapTeamRocketBaseB2FSignpost21Script
	signpost 9, 16, $0, MapTeamRocketBaseB2FSignpost21Script
	signpost 9, 15, $0, MapTeamRocketBaseB2FSignpost21Script
	signpost 9, 14, $0, MapTeamRocketBaseB2FSignpost21Script
	signpost 9, 13, $0, MapTeamRocketBaseB2FSignpost21Script
	signpost 9, 12, $0, MapTeamRocketBaseB2FSignpost21Script
	signpost 8, 12, $0, MapTeamRocketBaseB2FSignpost21Script
	signpost 7, 12, $0, MapTeamRocketBaseB2FSignpost21Script
	signpost 6, 12, $0, MapTeamRocketBaseB2FSignpost21Script
	signpost 5, 12, $0, MapTeamRocketBaseB2FSignpost21Script
	signpost 4, 12, $0, MapTeamRocketBaseB2FSignpost21Script
	signpost 4, 13, $0, MapTeamRocketBaseB2FSignpost21Script
	signpost 4, 14, $0, MapTeamRocketBaseB2FSignpost21Script
	signpost 4, 15, $0, MapTeamRocketBaseB2FSignpost21Script
	signpost 4, 16, $0, MapTeamRocketBaseB2FSignpost21Script
	signpost 4, 17, $0, MapTeamRocketBaseB2FSignpost21Script
	signpost 5, 17, $0, MapTeamRocketBaseB2FSignpost21Script
	signpost 6, 17, $0, MapTeamRocketBaseB2FSignpost21Script
	signpost 7, 17, $0, MapTeamRocketBaseB2FSignpost21Script
	signpost 8, 17, $0, MapTeamRocketBaseB2FSignpost21Script
	signpost 7, 26, $7, MapTeamRocketBaseB2FSignpostItem22

	; people-events
	db 14
	person_event SPRITE_ROCKET, 20, 24, $7, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_ROCKET_WHO_FIGHTS_LANCE_IN_ROCKET_BASE_B2F
	person_event SPRITE_ROCKET_GIRL, 20, 24, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, ObjectEvent, EVENT_EXECUTIVEF_IN_ROCKET_BASE_B2F
	person_event SPRITE_LANCE, 17, 9, $6, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_LANCE_IN_ROCKET_BASE_B2F
	person_event SPRITE_DRAGON, 17, 13, $9, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_DRAGONITE_IN_ROCKET_BASE_B2F
	person_event SPRITE_VOLTORB, 9, 11, $16, 0, 0, -1, -1, 0, 0, 0, VoltorbScript_0x6d101, EVENT_ROCKET_BASE_ELECTRODE_1
	person_event SPRITE_VOLTORB, 11, 11, $16, 0, 0, -1, -1, 0, 0, 0, VoltorbScript_0x6d12c, EVENT_ROCKET_BASE_ELECTRODE_2
	person_event SPRITE_VOLTORB, 13, 11, $16, 0, 0, -1, -1, 0, 0, 0, VoltorbScript_0x6d157, EVENT_ROCKET_BASE_ELECTRODE_3
	person_event SPRITE_VOLTORB, 9, 26, $16, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_ROCKET_BASE_ELECTRODE_1
	person_event SPRITE_VOLTORB, 11, 26, $16, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_ROCKET_BASE_ELECTRODE_2
	person_event SPRITE_VOLTORB, 13, 26, $16, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_ROCKET_BASE_ELECTRODE_3
	person_event SPRITE_ROCKET, 17, 29, $6, 0, 0, -1, -1, 0, 2, 3, TrainerGruntM17, EVENT_ROCKETS_POPULATE_ROCKET_BASE
	person_event SPRITE_ROCKET, 5, 8, $a, 0, 0, -1, -1, 0, 2, 1, TrainerGruntM18, EVENT_ROCKETS_POPULATE_ROCKET_BASE
	person_event SPRITE_ROCKET, 18, 25, $8, 0, 0, -1, -1, 0, 2, 4, TrainerGruntM19, EVENT_ROCKETS_POPULATE_ROCKET_BASE
	person_event SPRITE_POKE_BALL, 14, 7, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x6d20d, EVENT_ITEM_TEAM_ROCKET_BASE_B2F_TM_THIEF
; 0x6dfd4

