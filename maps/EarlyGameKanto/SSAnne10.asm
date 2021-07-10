SSAnne10_MapScriptHeader:
	db 0
	db 0

Trainer_SSAnne10Sailor1:
	trainer EVENT_S_S_ANNE_10_SAILOR_1, SAILOR, PHILLIP_RB, _SSAnne10BattleText1, _SSAnne10EndBattleText1, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne10AfterBattleText1
	waitbutton
	closetext
	end

Trainer_SSAnne10Sailor2:
	trainer EVENT_S_S_ANNE_10_SAILOR_2, SAILOR, HUEY_RB, _SSAnne10BattleText2, _SSAnne10EndBattleText2, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne10AfterBattleText2
	waitbutton
	closetext
	end

Trainer_SSAnne10Sailor3:
	trainer EVENT_S_S_ANNE_10_SAILOR_3, SAILOR, DYLAN_RB, _SSAnne10BattleText3, _SSAnne10EndBattleText3, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne10AfterBattleText3
	waitbutton
	closetext
	end

Trainer_SSAnne10Sailor4:
	trainer EVENT_S_S_ANNE_10_SAILOR_4, SAILOR, DUNCAN_RB, _SSAnne10BattleText4, _SSAnne10EndBattleText4, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne10AfterBattleText4
	waitbutton
	closetext
	end

Trainer_SSAnne10Sailor5:
	trainer EVENT_S_S_ANNE_10_SAILOR_5, SAILOR, LEONARD_RB, _SSAnne10BattleText5, _SSAnne10EndBattleText5, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne10AfterBattleText5
	waitbutton
	closetext
	end

Trainer_SSAnne10Fisher:
	trainer EVENT_S_S_ANNE_10_FISHER, FISHER, BARNY_RB, _SSAnne10BattleText6, _SSAnne10EndBattleText6, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne10AfterBattleText6
	waitbutton
	closetext
	end

SSAnne10CooltrainerMScript:
	jumptextfaceplayer _SSAnne10Text7

SSAnne10MachopScript:
	loadfont
	writetext _SSAnne10Text8
	cry MACHOKE
	waitbutton
	closetext
	end

SSAnne10Ether:
	db ETHER, 1
SSAnne10Nugget:
	db NUGGET, 1
SSAnne10MaxPotion:
	db MAX_POTION, 1

SSAnne10BedScript:
	loadfont
	writetext _SSAnne10BedText1
	waitbutton
	closetext
	special Special_FadeToBlack
	special Functiond91
	playmusic MUSIC_HEAL
	special HealParty
	checkevent EVENT_S_S_ANNE_RUBBED_CAPTAINS_BACK
	iffalse .skip_timer
	special DecrementSSAnneTimer
.skip_timer
	blackoutmod GROUP_S_S_ANNE_10, MAP_S_S_ANNE_10
	pause 60
	special Function8c0ab
	special RestartMapMusic
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .female
	writetext _SSAnne10BedText2
	waitbutton
	closetext
	end
.female
	writetext _SSAnne10BedText2F
	waitbutton
	closetext
	end

_SSAnne10Text8:
	text "MACHOPEUR: Cho!"
	line "Macho!"
	done

_SSAnne10BattleText1:
	text "Tu sais ce qu'on"
	line "dit sur les marins"
	cont "et les duels!"
	done

_SSAnne10EndBattleText1:
	text "Ouaip!"
	line "Bon combat!"
	done

_SSAnne10AfterBattleText1:
	text "Haha! Tu veux"
	line "devenir un marin?"
	done

_SSAnne10BattleText2:
	text "Ma réputation de"
	line "marin est en jeu!"
	done

_SSAnne10EndBattleText2:
	text "Ton esprit m'a"
	line "coulé!"
	done

_SSAnne10AfterBattleText2:
	text "Tu as rencontré"
	line "le maître pécheur"
	cont "à CARMIN SUR MER?"
	done

_SSAnne10BattleText3:
	text "Les marins ont"
	line "aussi des #MON!"
	done

_SSAnne10EndBattleText3:
	text "T'es pas nul"
	line "dis donc."
	done

_SSAnne10AfterBattleText3:
	text "Tous nos #MON"
	line "viennent de la"
	cont "mer!"
	done

_SSAnne10BattleText4:
	text "J'aime les p'tits"
	line "gars comme toi!@@"

_SSAnne10EndBattleText4:
	text "Argh! J'ai perdu!"
	done

_SSAnne10AfterBattleText4:
	text "Les #MON d'eau"
	line "vivent dans les"
	cont "fond marins."

	para "Tu auras besoin"
	line "d'une CANNE."
	done

_SSAnne10BattleText5:
	text "Si tu perds, on"
	line "te balance aux"
	cont "requins!"
	done

_SSAnne10EndBattleText5:
	text "Argh!"
	line "Battu par toi?"
	done

_SSAnne10AfterBattleText5:
	text "Il y a souvent des"
	line "méduses entraînées"
	cont "dans le sillage"
	cont "du bateau."
	done

_SSAnne10BattleText6:
	text "Salut l'ami!"
	line "Parlons un peu!"

	para "Tout mes #MON"
	line "viennent de"
	cont "la mer!"
	done

_SSAnne10EndBattleText6:
	text "Zut!"
	line "Celui-là s'est"
	cont "échappé!"
	done

_SSAnne10AfterBattleText6:
	text "J'allais faire"
	line "de toi mon"
	cont "assistant!"
	done

_SSAnne10Text7:
	text "Mon copain,"
	line "MACHOPEUR, est"
	cont "fort!"

	para "Il a assez de"
	line "FORCE pour bouger"
	cont "les rochers!"
	done

_SSAnne10BedText1:
	text "Un lit douillet."
	line "Allez, dodo<...>"
	done

_SSAnne10BedText2:
	text "<PLAYER> et ses"
	line "#MON se lèvent"
	cont "en pleine forme!"
	done

_SSAnne10BedText2F:
	text "<PLAYER> et ses"
	line "#MON se lèvent"
	cont "en pleine forme!"
	done

SSAnne10_MapEventHeader:
	db 0, 0
	db 12
	db  5,  2, 5, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4
	db  5,  3, 5, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4
	db  5, 12, 4, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4
	db  5, 13, 4, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4
	db  5, 22, 3, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4
	db  5, 23, 3, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4
	db 15,  2, 2, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4
	db 15,  3, 2, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4
	db 15, 12, 1, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4
	db 15, 13, 1, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4
	db 15, 22, 7, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4
	db 15, 23, 7, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4

	db 0

	db 2
	signpost 11, 23, $0, SSAnne10BedScript
	signpost 12, 23, $0, SSAnne10BedScript

	db 11
	person_event SPRITE_SAILOR, 17,  4, $6, 0, 0, -1, -1, 0, 2, 3, Trainer_SSAnne10Sailor1, -1
	person_event SPRITE_SAILOR, 15,  6, $6, 0, 0, -1, -1, 0, 2, 3, Trainer_SSAnne10Sailor2, -1
	person_event SPRITE_SAILOR,  7, 16, $8, 0, 0, -1, -1, 0, 2, 3, Trainer_SSAnne10Sailor3, -1
	person_event SPRITE_SAILOR,  6, 26, $6, 0, 0, -1, -1, 0, 2, 3, Trainer_SSAnne10Sailor4, -1
	person_event SPRITE_SAILOR,  6,  4, $9, 0, 0, -1, -1, 0, 2, 3, Trainer_SSAnne10Sailor5, -1
	person_event SPRITE_FISHER,  8,  4, $9, 0, 0, -1, -1, 0, 2, 3, Trainer_SSAnne10Fisher, -1
	person_event SPRITE_COOLTRAINER_M, 17, 14, $9, 0, 0, -1, -1, 0, 0, 0, SSAnne10CooltrainerMScript, -1
	person_event SPRITE_MACHOP, 16, 15, $16, 0, 0, -1, -1, 0, 0, 0, SSAnne10MachopScript, -1
	person_event SPRITE_POKE_BALL, 6, 24, $1, 0, 0, -1, -1, 0, 1, 0, SSAnne10Ether, EVENT_S_S_ANNE_10_ETHER
	person_event SPRITE_POKE_BALL, 6, 14, $1, 0, 0, -1, -1, 0, 1, 0, SSAnne10Nugget, EVENT_S_S_ANNE_10_NUGGET
	person_event SPRITE_POKE_BALL, 15, 16, $1, 0, 0, -1, -1, 0, 1, 0, SSAnne10MaxPotion, EVENT_S_S_ANNE_10_MAX_POTION
