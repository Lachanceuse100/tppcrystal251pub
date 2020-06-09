MtMoonB3FRB_MapScriptHeader: ; 0x1ac2ba
	; trigger count
	db 0

	; callback count
	db 0

TrainerSuperNerdMiguelRB:
	trainer EVENT_SUPER_NERD_MIGUEL_RB, SUPER_NERD, MIGUEL_RB, _MtMoon3Text_49f85, _MtMoon3Text_49f8a, 0, .Script
.Script
	loadfont
	checkevent EVENT_MT_MOON_B3F_RB_DOME_FOSSIL
	iftrue .mention_cinnabar
	writetext _MtMoon3Text_49f8f
	jump .finish
.mention_cinnabar
	writetext _MtMoon3Text_49f94
.finish
	waitbutton
	closetext
	end

MtMoonB3FRBDomeFossilScript:
	loadfont
	writetext _MtMoon3Text_49f24
	yesorno
	iffalse .finish
	disappear $7
	verbosegiveitem DOME_FOSSIL, 1
	closetext
	applymovement $2, Movement_MiguelTakesHelix
	loadfont
	writetext _MtMoon3Text_49f99
	disappear $8
	playsound SFX_ITEM
	waitsfx
.finish
	closetext
	end

MtMoonB3FRBHelixFossilScript:
	loadfont
	writetext _MtMoon3Text_49f64
	yesorno
	iffalse .finish
	disappear $8
	verbosegiveitem HELIX_FOSSIL, 1
	closetext
	applymovement $2, Movement_MiguelTakesDome
	loadfont
	writetext _MtMoon3Text_49f99
	disappear $7
	playsound SFX_ITEM
	waitsfx
.finish
	closetext
	end

Trainer_MtMoonB3FRBRocket1:
	trainer EVENT_MT_MOON_B3F_ROCKET_4, EXECUTIVE_EGK, 1, _MtMoon3BattleText2, _MtMoon3EndBattleText2, 0, .Script
.Script
	loadfont
	writetext _MtMoon3AfterBattleText2
	waitbutton
	closetext
	special Special_FadeToBlack
	special Functiond91
	disappear $3
	disappear $4
	disappear $5
	disappear $6
	pause 15
	special Function8c0ab
	end

Trainer_MtMoonB3FRBRocket2:
	trainer EVENT_MT_MOON_B3F_ROCKET_1, GRUNTM, 34, _MtMoon3BattleText3, _MtMoon3EndBattleText3, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _MtMoon3AfterBattleText3
	waitbutton
	closetext
	end

Trainer_MtMoonB3FRBRocket3:
	trainer EVENT_MT_MOON_B3F_ROCKET_2, GRUNTM, 35, _MtMoon3BattleText4, _MtMoon3EndBattleText4, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _MtMoon3AfterBattleText4
	waitbutton
	closetext
	end

Trainer_MtMoonB3FRBRocket4:
	trainer EVENT_MT_MOON_B3F_ROCKET_3, GRUNTF, 6, _MtMoon3BattleText5, _MtMoon3EndBattleText5, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _MtMoon3AfterBattleText5
	waitbutton
	closetext
	end

MtMoonB3FRB_HPUp:
	db HP_UP, 1

MtMoonB3FRB_ConfuseGuard:
	db CONFUSEGUARD, 1

MtMoonB3FRB_HiddenMoonStone:
	dwb EVENT_MT_MOON_B3F_RB_HIDDEN_MOON_STONE, MOON_STONE
MtMoonB3FRB_HiddenEther:
	dwb EVENT_MT_MOON_B3F_RB_HIDDEN_ETHER, ETHER

Movement_MiguelTakesHelix:
	step_right
Movement_MiguelTakesDome:
	step_up
	step_end

_MtMoon3Text_49f24:
	text "Tu veux le"
	line "FOSSILE DOME?"
	done

_MtMoon3Text_49f64:
	text "Tu veux le"
	line "FOSSILE NAUTILE?"
	done

_MtMoon3Text_49f85:
	text "Hé, non!"

	para "J'ai trouvé ces"
	line "fossiles! Ils"
	cont "sont à moi!"
	done

_MtMoon3Text_49f8a:
	text "Bon, je partage!"
	done

_MtMoon3Text_49f8f:
	text "Chacun le sien"
	line "Comme ça, pas"
	cont "de jaloux."
	done

_MtMoon3Text_49f94:
	text "A CRAMOIS'ILE, il"
	line "y a un LABO"
	cont "#MON."

	para "Ils font des"
	line "recherches pour"
	cont "regénérer des"
	cont "fossiles."
	done

_MtMoon3Text_49f99:
	text "OK. Je prends"
	line "celui-là alors!"
	done

_MtMoon3BattleText2:
	text "La TEAM ROCKET"
	line "trouvera les"
	cont "fossiles et fera"
	cont "fortune en les"
	cont "vendant!"
	done

_MtMoon3EndBattleText2:
	text "Argh!"
	line "Je suis vert!"
	done

_MtMoon3AfterBattleText2:
	text "Tu vas voir, toi!"
	line "T'es sur la liste"
	cont "noire de la"
	cont "TEAM ROCKET!"
	done

_MtMoon3BattleText3:
	text "Nous sommes la"
	line "TEAM ROCKET, des"
	cont "gangsters de"
	cont "#MON."
	done

_MtMoon3EndBattleText3:
	text "Et zut!"
	done

_MtMoon3AfterBattleText3:
	text "Et mince! Mes"
	line "collègues me"
	cont "vengeront!"
	done

_MtMoon3BattleText4:
	text "On travaille dur"
	line "là, va-t'en!"
	done

_MtMoon3EndBattleText4:
	text "Oh, pas mal."
	done

_MtMoon3AfterBattleText4:
	text "Si tu trouves un"
	line "fossile, donne le"
	cont "moi et dégage!"
	done

_MtMoon3BattleText5:
	text "Les enfants"
	line "doivent laisser"
	cont "les adultes"
	cont "tranquilles!"
	done

_MtMoon3EndBattleText5:
	text "Je suis fatigué<...>"
	done

_MtMoon3AfterBattleText5:
	text "Les #MON"
	line "vivaient ici bien"
	cont "avant les humains."
	done

MtMoonB3FRB_MapEventHeader: ; 0x1ac4af
	; filler
	db 0, 0

	db 4
	warp_def $09, $19, 2, GROUP_MT_MOON_B2F_RB, MAP_MT_MOON_B2F_RB
	warp_def $11, $15, 5, GROUP_MT_MOON_B2F_RB, MAP_MT_MOON_B2F_RB
	warp_def $1b,  $f, 6, GROUP_MT_MOON_B2F_RB, MAP_MT_MOON_B2F_RB
	warp_def  $7,  $5, 7, GROUP_MT_MOON_B2F_RB, MAP_MT_MOON_B2F_RB

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 12, 18, $7, MtMoonB3FRB_HiddenMoonStone
	signpost  9, 33, $7, MtMoonB3FRB_HiddenEther

	; people-events
	db 9
	person_event SPRITE_SUPER_NERD, 12, 16, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 1, TrainerSuperNerdMiguelRB, -1
	person_event SPRITE_ROCKET, 20, 15, $6, 0, 0, -1, -1, 0, 2, 2, Trainer_MtMoonB3FRBRocket1, EVENT_MT_MOON_ROCKETS_RB ; Executive
	person_event SPRITE_ROCKET, 26, 19, $6, 0, 0, -1, -1, 0, 2, 3, Trainer_MtMoonB3FRBRocket2, EVENT_MT_MOON_ROCKETS_RB
	person_event SPRITE_ROCKET, 15, 33, $7, 0, 0, -1, -1, 0, 2, 3, Trainer_MtMoonB3FRBRocket3, EVENT_MT_MOON_ROCKETS_RB
	person_event SPRITE_ROCKET_GIRL, 20, 33, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, Trainer_MtMoonB3FRBRocket4, EVENT_MT_MOON_ROCKETS_RB ; GruntF
	person_event SPRITE_DOME_FOSSIL, 10, 16, $1, 0, 0, -1, -1, 0, 0, 0, MtMoonB3FRBDomeFossilScript, EVENT_MT_MOON_B3F_RB_DOME_FOSSIL
	person_event SPRITE_HELIX_FOSSIL, 10, 17, $1, 0, 0, -1, -1, 0, 0, 0, MtMoonB3FRBHelixFossilScript, EVENT_MT_MOON_B3F_RB_HELIX_FOSSIL
	person_event SPRITE_POKE_BALL, 25, 29, $1, 0, 0, -1, -1, 0, 1, 0, MtMoonB3FRB_HPUp, EVENT_MT_MOON_B3F_RB_HP_UP
	person_event SPRITE_POKE_BALL, 9, 33, $1, 0, 0, -1, -1, 0, 1, 0, MtMoonB3FRB_ConfuseGuard, EVENT_MT_MOON_B3F_RB_CONFUSEGUARD
