SSAnne5_MapScriptHeader:
	db 2
	dw .Trigger0, 0
	dw .Trigger1, 0
	db 0
.Trigger0
	end
.Trigger1
	priorityjump .InfiniteRockets
	end

.InfiniteRockets
	dotrigger 0
	disappear $2
	disappear $3
	loadvar EngineBuffer1, 0
	jump .next_rocket
.loop
	loadfont
	writetext SSAnne10Text_WontGetAwayWithThis
	waitbutton
	closetext
	checkevent EVENT_ROCKETS_SS_ANNE_1
	iftrue .female
	applymovement $2, Movement_SSAnneRocketRetreat
	disappear $2
	jump .okay
.female
	applymovement $3, Movement_SSAnneRocketRetreat
	disappear $3
.okay
	playsound SFX_EXIT_BUILDING
	waitsfx
	copybytetovar EngineBuffer1
	if_equal 100, .next_rocket
	addvar 1
	copyvartobyte EngineBuffer1
.next_rocket
	playmusic MUSIC_ROCKET_ENCOUNTER
	random 2
	iffalse .male
	loadtrainer GRUNTF, 0
	moveperson $3, 8, 6
	appear $3
	applymovement $3, Movement_SSAnneRocketOneStepRight
	showemote $0, $3, 15
	pause 15
	applymovement $3, Movement_SSAnneRocketApproachesPlayer
	jump .got_class
.male
	loadtrainer GRUNTM, 0
	moveperson $2, 8, 6
	appear $2
	applymovement $2, Movement_SSAnneRocketOneStepRight
	showemote $0, $2, 15
	pause 15
	applymovement $2, Movement_SSAnneRocketApproachesPlayer
.got_class
	loadfont
	scall .GetWinText
	waitbutton
	closetext
	special SampleRandomRocket
	startbattle
	reloadmap
	iffalse .loop
	loadfont
	writetext SSAnne5TextAfter
	waitbutton
	closetext
	pause 30
	playmusic MUSIC_NONE
	earthquake 100
	pause 30
	loadfont
	writetext SSAnne5ShipwreckText
	waitbutton
	closetext
	checkevent EVENT_ROCKETS_SS_ANNE_1
	iftrue .female2
	showemote $0, $2, 15
	pause 15
	spriteface $2, LEFT
	jump .finish
.female2
	showemote $0, $3, 15
	pause 15
	spriteface $3, LEFT
.finish
	loadfont
	writetext SSAnne5ShipwreckText2
	closetext
	special Special_FadeToBlack
	special Functiond91
	playsound SFX_HYDRO_PUMP
	pause 8
	playsound SFX_HYDRO_PUMP
	pause 8
	playsound SFX_HYDRO_PUMP
	pause 8
	playsound SFX_HYDRO_PUMP
	pause 180
	setflag ENGINE_EARLY_GAME_KANTO
	domaptrigger GROUP_CHERRYGROVE_CITY, MAP_CHERRYGROVE_CITY, 2
	blackoutmod GROUP_CHERRYGROVE_CITY, MAP_CHERRYGROVE_CITY
	warpfacing DOWN, GROUP_CHERRYGROVE_CITY, MAP_CHERRYGROVE_CITY, 10, 9
	end

.GetWinText
	random 8
	if_equal 0, .one
	if_equal 1, .two
	if_equal 2, .three
	if_equal 3, .four
	if_equal 4, .five
	if_equal 5, .six
	if_equal 6, .seven
	if_equal 7, .eight
.one
	writetext RandomRocketsBeforeText1
	winlosstext RandomRocketsWinText1, 0
	end
.two
	writetext RandomRocketsBeforeText2
	winlosstext RandomRocketsWinText2, 0
	end
.three
	writetext RandomRocketsBeforeText3
	winlosstext RandomRocketsWinText3, 0
	end
.four
	writetext RandomRocketsBeforeText4
	winlosstext RandomRocketsWinText4, 0
	end
.five
	writetext RandomRocketsBeforeText5
	winlosstext RandomRocketsWinText5, 0
	end
.six
	writetext RandomRocketsBeforeText6
	winlosstext RandomRocketsWinText6, 0
	end
.seven
	writetext RandomRocketsBeforeText7
	winlosstext RandomRocketsWinText7, 0
	end
.eight
	writetext RandomRocketsBeforeText8
	winlosstext RandomRocketsWinText8, 0
	end

SSAnne5CooltrainerMScript:
	faceplayer
	loadfont
	checkevent EVENT_S_S_ANNE_RUBBED_CAPTAINS_BACK
	iftrue .departed_text
	writetext _SSAnne5Text1
	waitbutton
	closetext
	end
.departed_text
	writetext _SSAnne5Text1b
	waitbutton
	closetext
	end
SSAnne5SailorScript:
	jumptextfaceplayer _SSAnne5Text2
SSAnne5SuperNerdScript:
	jumptextfaceplayer _SSAnne5Text3
SSAnee5Sailor1Battle:
	trainer EVENT_S_S_ANNE_5_SAILOR1, SAILOR, TREVOR_RB, _SSAnne5BattleText1, _SSAnne5EndBattleText1, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne5AfterBattleText1
	waitbutton
	closetext
	end

SSAnee5Sailor2Battle:
	trainer EVENT_S_S_ANNE_5_SAILOR2, SAILOR, EDMOND_RB, _SSAnne5BattleText2, _SSAnne5EndBattleText2, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne5AfterBattleText2
	waitbutton
	closetext
	end

Movement_SSAnneRocketApproachesPlayer:
	big_step_right
	big_step_right
Movement_SSAnneRocketOneStepRight:
	big_step_right
	step_end

Movement_SSAnneRocketRetreat:
	big_step_down
	big_step_right
	step_end

RandomRocketsBeforeText1:
	text "Les sales"
	line "gosses doivent"
	cont "être éliminés!"
	done

RandomRocketsBeforeText2:
	text "Tu interfères avec"
	line "les plans de la"
	cont "TEAM ROCKET?"
	done

RandomRocketsBeforeText3:
	text "C'est toi qui a"
	line "saboté notre"
	cont "opération au"
	cont "MONT SELENITE?"
	done

RandomRocketsBeforeText4:
	text "Donne moi ton"
	line "#MON!"
	done

RandomRocketsBeforeText5:
	text "T'aurais pas du"
	line "venir, gamin."
	done

RandomRocketsBeforeText6:
	text "Tu es idiot de"
	line "défier la TEAM"
	cont "ROCKET."
	done

RandomRocketsBeforeText7:
	text "Je vais vite me"
	line "débarasser de toi."
	done

RandomRocketsBeforeText8:
	text "Retourne à la"
	line "cabine toi, c'est"
	cont "plus sûr."
	done

RandomRocketsWinText1:
	text "Arrg!!"
	done
RandomRocketsWinText2:
	text "Impossible!"
	done
RandomRocketsWinText3:
	text "Trop fort!"
	done
RandomRocketsWinText4:
	text "J'abandonne!"
	done
RandomRocketsWinText5:
	text "Comment es-tu si"
	line "fort?"
	done
RandomRocketsWinText6:
	text "Battu par un"
	line "enfant?"
	done
RandomRocketsWinText7:
	text "Je suis en colère!"
	done
RandomRocketsWinText8:
	text "Grrrr<...>"
	done

SSAnne5TextAfter:
	text "Ca t'apprendra!"

	para "Personne, pas même"
	line "un gamin, ne défie"
	cont "la TEAM ROCKET et"
	cont "s'en sort indemme!"
	done

SSAnne10Text_WontGetAwayWithThis:
	text "Tu t'en sortiras"
	line "pas comme ça!"
	done

_SSAnne5Text1:
	text "La fête est finie."
	line "Le bateau va"
	cont "bientôt partir."
	done

_SSAnne5Text1b:
	text "J'ai hâte que l'on"
	line "arrive à OLIVILLE."

	para "On dit que la fête"
	line "est meilleur qu'a"
	cont "CARMIN SUR MER."
	done

_SSAnne5Text2:
	text "Nettoyer le pont"
	line "du navire c'est"
	cont "dur<...>"
	done

_SSAnne5Text3:
	text "Urh. Je me sens"
	line "malade."

	para "Je suis sorti"
	line "prendre l'air."
	done

_SSAnne5BattleText1:
	text "Hé matelot!"

	para "Une petite danse?"
	done

_SSAnne5EndBattleText1:
	text "Impressionnant!"
	done

_SSAnne5AfterBattleText1:
	text "Tu penses qu'il y"
	line "a combien d'espèce"
	cont "de #MON?"
	done

_SSAnne5BattleText2:
	text "Holà toi!"
	line "T'as le mal de"
	cont "mer?"
	done

_SSAnne5EndBattleText2:
	text "J'ai pas fais"
	line "attention!"
	done

_SSAnne5AfterBattleText2:
	text "Mon Papa dit qu'il"
	line "y a 150 espèces de"
	cont "#MON."
	para "Je pense qu'il y"
	line "en a plus."
	done

SSAnne5ShipwreckText:
	text "Annonnce: A TOUS"
	line "LES SBIRES!"

	para "Le navire est sur"
	line "le point d'entrer"
	cont "en collision!"

	para "Abandonnez la"
	line "mission!"

	para "Je répète:"

	para "Abandonnez la"
	line "mission!"
	done

SSAnne5ShipwreckText2:
	text "On doit sortir"
	line "d'ici!"

	para "Abandonnez le"
	line "navire!"
	
	para "Abando"
	done

SSAnne5_MapEventHeader:
	db 0, 0
	db 2
	warp_def 6, 13, 1, GROUP_S_S_ANNE_3, MAP_S_S_ANNE_3
	warp_def 7, 13, 1, GROUP_S_S_ANNE_3, MAP_S_S_ANNE_3

	db 0
	db 0
	db 9
	person_event SPRITE_ROCKET,        10, 13, $9, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_ROCKETS_SS_ANNE_1
	person_event SPRITE_ROCKET_GIRL,   10, 13, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, ObjectEvent, EVENT_ROCKETS_SS_ANNE_2
	person_event SPRITE_COOLTRAINER_M,  6,  9, $7, 0, 0, -1, -1, 0, 0, 0, SSAnne5CooltrainerMScript, EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	person_event SPRITE_SAILOR,        13,  8, $3, 0, 0, -1, -1, 0, 0, 0, SSAnne5SailorScript, EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	person_event SPRITE_SUPER_NERD,    15, 11, $2, 1, 1, -1, -1, 0, 0, 0, SSAnne5SuperNerdScript, EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	person_event SPRITE_SAILOR,         8,  8, $6, 0, 0, -1, -1, 0, 2, 3, SSAnee5Sailor1Battle, EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	person_event SPRITE_SAILOR,        12, 14, $7, 0, 0, -1, -1, 0, 2, 3, SSAnee5Sailor2Battle, EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	person_event SPRITE_ROCKET,         11, 15, $9, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_ROCKETS_NOT_YET_BOARDED_SS_ANNE
	person_event SPRITE_ROCKET,          9, 14, $9, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_ROCKETS_NOT_YET_BOARDED_SS_ANNE
