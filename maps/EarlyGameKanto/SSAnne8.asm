SSAnne8_MapScriptHeader:
	db 0
	db 0

Trainer_SSAnne8Gentleman1:
	trainer EVENT_S_S_ANNE_8_GENTLEMAN_1, GENTLEMAN, ARTHUR_RB, _SSAnne8BattleText1, _SSAnne8EndBattleText1, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne8EndBattleText1
	waitbutton
	closetext
	end

Trainer_SSAnne8Gentleman2:
	trainer EVENT_S_S_ANNE_8_GENTLEMAN_2, GENTLEMAN, THOMAS_RB, _SSAnne8BattleText2, _SSAnne8EndBattleText2, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne8EndBattleText2
	waitbutton
	closetext
	end

Trainer_SSAnne8Youngster:
	trainer EVENT_S_S_ANNE_8_YOUNGSTER, YOUNGSTER, TYLER_RB, _SSAnne8BattleText3, _SSAnne8EndBattleText3, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne8EndBattleText3
	waitbutton
	closetext
	end

Trainer_SSAnne8Lass:
	trainer EVENT_S_S_ANNE_8_LASS, LASS, ANN_RB, _SSAnne8BattleText4, _SSAnne8EndBattleText4, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne8EndBattleText4
	waitbutton
	closetext
	end

SSAnne8Teacher1Script:
	jumptextfaceplayer _SSAnne8Text5
SSAnne8PokefanMScript:
	jumptextfaceplayer _SSAnne8Text6
SSAnne8TwinScript:
	jumptextfaceplayer _SSAnne8Text7
SSAnne8WigglytuffScript:
	faceplayer
	loadfont
	writetext _SSAnne8Text8
	cry WIGGLYTUFF
	waitbutton
	closetext
	end
SSAnne8Teacher2Script:
	jumptextfaceplayer _SSAnne8Text9
SSAnne8GentlemanScript:
	jumptextfaceplayer _SSAnne8Text11

SSAnne8RareCandy:
	db TM_ROCK_SMASH, 1

_SSAnne8Text8:
	text "GRODOUDOU: Dou"
	line "doudouu!"
	done

_SSAnne8BattleText1:
	text "Je voyage"
	line "toujours seul."

	para "Mes #MON sont"
	line "mes seuls amis!"
	done

_SSAnne8EndBattleText1:
	text "Mes, mes amis<...>"
	done

_SSAnne8AfterBattleText1:
	text "Sois plus gentil"
	line "avec tes amis!"
	done

_SSAnne8BattleText2:
	text "Comment oses-tu"
	line "entrer ici!"
	done

_SSAnne8EndBattleText2:
	text "Hmph!"
	line "Tu es rude!"
	done

_SSAnne8AfterBattleText2:
	text "Je veux être seul"
	line "Va-t-en!"
	done

_SSAnne8BattleText3:
	text "J'adore les #-"
	line "MON. Et toi?"
	done

_SSAnne8EndBattleText3:
	text "Woah! T'es génial!"
	done

_SSAnne8AfterBattleText3:
	text "Tu veux bien être"
	line "mon ami?"

	para "On pourra échanger"
	line "des #MON!"
	done

_SSAnne8BattleText4:
	text "J'ai collectionné"
	line "ces #MON tout"
	cont "autour du monde!"
	done

_SSAnne8EndBattleText4:
	text "Oh non!"
	line "Tout un tour du"
	cont "monde pour ça!"
	done

_SSAnne8AfterBattleText4:
	text "Tu as fais mal"
	line "#MON mondiaux!"

	para "J'exige que tu les"
	line "soignes dans un"
	cont "CENTRE #MON!"
	done

_SSAnne8Text5:
	text "Serveur, une tarte"
	line "aux poires s'il"
	cont "vous plaît!"
	done

_SSAnne8Text6:
	text "Un paquebot si"
	line "elégant et"
	cont "confortable."
	done

_SSAnne8Text7:
	text "Je voyage toujours"
	line "avec GRODOUDOU!"
	done

_SSAnne8Text9:
	text "Nous voyageons"
	line "autour du monde."
	done

_SSAnne8Text11:
	text "Chuut! Je suis"
	line "un agent INTERPOL!"

	para "Je suis sur les"
	line "traces de la"
	cont "TEAM ROCKET."
	done



SSAnne8_MapEventHeader:
	db 0, 0
	db 6
	warp_def  0,  0, 3, GROUP_S_S_ANNE_1, MAP_S_S_ANNE_1
	warp_def  0, 10, 4, GROUP_S_S_ANNE_1, MAP_S_S_ANNE_1
	warp_def  0, 20, 5, GROUP_S_S_ANNE_1, MAP_S_S_ANNE_1
	warp_def 10,  0, 6, GROUP_S_S_ANNE_1, MAP_S_S_ANNE_1
	warp_def 10, 10, 7, GROUP_S_S_ANNE_1, MAP_S_S_ANNE_1
	warp_def 10, 20, 8, GROUP_S_S_ANNE_1, MAP_S_S_ANNE_1

	db 0

	db 0

	db 11
	person_event SPRITE_GENTLEMAN,  7,  6, $8, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 3, Trainer_SSAnne8Gentleman1, -1
	person_event SPRITE_GENTLEMAN,  8, 15, $7, 0, 0, -1, -1, 0, 2, 3, Trainer_SSAnne8Gentleman2, -1
	person_event SPRITE_YOUNGSTER, 18, 15, $7, 0, 0, -1, -1, 0, 2, 3, Trainer_SSAnne8Youngster, -1
	person_event SPRITE_LASS, 15, 17, $8, 0, 0, -1, -1, 0, 2, 3, Trainer_SSAnne8Lass, -1
	person_event SPRITE_TEACHER, 7, 26, $4, 2, 0, -1, -1, 0, 0, 0, SSAnne8Teacher1Script, -1
	person_event SPRITE_POKEFAN_M, 18, 4, $3, 0, 0, -1, -1, 0, 0, 0, SSAnne8PokefanMScript, -1
	person_event SPRITE_TWIN, 15, 6, $6, 0, 0, -1, -1, 0, 0, 0, SSAnne8TwinScript, -1
	person_event SPRITE_FAIRY, 15, 7, $3, 0, 0, -1, -1, 0, 0, 0, SSAnne8WigglytuffScript, -1
	person_event SPRITE_TEACHER, 17, 14, $9, 0, 0, -1, -1, 0, 0, 0, SSAnne8Teacher2Script, -1
	person_event SPRITE_POKE_BALL, 19, 16, $1, 0, 0, -1, -1, 0, 1, 0, SSAnne8RareCandy, EVENT_S_S_ANNE_8_RARE_CANDY
	person_event SPRITE_GENTLEMAN, 17, 25, $5, 0, 2, -1, -1, 8 + PAL_OW_BROWN, 0, 0, SSAnne8GentlemanScript, -1
