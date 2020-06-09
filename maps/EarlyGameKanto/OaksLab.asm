OaksLabRB_MapScriptHeader: ; 0x19b3c5
	; trigger count
	db 5
	dw .Trigger0, $0000
	dw .Trigger1, $0000
	dw .Trigger2, $0000
	dw .Trigger3, $0000
	dw .Trigger4, $0000

	; callback count
	db 1
	dbw 4, .SetSprites
; 0x19b3c7
.Trigger0:
	end

.Trigger1:
	priorityjump WalkUpWithOak
	end

.Trigger2:
	end

.Trigger3:
	end

.Trigger4:
	end

.SetSprites:
	checkevent EVENT_GOT_POKEMON_FROM_OAK
	iftrue .skip
	spriteface $2, UP
	moveperson $2, $5, $a
.skip
	return

WalkUpWithOak:
	follow $2, $0
	applymovement $2, MovementData_OakWalksUp
	stopfollow
	spriteface $2, DOWN
	spriteface $6, UP
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .male_rival_1
	writetext _OaksLabRivalWaitingTextF
	jump .done_text_1

.male_rival_1
	writetext _OaksLabRivalWaitingText
.done_text_1
	waitbutton
	closetext
	loadfont
	writetext _OaksLabChooseMonText
	waitbutton
	closetext
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .male_rival_2
	writetext _OaksLabRivalInterjectionTextF
	jump .done_text_2

.male_rival_2
	writetext _OaksLabRivalInterjectionText
.done_text_2
	waitbutton
	closetext
	loadfont
	writetext _OaksLabBePatientText
	waitbutton
	closetext
	dotrigger $2
	end

CharmanderPokeballScript:
	checkevent EVENT_GOT_POKEMON_FROM_OAK
	iftrue OaksLab_LastMonScript
	spriteface $2, DOWN
	checkevent EVENT_OAKS_LAB_OAK
	iftrue OaksLab_LookAtPokeballScript
	refreshscreen $0
	pokepic CHARMANDER
	cry CHARMANDER
	waitbutton
	closepokepic
	loadfont
	writetext _OaksLabCharmanderText
	yesorno
	iffalse OaksLabRB_DidntChooseStarterScript
	disappear $7
	setevent EVENT_GOT_CHARMANDER_FROM_OAK
	setevent EVENT_GOT_POKEMON_FROM_OAK
	writetext _OaksLabMonEnergeticText
	buttonsound
	waitsfx
	pokenamemem CHARMANDER, $0
	writetext _OaksLabReceivedMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke CHARMANDER, 5
	closetext
	checkcode VAR_FACING
	if_equal RIGHT, .facing_right
	applymovement $6, Movement_RivalTakesTwoStepsDown
	applymovement $6, Movement_RivalTakesThreeStepsRight
	applymovement $6, Movement_RivalTakesOneStepUp
	jump .RivalPicksMon

.facing_right
	applymovement $6, Movement_RivalTakesOneStepDown
	applymovement $6, Movement_RivalTakesThreeStepsRight
	spriteface $6, UP
.RivalPicksMon
	scall OaksLab_PrintRivalPickingMonText
	pokenamemem SQUIRTLE, $1
	disappear $8
	writetext _OaksLabRivalReceivedMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	closetext
	dotrigger $3
	end

BulbasaurPokeballScript:
	checkevent EVENT_GOT_POKEMON_FROM_OAK
	iftrue OaksLab_LastMonScript
	checkevent EVENT_OAKS_LAB_OAK
	iftrue OaksLab_LookAtPokeballScript
	spriteface $2, RIGHT
	refreshscreen $0
	pokepic BULBASAUR
	cry BULBASAUR
	waitbutton
	closepokepic
	loadfont
	writetext _OaksLabBulbasaurText
	yesorno
	iffalse OaksLabRB_DidntChooseStarterScript
	disappear $9
	setevent EVENT_GOT_BULBASAUR_FROM_OAK
	setevent EVENT_GOT_POKEMON_FROM_OAK
	writetext _OaksLabMonEnergeticText
	buttonsound
	waitsfx
	pokenamemem BULBASAUR, $0
	writetext _OaksLabReceivedMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke BULBASAUR, 5
	closetext
	applymovement $6, Movement_RivalTakesOneStepDown
	applymovement $6, Movement_RivalTakesTwoStepsRight
	spriteface $6, UP
	loadfont
	writetext _OaksLabRivalPickingMonText
	buttonsound
	pokenamemem CHARMANDER, $1
	disappear $7
	writetext _OaksLabRivalReceivedMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	closetext
	dotrigger $3
	end

SquirtlePokeballScript:
	checkevent EVENT_GOT_POKEMON_FROM_OAK
	iftrue OaksLab_LastMonScript
	checkevent EVENT_OAKS_LAB_OAK
	iftrue OaksLab_LookAtPokeballScript
	spriteface $2, RIGHT
	refreshscreen $0
	pokepic SQUIRTLE
	cry SQUIRTLE
	waitbutton
	closepokepic
	loadfont
	writetext _OaksLabSquirtleText
	yesorno
	iffalse OaksLabRB_DidntChooseStarterScript
	disappear $8
	setevent EVENT_GOT_SQUIRTLE_FROM_OAK
	setevent EVENT_GOT_POKEMON_FROM_OAK
	writetext _OaksLabMonEnergeticText
	buttonsound
	waitsfx
	pokenamemem SQUIRTLE, $0
	writetext _OaksLabReceivedMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke SQUIRTLE, 5
	closetext
	applymovement $6, Movement_RivalTakesTwoStepsDown
	applymovement $6, Movement_RivalTakesFourStepsRight
	applymovement $6, Movement_RivalTakesOneStepUp
	loadfont
	writetext _OaksLabRivalPickingMonText
	buttonsound
	pokenamemem BULBASAUR, $1
	disappear $9
	writetext _OaksLabRivalReceivedMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	closetext
	dotrigger $3
	end

OaksLab_PrintRivalPickingMonText:
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .male_rival
	writetext _OaksLabRivalPickingMonTextF
	buttonsound
	end

.male_rival
	writetext _OaksLabRivalPickingMonText
	buttonsound
	end

OaksLabRB_DidntChooseStarterScript:
	closetext
	end

OaksLab_LastMonScript:
	jumptext _OaksLabLastMonText

OaksLab_LookAtPokeballScript:
	jumptext _OaksLabText39

OaksLab_RivalBattleTriggerLeft:
	scall OaksLab_RivalBattleIntroScript
	checkevent EVENT_GOT_CHARMANDER_FROM_OAK
	iftrue .charmander
	checkevent EVENT_GOT_SQUIRTLE_FROM_OAK
	iftrue .squirtle
	applymovement $6, Movement_RivalTakesTwoStepsLeftOneStepDown
	loadtrainer BLUE_RB, BLUE_RB_1C
	jump .startbattle
.squirtle
	applymovement $6, Movement_RivalTakesFourStepsLeftOneStepDown
	loadtrainer BLUE_RB, BLUE_RB_1B
	jump .startbattle
.charmander
	applymovement $6, Movement_RivalTakesThreeStepsLeftOneStepDown
	loadtrainer BLUE_RB, BLUE_RB_1A
.startbattle
	scall OaksLab_DoRivalBattle
	applymovement $6, Movement_RivalTakesOneStepRight
	spriteface $0, RIGHT
	jump OaksLab_RivalFinishesLeaving

OaksLab_RivalBattleTriggerRight:
	scall OaksLab_RivalBattleIntroScript
	checkevent EVENT_GOT_CHARMANDER_FROM_OAK
	iftrue .charmander
	checkevent EVENT_GOT_SQUIRTLE_FROM_OAK
	iftrue .squirtle
	applymovement $6, Movement_RivalTakesOneStepLeftOneStepDown
	loadtrainer BLUE_RB, BLUE_RB_1C
	jump .startbattle
.squirtle
	applymovement $6, Movement_RivalTakesThreeStepsLeftOneStepDown
	loadtrainer BLUE_RB, BLUE_RB_1B
	jump .startbattle
.charmander
	applymovement $6, Movement_RivalTakesTwoStepsLeftOneStepDown
	loadtrainer BLUE_RB, BLUE_RB_1A
.startbattle
	scall OaksLab_DoRivalBattle
	applymovement $6, Movement_RivalTakesOneStepLeft
	spriteface $0, LEFT
	jump OaksLab_RivalFinishesLeaving
OaksLab_RivalBattleIntroScript:
	setlasttalked $6
	playmusic MUSIC_RIVAL_RB
	spriteface $6, DOWN
	spriteface $2, DOWN
	spriteface $0, UP
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .male_rival
	writetext _OaksLabRivalChallengeTextF
	jump .done_text

.male_rival
	writetext _OaksLabRivalChallengeText
.done_text
	waitbutton
	closetext
	end

OaksLab_DoRivalBattle:
	winlosstext _OaksLabText_1d3be, _OaksLabText_1d3c3
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .got_rival_gender
	loadvar OtherTrainerClass, BLUE_RB_F
	winlosstext _OaksLabText_1d3beF, _OaksLabText_1d3c3F
.got_rival_gender
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	special RestartMapMusic
	special HealParty
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .male_rival
	writetext _OaksLabRivalToughenUpTextF
	jump .done_text

.male_rival
	writetext _OaksLabRivalToughenUpText
.done_text
	waitbutton
	closetext
	setevent EVENT_RB_BEAT_RIVAL_IN_LAB
	playmusic MUSIC_RIVAL_AFTER_RB
	end

OaksLab_RivalFinishesLeaving:
	applymovement $6, Movement_RivalTakesTwoStepsDown
	spriteface $0, DOWN
	applymovement $6, Movement_RivalTakesFourStepsDown
	disappear $6
	playsound SFX_EXIT_BUILDING
	waitsfx
	special RestartMapMusic
	dotrigger $4
	end

OakScript_OaksLabRB:
	checkflag ENGINE_POKEDEX
	iftrue .RatePokedex
	checkevent EVENT_GOT_PARCEL
	iftrue .GivePokedex
	checkevent EVENT_RB_BEAT_RIVAL_IN_LAB
	iftrue .AfterRivalBattle
	checkevent EVENT_GOT_POKEMON_FROM_OAK
	iftrue .BeforeRivalBattle
	jumptextfaceplayer _OaksLabText_1d2f0
.BeforeRivalBattle
	jumptextfaceplayer _OaksLabText_1d2f5
.AfterRivalBattle
	jumptextfaceplayer _OaksLabText_1d2fa
.RatePokedex
	faceplayer
	loadfont
	checkevent EVENT_001_STD
	iftrue .AroundTheWorld
	writetext _OaksLabText_1d31d
	waitbutton
	special ProfOaksPCBoot
	closetext
	end

.AroundTheWorld
	writetext _OaksLabAroundWorldText
	waitbutton
	closetext
	end

.GivePokedex
	setevent EVENT_001_STD
	faceplayer
	loadfont
	writetext _OaksLabDeliverParcelText1
	playsound SFX_KEY_ITEM
	waitsfx
	buttonsound
	takeitem OAKS_PARCEL, 1
	writetext _OaksLabDeliverParcelText2
	waitbutton
	closetext
	playmusic MUSIC_RIVAL_RB
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .male_rival_1
	writetext _OaksLabText21F
	jump .done_text_1

.male_rival_1
	writetext _OaksLabText21
.done_text_1
	waitbutton
	closetext
	spriteface $2, DOWN
	checkcode VAR_FACING
	if_equal UP, .rivalwalksfivesteps
	if_equal DOWN, .rivalwalksthreesteps
	moveperson $6, 4, 7
	appear $6
	applymovement $6, Movement_RivalTakesFourStepsUp
	jump .continuewithdex
.rivalwalksthreesteps
	moveperson $6, 4, 6
	appear $6
	applymovement $6, Movement_RivalTakesThreeStepsUp
	jump .continuewithdex
.rivalwalksfivesteps
	moveperson $6, 4, 8
	appear $6
	applymovement $6, Movement_RivalTakesFiveStepsUp
.continuewithdex
	special RestartMapMusic
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .male_rival_2
	writetext _OaksLabText22F
	jump .done_text_2

.male_rival_2
	writetext _OaksLabText22
.done_text_2
	waitbutton
	closetext
	loadfont
	writetext _OaksLabText23
	buttonsound
	writetext _OaksLabText24
	waitbutton
	closetext
	checkcode VAR_FACING
	if_equal RIGHT, .right
	applymovement $2, OaksLabMovement_OakGrabsDexes
	pause 8
	disappear $a
	pause 2
	disappear $b
	pause 8
	applymovement $2, OaksLabMovement_OakReturnsWithDexes
	jump .finish_giving_dex

.right
	applymovement $2, OaksLabMovement_OakGrabsDexes2
	spriteface $0, LEFT
	spriteface $6, LEFT
	pause 8
	disappear $a
	pause 2
	disappear $b
	pause 8
	spriteface $2, RIGHT
.finish_giving_dex
	loadfont
	writetext _OaksLabText25
	setflag ENGINE_POKEDEX
	setevent EVENT_VIRIDIAN_CITY_RB_OLD_MAN_LYING_DOWN
	clearevent EVENT_VIRIDIAN_CITY_RB_OLD_MAN_WALKING_ABOUT
	domaptrigger GROUP_ROUTE_22_RB, MAP_ROUTE_22_RB, $1
	domaptrigger GROUP_VIRIDIAN_CITY_RB, MAP_VIRIDIAN_CITY_RB, $1
	clearevent EVENT_RIVAL_ROUTE_22_RB
	playsound SFX_DEX_FANFARE_80_109
	waitsfx
	writetext _OaksLabGivePokeballsText1
	giveitem POKE_BALL, 5
	playsound SFX_ITEM
	waitsfx
	waitbutton
	writetext _OaksLabGivePokeballsText2
	buttonsound
	itemnotify
	writetext _OaksLabText26
	waitbutton
	closetext
	faceperson $0, $6
	faceperson $6, $0
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .male_rival_3
	writetext _OaksLabText27F
	jump .done_text_3

.male_rival_3
	writetext _OaksLabText27
.done_text_3
	waitbutton
	closetext
	spriteface $0, DOWN
	playmusic MUSIC_RIVAL_AFTER_RB
	applymovement $6, Movement_RivalTakesSixStepsDown
	disappear $6
	playsound SFX_EXIT_BUILDING
	waitsfx
	special RestartMapMusic
	end

BlueScript_OaksLabRB:
	checkevent EVENT_GOT_POKEMON_FROM_OAK
	iftrue .MyMonIsTheBest
	checkevent EVENT_OAKS_LAB_OAK
	iffalse .HurryUpAndChoose
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .male1
	jumptextfaceplayer _OaksLabGaryText1F
.male1
	jumptextfaceplayer _OaksLabGaryText1

.HurryUpAndChoose
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .male2
	jumptextfaceplayer _OaksLabText40F
.male2
	jumptextfaceplayer _OaksLabText40

.MyMonIsTheBest
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .male3
	jumptextfaceplayer _OaksLabText41F
.male3
	jumptextfaceplayer _OaksLabText41

OaksLabRB_WaitComeBack:
	spriteface $0, UP
	loadfont
	writetext _OaksLabLeavingText
	waitbutton
	closetext
	applymovement $0, Movement_PlayerTakesOneStepUp
	end

BlankEncyclopoediaScript:
	jumptext _OaksLabText_1d32c

Scientist1Script_OaksLabRB:
Scientist2Script_OaksLabRB:
	jumptextfaceplayer _OaksLabText_1d405

LassScript_OaksLabRB:
	jumptextfaceplayer _OaksLabText_1d340

MapOaksLabRBSignpost11Script:
	jumpstd difficultbookshelf

MapOaksLabRBSignpost15Script:
	jumptext _OakLabEmailText

MapOaksLabRBSignpost12Script:
	jumptext _PushStartText

MapOaksLabRBSignpost13Script:
	checkcode VAR_DEXCAUGHT
	if_less_than 2, .saveoption
	jumptext _StrengthsAndWeaknessesText
.saveoption
	jumptext _SaveOptionText

MapOaksLabRBSignpost14Script
	jumpstd trashcan


Movement_RivalTakesFiveStepsUp:
	slow_step_up
Movement_RivalTakesFourStepsUp:
	slow_step_up
Movement_RivalTakesThreeStepsUp:
	slow_step_up
Movement_RivalTakesTwoStepsUp:
	slow_step_up
Movement_RivalTakesOneStepUp:
	slow_step_up
	step_end

MovementData_OakWalksUp:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
Movement_PlayerTakesOneStepUp:
	step_up
	step_end

OaksLabMovement_OakGrabsDexes:
	step_left
	step_left
	turn_head_up
	step_end

OaksLabMovement_OakReturnsWithDexes:
	step_right
	step_right
	turn_head_down
	step_end

OaksLabMovement_OakGrabsDexes2:
	step_down
	step_down
	step_left
	step_left
	step_up
	step_up
	step_end

; OaksLabMovement_OakReturnsWithDexes2:
	; turn_head_right
	; step_end

Movement_RivalTakesFourStepsLeft:
	slow_step_left
Movement_RivalTakesThreeStepsLeft:
	slow_step_left
Movement_RivalTakesTwoStepsLeft:
	slow_step_left
Movement_RivalTakesOneStepLeft:
	slow_step_left
	step_end

Movement_RivalTakesFourStepsLeftOneStepDown:
	slow_step_left
Movement_RivalTakesThreeStepsLeftOneStepDown:
	slow_step_left
Movement_RivalTakesTwoStepsLeftOneStepDown:
	slow_step_left
Movement_RivalTakesOneStepLeftOneStepDown:
	slow_step_left
	slow_step_down
	step_end

Movement_RivalTakesSevenStepsDown:
	slow_step_down
Movement_RivalTakesSixStepsDown:
	slow_step_down
	slow_step_down
Movement_RivalTakesFourStepsDown:
	slow_step_down
Movement_RivalTakesThreeStepsDown:
	slow_step_down
Movement_RivalTakesTwoStepsDown:
	slow_step_down
Movement_RivalTakesOneStepDown:
	slow_step_down
	step_end

Movement_RivalTakesFourStepsRight:
	slow_step_right
Movement_RivalTakesThreeStepsRight:
	slow_step_right
Movement_RivalTakesTwoStepsRight:
	slow_step_right
Movement_RivalTakesOneStepRight:
	slow_step_right
	step_end

_OaksLabGaryText1:
	text "<GREEN>: Yo,"
	line "<PLAYER>! Pépé"
	cont "n'est pas là."
	done

_OaksLabText40:
	text "<GREEN>: Bah, je"
	line "suis pas pressé"
	cont "comme toi!"

	para "Vas-y, choisis,"
	line "<PLAYER>!"
	done

_OaksLabText41:
	text "<GREEN>: Ce"
	line "#MON a l'air"
	cont "beaucoup plus"
	cont "fort."
	done

_OaksLabGaryText1F:
	text "<GREEN>: Oh, salut"
	line "<PLAYER>."

	para "Le professeur"
	line "n'est pas là."
	done

_OaksLabText40F:
	text "<GREEN>: Oh, moi?"
	line "Je ne suis pas"
	cont "pressée."

	para "Vas-y, <PLAYER>."
	done

_OaksLabText41F:
	text "<GREEN>: Je vou-"
	line "lais ce #MON"
	cont "de toute façon<...>"
	done

_OaksLabText39:
	text "Ce sont des #"
	line "BALLs. Elles con-"
	cont "tiennent des"
	cont "#MON!"
	done

_OaksLabCharmanderText:
	text "Tu veux le #MON"
	line "de feu,"
	cont "SALAMECHE?"
	done

_OaksLabSquirtleText:
	text "Tu veux le #MON"
	line "d'eau,"
	cont "CARAPUCE?"
	done

_OaksLabBulbasaurText:
	text "Tu veux le #MON"
	line "plante,"
	cont "BULBIZARRE?"
	done

_OaksLabMonEnergeticText:
	text "Ce #MON est"
	line "très énergique!"
	done

_OaksLabReceivedMonText:
	text "<PLAYER> reçoit"
	line "un @"
	text_from_ram StringBuffer3
	text "!"
	done

_OaksLabLastMonText:
	text "Le dernier #MON"
	line "du PROF. CHEN!"
	done

_OaksLabText_1d2f0:
	text "CHEN: <PLAYER>,"
	line "quel #MON"
	cont "veux-tu?"
	done

_OaksLabText_1d2f5:
	text "CHEN: Si un #-"
	line "MON sauvage appa-"

	para "raît, ton #-"
	line "MON pourra le"
	cont "combattre!"
	done

_OaksLabText_1d2fa:
	text "CHEN: <PLAYER>,"
	line "élève ton #MON"
	cont "en le faisant"
	cont "combattre!"
	done

_OaksLabDeliverParcelText1:
	text "CHEN: Oh, <PLAYER>!"

	para "Comment va mon"
	line "#MON?"

	para "Il a l'air de"
	line "beaucoup t'aimer."

	para "Tu dois être un"
	line "dresseur #MON"
	cont "talentueux!"

	para "Quoi? Tu as"
	line "quelque chose"
	cont "pour moi?"

	para "<PLAYER> donne le"
	line "COLIS DE CHEN."
	done

_OaksLabDeliverParcelText2:
	text "Ah! C'est la #-"
	line "BALL personnalisée"
	cont "que j'ai commandé!"
	cont "Merci!"
	done

_OaksLabAroundWorldText:
	text "Les #MON du"
	line "monde entier t'at-"
	cont "tendent, <PLAYER>!"
	done

_OaksLabGivePokeballsText1:
	text "CHEN: Tu n'auras"
	line "pas les détails du"
	cont "#MON juste en"
	cont "les observant."

	para "Tu dois les captu-"
	line "rer! Utilise ceci"
	cont "pour attraper les"
	cont "#MON sauvages."

	para "<PLAYER> reçoit 5"
	line "# BALL!"
	done

_OaksLabGivePokeballsText2:
	text "Lorsqu'un #MON"
	line "sauvage apparaît,"
	cont "tout est permis."

	para "Lancez une #-"
	line "BALL et tentez de"
	cont "l'attraper!"

	para "Mais ce n'est pas"
	line "toujours garanti"
	cont "de marcher."

	para "Un #MON en"
	line "bonne santé peut"
	cont "s'échapper!"
	done

_OaksLabPleaseVisitText:
	text "CHEN: Viens me"
	line "voir parfois."

	para "J'aimerais savoir"
	line "comment ton #-"
	cont "DEX avance."
	done

_OaksLabText_1d31d:
	text "CHEN: C'est bon de"
	line "te voir!"
	cont "Comment ton #-"
	cont "DEX avance, je"
	cont "peux voir?"
	done

_OaksLabText_1d32c:
	text "On dirait une"
	line "encyclopédie."

	para "Mais les pages"
	line "sont blanches!"
	done

_OaksLabText_1d340:
	text "Le PROF.CHEN est"
	line "la plus haute"
	cont "autorité #MON."

	para "Beaucoup de"
	line "dresseurs #MON"
	cont "le portent en"
	cont "haute estime!"
	done

_OaksLabRivalWaitingText:
	text "<GREEN>: Allez"
	line "pépé! J'en ai"
	cont "marre d'attendre!"
	done

_OaksLabRivalWaitingTextF:
	text "<GREEN>: Ah,"
	line "te voilà!"
	cont "On va avoir des"
	cont "#MON alors?"
	done

_OaksLabChooseMonText:
	text "CHEN: <GREEN>?"
	line "<...>"

	para "Ah c'est vrai,"
	line "Je t'ai dis de"
	cont "venir! Un instant!"

	para "Tiens, <PLAYER>!"

	para "Voici 3 #MON."

	para "Haha!"

	para "Ils sont dans les"
	line "# BALLs."

	para "Quand j'étais"
	line "jeune, j'étais un"
	cont "dresseur #MON"
	cont "de choc!"

	para "Mais à mon âge, ce"
	line "sont les seuls qu'"
	cont "il me reste. Mais"
	cont "tu peux en avoir"
	cont "un. Choisis!"
	done

_OaksLabRivalInterjectionText:
	text "<GREEN>: Hé!"
	line "Pépé! Et moi"
	cont "alors?"
	done

_OaksLabRivalInterjectionTextF:
	text "<GREEN>: Ce"
	line "sera mon tour"
	cont "après?"
	done

_OaksLabBePatientText:
	text "CHEN: Patience!"
	line "<GREEN>, tu peux"
	cont "en avoir un aussi!"
	done

_OaksLabLeavingText:
	text "CHEN: Hé, ne t'en"
	line "vas pas!"
	done

_OaksLabRivalPickingMonText:
	text "<GREEN>: Je vais"
	line "prendre celui-là,"
	cont "alors!"
	done

_OaksLabRivalPickingMonTextF:
	text "<GREEN>: Bon,"
	line "je vais juste"
	cont "prendre celui-là<...>"
	done

_OaksLabRivalReceivedMonText:
	text "<GREEN> reçois"
	line "@"
	text_from_ram StringBuffer4
	text "!"
	done

_OaksLabRivalChallengeText:
	text "<GREEN>: Hé!"
	line "<PLAYER>!"

	para "Faisons combattre"
	line "nos #MON."

	para "Amène toi!"
	done

_OaksLabText_1d3be:
	text "HEIN!?"
	line "J'ai perdu?"
	done

_OaksLabText_1d3c3:
	text "<GREEN>: Ouaiiis!"
	line "Je suis trop fort"
	cont "ou quoi?"
	done

_OaksLabRivalToughenUpText:
	text "<GREEN>: Bon,"
	line "Je vais renforcer"
	cont "mon #MON dès"
	cont "maintenant."

	para "<PLAYER>! Pépé!"
	line "A plus!"
	done

_OaksLabRivalChallengeTextF:
	text "<GREEN>: Attends"
	line "une minute,"
	cont "<PLAYER>!"

	para "Essayons un combat"
	line "#MON comme on"

	para "l'a toujours"
	line "voulu!"

	para "Très bien!"
	line "Me voilà!"
	done

_OaksLabText_1d3beF:
	text "Waouh<...>"
	line "J'ai encore"
	cont "beaucoup à"
	cont "apprendre."
	done

_OaksLabText_1d3c3F:
	text "<GREEN>: Oh, hum<...>"
	line "Aurais-je du y"
	cont "aller moins fort?"
	done

_OaksLabRivalToughenUpTextF:
	text "<GREEN>: OK!"
	line "Je travaillerais"
	cont "dur pour élever"
	cont "mon #MON avec"
	cont "soin et amour!"

	para "<PLAYER>! Profes-"
	line "seur!"
	cont "A plus tard!"
	done

_OaksLabText21:
	text "<GREEN>: Pépé!"
	done

_OaksLabText22:
	text "<GREEN>: Pourquoi"
	line "tu m'as appelé?"
	done

_OaksLabText21F:
	text "<GREEN>:"
	line "Professeur!"
	done

_OaksLabText22F:
	text "<GREEN>: Vous"
	line "m'avez appelé?"
	done

_OaksLabText23:
	text "CHEN: Ah oui! J'ai"
	line "une requête pour"
	cont "vous deux."
	done

_OaksLabText24:
	text "Sur mon bureau se"
	line "trouve mon inven-"
	cont "tion, le #DEX!"

	para "Il enregistre les"
	line "données des"
	cont "#MON vus ou"
	cont "capturés."

	para "C'est une encyclo-"
	line "pédie hi-tech!"
	done

_OaksLabText25:
	text "CHEN: <PLAYER> et"
	line "<GREEN>! Prenez"
	cont "les avec vous."

	para "<PLAYER> reçoit"
	line "#DEX de CHEN."
	done

_OaksLabText26:
	text "Faire un guide"
	line "sur tous les"
	cont "#MON du monde<...>"

	para "C'était mon rêve!"

	para "Mais je suis trop"
	line "vieux, je ne peux"
	cont "plus le faire<...>"

	para "Alors je voudrais"
	line "que vous rempli-"
	cont "ssiez ce rêve pour"
	cont "moi. Allez,"
	cont "roulez jeunesse!"

	para "Votre grande"
	line "aventure #MON"
	cont "commence!"
	done

_OaksLabText27:
	text "<GREEN>: D'accord"
	line "Pépé! Laisse"
	cont "moi faire!"

	para "<PLAYER>, Ca me"
	line "plaît pas mais je"

	para "n'ai pas besoin"
	line "de ton aide."

	para "Héhé, Je sais! Je"
	line "vais emprunter une"
	cont "CARTE à ma soeur."

	para "Je lui dirais de"
	line "ne pas t'en donner"
	cont "une <PLAYER>!"
	cont "Haha!"
	done

_OaksLabText27F:
	text "<GREEN>: OK,"
	line "ça à l'air"
	cont "amusant."

	para "Oh, je sais!"
	line "<PLAYER>, on a"
	cont "qu'à faire la"
	cont "course pour le"
	cont "compléter!"

	para "Je ne veux pas"
	line "te désavantager<...>"

	para "<...>donc je vais"
	line "dire à ma soeur de"
	cont "te prêter une"
	cont "CARTE."

	para "On se revoit"
	line "plus tard!"
	done

_OaksLabText_1d405:
	text "J'étudie les #-"
	line "MON sous la"
	cont "tutelle du PROF."
	cont "CHEN!"
	done

_OakLabEmailText:
	text "Il y a un e-mail"
	line "à l'écran!"

	para "<...>"

	para "Appel à tous les"
	line "dresseurs #MON!"

	para "Le CONSEIL des 4"
	line "est prêt à défier"
	cont "tout concurrent!"

	para "Présentez vos"
	line "meilleurs #MON"
	cont "et découvez votre"
	cont "niveau en tant que"
	cont "dresseur!"

	para "QG LIGUE #MON,"
	line "PLATEAU INDIGO"

	para "PS: PROF. CHEN,"
	line "votre visite est"
	cont "attendue<...>"
	done

_PushStartText:
	text "Appuie sur START"
	line "pour ouvrir le"
	cont "MENU!"
	done

_SaveOptionText:
	text "L'option pour"
	line "sauvegarder est"
	cont "dans le MENU!"
	done

_StrengthsAndWeaknessesText:
	text "Tous les types de"
	line "#MON ont des"

	para "points forts et"
	line "points faibles"
	cont "face aux autres."
	done


OaksLabRB_MapEventHeader: ; 0x19ba33
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $b, $4, 3, GROUP_PALLET_TOWN_RB, MAP_PALLET_TOWN_RB
	warp_def $b, $5, 3, GROUP_PALLET_TOWN_RB, MAP_PALLET_TOWN_RB

	; xy triggers
	db 4
	xy_trigger 2, 6, 4, 0, OaksLabRB_WaitComeBack, 0, 0
	xy_trigger 2, 6, 5, 0, OaksLabRB_WaitComeBack, 0, 0
	xy_trigger 3, 6, 4, 0, OaksLab_RivalBattleTriggerLeft, 0, 0
	xy_trigger 3, 6, 5, 0, OaksLab_RivalBattleTriggerRight, 0, 0

	; signposts
	db 17
	signpost 1, 6, $0, MapOaksLabRBSignpost11Script
	signpost 1, 7, $0, MapOaksLabRBSignpost11Script
	signpost 1, 8, $0, MapOaksLabRBSignpost11Script
	signpost 1, 9, $0, MapOaksLabRBSignpost11Script
	signpost 7, 0, $0, MapOaksLabRBSignpost11Script
	signpost 7, 1, $0, MapOaksLabRBSignpost11Script
	signpost 7, 2, $0, MapOaksLabRBSignpost11Script
	signpost 7, 3, $0, MapOaksLabRBSignpost11Script
	signpost 7, 6, $0, MapOaksLabRBSignpost11Script
	signpost 7, 7, $0, MapOaksLabRBSignpost11Script
	signpost 7, 8, $0, MapOaksLabRBSignpost11Script
	signpost 7, 9, $0, MapOaksLabRBSignpost11Script
	signpost 0, 4, $0, MapOaksLabRBSignpost12Script
	signpost 0, 5, $0, MapOaksLabRBSignpost13Script
	signpost 3, 9, $0, MapOaksLabRBSignpost14Script
	signpost 1, 0, $0, MapOaksLabRBSignpost15Script
	signpost 1, 1, $0, MapOaksLabRBSignpost15Script

	; people-events
	db 10
	person_event SPRITE_OAK, 6, 9, $6, 0, 0, -1, -1, 0, 0, 0, OakScript_OaksLabRB, EVENT_OAKS_LAB_OAK
	person_event SPRITE_SCIENTIST, 12, 6, $5, 0, 1, -1, -1, 8 + PAL_OW_BLUE, 0, 0, Scientist1Script_OaksLabRB, -1
	person_event SPRITE_SCIENTIST, 13, 12, $4, 1, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, Scientist2Script_OaksLabRB, -1
	person_event SPRITE_TEACHER, 15, 5, $2, 1, 1, -1, -1, 8 + PAL_OW_BLUE, 0, 0, LassScript_OaksLabRB, -1
	person_event SPRITE_EGK_RIVAL, 7, 8, $3, 0, 0, -1, -1, 0, 0, 0, BlueScript_OaksLabRB, EVENT_RB_RIVAL_IN_LAB
	person_event SPRITE_POKE_BALL, 7, 10, $0, 0, 0, -1, -1, 0, 0, 0, CharmanderPokeballScript, EVENT_SOMEONE_GOT_CHARMANDER_FROM_OAK
	person_event SPRITE_POKE_BALL, 7, 11, $0, 0, 0, -1, -1, 0, 0, 0, SquirtlePokeballScript, EVENT_SOMEONE_GOT_SQUIRTLE_FROM_OAK
	person_event SPRITE_POKE_BALL, 7, 12, $0, 0, 0, -1, -1, 0, 0, 0, BulbasaurPokeballScript, EVENT_SOMEONE_GOT_BULBASAUR_FROM_OAK
	person_event SPRITE_POKEDEX, 5, 6, $0, 0, 0, -1, -1, 0, 0, 0, BlankEncyclopoediaScript, EVENT_RB_DELIVERED_OAKS_PARCEL
	person_event SPRITE_POKEDEX, 5, 7, $0, 0, 0, -1, -1, 0, 0, 0, BlankEncyclopoediaScript, EVENT_RB_DELIVERED_OAKS_PARCEL
; 0x19bac7
