SSAnne9_MapScriptHeader:
	db 0
	db 0

SSAnne9Trainer_Gentleman1:
	trainer EVENT_S_S_ANNE_9_GENTLEMAN_1, GENTLEMAN, BROOKS_RB, _SSAnne9BattleText1, _SSAnne9EndBattleText1, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne9AfterBattleText1
	waitbutton
	closetext
	end

SSAnne9Trainer_Fisher:
	trainer EVENT_S_S_ANNE_9_FISHER, FISHER, DALE_RB, _SSAnne9BattleText2, _SSAnne9EndBattleText2, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne9AfterBattleText2
	waitbutton
	closetext
	end

SSAnne9Trainer_Gentleman2:
	trainer EVENT_S_S_ANNE_9_GENTLEMAN_2, GENTLEMAN, LAMAR_RB, _SSAnne9BattleText3, _SSAnne9EndBattleText3, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne9AfterBattleText3
	waitbutton
	closetext
	end

SSAnne9Trainer_Lass:
	trainer EVENT_S_S_ANNE_9_LASS, LASS, DAWN_RB, _SSAnne9BattleText4, _SSAnne9EndBattleText4, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne9AfterBattleText4
	waitbutton
	closetext
	end


SSAnne9Gentleman1Script:
	faceplayer
	loadfont
	writetext _SSAnne9Text_61bf2
	waitbutton
	closetext
	refreshscreen $0
	pokepic SNORLAX
	waitbutton
	closepokepic
	reloadmappart
	end

SSAnne9MaxEther:
	db MAX_ETHER, 1

SSAnne9Gentleman2Script:
	jumptextfaceplayer _SSAnne9Text_61c01

SSAnne9GrampsScript:
	jumptextfaceplayer _SSAnne9Text_61c10

SSAnne9RareCandy:
	db RARE_CANDY, 1

SSAnne9Gentleman3Script:
	jumptextfaceplayer _SSAnne9Text_61c1f

SSAnne9BugCatcherScript:
	jumptextfaceplayer _SSAnne9Text_61c2e

SSAnne9BuenaScript:
	jumptextfaceplayer _SSAnne9Text_61c3d

SSAnne9PokefanFScript:
	jumptextfaceplayer _SSAnne9Text_61c4c

_SSAnne9Text_61bf2:
	text "De tout mes"
	line "voyages, je n'ai"
	cont "jamais vu un"
	cont "#MON comme"
	cont "celui-là."

	para "Il ressemblait"
	line "à ça!"
	done

_SSAnne9Text_61c01:
	text "Oui!, j'ai vu des"
	line "gens transporter"
	cont "des #MON par-"
	cont "delà les eaux!"
	done

_SSAnne9Text_61c10:
	text "Les #MON"
	line "peuvent couper des"
	cont "petits buissons."
	done

_SSAnne9Text_61c1f:
	text "Tu es allé au"
	line "PARC SAFARI de"
	cont "PARMANIE?"

	para "Il y a plein de"
	line "#MON rares!!"
	done

_SSAnne9Text_61c2e:
	text "Moi et mon papa,"
	line "on pense que le"
	cont "PARC SAFARI est"
	cont "génial!"
	done

_SSAnne9Text_61c3d:
	text "Le CAPITAINE a"
	line "l'air tout pâlot."
	done

_SSAnne9Text_61c4c:
	text "Il y a plein de"
	line "gens qui ont le"
	cont "mal de mer!"
	done

_SSAnne9BattleText1:
	text "Ces compétitions"
	line "face aux jeunes me"
	cont "rajeunis."
	done

_SSAnne9EndBattleText1:
	text "Beau combat!"
	line "Je me sens"
	cont "rajeunir!"
	done

_SSAnne9AfterBattleText1:
	text "Il y a 15 ans,"
	line "j'aurais gagné!"
	done

_SSAnne9BattleText2:
	text "Regarde ce que"
	line "j'ai pêché!"
	done

_SSAnne9EndBattleText2:
	text "Je suis fait!"
	done

_SSAnne9AfterBattleText2:
	text "Une fête?"

	para "La fête devrait"
	line "déjà être"
	cont "terminée.."
	done

_SSAnne9BattleText3:
	text "Tu préfères quoi?"
	line "Un #MON fort"
	cont "ou rare?"
	done

_SSAnne9EndBattleText3:
	text "Tu es très fort!"
	done

_SSAnne9AfterBattleText3:
	text "Je préfère les"
	line "#MON forts et"
	cont "rares."
	done

_SSAnne9BattleText4:
	text "Je ne t'ai pas vu"
	line "à la fête."
	done

_SSAnne9EndBattleText4:
	text "T'énèrves pas!"
	done

_SSAnne9AfterBattleText4:
	text "Oh, j'adore ton"
	line "#MON fort!"
	done



SSAnne9_MapEventHeader:
	db 0, 0

	db 12
	warp_def  5,  2, 1, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2
	warp_def  5,  3, 1, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2
	warp_def  5, 12, 2, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2
	warp_def  5, 13, 2, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2
	warp_def  5, 22, 3, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2
	warp_def  5, 23, 3, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2
	warp_def 15,  2, 4, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2
	warp_def 15,  3, 4, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2
	warp_def 15, 12, 5, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2
	warp_def 15, 13, 5, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2
	warp_def 15, 22, 6, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2
	warp_def 15, 23, 6, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2

	db 0

	db 0

	db 13
	person_event SPRITE_GENTLEMAN,    6, 14, $9, 0, 0, -1, -1, 0, 2, 3, SSAnne9Trainer_Gentleman1, -1
	person_event SPRITE_FISHER,       8, 17, $8, 0, 0, -1, -1, 0, 2, 3, SSAnne9Trainer_Fisher, -1
	person_event SPRITE_GENTLEMAN,   18,  4, $9, 0, 0, -1, -1, 0, 2, 3, SSAnne9Trainer_Gentleman2, -1
	person_event SPRITE_LASS,        15,  6, $6, 0, 0, -1, -1, 0, 2, 3, SSAnne9Trainer_Lass, -1
	person_event SPRITE_GENTLEMAN,    6,  5, $6, 0, 0, -1, -1, 0, 0, 0, SSAnne9Gentleman1Script, -1
	person_event SPRITE_POKE_BALL,    5, 16, $1, 0, 0, -1, -1, 0, 1, 0, SSAnne9MaxEther, EVENT_S_S_ANNE_9_MAX_ETHER
	person_event SPRITE_GENTLEMAN,    6, 25, $6, 0, 0, -1, -1, 0, 0, 0, SSAnne9Gentleman2Script, -1
	person_event SPRITE_GRAMPS,       5, 26, $6, 0, 0, -1, -1, 0, 0, 0, SSAnne9GrampsScript, -1
	person_event SPRITE_POKE_BALL,   16,  4, $1, 0, 0, -1, -1, 0, 1, 0, SSAnne9RareCandy, EVENT_S_S_ANNE_9_RARE_CANDY
	person_event SPRITE_GENTLEMAN,   16, 16, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SSAnne9Gentleman3Script, -1
	person_event SPRITE_BUG_CATCHER, 18, 15, $3, 0, 0, -1, -1, 0, 0, 0, SSAnne9BugCatcherScript, -1
	person_event SPRITE_BUENA,       16, 26, $8, 0, 0, -1, -1, 0, 0, 0, SSAnne9BuenaScript, -1
	person_event SPRITE_POKEFAN_F,   16, 24, $9, 0, 0, -1, -1, 0, 0, 0, SSAnne9PokefanFScript, -1
