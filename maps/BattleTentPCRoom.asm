BattleTentPCRoom_MapScriptHeader:
	db 0

	db 0

LeaguePCScript:
	loadfont
	writetext tppPcIntroText
	playsound SFX_BOOT_PC
	waitsfx
	checkevent EVENT_READ_PC_EXPLANATION
	iftrue .skip_lengthly_intro
.intro
	writetext tppPcIntroText2
	buttonsound
	setevent EVENT_READ_PC_EXPLANATION
.skip_lengthly_intro
	writetext tppPcIntroText3
	loadmenudata tppPc_Options_Header
	interpretmenu2
	writebackup
	iffalse tppPcEndBattle
	if_equal ULTIMATE, tppPcUltimateTeamBattle
	if_equal MIRROR, tppPcMirrorBattle
	if_equal PC_SURVIVAL, TPPPC_SurvivalModeScript
	if_equal 4, .intro
tppPcEndBattle:
	writetext tppPcLogOffText
	playsound SFX_SHUT_DOWN_PC
	pause 20
	closetext
	end

tppPcUltimateTeamBattle:
	writetext tppPcHealText
	special HealParty
	playmusic MUSIC_HEAL
	pause 60
	special RestartMapMusic
	writetext tppPcBeginUltimateBattleText
	waitbutton
	closetext
	loadtrainer TPPPC, ULTIMATE
	jump tppPcStartBattle

tppPcMirrorBattle:
	writetext tppPcHealText
	special HealParty
	playmusic MUSIC_HEAL
	pause 60
	special RestartMapMusic
	writetext tppPcBeginMirrorBattleText
	waitbutton
	closetext
	loadtrainer TPPPC, MIRROR
tppPcStartBattle:
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	winlosstext tppPcWonText, tppPcLostText
	startbattle
	reloadmap
	special RestartMapMusic
	special HealParty
	loadfont
	jump tppPcEndBattle

TPPPC_SurvivalModeScript:
	writetext tppPcHealText
	special HealParty
	playmusic MUSIC_HEAL
	pause 60
	special RestartMapMusic
	writebyte 0
	copyvartobyte wSurvivalModeWinStreak
.loop
	special SampleRandomSurvival
	copybytetovar wSurvivalModeWinStreak
	if_less_than 200, .not_max
	writetext SurvivalModeBattleStartText_200plus
	jump .okay1

.not_max
	writetext SurvivalModeBattleStartText
.okay1
	waitbutton
	closetext
	loadtrainer TPPPC, PC_SURVIVAL
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	winlosstext tppPcWonText, tppPcLostText
	startbattle
	reloadmap
	loadfont
	iftrue .finish
	jump .loop

.finish
	special HealParty
	copybytetovar wSurvivalModeWinStreak
	if_less_than 200, .not_max2
	writetext SurvivalModeExitText_200plus
	playsound SFX_DEX_FANFARE_230_PLUS
	waitsfx
	jump tppPcEndBattle

.not_max2
	writetext SurvivalModeExitText
	playsound SFX_ITEM
	waitsfx
	jump tppPcEndBattle

tppPc_Options_Header: ; 0x56478
	db $40 ; flags
	db 02, 02 ; start coords
	db 13, 17 ; end coords
	dw tppPc_Options
	db 1 ; default option
; 0x56480

tppPc_Options: ; 0x56480
	db $80 ; flags
	db 5 ; items
	db "EQUIPE ULTIME@"
	db "EQUIPE PERSO.@"
	db "MODE SURVIE@"
	db "EXPLICATIONS@"
	db "ANNULER@"

SurvivalModeBattleStartText:
	text "Chargement du com-"
	line "bat numéro @"
	deciram wSurvivalModeWinStreak, $25
	text "<...>"
	done

SurvivalModeBattleStartText_200plus:
	text "Chargement du"
	line "combat suivant<...>"
	done

SurvivalModeExitText:
	text "Vous avez survécu"
	line "à @"
	deciram wSurvivalModeWinStreak, $25
	text " combats."

	para "Beau travail."
	done

SurvivalModeExitText_200plus:
	text "Vous avez survécu"
	line "à plus de 200"
	cont "combats."

	para "Félicitations!"
	done

SurvivalModeShutdownText:
	text "Extinction<...>"
	done


tppPcIntroText:
	text "<PLAY_G> allume le"
	line "PC!"

	para "LIGUE #MON"
	line "SIMULATION DE"
	cont "COMBATS."
	done

tppPcIntroText2:
	text "Ce logiciel vous"
	line "permet d'affronter"

	para "une équipe des"
	line "plus puissants"
	cont "#MON du monde."

	para "Ou bien vous pou-"
	line "vez combattre une"
	cont "copie de votre"
	cont "équipe #MON."

	para "Pour un autre dé-"
	line "fi, essayez le"
	cont "nouveau MODE"
	cont "SURVIE, où vous"

	para "pouvez combattre"
	line "une horde d'équipe"
	cont "ennemi généré de"
	cont "manière aléatoire"

	para "jusqu'à ce que"
	line "vous tombiez K.O."
	done

tppPcIntroText3:
	text "Veuillez faire"
	line "votre choix."
	done

tppPcHealText:
	text "Avant de démarrer,"
	line "nous allons"

	para "soigner vos"
	line "#MON."
	done

tppPcWonText:
	text "Résultat: Le"
	line "participant à"
	cont "gagné."
	done

tppPcLostText:
	text "Résultat: Le"
	line "participant à"
	cont "gagné."
	done

tppPcBeginUltimateBattleText:
	text "Chargement de l'"
	line "équipe ultime."
	done

tppPcBeginMirrorBattleText:
	text "Copie en mémoire"
	line "de votre équipe."
	done

tppPcLogOffText:
	text "Fin du programme."

	para "Au revoir!"
	done

BattleTentPCRoom_MapEventHeader:
	db 0, 0

	db 2
	warp_def 7, 3, 3, GROUP_BATTLE_TENT_BATTLE_ROOM, MAP_BATTLE_TENT_BATTLE_ROOM
	warp_def 7, 4, 3, GROUP_BATTLE_TENT_BATTLE_ROOM, MAP_BATTLE_TENT_BATTLE_ROOM

	db 0

	db 1
	signpost 2, 3, 1, LeaguePCScript

	db 0