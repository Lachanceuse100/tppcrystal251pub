Route3RB_MapScriptHeader: ; 0x1adf63
	; trigger count
	db 0

	; callback count
	db 0
; 0x1adf65

Route3RBSuperNerdScript:
	jumptextfaceplayer _Route3Text1

Trainer_BugCatcherGreg:
	trainer EVENT_BUG_CATCHER_GREG, BUG_CATCHER, GREG_RB, _Route3BattleText1, _Route3EndBattleText1, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route3AfterBattleText1
	waitbutton
	closetext
	end

Trainer_YoungsterBen:
	trainer EVENT_YOUNGSTER_BEN, YOUNGSTER, BEN_RB, _Route3BattleText2, _Route3EndBattleText2, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route3AfterBattleText2
	waitbutton
	closetext
	end

Trainer_LassJanice:
	trainer EVENT_LASS_JANICE, LASS, JANICE_RB, _Route3BattleText3, _Route3EndBattleText3, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route3AfterBattleText3
	waitbutton
	closetext
	end

Trainer_BugCatcherColton:
	trainer EVENT_BUG_CATCHER_COLTON, BUG_CATCHER, COLTON_RB, _Route3BattleText4, _Route3EndBattleText4, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route3AfterBattleText4
	waitbutton
	closetext
	end

Trainer_LassSally:
	trainer EVENT_LASS_SALLY, LASS, SALLY_RB, _Route3BattleText5, _Route3EndBattleText5, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route3AfterBattleText5
	waitbutton
	closetext
	end

Trainer_YoungsterCalvin:
	trainer EVENT_YOUNGSTER_CALVIN, YOUNGSTER, CALVIN_RB, _Route3BattleText6, _Route3EndBattleText6, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route3AfterBattleText6
	waitbutton
	closetext
	end

Trainer_BugCatcherJames:
	trainer EVENT_BUG_CATCHER_JAMES, BUG_CATCHER, JAMES_RB, _Route3BattleText7, _Route3EndBattleText7, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route3AfterBattleText7
	waitbutton
	closetext
	end

Trainer_LassRobin:
	trainer EVENT_LASS_ROBIN, LASS, ROBIN_RB, _Route3BattleText8, _Route3EndBattleText8, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route3AfterBattleText8
	waitbutton
	closetext
	end

Route3RBRocketsScript:
	applymovement $b, Route3RBMovement_HalfStepRight
	loadfont
	writetext Route3RBRocketsText1
	waitbutton
	closetext
	applymovement $c, Route3RBMovement_HalfStepLeft
	loadfont
	writetext Route3RBRocketsText2
	waitbutton
	closetext
	pause 16
	faceperson $b, $0
	faceperson $c, $0
	loadfont
	checkflag ENGINE_BOULDERBADGE
	iftrue .battle
	writetext Route3RBRocketsText3
	waitbutton
	closetext
	spriteface $b, RIGHT
	spriteface $c, LEFT
	end

.battle
	playmusic MUSIC_HIKER_ENCOUNTER
	writetext Route3RBRocketsText4
	waitbutton
	closetext
	loadtrainer GRUNTM, 32
	winlosstext Route3RBRocketsWinText1, 0
	setlasttalked $b
	startbattle
	returnafterbattle
	playmusic MUSIC_HIKER_ENCOUNTER
	loadfont
	writetext Route3RBRocketsText5
	waitbutton
	closetext
	loadtrainer GRUNTM, 33
	winlosstext Route3RBRocketsWinText2, 0
	setlasttalked $c
	startbattle
	returnafterbattle
	special RestartMapMusic
	loadfont
	writetext Route3RBRocketsText6
	waitbutton
	closetext
	follow $b, $c
	applymovement $b, Route3RBMovement_StepUp
	stopfollow
	disappear $b
	playsound SFX_EXIT_BUILDING
	applymovement $c, Route3RBMovement_StepUp
	disappear $c
	playsound SFX_EXIT_BUILDING
	waitsfx
	end

Route3RBLassScript:
	checkevent EVENT_ROUTE_3_ROCKETS
	iftrue .true
	jumptextfaceplayer Route3RBLassTextBeforeRockets
.true
	jumptextfaceplayer Route3RBLassText

MapRoute3RBSignpost0Script:
	jumptext _Route3Text10

MapRoute3RBPokecenterSign:
	jumpstd pokecentersign

Route3RBMovement_HalfStepRight:
	half_step_right
	step_end

Route3RBMovement_HalfStepLeft
	half_step_left
	step_end

Route3RBMovement_StepUp
	step_up
	step_end

_Route3Text1:
	text "Pfou<...> Je vais"
	line "faire une sieste<...>"

	para "Ce tunnel d'AZURIA"
	line "est beaucoup trop"
	cont "épuisant."
	done

_Route3BattleText1:
	text "Hé! On s'est vu"
	line "à la FORET DE"
	cont "JADE!"
	done

_Route3EndBattleText1:
	text "Tu m'as encore eu!"
	done

_Route3AfterBattleText1:
	text "Il y a plein"
	line "d'autres #MON"
	cont "que ceux qu'on"
	cont "trouve dans la"
	cont "forêt!"
	done

_Route3BattleText2:
	text "J'aime les"
	line "shorts! Ils sont"
	cont "faciles à porter!"
	done

_Route3EndBattleText2:
	text "Je le crois pas!"
	done

_Route3AfterBattleText2:
	text "Tu stockes tes"
	line "#MON dans les"
	cont "PC? Chaque boîte"
	cont "peut contenir"
	cont "20 #MON."
	done

_Route3BattleText3:
	text "Tu m'as regardé,"
	line "là?"
	done

_Route3EndBattleText3:
	text "Méchant!"
	done

_Route3AfterBattleText3:
	text "Evite les regards"
	line "si tu ne veux pas"
	cont "te battre!"
	done

_Route3BattleText4:
	text "Tu es un dresseur?"
	line "Combat!"
	done

_Route3EndBattleText4:
	text "Si j'avais"
	line "d'autres #MON,"
	cont "j'aurais gagné!"
	done

_Route3AfterBattleText4:
	text "Si une boîte #-"
	line "MON du PC est"
	cont "pleine, change"
	cont "de boîte."
	done

_Route3BattleText5:
	text "Ce regard<...>"
	line "C'est intriguant!"
	done

_Route3EndBattleText5:
	text "Soit sympa!"
	done

_Route3AfterBattleText5:
	text "Evite les combats"
	line "en évitant les"
	cont "regards!"
	done

_Route3BattleText6:
	text "Tu ne portes"
	line "pas de shorts?"
	done

_Route3EndBattleText6:
	text "Perdu! Perdu!"
	line "Perdu!"
	done

_Route3AfterBattleText6:
	text "Je porte toujours"
	line "des shorts! Même"
	cont "en hiver!"
	done

_Route3BattleText7:
	text "Tu vas combattre"
	line "mon nouveau"
	cont "#MON!"
	done

_Route3EndBattleText7:
	text "J'en ai assez!"
	done

_Route3AfterBattleText7:
	text "Les #MON en-"
	line "traînés sont plus"
	cont "forts que les"
	cont "#MON sauvages."
	done

_Route3BattleText8:
	text "Hii! Tu m'as"
	line "touché?"
	done

_Route3EndBattleText8:
	text "C'est tout?"
	done

_Route3AfterBattleText8:
	text "ROUTE 4 est au"
	line "pied du MONT"
	cont "SELENITE."
	done

_Route3Text10:
	text "ROUTE 3"
	line "MONT SELENITE"
	cont "DEVANT"
	done

Route3RBRocketsText1:
	text "<...>"

	para "Le boss veut qu'on"
	line "aille déterrer des"
	cont "vieux caillous?"
	done

Route3RBRocketsText2:
	text "Ouais, j'ai pas"
	line "compris non plus."

	para "On dirait qu'il"
	line "les vénère."
	done

Route3RBRocketsText3:
	text "Hé! C'est une"
	line "conversation"
	cont "privée! Dégage!"
	done

Route3RBRocketsText4:
	text "Oh! Tu nous"
	line "écoutais?"

	para "T'en a trop"
	line "entendu, avorton."

	para "Prépare toi à la"
	line "colère de la"
	cont "TEAM ROCKET!"
	done

Route3RBRocketsWinText1:
	text "Que-?"
	done

Route3RBRocketsText5:
	text "A moi."
	line "Tu vas pleurer!"
	done

Route3RBRocketsWinText2:
	text "Comment<...>"
	done

Route3RBRocketsText6:
	text "On est la TEAM"
	line "ROCKET. On"
	cont "contrôlera tous"
	cont "les #MON."

	para "Tu veux te mêler"
	line "des affaires du"
	cont "BOSS?"
	cont "Amène toi!"

	para "<...>"

	para "<...> Enfin, je dis"
	line "ça mais tu nous as"
	cont "allumés là. On"
	cont "se souviendra de"
	cont "toi."
	done

Route3RBLassTextBeforeRockets:
	text "Ces gens bizarres<...>"

	para "De quoi ils"
	line "parlent?"
	done

Route3RBLassText:
	text "Aïe! J'ai trébuché"
	line "sur un #MON de"
	cont "pierre, RACAILLOU!"
	done

Route3RB_MapEventHeader: ; 0x1ae18a
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $1, $34, 1, GROUP_MT_MOON_B1F_RB, MAP_MT_MOON_B1F_RB
	warp_def $3, $2f, 1, GROUP_MOUNT_MOON_POKECENTER_1F_RB, MAP_MOUNT_MOON_POKECENTER_1F_RB

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 13, 49, $0, MapRoute3RBSignpost0Script
	signpost  3, 48, $0, MapRoute3RBPokecenterSign

	; people-events
	db 12
	person_event SPRITE_SUPER_NERD, 16, 56, $3, 0, 0, -1, -1, 0, 0, 0, Route3RBSuperNerdScript, -1
	person_event SPRITE_BUG_CATCHER, 8, 10, $9, 0, 0, -1, -1, 0, 2, 2, Trainer_BugCatcherGreg, -1
	person_event SPRITE_YOUNGSTER, 6, 14, $6, 0, 0, -1, -1, 0, 2, 3, Trainer_YoungsterBen, -1
	person_event SPRITE_LASS, 11, 16, $8, 0, 0, -1, -1, 0, 2, 2, Trainer_LassJanice, -1
	person_event SPRITE_BUG_CATCHER, 7, 19, $6, 0, 0, -1, -1, 0, 2, 1, Trainer_BugCatcherColton, -1
	person_event SPRITE_LASS, 6, 23, $8, 0, 0, -1, -1, 0, 2, 4, Trainer_LassSally, -1
	person_event SPRITE_YOUNGSTER, 11, 22, $8, 0, 0, -1, -1, 0, 2, 3, Trainer_YoungsterCalvin, -1
	person_event SPRITE_BUG_CATCHER, 8, 24, $9, 0, 0, -1, -1, 0, 2, 3, Trainer_BugCatcherJames, -1
	person_event SPRITE_LASS, 17, 28, $7, 0, 0, -1, -1, 0, 2, 2, Trainer_LassRobin, -1
	person_event SPRITE_ROCKET, 6, 56, $9, 0, 0, -1, -1, 0, 0, 0, Route3RBRocketsScript, EVENT_ROUTE_3_ROCKETS
	person_event SPRITE_ROCKET, 6, 57, $8, 0, 0, -1, -1, 0, 0, 0, Route3RBRocketsScript, EVENT_ROUTE_3_ROCKETS
	person_event SPRITE_LASS, 7, 54, $4, 2, 0, -1, -1, 0, 0, 0, Route3RBLassScript, -1
; 0x1ae1ce

