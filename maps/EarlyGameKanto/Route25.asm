Route25RB_MapScriptHeader: ; 0x19ee94
	; trigger count
	db 0
	; callback count
	db 0
; 0x19ee9e

Route25RBTrainer1:
	trainer EVENT_ROUTE_25_YOUNGSTER_1_RB, YOUNGSTER, JOEY_RB, _Route25BattleText1, _Route25EndBattleText1, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route25AfterBattleText1
	waitbutton
	closetext
	end

Route25RBTrainer2:
	trainer EVENT_ROUTE_25_YOUNGSTER_2_RB, YOUNGSTER, DAN_RB, _Route25BattleText2, _Route25EndBattleText2, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route25AfterBattleText2
	waitbutton
	closetext
	end

Route25RBTrainer3:
	trainer EVENT_ROUTE_25_JR_TRAINER_RB, CAMPER, FLINT_RB, _Route25BattleText3, _Route25EndBattleText3, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route25AfterBattleText3
	waitbutton
	closetext
	end

Route25RBTrainer4:
	trainer EVENT_ROUTE_25_LASS_1_RB, PICNICKER, KELSEY_RB, _Route25BattleText4, _Route25EndBattleText4, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route25AfterBattleText4
	waitbutton
	closetext
	end

Route25RBTrainer5:
	trainer EVENT_ROUTE_25_YOUNGSTER_3_RB, YOUNGSTER, CHAD_RB, _Route25BattleText5, _Route25EndBattleText5, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route25AfterBattleText5
	waitbutton
	closetext
	end

Route25RBTrainer6:
	trainer EVENT_ROUTE_25_LASS_2_RB, LASS, HALEY_RB, _Route25BattleText6, _Route25EndBattleText6, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route25AfterBattleText6
	waitbutton
	closetext
	end

Route25RBTrainer7:
	trainer EVENT_ROUTE_25_HIKER_1_RB, HIKER, FRANK_RB, _Route25BattleText7, _Route25EndBattleText7, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route25AfterBattleText7
	waitbutton
	closetext
	end

Route25RBTrainer8:
	trainer EVENT_ROUTE_25_HIKER_2_RB, HIKER, WAYNE_RB, _Route25BattleText8, _Route25EndBattleText8, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route25AfterBattleText8
	waitbutton
	closetext
	end

Route25RBTrainer9:
	trainer EVENT_ROUTE_25_HIKER_3_RB, HIKER, NOB_RB, _Route25BattleText9, _Route25EndBattleText9, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route25AfterBattleText9
	waitbutton
	closetext
	end

Route25RB_TMBall:
	db TM_SEISMIC_TOSS, 1

Route25RB_HiddenEther:
	dwb EVENT_ROUTE_25_RB_HIDDEN_ETHER, ETHER

Route25RB_HiddenElixer:
	dwb EVENT_ROUTE_25_RB_HIDDEN_ELIXER, ELIXER

Route25RB_BillsHouseSignScript:
	jumptext _Route25Text11

_Route25BattleText1:
	text "Les dresseurs du"
	line "coin viennent ici"
	cont "pour s'entraîner!"
	done

_Route25EndBattleText1:
	text "Pas mal."
	done

_Route25AfterBattleText1:
	text "Tous les #MON"
	line "possèdent des"
	cont "fabilesses."

	para "Il vaut mieux en"
	line "élever de tout"
	cont "types."
	done

_Route25BattleText2:
	text "Papa m'a emmené"
	line "à une grande fête"
	cont "a l'OCEANE de"
	cont "CARMIN SUR MER!"
	done

_Route25EndBattleText2:
	text "Je ne suis pas"
	line "en colère!"
	done

_Route25AfterBattleText2:
	text "A l'OCEANE, j'ai"
	line "vu des dresseurs"
	cont "du monde entier."
	done

_Route25BattleText3:
	text "Je suis cool."
	line "J'ai une petite-"
	cont "amie!"
	done

_Route25EndBattleText3:
	text "Ohh, mince<...>"
	done

_Route25AfterBattleText3:
	text "Ma petite-amie"
	line "me réconfortera."
	done

_Route25BattleText4:
	text "Salut! Mon petit"
	line "copain est cool!"
	done

_Route25EndBattleText4:
	text "J'étais pas"
	line "en forme!"
	done

_Route25AfterBattleText4:
	text "J'aimerais que mon"
	line "mec soit aussi"
	cont "fort!"
	done

_Route25BattleText5:
	text "Je savais qu'on"
	line "devrait se battre!"
	done

_Route25EndBattleText5:
	text "Je savais que je"
	line "perdrais aussi!"
	done

_Route25AfterBattleText5:
	text "Si ton #MON"
	line "est confus ou"
	cont "s'endort,"
	cont "retire-le!"
	done

_Route25BattleText6:
	text "Mon ami a un"
	line "#MON mignon."
	cont "Je suis jaloux!"
	done

_Route25EndBattleText6:
	text "Je suis pas"
	line "si jaloux!"
	done

_Route25AfterBattleText6:
	text "Tu viens du MONT"
	line "SELENITE? Je peux"
	cont "avoir un MELOFEE?"
	done

_Route25BattleText7:
	text "Je reviens du MONT"
	line "SELENITE et je"
	cont "suis prêt!"
	done

_Route25EndBattleText7:
	text "Tu travailles dur!"
	done

_Route25AfterBattleText7:
	text "Oh non!"
	line "Un NOSFERAPTI"
	cont "m'avait mordu<...>"
	done

_Route25BattleText8:
	text "Je vais voir un"
	line "collectionneur de"
	cont "#MON au cap!"
	done

_Route25EndBattleText8:
	text "Tu m'as eu."
	done

_Route25AfterBattleText8:
	text "Ce collectionneur"
	line "a plein de #-"
	cont "MON rares."
	done

_Route25BattleText9:
	text "Tu vas voir LEO?"
	line "D'abord, on va"
	cont "se battre!"
	done

_Route25EndBattleText9:
	text "T'es quelque"
	line "chose!"
	done

_Route25AfterBattleText9:
	text "Le chemin en"
	line "dessous est un"
	cont "raccourci vers"
	cont "AZURIA."
	done

_Route25Text11:
	text "VILLA"
	line "LEO habite ici!"
	done

Route25RB_MapEventHeader: ; 0x19f58f
	; filler
	db 0, 0

	; warps
	db 1
	warp_def 3, 45, 1, GROUP_BILLS_HOUSE_RB, MAP_BILLS_HOUSE_RB

	; xy triggers
	db 0

	; signposts
	db 3
	signpost 3, 43, $0, Route25RB_BillsHouseSignScript
	signpost 3, 38, $7, Route25RB_HiddenEther
	signpost 1, 10, $7, Route25RB_HiddenElixer

	; people-events
	db 10
	person_event SPRITE_YOUNGSTER,      6, 18, $6, 0, 0, -1, -1, 0, 2, 2, Route25RBTrainer1, -1
	person_event SPRITE_YOUNGSTER,      9, 22, $7, 0, 0, -1, -1, 0, 2, 3, Route25RBTrainer2, -1
	person_event SPRITE_COOLTRAINER_M,  8, 28, $6, 0, 0, -1, -1, 0, 2, 3, Route25RBTrainer3, -1
	person_event SPRITE_LASS,          12, 22, $9, 0, 0, -1, -1, 0, 2, 2, Route25RBTrainer4, -1
	person_event SPRITE_YOUNGSTER,      7, 36, $8, 0, 0, -1, -1, 0, 2, 3, Route25RBTrainer5, -1
	person_event SPRITE_LASS,           8, 41, $6, 0, 0, -1, -1, 0, 2, 3, Route25RBTrainer6, -1
	person_event SPRITE_POKEFAN_M,      8, 12, $9, 0, 0, -1, -1, 0, 2, 3, Route25RBTrainer7, -1
	person_event SPRITE_POKEFAN_M,     13, 27, $7, 0, 0, -1, -1, 0, 2, 2, Route25RBTrainer8, -1
	person_event SPRITE_POKEFAN_M,     11, 17, $9, 0, 0, -1, -1, 0, 2, 2, Route25RBTrainer9, -1
	person_event SPRITE_POKE_BALL,      6, 26, $1, 0, 0, -1, -1, 0, 1, 0, Route25RB_TMBall, EVENT_ROUTE_25_TM19_RB
; 0x19f643
