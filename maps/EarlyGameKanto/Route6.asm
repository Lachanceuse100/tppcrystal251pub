Route6RB_MapScriptHeader: ; 0x1ad927
	; trigger count
	db 0

	; callback count
	db 0
; 0x1ad929

TrainerRoute6RBCamper1:
	checkevent EVENT_ROUTE_6_CAMPER_1_RB
	iftrue .Script
	faceplayer
	waitsfx
	special SaveMusic
	playmusic MUSIC_YOUNGSTER_ENCOUNTER
	loadfont
	writetext _Route6BattleText1
	waitbutton
	closetext
	loadtrainer CAMPER, RICKY_RB
	winlosstext _Route6EndBattleText1, 0
	startbattle
	returnafterbattle
	playmapmusic
	setevent EVENT_ROUTE_6_CAMPER_1_RB
	spriteface $2, RIGHT
	end
.Script
	spriteface $2, RIGHT
	loadfont
	writetext _Route6AfterBattleText1
	waitbutton
	closetext
	end

TrainerRoute6RBPicnicker1:
	checkevent EVENT_ROUTE_6_PICNICKER_1_RB
	iftrue .Script
	faceplayer
	waitsfx
	special SaveMusic
	playmusic MUSIC_LASS_ENCOUNTER
	loadfont
	writetext _Route6BattleText2
	waitbutton
	closetext
	loadtrainer PICNICKER, NANCY_RB
	winlosstext _Route6EndBattleText2, 0
	startbattle
	returnafterbattle
	playmapmusic
	spriteface $3, LEFT
	setevent EVENT_ROUTE_6_PICNICKER_1_RB
	end
.Script
	spriteface $3, LEFT
	loadfont
	writetext _Route6AfterBattleText1
	waitbutton
	closetext
	end

TrainerRoute6RBBugCatcher1:
	trainer EVENT_ROUTE_6_BUG_CATCHER_1_RB, BUG_CATCHER, KEIGO_RB, _Route6BattleText3, _Route6EndBattleText3, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route6AfterBattleText3
	waitbutton
	closetext
	end

TrainerRoute6RBCamper2:
	trainer EVENT_ROUTE_6_CAMPER_2_RB, CAMPER, JEFF_RB, _Route6BattleText4, _Route6EndBattleText4, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route6AfterBattleText4
	waitbutton
	closetext
	end

TrainerRoute6RBPicnicker2:
	trainer EVENT_ROUTE_6_PICNICKER_2_RB, PICNICKER, IZZY_RB, _Route6BattleText5, _Route6EndBattleText5, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route6AfterBattleText5
	waitbutton
	closetext
	end

TrainerRoute6RBBugCatcher2:
	trainer EVENT_ROUTE_6_BUG_CATCHER_2_RB, BUG_CATCHER, ELIJAH_RB, _Route6BattleText6, _Route6EndBattleText6, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route6AfterBattleText6
	waitbutton
	closetext
	end

MapRoute6RBSignpost0Script: ; 0x1ad954
	jumptext _Route6Text7
; 0x1ad957
_Route6BattleText1:
	text "Qui est là?"
	line "Arrête de nous"
	cont "espionner!"
	done

_Route6EndBattleText1:
	text "Je n'arrive pas"
	line "à gagner!"
	done

_Route6AfterBattleText1:
	text "Chuchote<...>"
	line "chuchote<...>"
	done

_Route6BattleText2:
	text "Pardon! C'est une"
	line "conversation"
	cont "privée!"
	done

_Route6EndBattleText2:
	text "Je déteste perdre!"
	done

_Route6BattleText3:
	text "Il n'y a pas"
	line "beaucoup"
	cont "d'insectes ici."
	done

_Route6EndBattleText3:
	text "Non!"
	line "Tu plaisantes!"
	done

_Route6AfterBattleText3:
	text "Je vais retourner"
	line "à la FORET DE"
	cont "JADE."
	done

_Route6BattleText4:
	text "Hein? Tu veux"
	line "me parler?"
	done

_Route6EndBattleText4:
	text "C'est pas moi qui"
	line "ai commencé!"
	done

_Route6AfterBattleText4:
	text "Je devrais porter"
	line "plus de #MON"
	cont "avec moi."
	done

_Route6BattleText5:
	text "Moi? Bon, OK"
	line "Je vais jouer!"
	done

_Route6EndBattleText5:
	text "Ca n'a pas marché!"
	done

_Route6AfterBattleText5:
	text "Je veux être plus"
	line "fort! C'est quoi"
	cont "ton secret?"
	done

_Route6BattleText6:
	text "Je ne t'ai jamais"
	line "vu autour."
	cont "Tu es bon?"
	done

_Route6EndBattleText6:
	text "Tu es trop bon!"
	done

_Route6AfterBattleText6:
	text "Mes #MON sont"
	line "faibles? Ou je"
	cont "suis mauvais?"
	done

_Route6Text7:
	text "SOUTERRAIN"
	para "AZURIA -"
	line "CARMIN SUR MER"
	done

Route6RB_MapEventHeader: ; 0x1adadb
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $3, $11, 1, GROUP_ROUTE_6_UNDERGROUND_ENTRANCE_RB, MAP_ROUTE_6_UNDERGROUND_ENTRANCE_RB
	warp_def $1, $6, 1, GROUP_ROUTE_6_SAFFRON_GATE_RB, MAP_ROUTE_6_SAFFRON_GATE_RB

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 5, 19, $0, MapRoute6RBSignpost0Script

	; people-events
	db 6
	person_event SPRITE_COOLTRAINER_M, 13, 14, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, TrainerRoute6RBCamper1, -1
	person_event SPRITE_LASS, 13, 15, $8, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, TrainerRoute6RBPicnicker1, -1
	person_event SPRITE_BUG_CATCHER, 10, 4, $9, 0, 0, -1, -1, 0, 2, 4, TrainerRoute6RBBugCatcher1, -1
	person_event SPRITE_COOLTRAINER_M, 21, 13, $8, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 3, TrainerRoute6RBCamper2, -1
	person_event SPRITE_LASS, 20, 13, $8, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 3, TrainerRoute6RBPicnicker2, -1
	person_event SPRITE_BUG_CATCHER, 17, 23, $8, 0, 0, -1, -1, 0, 2, 3, TrainerRoute6RBBugCatcher2, -1
; 0x1adb17

