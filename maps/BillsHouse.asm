BillsHouse_MapScriptHeader: ; 0x189536
	; trigger count
	db 0

	; callback count
	db 1
	dbw 1, .OpenSesame
; 0x189538
.OpenSesame
	checkevent EVENT_UNLOCKED_GARDEN
	iftrue .keepunlocked
	changeblock 3, 0, $3d
.keepunlocked
	return

GrampsScript_0x189538: ; 0x189538
	faceplayer
	loadfont
	checkevent EVENT_000_STD
	iftrue UnknownScript_0x1896ba
	checkevent EVENT_GOT_THUNDERSTONE_FROM_BILLS_GRANDPA
	iftrue UnknownScript_0x1896c0
	checkevent EVENT_MET_BILLS_GRANDPA
	iftrue UnknownScript_0x189553
	writetext UnknownText_0x1896ce
	buttonsound
	setevent EVENT_MET_BILLS_GRANDPA
UnknownScript_0x189553: ; 0x189553
	checkevent EVENT_SHOWED_PICHU_TO_BILLS_GRANDPA
	iftrue UnknownScript_0x189697
	checkevent EVENT_SHOWED_GROWLITHE_VULPIX_TO_BILLS_GRANDPA
	iftrue UnknownScript_0x189680
	checkevent EVENT_SHOWED_STARYU_TO_BILLS_GRANDPA
	iftrue UnknownScript_0x189669
	checkevent EVENT_SHOWED_ODDISH_TO_BILLS_GRANDPA
	iftrue UnknownScript_0x189652
	checkevent EVENT_SHOWED_LICKITUNG_TO_BILLS_GRANDPA
	iftrue UnknownScript_0x18963b
	writetext UnknownText_0x1898c0
	buttonsound
	writetext UnknownText_0x189732
	yesorno
	iffalse UnknownScript_0x1896aa
	scall UnknownScript_0x1896a5
	special Function73f7
	iffalse UnknownScript_0x1896aa
	if_not_equal LICKITUNG, UnknownScript_0x1896c6
	scall UnknownScript_0x1896b0
	setevent EVENT_SHOWED_LICKITUNG_TO_BILLS_GRANDPA
	jump UnknownScript_0x18963b
; 0x189592

UnknownScript_0x189592: ; 0x189592
	writetext UnknownText_0x1898ff
	buttonsound
	writetext UnknownText_0x189732
	yesorno
	iffalse UnknownScript_0x1896aa
	scall UnknownScript_0x1896a5
	special Function73f7
	iffalse UnknownScript_0x1896aa
	if_not_equal ODDISH, UnknownScript_0x1896c6
	scall UnknownScript_0x1896b0
	setevent EVENT_SHOWED_ODDISH_TO_BILLS_GRANDPA
	jump UnknownScript_0x189652
; 0x1895b3

UnknownScript_0x1895b3: ; 0x1895b3
	writetext UnknownText_0x189953
	buttonsound
	writetext UnknownText_0x189732
	yesorno
	iffalse UnknownScript_0x1896aa
	scall UnknownScript_0x1896a5
	special Function73f7
	iffalse UnknownScript_0x1896aa
	if_not_equal STARYU, UnknownScript_0x1896c6
	scall UnknownScript_0x1896b0
	setevent EVENT_SHOWED_STARYU_TO_BILLS_GRANDPA
	jump UnknownScript_0x189669
; 0x1895d4

UnknownScript_0x1895d4: ; 0x1895d4
	checkver
	iftrue UnknownScript_0x1895f9
	writetext UnknownText_0x1899fe
	buttonsound
	writetext UnknownText_0x189732
	yesorno
	iffalse UnknownScript_0x1896aa
	scall UnknownScript_0x1896a5
	special Function73f7
	iffalse UnknownScript_0x1896aa
	if_not_equal GROWLITHE, UnknownScript_0x1896c6
	scall UnknownScript_0x1896b0
	setevent EVENT_SHOWED_GROWLITHE_VULPIX_TO_BILLS_GRANDPA
	jump UnknownScript_0x189680
; 0x1895f9

UnknownScript_0x1895f9: ; 0x1895f9
	writetext UnknownText_0x189a57
	buttonsound
	writetext UnknownText_0x189732
	yesorno
	iffalse UnknownScript_0x1896aa
	scall UnknownScript_0x1896a5
	special Function73f7
	iffalse UnknownScript_0x1896aa
	if_not_equal VULPIX, UnknownScript_0x1896c6
	scall UnknownScript_0x1896b0
	setevent EVENT_SHOWED_GROWLITHE_VULPIX_TO_BILLS_GRANDPA
	jump UnknownScript_0x189680
; 0x18961a

UnknownScript_0x18961a: ; 0x18961a
	writetext UnknownText_0x189ab1
	buttonsound
	writetext UnknownText_0x189732
	yesorno
	iffalse UnknownScript_0x1896aa
	scall UnknownScript_0x1896a5
	special Function73f7
	iffalse UnknownScript_0x1896aa
	if_not_equal PICHU, UnknownScript_0x1896c6
	scall UnknownScript_0x1896b0
	setevent EVENT_SHOWED_PICHU_TO_BILLS_GRANDPA
	jump UnknownScript_0x189697
; 0x18963b

UnknownScript_0x18963b: ; 0x18963b
	checkevent EVENT_GOT_EVERSTONE_FROM_BILLS_GRANDPA
	iftrue UnknownScript_0x189592
	scall UnknownScript_0x1896b5
	verbosegiveitem EVERSTONE, 1
	iffalse UnknownScript_0x1896cc
	setevent EVENT_GOT_EVERSTONE_FROM_BILLS_GRANDPA
	setevent EVENT_000_STD
	closetext
	end
; 0x189652

UnknownScript_0x189652: ; 0x189652
	checkevent EVENT_GOT_LEAF_STONE_FROM_BILLS_GRANDPA
	iftrue UnknownScript_0x1895b3
	scall UnknownScript_0x1896b5
	verbosegiveitem LEAF_STONE, 1
	iffalse UnknownScript_0x1896cc
	setevent EVENT_GOT_LEAF_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_000_STD
	closetext
	end
; 0x189669

UnknownScript_0x189669: ; 0x189669
	checkevent EVENT_GOT_WATER_STONE_FROM_BILLS_GRANDPA
	iftrue UnknownScript_0x1895d4
	scall UnknownScript_0x1896b5
	verbosegiveitem WATER_STONE, 1
	iffalse UnknownScript_0x1896cc
	setevent EVENT_GOT_WATER_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_000_STD
	closetext
	end
; 0x189680

UnknownScript_0x189680: ; 0x189680
	checkevent EVENT_GOT_FIRE_STONE_FROM_BILLS_GRANDPA
	iftrue UnknownScript_0x18961a
	scall UnknownScript_0x1896b5
	verbosegiveitem FIRE_STONE, 1
	iffalse UnknownScript_0x1896cc
	setevent EVENT_GOT_FIRE_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_000_STD
	closetext
	end
; 0x189697

UnknownScript_0x189697: ; 0x189697
	scall UnknownScript_0x1896b5
	verbosegiveitem THUNDERSTONE, 1
	iffalse UnknownScript_0x1896cc
	setevent EVENT_GOT_THUNDERSTONE_FROM_BILLS_GRANDPA
	writetext UnknownText_0x18982a
	waitbutton
	closetext
	; changeblock 3, 0, $33
	end
; 0x1896a5

UnknownScript_0x1896a5: ; 0x1896a5
	writetext UnknownText_0x189760
	buttonsound
	end
; 0x1896aa

UnknownScript_0x1896aa: ; 0x1896aa
	writetext UnknownText_0x189784
	waitbutton
	closetext
	end
; 0x1896b0

UnknownScript_0x1896b0: ; 0x1896b0
	writetext UnknownText_0x1897a6
	buttonsound
	end
; 0x1896b5

UnknownScript_0x1896b5: ; 0x1896b5
	writetext UnknownText_0x1897e1
	buttonsound
	end
; 0x1896ba

UnknownScript_0x1896ba: ; 0x1896ba
	writetext UnknownText_0x18980e
	waitbutton
	closetext
	end
; 0x1896c0

UnknownScript_0x1896c0: ; 0x1896c0
	writetext UnknownText_0x18982a
	waitbutton
	closetext
	end
; 0x1896c6

UnknownScript_0x1896c6: ; 0x1896c6
	writetext UnknownText_0x189891
	waitbutton
	closetext
	end
; 0x1896cc

UnknownScript_0x1896cc: ; 0x1896cc
	closetext
	end
; 0x1896ce

BillsHouseGardenDoor:
	dw EVENT_UNLOCKED_GARDEN, .script
.script
	jumptext Text_gardendoorlocked

UnknownText_0x1896ce: ; 0x1896ce
	text "Tu connais LEO?"
	line "C'est mon petit-"
	cont "fils."
	
	para "Il est à JOHTO."
	line "Il s'occupe des"
	cont "PCs."

	para "Alors moi je m'oc-"
	line "cupe de la maison."
	done
; 0x189732

UnknownText_0x189732: ; 0x189732
	text "Si tu as ce #"
	line "MON, peux-tu me"
	cont "le montrer?"
	done
; 0x189760

UnknownText_0x189760: ; 0x189760
	text "Tu vas me le mon-"
	line "trer? Cool!"
	done
; 0x189784

UnknownText_0x189784: ; 0x189784
	text "Tu ne l'as pas?"
	line "Dommage<...>"
	done
; 0x1897a6

UnknownText_0x1897a6: ; 0x1897a6
	text "Alors c'est"
	line "@"
	text_from_ram StringBuffer3
	text "?"

	para "Il est mimi!"
	line "Merci mon enfant!"
	done
; 0x1897e1

UnknownText_0x1897e1: ; 0x1897e1
	para "Voilà une petite"
	line "récompense."
	done
; 0x18980e

UnknownText_0x18980e: ; 0x18980e
	text "Rends-moi visite"
	line "des fois."
	done
; 0x18982a

UnknownText_0x18982a: ; 0x18982a
	text "Merci de me mon-"
	line "trer autant de"
	cont "#MON tout mimi."

	para "C'est vraiment"
	line "très amusant. Ma"

	para "vie est belle"
	line "grâce à toi."

	; para "Feel free to ex-"
	; line "plore out back."

	; para "The garden's beau-"
	; line "tiful, but it's"

	; para "too big for little"
	; line "old me. Hohohoho!"

	; para "I can barely take"
	; line "care of all of"
	; cont "the flowers!"

	; para "Come to think of"
	; line "it<...>"

	; para "Some new kinds"
	; line "just sprung up!"

	; para "I wonder why<...>"
	done
; 0x189891

UnknownText_0x189891: ; 0x189891
	text "Hmm?"

	para "Ce n'est pas le"
	line "#MON dont il"
	cont "m'a parlé."
	done
; 0x1898c0

UnknownText_0x1898c0: ; 0x1898c0
	text "Mon petit-fils LEO"
	line "m'a parlé d'un"

	para "#MON avec une"
	line "longue langue."
	done
; 0x1898ff

UnknownText_0x1898ff: ; 0x1898ff
	text "Mon petit-fils m'a"
	line "parlé d'un #MON"

	para "vert et rond avec"
	line "des feuilles sur"
	cont "sa tête."
	done
; 0x189953

UnknownText_0x189953: ; 0x189953
	text "Tu connais un"
	line "#MON marin avec"

	para "une sphère rouge"
	line "dans le corps?"

	para "Tu sais<...> Celui"
	line "qui est en forme"
	cont "d'étoile?"

	para "On dit qu'il appa-"
	line "raît la nuit."

	para "J'aimerais tant"
	line "le voir."
	done
; 0x1899fe

UnknownText_0x1899fe: ; 0x1899fe
	text "LEO m'a parlé d'un"
	line "#MON très loyal"

	para "envers son dres-"
	line "seur."

	para "On dit qu'il HURLE"
	line "très bien."
	done
; 0x189a57

UnknownText_0x189a57: ; 0x189a57
	text "J'ai entendu"
	line "parler d'un #-"
	cont "MON a six queues."

	para "J'adorerais câli-"
	line "ner un #MON mi-"
	cont "mi comme ça."
	done
; 0x189ab1

UnknownText_0x189ab1: ; 0x189ab1
	text "Tu connais ce"
	line "#MON super"
	cont "populaire?"

	para "Ce #MON qui a"
	line "un corps jaune et"
	cont "des joues rouges<...>"

	para "J'aimerais tant le"
	line "voir avant qu'il"
	cont "n'évolue."
	done
; 0x189b42

Text_gardendoorlocked:
	text "C'est fermé<...>"
	done

BillsHouse_MapEventHeader: ; 0x189b42
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $7, $2, 1, GROUP_ROUTE_25, MAP_ROUTE_25
	warp_def $7, $3, 1, GROUP_ROUTE_25, MAP_ROUTE_25
	warp_def 0, 3, 1, GROUP_BILLS_GARDEN, MAP_BILLS_GARDEN

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 0, 3, $6, BillsHouseGardenDoor

	; people-events
	db 1
	person_event SPRITE_GRAMPS, 7, 6, $7, 2, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, GrampsScript_0x189538, -1
; 0x189b5f

