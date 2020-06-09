Route11RB_MapScriptHeader: ; 0x68000
	; trigger count
	db 0

	; callback count
	db 0
; 0x68002
Trainer_Route11RBGambler1:
	trainer EVENT_ROUTE_11_GAMBLER_1_RB, GENTLEMAN, HUGO_RB, _Route11BattleText1, _Route11EndBattleText1, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route11AfterBattleText1
	waitbutton
	closetext
	end

Trainer_Route11RBGambler2:
	trainer EVENT_ROUTE_11_GAMBLER_2_RB, GENTLEMAN, JASPER_RB, _Route11BattleText2, _Route11EndBattleText2, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route11AfterBattleText2
	waitbutton
	closetext
	end

Trainer_Route11RBYoungster1:
	trainer EVENT_ROUTE_11_YOUNGSTER_1_RB, YOUNGSTER, EDDIE_RB, _Route11BattleText3, _Route11EndBattleText3, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route11AfterBattleText3
	waitbutton
	closetext
	end

Trainer_Route11RBRocker1:
	trainer EVENT_ROUTE_11_ROCKER_1_RB, GUITARIST, BERNIE_RB, _Route11BattleText4, _Route11EndBattleText4, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route11AfterBattleText4
	waitbutton
	closetext
	end

Trainer_Route11RBYoungster2:
	trainer EVENT_ROUTE_11_YOUNGSTER_2_RB, YOUNGSTER, DAVE_RB, _Route11BattleText5, _Route11EndBattleText5, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route11AfterBattleText5
	waitbutton
	closetext
	end

Trainer_Route11RBGambler3:
	trainer EVENT_ROUTE_11_GAMBLER_3_RB, GENTLEMAN, DARIAN_RB, _Route11BattleText6, _Route11EndBattleText6, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route11AfterBattleText6
	waitbutton
	closetext
	end

Trainer_Route11RBGambler4:
	trainer EVENT_ROUTE_11_GAMBLER_4_RB, GENTLEMAN, DIRK_RB, _Route11BattleText7, _Route11EndBattleText7, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route11AfterBattleText7
	waitbutton
	closetext
	end

Trainer_Route11RBYoungster3:
	trainer EVENT_ROUTE_11_YOUNGSTER_3_RB, YOUNGSTER, DILLON_RB, _Route11BattleText8, _Route11EndBattleText8, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route11AfterBattleText8
	waitbutton
	closetext
	end

Trainer_Route11RBRocker2:
	trainer EVENT_ROUTE_11_ROCKER_2_RB, GUITARIST, BRAXTON_RB, _Route11BattleText9, _Route11EndBattleText9, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route11AfterBattleText9
	waitbutton
	closetext
	end

Trainer_Route11RBYoungster4:
	trainer EVENT_ROUTE_11_YOUNGSTER_4_RB, YOUNGSTER, YASU_RB, _Route11BattleText10, _Route11EndBattleText10, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route11AfterBattleText10
	waitbutton
	closetext
	end


Route11RBFruitTree:
	fruittree $18

MapRoute11RBSignpost0Script:
	jumptext Route11RBSignpostText

Route11RBHiddenEscapeRope:
	dwb EVENT_ROUTE_11_HIDDEN_ESCAPE_ROPE_RB, ESCAPE_ROPE

_Route11BattleText1:
	text "Victoire, défaite"
	line "ou égalité!"
	done

_Route11EndBattleText1:
	text "Tu as choisis"
	line "la victoire!"
	done

_Route11AfterBattleText1:
	text "Les #MON c'est"
	line "la vie. Et la vie"
	cont "c'est un pari!"
	done

_Route11BattleText2:
	text "Battons-nous! J'en"
	line "ai jamais marre!"
	done

_Route11EndBattleText2:
	text "J'avais une"
	line "chance."
	done

_Route11AfterBattleText2:
	text "Tu ne peux pas"
	line "être un lâche dans"
	cont "le monde des"
	cont "#MON!"
	done

_Route11BattleText3:
	text "Combat, mais ne"
	line "triche pas!"
	done

_Route11EndBattleText3:
	text "Hein? C'est pas"
	line "normal!"
	done

_Route11AfterBattleText3:
	text "J'ai fait de mon"
	line "mieux, je n'ai pas"
	cont "de regrets."
	done

_Route11BattleText4:
	text "T'es prêt a jouer?"
	done

_Route11EndBattleText4:
	text "Trop métal!"
	done

_Route11AfterBattleText4:
	text "C'est important de"
	line "calibrer tes"
	cont "instruments."
	done

_Route11BattleText5:
	text "Je viens juste de"
	line "devenir dresseur"
	cont "mais je pense que"
	cont "je peux gagner!"
	done

_Route11EndBattleText5:
	text "Mon #MON n'y"
	line "est pas arrivé!"
	done

_Route11AfterBattleText5:
	text "Tu veux quoi?"
	line "Laisse moi seul!"
	done

_Route11BattleText6:
	text "Mouahaha! Je n'ai"
	line "jamais perdu!"
	done

_Route11EndBattleText6:
	text "Ma première"
	line "défaite!"
	done

_Route11AfterBattleText6:
	text "Tu as la chance"
	line "des débutants."
	done

_Route11BattleText7:
	text "Je n'ai jamais"
	line "gagné<...>"
	done

_Route11EndBattleText7:
	text "Je l'ai vu venir<...>"
	done

_Route11AfterBattleText7:
	text "Je dois être"
	line "maudit."
	done

_Route11BattleText8:
	text "Je suis la tête"
	line "de classe!"
	done

_Route11EndBattleText8:
	text "Zut! Il faut que"
	line "je renforce mon"
	cont "#MON!"
	done

_Route11AfterBattleText8:
	text "Il y a un gros"
	line "#MON qui"
	cont "descends des"
	cont "montagnes."

	para "Il est fort si"
	line "tu peux l'avoir."
	done

_Route11BattleText9:
	text "#MON! Attrapez"
	line "les tous!!"

	para $56, " ", $56, " ", $56
	line $56, " ", $56, " ", $56

	para "Allez, chante avec"
	line "moi!"
	done

_Route11EndBattleText9:
	text "Ensemble pour la"
	line "victoire!"
	done

_Route11AfterBattleText9:
	text "Attrapez les"
	line "tous!"
	para "Attrapez les"
	line "tous!"
	para "#MON!!!"
	done

_Route11BattleText10:
	text "Mon #MON est"
	line "prêt!"
	done

_Route11EndBattleText10:
	text "C'est trop pour"
	line "lui!"
	done

_Route11AfterBattleText10:
	text "Je dois en trouver"
	line "des plus forts!"
	done

Route11RBSignpostText: ; 0x68238
	text "ROUTE 11"
	done

Route11RB_MapEventHeader: ; 0x68242
	; filler
	db 0, 0

	; warps
	db 2
	warp_def 8, 33, 1, GROUP_ROUTE_11_GATE_RB, MAP_ROUTE_11_GATE_RB
	warp_def 9, 33, 2, GROUP_ROUTE_11_GATE_RB, MAP_ROUTE_11_GATE_RB

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 7, 3, $0, MapRoute11RBSignpost0Script
	signpost 5, 32, $7, Route11RBHiddenEscapeRope

	; people-events
	db 11
	person_event SPRITE_GENTLEMAN, 18, 8, $6, 0, 0, -1, -1, 0, 2, 3, Trainer_Route11RBGambler1, -1
	person_event SPRITE_GENTLEMAN, 13, 19, $6, 0, 0, -1, -1, 0, 2, 2, Trainer_Route11RBGambler2, -1
	person_event SPRITE_YOUNGSTER, 9, 11, $8, 0, 0, -1, -1, 0, 2, 3, Trainer_Route11RBYoungster1, -1
	person_event SPRITE_COOLTRAINER_M, 15, 26, $6, 0, 0, -1, -1, 0, 2, 3, Trainer_Route11RBRocker1, -1
	person_event SPRITE_YOUNGSTER, 8, 16, $7, 0, 0, -1, -1, 0, 2, 3, Trainer_Route11RBYoungster2, -1
	person_event SPRITE_GENTLEMAN, 17, 35, $6, 0, 0, -1, -1, 0, 2, 3, Trainer_Route11RBGambler3, -1
	person_event SPRITE_GENTLEMAN, 7, 23, $7, 0, 0, -1, -1, 0, 2, 3, Trainer_Route11RBGambler4, -1
	person_event SPRITE_YOUNGSTER, 9, 32, $9, 0, 0, -1, -1, 0, 2, 4, Trainer_Route11RBYoungster3, -1
	person_event SPRITE_COOLTRAINER_M, 20, 33, $8, 0, 0, -1, -1, 0, 2, 4, Trainer_Route11RBRocker2, -1
	person_event SPRITE_YOUNGSTER, 16, 16, $6, 0, 0, -1, -1, 0, 2, 3, Trainer_Route11RBYoungster4, -1
	person_event SPRITE_FRUIT_TREE, 6, 36, $1, 0, 0, -1, -1, 0, 0, 0, Route11RBFruitTree, -1
; 0x68293

