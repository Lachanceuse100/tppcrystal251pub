VermilionGym2_MapScriptHeader:

.Triggers
	db 3
	dw .Trigger0, 0
	dw .Trigger1, 0
	dw .Trigger2, 0

.Callbacks
	db 1
	dbw 5, .CheckTriggers

.CheckTriggers
	checkevent EVENT_SURGE_REMATCH
	iftrue .open_all_doors
	dotrigger $0
	return

.open_all_doors
	dotrigger $2
	changemap VermilionGym2Off_BlockData
	return

.Trigger0
	end
.Trigger1
	end
.Trigger2
	end

VermilionGymRematch_SwitchTrigger1:
	playsound SFX_PUSH_BUTTON
	waitsfx
	playsound SFX_THUNDER
	refreshscreen $0
	changemap VermilionGym2Red_BlockData
	closetext
	dotrigger $0
	end

VermilionGymRematch_SwitchTrigger0:
	playsound SFX_PUSH_BUTTON
	waitsfx
	playsound SFX_THUNDER
	refreshscreen $0
	changemap VermilionGym2Blue_BlockData
	closetext
	dotrigger $1
	end

Trainer_JugglerHorton2:
	trainer EVENT_BEAT_HORTON_2, JUGGLER, HORTON2, JugglerHorton2BeforeText, JugglerHorton2WinText, 0, .Script
.Script:
	talkaftercancel
	loadfont
	writetext JugglerHorton2AfterText
	waitbutton
	closetext
	end

Trainer_GentlemanGregory2:
	trainer EVENT_BEAT_GREGORY_2, GENTLEMAN, GREGORY2, GentlemanGregory2BeforeText, GentlemanGregory2WinText, 0, .Script
.Script:
	talkaftercancel
	loadfont
	writetext GentlemanGregory2AfterText
	waitbutton
	closetext
	end

Trainer_GuitaristVincent2:
	trainer EVENT_BEAT_VINCENT_2, GUITARIST, VINCENT2, GuitaristVincent2BeforeText, GuitaristVincent2WinText, 0, .Script
.Script:
	talkaftercancel
	loadfont
	writetext GuitaristVincent2AfterText
	waitbutton
	closetext
	end

Trainer_CooltrainerMChase:
	trainer EVENT_BEAT_CHASE, COOLTRAINERM, CHASE, CooltrainerMChaseBeforeText, CooltrainerMChaseWinText, 0, .Script
.Script:
	talkaftercancel
	loadfont
	writetext CooltrainerMChaseAfterText
	waitbutton
	closetext
	end

Trainer_SchoolboyBrett:
	trainer EVENT_BEAT_BRETT, SCHOOLBOY, BRETT, SchoolboyBrettBeforeText, SchoolboyBrettWinText, 0, .Script
.Script:
	talkaftercancel
	loadfont
	writetext SchoolboyBrettAfterText
	waitbutton
	closetext
	end

SurgeRematchScript:
	faceplayer
	loadfont
	checkevent EVENT_BEAT_ELM
	iftrue .Postgame
	checkevent EVENT_SURGE_REMATCH
	iftrue .AfterRematch
	checkevent EVENT_MEW_ISLAND_SURGE_CHALLENGE
	iftrue .WasChallenged
	writetext SurgeRematchTextBefore
	jump .StartBattle
.WasChallenged:
	writetext SurgeRematchTextBeforeChallenge
.StartBattle:
	waitbutton
	closetext
	winlosstext SurgeRematchBeatenText, $0000
	loadtrainer LT_SURGE, 2
	startbattle
	returnafterbattle
	setevent EVENT_SURGE_REMATCH
	setevent EVENT_BEAT_VINCENT_2
	setevent EVENT_BEAT_GREGORY_2
	setevent EVENT_BEAT_HORTON_2
	setevent EVENT_BEAT_CHASE
	setevent EVENT_BEAT_BRETT
	dotrigger $2
	changemap VermilionGym2Off_BlockData
	loadfont
.AfterRematch:
	checkevent EVENT_MEW_ISLAND_SURGE_CHALLENGE
	iftrue .WasChallenged2
	writetext SurgeAfterRematchText
	jump .StartBattle2
.WasChallenged2:
	writetext SurgeAfterRematchTextChallenge
.StartBattle2:
	waitbutton
	closetext
	end

.Postgame:
    writetext SurgePostgameRematchText
    yesorno
    iffalse .return
    closetext
    loadtrainer LT_SURGE, 2
    winlosstext SurgePostgameBeatenText, 0
    startbattle
    returnafterbattle
    loadfont
    writetext SurgePostgameAfterText
    waitbutton
.return
    closetext
    end

VermilionGymGuyRematchScript: ; 0x19211b
	faceplayer
	loadfont
	checkevent EVENT_SURGE_REMATCH
	iftrue .Won
	writetext VermilionGymGuyRematchText
	waitbutton
	closetext
	end

.Won
	writetext VermilionGymGuyWonRematchText
	waitbutton
	closetext
	end
; 0x19212f

MapVermilionGymRematchStatuesScript:
	trainertotext LT_SURGE, 1, $1
	jumpstd gymstatue2
; 0x192142

SurgeRematchTextBefore:
	text "BOB: Ca va toi?"
	line "Moi je pète la"
	cont "forme!"

	para "Hé! Battons-nous"
	line "encore!"
	cont "T'en dis quoi?"
	done

SurgeRematchTextBeforeChallenge:
	text "BOB: Ca va toi?"
	line "Moi je pète la"
	cont "forme!"

	para "Tu veux aller"
	line "chasser MEW?"

	para "C'est pas un en-"
	line "droit pour les"
	cont "enfants!"

	para "Allez, si tu me"
	line "tiens tête sur le"
	cont "champ de bataille,"

	para "t'auras ma"
	line "permission."

	para "Garde-à-vous!"
	done


SurgeRematchBeatenText:
	text "Raaaaah!"
	line "T'es trop balèze!"
	done

SurgeAfterRematchText:
	text "BOB: T'es beaucoup"
	line "trop balèze!"

	para "Il va falloir que"
	line "je retrourne au"
	
	para "camp"
	line "d'entraînement!"

	done

SurgeAfterRematchTextChallenge:
	text "BOB: OK, je suis"
	line "convaincu."

	para "T'as ma permission"
	line "pour te rendre à"
	cont "la JUNGLE X!"

	done

SurgePostgameRematchText:
	text "BOB: Salut!"

	para "Tu t'entraînes"
	line "encore?"

	para "Tu veux une autre"
	line "bataille?"
	done

SurgePostgameBeatenText:
	text "Argh, quel choc!"
	done

SurgePostgameAfterText:
	text "BOB: T'es un sacré"
	line "môme!"

	para "D'accord, j'admets"
	line "encore ma défaite<...>"

	para "Il faudrait que tu"
	line "viennes au camp"

	para "entraîner mon"
	line "équipe!"
	done

VermilionGymGuyRematchText:
	text "Yo, MAITRE!"

	para "BOB électrifie son"
	line "jeu!"

	para "Prends un moment"
	line "avant de charger"
	cont "tête baissé!"
	done

VermilionGymGuyWonRematchText:
	text "Impressionant!"

	para "Le MAJOR BOB va"
	line "devoir recharger"
	cont "ses batteries"
	cont "après ce combat!"
	done

SchoolboyBrettBeforeText:
	text "Le MAJOR BOB m'a"
	line "appris plein de"

	para "choses sur les"
	line "attaques"
	cont "électriques!"

	para "Tu peux m'aider à"
	line "m'entraîner?"
	done

SchoolboyBrettWinText:
	text "Quelque chose"
	line "cloche", $75
	done

SchoolboyBrettAfterText:
	text "J'ai encore beau-"
	line "coup à apprendre"
	cont "sur les #MON"
	cont "électriques."
	done

JugglerHorton2BeforeText:
	text "Si tu perds la"
	line "bataille, garde"
	cont "ton honneur et ne"
	cont "pleure pas."

	para "C'est le slogan du"
	line "MAJOR BOB!"
	done

JugglerHorton2WinText:
	text "BOUM!!"
	done

JugglerHorton2AfterText:
	text "C'est marrant les"
	line "fins explosives!"

	para "Mais comment ga-"
	line "gner si ton #-"

	para "MON tombe aussi"
	line "K.O.?"
	done

CooltrainerMChaseBeforeText:
	text "L'air dans cette"
	line "arène est chargée"
	cont "en électicité!"
	done

CooltrainerMChaseWinText:
	text "C'est un gros BOUM"
	line "ce FATAL-FOUDRE!"
	done

CooltrainerMChaseAfterText:
	text "On dirait que je"
	line "tiens pas la for-"
	cont "me, physiquement."
	done

GentlemanGregory2BeforeText:
	text "Tu es là pour en-"
	line "gager un combat"
	cont "avec le MAJOR BOB?"

	para "Pas si je peux t'"
	line "en empêcher!"
	done

GentlemanGregory2WinText:
	text "Non! Pardon,"
	line "MAJOR BOB, je vous"
	cont "ais encore trahi!"
	done

GentlemanGregory2AfterText:
	text "Quand j'étais à"
	line "l'armée, le MAJOR"

	para "BOB m'a sauvé la"
	line "vie."
	done

GuitaristVincent2BeforeText: ; 0x1923e8
	text "Le MAJOR BOB a"
	line "reconnu mon poten-"

	para "tiel avec les #"
	line "MON électriques!"

	para "Tu penses pouvoir"
	line "me battre?"
	done
; 0x192437

GuitaristVincent2WinText: ; 0x192437
	text "Oh, quel choc!"
	done
; 0x19244b

GuitaristVincent2AfterText: ; 0x19244b
	text "Même si je ne t'ai"
	line "pas battu, les"

	para "pièges de l'ARENE"
	line "t'arrêteront!"
	done
; 0x192487

VermilionGym2_MapEventHeader:
	db 0, 0
; warps
	db 2
	warp_def 27, 9, 7, GROUP_VERMILION_CITY, MAP_VERMILION_CITY
	warp_def 27, 10, 7, GROUP_VERMILION_CITY, MAP_VERMILION_CITY

; xy triggers
	db 11
	xy_trigger 0, 21,  0, $0, VermilionGymRematch_SwitchTrigger0, $0, $0
	xy_trigger 0, 17,  1, $0, VermilionGymRematch_SwitchTrigger0, $0, $0
	xy_trigger 0, 25, 16, $0, VermilionGymRematch_SwitchTrigger0, $0, $0
	xy_trigger 0, 13, 18, $0, VermilionGymRematch_SwitchTrigger0, $0, $0
	xy_trigger 0,  5,  9, $0, VermilionGymRematch_SwitchTrigger0, $0, $0
	xy_trigger 1, 25,  0, $0, VermilionGymRematch_SwitchTrigger1, $0, $0
	xy_trigger 1, 21,  2, $0, VermilionGymRematch_SwitchTrigger1, $0, $0
	xy_trigger 1, 17, 13, $0, VermilionGymRematch_SwitchTrigger1, $0, $0
	xy_trigger 1, 21, 18, $0, VermilionGymRematch_SwitchTrigger1, $0, $0
	xy_trigger 1,  9,  9, $0, VermilionGymRematch_SwitchTrigger1, $0, $0
	xy_trigger 1,  5, 17, $0, VermilionGymRematch_SwitchTrigger1, $0, $0

; signposts
	db 2
	signpost 25,  8, $0, MapVermilionGymRematchStatuesScript
	signpost 25, 11, $0, MapVermilionGymRematchStatuesScript

; people events
	db 7
	person_event SPRITE_SURGE, 5, 17, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, SurgeRematchScript, -1
	person_event SPRITE_GENTLEMAN, 8, 8, $6, 0, 0, -1, -1, 0, 2, 2, Trainer_GentlemanGregory2, -1
	person_event SPRITE_ROCKER, 30, 5, $7, 0, 0, -1, -1, 0, 2, 1, Trainer_GuitaristVincent2, -1
	person_event SPRITE_YOUNGSTER, 29, 23, $8, 0, 0, -1, -1, 0, 2, 3, Trainer_SchoolboyBrett, -1
	person_event SPRITE_SUPER_NERD, 21, 14, $a, 0, 0, -1, -1, 0, 2, 1, Trainer_JugglerHorton2, -1
	person_event SPRITE_COOLTRAINER_M, 8, 24, $6, 0, 0, -1, -1, 0, 2, 2, Trainer_CooltrainerMChase, -1
	person_event SPRITE_GYM_GUY, 29, 14, $6, 0, 0, -1, -1, 0, 0, 0, VermilionGymGuyRematchScript, -1
