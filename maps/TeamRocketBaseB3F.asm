TeamRocketBaseB3F_MapScriptHeader: ; 0x6dfd4
	; trigger count
	db 4

	; triggers
	dw UnknownScript_0x6dfe9, $0000
	dw UnknownScript_0x6dfed, $0000
	dw UnknownScript_0x6dfee, $0000
	dw UnknownScript_0x6dfef, $0000

	; callback count
	db 1

	; callbacks

	dbw 1, UnknownScript_0x6dff0
; 0x6dfe9

UnknownScript_0x6dfe9: ; 0x6dfe9
	priorityjump LanceScript_0x6dffc
	end
; 0x6dfed

UnknownScript_0x6dfed: ; 0x6dfed
	end
; 0x6dfee

UnknownScript_0x6dfee: ; 0x6dfee
	end
; 0x6dfef

UnknownScript_0x6dfef: ; 0x6dfef
	end
; 0x6dff0

UnknownScript_0x6dff0: ; 0x6dff0
	checkevent EVENT_UNLOCKED_TEAM_ROCKET_BOSS_ROOM_DOOR
	iftrue UnknownScript_0x6dff7
	return
; 0x6dff7

UnknownScript_0x6dff7: ; 0x6dff7
	changeblock $a, $8, $7
	return
; 0x6dffc

LanceScript_0x6dffc: ; 0x6dffc
	spriteface $0, $2
	pause 5
	spriteface $4, $3
	pause 20
	applymovement $2, MovementData_0x6e12a
	loadfont
	writetext UnknownText_0x6e179
	waitbutton
	closetext
	applymovement $2, MovementData_0x6e12c
	disappear $2
	dotrigger $1
	end
; 0x6e019

UnknownScript_0x6e019: ; 0x6e019
	spriteface $0, $2
	showemote $0, $0, 15
	special Functionc48f
	appear $a
	applymovement $a, MovementData_0x6e164
	spriteface $0, $2
	playmusic MUSIC_RIVAL_ENCOUNTER
	loadfont
	writetext UnknownText_0x6e267
	waitbutton
	closetext
	playsound SFX_TACKLE
	applymovement $0, MovementData_0x6e175
	applymovement $a, MovementData_0x6e16d
	disappear $a
	dotrigger $2
	special RestartMapMusic
	end
; 0x6e048

RocketScript_0x6e048: ; 0x6e048
	jumptextfaceplayer UnknownText_0x6e235
; 0x6e04b

UnknownScript_0x6e04b: ; 0x6e04b
	applymovement $0, MovementData_0x6e133
	jump UnknownScript_0x6e056
; 0x6e052

UnknownScript_0x6e052: ; 0x6e052
	applymovement $0, MovementData_0x6e13a
UnknownScript_0x6e056: ; 0x6e056
	pause 30
	showemote $0, $3, 15
	special SaveMusic
	playmusic MUSIC_ROCKET_ENCOUNTER
	spriteface $3, $0
	loadfont
	writetext UnknownText_0x6e400
	waitbutton
	closetext
	applymovement $3, MovementData_0x6e142
	winlosstext UnknownText_0x6e511, $0000
	setlasttalked $3
	loadtrainer EXECUTIVEM, 4
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_ROCKET_EXECUTIVEM_574
	loadfont
	writetext UnknownText_0x6e548
	waitbutton
	closetext
	applymovement $3, MovementData_0x6e144
	playsound SFX_TACKLE
	applymovement $3, MovementData_0x6e147
	disappear $3
	dotrigger $3
	end
; 0x6e091

MoltresScript_0x6e091: ; 0x6e091
	loadfont
	writetext UnknownText_0x6e585
	waitbutton
	closetext
	setevent EVENT_LEARNED_HAIL_GIOVANNI
	end
; 0x6e09b

TrainerGruntF5: ; 0x6e09b
	; bit/flag number
	dw $514

	; trainer group && trainer id
	db GRUNTF, 5

	; text when seen
	dw GruntF5SeenText

	; text when trainer beaten
	dw GruntF5BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntF5Script
; 0x6e0a7

GruntF5Script: ; 0x6e0a7
	talkaftercancel
	loadfont
	writetext UnknownText_0x6e611
	waitbutton
	closetext
	setevent EVENT_LEARNED_SLOWPOKETAIL
	end
; 0x6e0b2

TrainerGruntM28: ; 0x6e0b2
	; bit/flag number
	dw $50c

	; trainer group && trainer id
	db GRUNTM, 28

	; text when seen
	dw GruntM28SeenText

	; text when trainer beaten
	dw GruntM28BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntM28Script
; 0x6e0be

GruntM28Script: ; 0x6e0be
	talkaftercancel
	loadfont
	writetext UnknownText_0x6e737
	waitbutton
	closetext
	setevent EVENT_LEARNED_RATICATE_TAIL
	end
; 0x6e0c9

TrainerScientistRoss: ; 0x6e0c9
	; bit/flag number
	dw $49f

	; trainer group && trainer id
	db SCIENTIST, ROSS

	; text when seen
	dw ScientistRossSeenText

	; text when trainer beaten
	dw ScientistRossBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw ScientistRossScript
; 0x6e0d5

ScientistRossScript: ; 0x6e0d5
	talkaftercancel
	loadfont
	writetext UnknownText_0x6e822
	waitbutton
	closetext
	end
; 0x6e0dd

TrainerScientistMitch: ; 0x6e0dd
	; bit/flag number
	dw $4a0

	; trainer group && trainer id
	db SCIENTIST, MITCH

	; text when seen
	dw ScientistMitchSeenText

	; text when trainer beaten
	dw ScientistMitchBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw ScientistMitchScript
; 0x6e0e9

ScientistMitchScript: ; 0x6e0e9
	talkaftercancel
	loadfont
	writetext UnknownText_0x6e90a
	waitbutton
	closetext
	end
; 0x6e0f1

MapTeamRocketBaseB3FSignpostPtr1: ; 0x6e0f1
	dw $0303
	dw MapTeamRocketBaseB3FSignpost1Script

; 0x6e0f5

MapTeamRocketBaseB3FSignpost1Script: ; 0x6e0f5
	loadfont
	checkevent EVENT_LEARNED_SLOWPOKETAIL
	iffalse UnknownScript_0x6e105
	checkevent EVENT_LEARNED_RATICATE_TAIL
	iffalse UnknownScript_0x6e105
	jump UnknownScript_0x6e10b
; 0x6e105

UnknownScript_0x6e105: ; 0x6e105
	writetext UnknownText_0x6e970
	waitbutton
	closetext
	end
; 0x6e10b

UnknownScript_0x6e10b: ; 0x6e10b
	writetext UnknownText_0x6e9a3
	waitbutton
	playsound SFX_ENTER_DOOR
	changeblock $a, $8, $7
	reloadmappart
	closetext
	setevent EVENT_UNLOCKED_TEAM_ROCKET_BOSS_ROOM_DOOR
	waitsfx
	end
; 0x6e11d

MapTeamRocketBaseB3FSignpost9Script: ; 0x6e11d
	jumpstd teamrocketoath
; 0x6e120

ItemFragment_0x6e120: ; 0x6e120
	db PROTEIN, 1
; 0x6e122

ItemFragment_0x6e122: ; 0x6e122
	db X_SPECIAL, 1
; 0x6e124

ItemFragment_0x6e124: ; 0x6e124
	db FULL_HEAL, 1
; 0x6e126

ItemFragment_0x6e126: ; 0x6e126
	db ICE_HEAL, 1
; 0x6e128

ItemFragment_0x6e128: ; 0x6e128
	db ULTRA_BALL, 1
; 0x6e12a

MovementData_0x6e12a: ; 0x6e12a
	step_right
	step_end
; 0x6e12c

MovementData_0x6e12c: ; 0x6e12c
	step_down
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end
; 0x6e133

MovementData_0x6e133: ; 0x6e133
	step_up
	step_up
	step_up
	step_left
	step_left
	turn_head_up
	step_end
; 0x6e13a

MovementData_0x6e13a: ; 0x6e13a
	step_up
	step_up
	step_left
	step_up
	step_left
	step_left
	turn_head_up
	step_end
; 0x6e142

MovementData_0x6e142: ; 0x6e142
	step_down
	step_end
; 0x6e144

MovementData_0x6e144: ; 0x6e144
	big_step_right
	big_step_right
	step_end
; 0x6e147

MovementData_0x6e147: ; 0x6e147
	fix_facing
	fast_jump_step_left
	remove_fixed_facing
	accelerate_last
	accelerate_last
	slow_step_right
	big_step_down
	big_step_down
	big_step_down
	big_step_right
	big_step_down
	big_step_down
	big_step_down
	big_step_left
	big_step_left
	big_step_left
	big_step_left
	big_step_left
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_left
	big_step_left
	step_end
; 0x6e164

MovementData_0x6e164: ; 0x6e164
	step_down
	step_down
	step_down
	step_down
	step_down
	step_right
	step_right
	step_right
	step_end
; 0x6e16d

MovementData_0x6e16d: ; 0x6e16d
	step_left
	step_left
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end
; 0x6e175

MovementData_0x6e175: ; 0x6e175
	fix_facing
	big_step_right
	remove_fixed_facing
	step_end
; 0x6e179

UnknownText_0x6e179: ; 0x6e179
	text "PETER: Il faut 2"
	line "mots de passe pour"

	para "entrer chez le"
	line "boss."

	para "Seuls certains"
	line "ROCKETS les con-"
	cont "naissent."

	para "Ce ROCKET m'a ap-"
	line "pris tout ça très"
	cont "gentiment."

	para "<PLAY_G>, allons"
	line "trouver les mots"
	cont "de passe!"
	done
; 0x6e235

UnknownText_0x6e235: ; 0x6e235
	text "Gueuuh<...> Ce type"
	line "avec la cape est"
	cont "trop balèze<...>"
	done
; 0x6e267

UnknownText_0x6e267: ; 0x6e267
	text "<...>"

	para "Je t'avais pas dit"
	line "que ce serait moi"

	para "qui détruirait la"
	line "TEAM ROCKET?"

	para "Dis moi, c'est qui"
	line "le type avec la"

	para "cape aux #MON"
	line "DRAGON?"

	para "Mes #MON se"
	line "sont fait allumer."

	para "Mais c'est pas"
	line "grave. Je l'aurais"

	para "avec des meilleurs"
	line "#MON."

	para "C'est ce qu'il a"
	line "dit qui me"
	cont "perturbe<...>"

	para "Il raconte que je"
	line "ne fais pas con-"

	para "fiance à mes"
	line "#MON."

	para "Comment j'ai pu"
	line "perdre face a un"
	cont "type pareil!"

	para "<...>Pff! Allez"
	line "dégage, j'ai pas"
	cont "le temps pour toi!"
	done
; 0x6e400

UnknownText_0x6e400: ; 0x6e400
	text "Hein? Qui va là?"
	line "C'est le bureau de"

	para "notre chef vénéré,"
	line "GIOVANNI."

	para "Depuis la dissolu-"
	line "tion de la TEAM"

	para "ROCKET il y a 3"
	line "moi, il s'entraîne"
	cont "en solo."

	para "Mais il reviendra"
	line "prendre le pouvoir"

	para "un jour, c'est"
	line "sûr!"

	para "C'est pourquoi"
	line "nous sommes fidè-"
	cont "les au poste."

	para "Je ne laisserai"
	line "passer aucun"
	cont "intrus!"
	done
; 0x6e511

UnknownText_0x6e511: ; 0x6e511
	text "Im<...> Impossible<...>"

	para "Pardonnez-moi"
	line "GIOVANNI!"
	done
; 0x6e548

UnknownText_0x6e548: ; 0x6e548
	text "Non, je ne me lai-"
	line "sserai pas faire."

	para "Je dois vite pré-"
	line "venir les autres!"
	done
; 0x6e585

UnknownText_0x6e585: ; 0x6e585
	text "CORNEBRE: Le mot"
	line "de passe est<...>"

	para "VIVE GIOVANNI."
	done
; 0x6e5af

GruntF5SeenText: ; 0x6e5af
	text "Si je connais le"
	line "mot de passe?"

	para "Peut-être."

	para "Mais t'es trop"
	line "faible pour"
	cont "l'avoir!"
	done
; 0x6e5f1

GruntF5BeatenText: ; 0x6e5f1
	text "Pardonnez-moi"
	line "commandant<...>"
	done
; 0x6e611

UnknownText_0x6e611: ; 0x6e611
	text "Le mot de passe de"
	line "la salle du chef"
	cont "est<...>"

	para "QUEUERAMOLOS."

	para "Mais ça te sert à"
	line "rien sans l'autre"
	cont "mot de passe."
	done
; 0x6e671

GruntM28SeenText: ; 0x6e671
	text "Gnyark Gnyark!"

	para "Tu me lances un"
	line "défi? A moi? T'es"

	para "débile mais t'as"
	line "du cran!"

	para "J'aime ça!"

	para "Si tu me bats, je"
	line "te donnerais un"

	para "des mots de passe"
	line "de la salle du"
	cont "chef!"
	done
; 0x6e717

GruntM28BeatenText: ; 0x6e717
	text "Gnyark!"
	line "Pas mal!"
	done
; 0x6e737

UnknownText_0x6e737: ; 0x6e737
	text "Gnyark Gnyark!"

	para "Le mot de passe"
	line "est<...>"

	para "Heu<...> QUEUE"
	line "RATTATAC je crois."
	done
; 0x6e78d

ScientistRossSeenText: ; 0x6e78d
	text "Je travaillais"
	line "pour la SYLPHE"

	para "mais maintenant je"
	line "suis pour la"
	cont "TEAM ROCKET."

	para "Une peste comme"
	line "toi ne mérite"
	cont "qu'une punition."
	done
; 0x6e802

ScientistRossBeatenText: ; 0x6e802
	text "Erreur de calcul<...>"
	done
; 0x6e822

UnknownText_0x6e822: ; 0x6e822
	text "Un signal radio"
	line "qui rend les #-"
	cont "MON fous<...>"

	para "Cette expérience"
	line "est une réussite!"

	para "Avec notre arme"
	line "secrète, rien ne"

	para "pourra arrêter la"
	line "TEAM ROCKET!"
	done
; 0x6e8ac

ScientistMitchSeenText: ; 0x6e8ac
	text "Je modifie généti-"
	line "quement des"
	cont "plantes."
	done
; 0x6e8df

ScientistMitchBeatenText: ; 0x6e8df
	text "Moi je pense, je"
	line "me bats pas."
	done
; 0x6e90a

UnknownText_0x6e90a: ; 0x6e90a
	text "Si l'on augmente"
	line "la puissance de"
	cont "l'émission a tra-"
	cont "vers le pays<...>"

	para "Ohhh, l'idée"
	line "m'excite!"
	done
; 0x6e970

UnknownText_0x6e970: ; 0x6e970
	text "La porte est"
	line "fermée<...>"

	para "Il faut deux mots"
	line "de passe."
	done
; 0x6e9a3

UnknownText_0x6e9a3: ; 0x6e9a3
	text "La porte est"
	line "fermée<...>"

	para "<PLAYER> rentre les"
	line "deux mots de"
	cont "passe."

	para "La porte s'ouvre!"
	done
; 0x6e9e4

TeamRocketBaseB3F_MapEventHeader: ; 0x6e9e4
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $2, $3, 2, GROUP_TEAM_ROCKET_BASE_B2F, MAP_TEAM_ROCKET_BASE_B2F
	warp_def $2, $1b, 3, GROUP_TEAM_ROCKET_BASE_B2F, MAP_TEAM_ROCKET_BASE_B2F
	warp_def $6, $3, 4, GROUP_TEAM_ROCKET_BASE_B2F, MAP_TEAM_ROCKET_BASE_B2F
	warp_def $e, $1b, 5, GROUP_TEAM_ROCKET_BASE_B2F, MAP_TEAM_ROCKET_BASE_B2F

	; xy triggers
	db 3
	xy_trigger 2, $8, $a, $0, UnknownScript_0x6e04b, $0, $0
	xy_trigger 2, $8, $b, $0, UnknownScript_0x6e052, $0, $0
	xy_trigger 1, $a, $8, $0, UnknownScript_0x6e019, $0, $0

	; signposts
	db 10
	signpost 9, 10, $6, MapTeamRocketBaseB3FSignpostPtr1
	signpost 9, 11, $6, MapTeamRocketBaseB3FSignpostPtr1
	signpost 1, 10, $0, MapTeamRocketBaseB3FSignpost9Script
	signpost 1, 11, $0, MapTeamRocketBaseB3FSignpost9Script
	signpost 1, 12, $0, MapTeamRocketBaseB3FSignpost9Script
	signpost 1, 13, $0, MapTeamRocketBaseB3FSignpost9Script
	signpost 13, 4, $0, MapTeamRocketBaseB3FSignpost9Script
	signpost 13, 5, $0, MapTeamRocketBaseB3FSignpost9Script
	signpost 13, 6, $0, MapTeamRocketBaseB3FSignpost9Script
	signpost 13, 7, $0, MapTeamRocketBaseB3FSignpost9Script

	; people-events
	db 14
	person_event SPRITE_LANCE, 18, 29, $6, 0, 0, -1, -1, 0, 0, 0, LanceScript_0x6dffc, EVENT_LANCE_IN_ROCKET_BASE_B3F
	person_event SPRITE_ROCKET, 7, 12, $7, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_EXECUTIVEM_IN_ROCKET_BASE_B3F
	person_event SPRITE_SPEAROW, 6, 11, $16, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, MoltresScript_0x6e091, EVENT_ROCKETS_POPULATE_ROCKET_BASE
	person_event SPRITE_ROCKET_GIRL, 11, 25, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 0, TrainerGruntF5, EVENT_ROCKETS_POPULATE_ROCKET_BASE
	person_event SPRITE_ROCKET, 18, 9, $a, 0, 0, -1, -1, 0, 2, 3, TrainerGruntM28, EVENT_ROCKETS_POPULATE_ROCKET_BASE
	person_event SPRITE_SCIENTIST, 15, 27, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 0, TrainerScientistRoss, EVENT_ROCKETS_POPULATE_ROCKET_BASE
	person_event SPRITE_SCIENTIST, 19, 15, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerScientistMitch, EVENT_ROCKETS_POPULATE_ROCKET_BASE
	person_event SPRITE_ROCKET, 18, 28, $6, 0, 0, -1, -1, 0, 0, 0, RocketScript_0x6e048, EVENT_ROCKETS_POPULATE_ROCKET_BASE
	person_event SPRITE_SILVER, 9, 8, $6, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_SILVER_IN_TEAM_ROCKET_BASE
	person_event SPRITE_POKE_BALL, 16, 5, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x6e120, EVENT_ITEM_TEAM_ROCKET_BASE_B3F_PROTEIN
	person_event SPRITE_POKE_BALL, 16, 7, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x6e122, EVENT_ITEM_TEAM_ROCKET_BASE_B3F_X_SPECIAL
	person_event SPRITE_POKE_BALL, 13, 32, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x6e124, EVENT_ITEM_TEAM_ROCKET_BASE_B3F_FULL_HEAL
	person_event SPRITE_POKE_BALL, 6, 21, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x6e126, EVENT_ITEM_TEAM_ROCKET_BASE_B3F_ICE_HEAL
	person_event SPRITE_POKE_BALL, 14, 18, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x6e128, EVENT_ITEM_TEAM_ROCKET_BASE_B3F_ULTRA_BALL
; 0x6eafe

