Route24RB_MapScriptHeader: ; 0x1adbf8
	; trigger count
	db 2
	dw .Trigger0, 0
	dw .Trigger1, 0

	; callback count
	db 0
.Trigger0
	end
.Trigger1
	end

Route24RBTrainerCamper:
	trainer EVENT_ROUTE_24_JR_TRAINER_RB, CAMPER, SHANE_RB, _Route24BattleText1, _Route24EndBattleText1, 0, .script
.script
	talkaftercancel
	loadfont
	writetext _Route24AfterBattleText1
	waitbutton
	closetext
	end

NuggetBridgeRBTrainer5:
	trainer EVENT_NUGGET_BRIDGE_TRAINER_5_RB, CAMPER, ETHAN_RB, _Route24BattleText2, _Route24EndBattleText2, 0, .script
.script
	talkaftercancel
	loadfont
	writetext _Route24AfterBattleText2
	waitbutton
	closetext
	end

NuggetBridgeRBTrainer4:
	trainer EVENT_NUGGET_BRIDGE_TRAINER_4_RB, LASS, RELI_RB, _Route24BattleText3, _Route24EndBattleText3, 0, .script
.script
	talkaftercancel
	loadfont
	writetext _Route24AfterBattleText3
	waitbutton
	closetext
	end

NuggetBridgeRBTrainer3:
	trainer EVENT_NUGGET_BRIDGE_TRAINER_3_RB, YOUNGSTER, TIMMY_RB, _Route24BattleText4, _Route24EndBattleText4, 0, .script
.script
	talkaftercancel
	loadfont
	writetext _Route24AfterBattleText4
	waitbutton
	closetext
	end

NuggetBridgeRBTrainer2:
	trainer EVENT_NUGGET_BRIDGE_TRAINER_2_RB, LASS, ALI_RB, _Route24BattleText5, _Route24EndBattleText5, 0, .script
.script
	talkaftercancel
	loadfont
	writetext _Route24AfterBattleText5
	waitbutton
	closetext
	end

NuggetBridgeRBTrainer1:
	trainer EVENT_NUGGET_BRIDGE_TRAINER_1_RB, BUG_CATCHER, CALE_RB, _Route24BattleText6, _Route24EndBattleText6, 0, .script
.script
	talkaftercancel
	loadfont
	writetext _Route24AfterBattleText6
	waitbutton
	closetext
	end

Route24RBRocketBattleTrigger:
	setlasttalked $2
	spriteface $0, RIGHT
NuggetBridgeRBEndGuyScript:
	faceplayer
	loadfont
	checkevent EVENT_NUGGET_BRIDGE_TRAINER_6_RB
	iftrue .after_text
	writetext Route24RBRocketText1a
	writetext Route24RBRocketText1b
	buttonsound
	verbosegiveitem NUGGET, 1
	writetext Route24RBRocketText2a
.loop1
	yesorno
	iffalse .ask2
	writetext Route24RBOakIntervenesText
	jump .loop1

.ask2
	writetext Route24RBRocketText2b
	yesorno
	iftrue .ask3
	writetext Route24RBOakIntervenesText
.loop2
	yesorno
	iffalse .ask3
	writetext Route24RBOakIntervenesText
	jump .loop2

.ask3
	writetext Route24RBRocketText2c
.loop3
	yesorno
	iffalse .ask4
	writetext Route24RBOakIntervenesText
	jump .loop3

.ask4
	writetext Route24RBRocketText2d
.loop4
	yesorno
	iffalse .startbattle
	writetext Route24RBOakIntervenesText
	jump .loop4

.startbattle
	playmusic MUSIC_HIKER_ENCOUNTER
	writetext Route24RBRocketText3
	waitbutton
	closetext
	loadtrainer GRUNTM, 36
	winlosstext Route24RBRocketWinText, 0
	startbattle
	returnafterbattle
	special RestartMapMusic
	dotrigger $1
	setevent EVENT_NUGGET_BRIDGE_TRAINER_6_RB
	loadfont
.after_text
	writetext Route24RBRocketText4
	waitbutton
	closetext
	end

Route24RBTM45:
	db TM_THUNDER_WAVE, 1

Route24RBRocketText1a:
	text "Félicitations!"
	para "Tu as battu les"
	line "5 dresseurs!@"
	sound0x02
	text_waitsfx
	db "@"

Route24RBRocketText1b:
	text "Tu remportes ce"
	line "fabuleux prix!"
	done

Route24RBRocketText2a:
	text "Au fait, ça"
	line "t'intéresserais"
	cont "pas de rejoindre"
	cont "la TEAM ROCKET?"

	para "On est des"
	line "méchants qui"
	cont "utilisent les"
	cont "#MON."

	para "Alors?"
	done

Route24RBRocketText2b:
	text "T'es sûr?"
	done

Route24RBRocketText2c:
	text "Allez, viens!"
	done

Route24RBRocketText2d:
	text "Je te dis de"
	line "nous joindre!"
	done

Route24RBRocketText3:
	text "OK, il faut te"
	line "convaincre!"

	para "Je vais te faire"
	line "une offre que tu"
	cont "vas pas refuser!"
	done

Route24RBOakIntervenesText:
	text "Les mots du PROF."
	line "CHEN résonnent<...>"

	para "<PLAYER>! Est-ce"
	line "vraiment la bonne"
	cont "chose à faire?"

	para $56, $56, $56
	line $56, $56, $56

	para "Pourquoi hésiter?"
	line "Allez, c'est une"
	cont "super offre!"
	done

Route24RBRocketWinText:
	text "Arrgh!"
	line "Pas mauvais!"
	done

Route24RBRocketText4:
	text "Avec ton talent,"
	line "tu pourrais être"
	cont "chef de la"
	cont "TEAM ROCKET!"
	done

_Route24BattleText1:
	text "J'ai vu tes"
	line "exploits depuis"
	cont "là!"
	done

_Route24EndBattleText1:
	text "J'y crois pas!"
	done

_Route24AfterBattleText1:
	text "Je me suis caché"
	line "parce que les gens"
	cont "sur le pont me"
	cont "font peur."
	done

_Route24BattleText2:
	text "OK! Je suis No. 5!"
	line "Je vais t'écraser!"
	done

_Route24EndBattleText2:
	text "Waouh! C'est trop!"
	done

_Route24AfterBattleText2:
	text "J'ai fais de mon"
	line "mieux, j'ai pas"
	cont "de regrets!"
	done

_Route24BattleText3:
	text "Je suis No. 4!"
	line "Tu fatigues?"
	done

_Route24EndBattleText3:
	text "J'ai perdu aussi!"
	done

_Route24AfterBattleText3:
	text "J'ai fais de mon"
	line "mieux, j'ai pas"
	cont "de regrets!"
	done

_Route24BattleText4:
	text "No. 3! Ce"
	line "sera pas facile!"
	done

_Route24EndBattleText4:
	text "Aïe! Ecrasé!"
	done

_Route24AfterBattleText4:
	text "J'ai fais de mon"
	line "mieux, j'ai pas"
	cont "de regrets!"
	done

_Route24BattleText5:
	text "Je suis No. 2!"
	line "C'est sérieux!"
	done

_Route24EndBattleText5:
	text "Comment ai-je"
	line "pu perdre?"
	done

_Route24AfterBattleText5:
	text "J'ai fais de mon"
	line "mieux, j'ai pas"
	cont "de regrets!"
	done

_Route24BattleText6:
	text "C'est le PONT"
	line "PEPITE! Bat 5"
	cont "dresseurs et"
	cont "gagne un fabuleux"
	cont "prix!"

	para "Tu penses que t'as"
	line "ce qu'il te faut?"
	done

_Route24EndBattleText6:
	text "Ouh! Pas mal!"
	done

_Route24AfterBattleText6:
	text "J'ai fais de mon"
	line "mieux, j'ai pas"
	cont "de regrets!"
	done

Route24RB_MapEventHeader: ; 0x1adf50
	; filler
	db 0, 0

	; warps
	db 0

	; xy triggers
	db 1
	xy_trigger 0, 15, 10, $0, Route24RBRocketBattleTrigger, 0, 0

	; signposts
	db 0

	; people-events
	db 8
	person_event SPRITE_COOLTRAINER_M, 19, 15, $8, 0, 0, -1, -1, 0, 0, 0, NuggetBridgeRBEndGuyScript, -1
	person_event SPRITE_COOLTRAINER_M, 24,  9, $7, 0, 0, -1, -1, 0, 2, 4, Route24RBTrainerCamper,     -1
	person_event SPRITE_COOLTRAINER_M, 22, 15, $8, 0, 0, -1, -1, 0, 2, 1, NuggetBridgeRBTrainer5,     -1
	person_event SPRITE_LASS,          25, 14, $9, 0, 0, -1, -1, 0, 2, 1, NuggetBridgeRBTrainer4,     -1
	person_event SPRITE_YOUNGSTER,     28, 15, $8, 0, 0, -1, -1, 0, 2, 1, NuggetBridgeRBTrainer3,     -1
	person_event SPRITE_LASS,          31, 14, $9, 0, 0, -1, -1, 0, 2, 1, NuggetBridgeRBTrainer2,     -1
	person_event SPRITE_BUG_CATCHER,   34, 15, $8, 0, 0, -1, -1, 0, 2, 1, NuggetBridgeRBTrainer1,     -1
	person_event SPRITE_POKE_BALL,      9, 14, $1, 0, 0, -1, -1, 0, 1, 0, Route24RBTM45, EVENT_ROUTE_24_TM45_RB
; 0x1adf63

