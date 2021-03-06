Route37_MapScriptHeader: ; 0x1a8d72
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 2, SunnyCallback

SunnyCallback:
	checkcode VAR_WEEKDAY
	if_equal SUNDAY, .SunnyAppears
	disappear $6
	return

.SunnyAppears
	appear $6
	return

TrainerTwinsAnnandanne1: ; 0x1a8d83
	; bit/flag number
	dw $465

	; trainer group && trainer id
	db TWINS, ANNANDANNE1

	; text when seen
	dw TwinsAnnandanne1SeenText

	; text when trainer beaten
	dw TwinsAnnandanne1BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw TwinsAnnandanne1Script
; 0x1a8d8f

TwinsAnnandanne1Script: ; 0x1a8d8f
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a8e62
	waitbutton
	closetext
	end
; 0x1a8d97

TrainerTwinsAnnandanne2: ; 0x1a8d97
	; bit/flag number
	dw $465

	; trainer group && trainer id
	db TWINS, ANNANDANNE2

	; text when seen
	dw TwinsAnnandanne2SeenText

	; text when trainer beaten
	dw TwinsAnnandanne2BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw TwinsAnnandanne2Script
; 0x1a8da3

TwinsAnnandanne2Script: ; 0x1a8da3
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a8eec
	waitbutton
	closetext
	end
; 0x1a8dab

TrainerPsychicGreg: ; 0x1a8dab
	; bit/flag number
	dw $43e

	; trainer group && trainer id
	db PSYCHIC_T, GREG

	; text when seen
	dw PsychicGregSeenText

	; text when trainer beaten
	dw PsychicGregBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PsychicGregScript
; 0x1a8db7

PsychicGregScript: ; 0x1a8db7
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a8f80
	waitbutton
	closetext
	end
; 0x1a8dbf

SunnyScript:
	faceplayer
	loadfont
	checkevent EVENT_GOT_MAGNET_FROM_SUNNY
	iftrue SunnySundayScript
	checkcode VAR_WEEKDAY
	if_not_equal SUNDAY, SunnyNotSundayScript
	checkevent EVENT_MET_SUNNY_OF_SUNDAY
	iftrue .MetSunny
	writetext MeetSunnyText
	buttonsound
	setevent EVENT_MET_SUNNY_OF_SUNDAY
.MetSunny
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Kris
	writetext SunnyGivesGiftText1
	buttonsound
	jump .next
.Kris
	writetext SunnyGivesGiftText2
	buttonsound
.next
	verbosegiveitem MAGNET, 1
	iffalse SunnyDoneScript
	setevent EVENT_GOT_MAGNET_FROM_SUNNY
	writetext SunnyGaveGiftText
	waitbutton
	closetext
	end

SunnySundayScript:
	writetext SunnySundayText
	waitbutton
SunnyDoneScript:
	closetext
	end

SunnyNotSundayScript:
	writetext SunnyNotSundayText
	waitbutton
	closetext
	end

MapRoute37Signpost0Script: ; 0x1a8e06
	jumptext UnknownText_0x1a9197
; 0x1a8e09

FruitTreeScript_0x1a8e09: ; 0x1a8e09
	fruittree $11
; 0x1a8e0b

FruitTreeScript_0x1a8e0b: ; 0x1a8e0b
	fruittree $12
; 0x1a8e0d

FruitTreeScript_0x1a8e0d: ; 0x1a8e0d
	fruittree $13
; 0x1a8e0f

MapRoute37SignpostItem1: ; 0x1a8e0f
	dw $00a9
	db ETHER

; 0x1a8e12

TwinsAnnandanne1SeenText: ; 0x1a8e12
	text "ANN: ANNE et moi"
	line "sommes insépara-"
	cont "bles!"
	done
; 0x1a8e3b

TwinsAnnandanne1BeatenText: ; 0x1a8e3b
	text "ANN&ANNE: <...> "
	line "Pas possible."
	done
; 0x1a8e62

UnknownText_0x1a8e62: ; 0x1a8e62
	text "ANN: Je pense"
	line "comme ma soeur et"
	cont "comme mes #MON."
	done
; 0x1a8e9c

TwinsAnnandanne2SeenText: ; 0x1a8e9c
	text "ANNE: ANN et moi"
	line "sommes insépara-"
	cont "bles!"
	done
; 0x1a8ec5

TwinsAnnandanne2BeatenText: ; 0x1a8ec5
	text "ANN&ANNE: <...> "
	line "Pas possible."
	done
; 0x1a8eec

UnknownText_0x1a8eec: ; 0x1a8eec
	text "ANNE: Nous ressen-"
	line "tons les mêmes"
	cont "choses que nos"
	cont "#MON."
	done
; 0x1a8f1b

PsychicGregSeenText: ; 0x1a8f1b
	text "Les #MON ne"
	line "peuvent rien faire"
	cont "si ils dorment."

	para "Tu vas voir quel"
	line "effet ça fait!"
	done
; 0x1a8f65

PsychicGregBeatenText: ; 0x1a8f65
	text "J'ai perdu. C'est"
	line "pas cool, ça<...>"
	done
; 0x1a8f80

UnknownText_0x1a8f80: ; 0x1a8f80
	text "Endormir ou para-"
	line "lyser les #MON"
	cont "sont de bonnes"
	cont "techniques de"
	cont "combat?"
	done
; 0x1a8fc8

MeetSunnyText:
	text "DIMITRI: Salut!"

	para "Moi c'est DIMITRI"
	line "du Dimanche. Et on"
	cont "est Dimanche!"
	done

SunnyGivesGiftText1:
	text "On m'a dit de te"
	line "donner ça!"
	done

SunnyGivesGiftText2:
	text "On m'a dit de te"
	line "donner ça!"
	done

SunnyGaveGiftText:
	text "DIMITRI: Ca<...>"

	para "Heu<...>"

	para "<...>C'est<...>"

	para "<...>"

	para "Oh! Je me"
	line "souviens!"

	para "C'est pour un"
	line "#MON à capaci-"
	cont "tés électriques."

	para "Ma soeur LUCIE"
	line "dit que ça les"
	cont "améliore!"
	done

SunnySundayText:
	text "DIMITRI: Mes frè-"
	line "res et soeurs sont"
	cont "LUCIE, MARIE,"
	cont "HOMER, JEROME,"
	cont "VANESSA et SAMUEL."

	para "Ils sont tous plus"
	line "vieux que moi!"
	done

SunnyNotSundayText:
	text "DIMITRI: On est"
	line "quel jour?"
	cont "<...> Je sais plus!"
	done

UnknownText_0x1a9197: ; 0x1a9197
	text "ROUTE 37"
	done
; 0x1a91a1

Route37_MapEventHeader: ; 0x1a91a1
	; filler
	db 0, 0

	; warps
	db 0

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 3, 5, $0, MapRoute37Signpost0Script
	signpost 2, 4, $7, MapRoute37SignpostItem1

	; people-events
	db 7
	person_event SPRITE_WEIRD_TREE, 16, 10, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, TrainerTwinsAnnandanne1, -1
	person_event SPRITE_WEIRD_TREE, 16, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, TrainerTwinsAnnandanne2, -1
	person_event SPRITE_YOUNGSTER, 10, 10, $a, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 1, TrainerPsychicGreg, -1
	person_event SPRITE_FRUIT_TREE, 9, 17, $1, 0, 0, -1, -1, 0, 0, 0, FruitTreeScript_0x1a8e09, -1
	person_event SPRITE_BUG_CATCHER, 12, 20, $2, 1, 1, -1, -1, 0, 0, 0, SunnyScript, EVENT_SUNNY_OF_SUNDAY
	person_event SPRITE_FRUIT_TREE, 9, 20, $1, 0, 0, -1, -1, 0, 0, 0, FruitTreeScript_0x1a8e0b, -1
	person_event SPRITE_FRUIT_TREE, 11, 19, $1, 0, 0, -1, -1, 0, 0, 0, FruitTreeScript_0x1a8e0d, -1
