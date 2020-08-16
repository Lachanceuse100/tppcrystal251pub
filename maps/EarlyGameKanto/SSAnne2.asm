SSAnne2_MapScriptHeader:
	db 2
	dw .Trigger0, 0
	dw .Trigger1, 0

	db 1
	dbw 2, .HideRival

.Trigger0
	end
.Trigger1
	end
.HideRival
	disappear $3
	return

SSAnne2RivalBattleTriggerLeft:
	appear $3
	playsound SFX_EXIT_BUILDING
	waitsfx
	playmusic MUSIC_RIVAL_RB
	applymovement $3, Movement_SSAnneRivalWalksStraightDown
	scall DoRivalBattleSSAnne
	applymovement $3, Movement_SSAnneRivalDepartsAroundPlayer
	disappear $3
	special RestartMapMusic
	end

SSAnne2RivalBattleTriggerRight:
	appear $3
	playsound SFX_EXIT_BUILDING
	waitsfx
	playmusic MUSIC_RIVAL_RB
	applymovement $3, Movement_SSAnneRivalWalksDownFacesRight
	spriteface $0, LEFT
	scall DoRivalBattleSSAnne
	applymovement $3, Movement_SSAnneRivalDepartsDirectly
	disappear $3
	special RestartMapMusic
	end

DoRivalBattleSSAnne:
	setlasttalked $3
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .malerival1
	writetext _SSAnneRivalBeforeBattleTextF
	jump .checkstarter
.malerival1
	writetext _SSAnneRivalBeforeBattleText
.checkstarter
	waitbutton
	closetext
	checkevent EVENT_GOT_CHARMANDER_FROM_OAK
	iftrue .charmander
	checkevent EVENT_GOT_SQUIRTLE_FROM_OAK
	iftrue .squirtle
	loadtrainer BLUE_RB, BLUE_RB_4C
	jump .StartBattle

.charmander
	loadtrainer BLUE_RB, BLUE_RB_4A
	jump .StartBattle

.squirtle
	loadtrainer BLUE_RB, BLUE_RB_4B
.StartBattle
	winlosstext _SSAnneRivalDefeatedText, _SSAnneRivalWonText
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .got_rival_gender
	loadvar OtherTrainerClass, BLUE_RB_F
	winlosstext _SSAnneRivalDefeatedTextF, _SSAnneRivalWonTextF
.got_rival_gender
	writecode VAR_BATTLETYPE, BATTLETYPE_RIVAL_RB
	startbattle
	returnafterbattle
	special RestartMapMusic
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .male_rival_2
	writetext _SSAnneRivalCaptainTextF
	jump .done_outro_text

.male_rival_2
	writetext _SSAnneRivalCaptainText
.done_outro_text
	waitbutton
	closetext
	playmusic MUSIC_RIVAL_AFTER_RB
	dotrigger 1
	end

SSAnne2RocketScript:
	jumptextfaceplayer SSAnne2RocketText

Movement_SSAnneRivalWalksStraightDown:
	slow_step_down
	slow_step_down
	slow_step_down
	step_end

Movement_SSAnneRivalWalksDownFacesRight:
	slow_step_down
	slow_step_down
	slow_step_down
	slow_step_down
	turn_head_right
	step_end

Movement_SSAnneRivalDepartsDirectly:
	slow_step_down
	slow_step_down
	slow_step_down
	slow_step_down
	slow_step_left
	slow_step_left
	slow_step_left
	slow_step_left
	slow_step_left
	step_end

Movement_SSAnneRivalDepartsAroundPlayer:
	slow_step_right
	slow_step_down
	slow_step_down
	slow_step_down
	slow_step_down
	slow_step_down
	slow_step_left
	slow_step_left
	slow_step_left
	slow_step_left
	slow_step_left
	slow_step_left
	step_end

SSAnne2GentlemanScript:
	jumptextfaceplayer _SSAnne2Text1

_SSAnne2Text1:
	text "Ce bateau est une"
	line "croisière de luxe"
	cont "pour les"
	cont "dresseurs."

	para "A chaque port,"
	line "nous tenons des"
	cont "fêtes avec les"
	cont "dresseurs invités."
	done

_SSAnneRivalBeforeBattleText:
	text "<GREEN>: Bonjour!"
	line "<PLAYER>!"

	para "Si je m'attendais"
	line "à te voir!"

	para "<PLAYER>, tu as été"
	line "invitée? Toi?"

	para "Comment avance"
	line "ton #DEX?"

	para "J'en ai capturé"
	line "une quarantaine"
	cont "d'espèces!"

	para "Il y en a partout."
	line "Faut juste ramper"

	para "dans les hautes"
	line "herbes!"
	done

_SSAnneRivalDefeatedText:
	text "Hmph!"

	para "Au moins tu élèves"
	line "tes #MON."
	done

_SSAnneRivalWonText:
	text "<PLAYER>! T'as"
	line "le mal de mer?"

	para "Ressaisis-toi!"
	done

_SSAnneRivalCaptainText:
	text "<GREEN>: Il y a"
	line "le maître de la"
	cont "CS COUPE a bord."

	para "Mais c'est juste"
	line "un vieux qui a le"
	cont "mal de mer."

	para "Mais COUPE est"
	line "vraiment utile!"

	para "Tu devrais le"
	line "voir! A plus!"
	done

_SSAnneRivalBeforeBattleTextF:
	text "<GREEN>: <PLAYER>,"
	line "bonjour!"

	para "Tu étais aussi"
	line "invité? Génial!"

	para "Comment avance"
	line "ton #DEX?"

	para "Le mien se rempli"
	line "bien, je dois en"
	cont "être à 40."

	para "Il y a une telle"
	line "variété de #-"
	cont "MON!"

	para "Quelles espèces"
	line "as-tu attrapées"
	cont "<PLAYER>?"
	done

_SSAnneRivalDefeatedTextF:
	text "Waouh! Tu en as"
	line "attrapé des"
	cont "costaud!"
	done

_SSAnneRivalWonTextF:
	text "Ohh, <PLAYER><...>"

	para "Tu as le mal de"
	line "mer? Tu aurais du"
	cont "me le dire<...>"
	done

_SSAnneRivalCaptainTextF:
	text "<GREEN>: Il paraît"
	line "qu'il y avait le"
	cont "maître de la CS"
	cont "COUPE à bord"

	para "Mais, on dirait"
	line "qu'il a le mal de"
	cont "mer le pauvre<...>"

	para "Cette CS est tout"
	line "de même pratique."

	para "Tu devrais aller"
	line "le voir."

	para "On se voit plus"
	line "tard!"
	done

SSAnne2RocketText:
	text "La mutinerie est"
	line "une réussite!"

	para "Le CHEF sera"
	line "content!"
	done

SSAnne2_MapEventHeader:
	db 0, 0
	db 9
	warp_def 11, 9, 1, GROUP_S_S_ANNE_9, MAP_S_S_ANNE_9
	warp_def 11, 13, 3, GROUP_S_S_ANNE_9, MAP_S_S_ANNE_9
	warp_def 11, 17, 5, GROUP_S_S_ANNE_9, MAP_S_S_ANNE_9
	warp_def 11, 21, 7, GROUP_S_S_ANNE_9, MAP_S_S_ANNE_9
	warp_def 11, 25, 9, GROUP_S_S_ANNE_9, MAP_S_S_ANNE_9
	warp_def 11, 29, 11, GROUP_S_S_ANNE_9, MAP_S_S_ANNE_9
	warp_def 4, 2, 9, GROUP_S_S_ANNE_1, MAP_S_S_ANNE_1
	warp_def 12, 2, 2, GROUP_S_S_ANNE_3, MAP_S_S_ANNE_3
	warp_def 4, 36, 1, GROUP_S_S_ANNE_7, MAP_S_S_ANNE_7

	db 2
	xy_trigger 0, 8, 36, $0, SSAnne2RivalBattleTriggerLeft, 0, 0
	xy_trigger 0, 8, 37, $0, SSAnne2RivalBattleTriggerRight, 0, 0

	db 0
	db 10
	person_event SPRITE_GENTLEMAN, 11, 7, $4, 2, 0, -1, -1, 0, 0, 0, SSAnne2GentlemanScript, EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	person_event SPRITE_EGK_RIVAL, 8, 40, $0, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_SS_ANNE_EGK_RIVAL
	person_event SPRITE_ROCKET, 16, 13, $6, 0, 0, -1, -1, 0, 0, 0, SSAnne2RocketScript, EVENT_ROCKETS_NOT_YET_BOARDED_SS_ANNE
	person_event SPRITE_ROCKET, 16, 17, $6, 0, 0, -1, -1, 0, 0, 0, SSAnne2RocketScript, EVENT_ROCKETS_NOT_YET_BOARDED_SS_ANNE
	person_event SPRITE_ROCKET, 16, 21, $6, 0, 0, -1, -1, 0, 0, 0, SSAnne2RocketScript, EVENT_ROCKETS_NOT_YET_BOARDED_SS_ANNE
	person_event SPRITE_ROCKET, 16, 25, $6, 0, 0, -1, -1, 0, 0, 0, SSAnne2RocketScript, EVENT_ROCKETS_NOT_YET_BOARDED_SS_ANNE
	person_event SPRITE_ROCKET_GIRL, 16, 29, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SSAnne2RocketScript, EVENT_ROCKETS_NOT_YET_BOARDED_SS_ANNE
	person_event SPRITE_ROCKET, 16, 33, $6, 0, 0, -1, -1, 0, 0, 0, SSAnne2RocketScript, EVENT_ROCKETS_NOT_YET_BOARDED_SS_ANNE
	person_event SPRITE_ROCKET, 14, 7, $6, 0, 0, -1, -1, 0, 0, 0, SSAnne2RocketScript, EVENT_ROCKETS_NOT_YET_BOARDED_SS_ANNE
	person_event SPRITE_ROCKET_GIRL, 14, 6, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SSAnne2RocketScript, EVENT_ROCKETS_NOT_YET_BOARDED_SS_ANNE
