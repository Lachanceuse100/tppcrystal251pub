Route39Farmhouse_MapScriptHeader: ; 0x9ceb2
	; trigger count
	db 0

	; callback count
	db 0
; 0x9ceb4

PokefanMScript_0x9ceb4: ; 0x9ceb4
	faceplayer
	loadfont
	checkevent EVENT_HEALED_MOOMOO
	iftrue UnknownScript_0x9cec5
	writetext UnknownText_0x9cf38
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_FARMER_ABOUT_MOOMOO
	end
; 0x9cec5

UnknownScript_0x9cec5: ; 0x9cec5
	checkitem MOOMOO_MILK
	iftrue UnknownScript_0x9cf08
	writetext UnknownText_0x9cfe1
	special Function24ae8
	yesorno
	iffalse UnknownScript_0x9cf02
	checkmoney $0, 500
	if_equal $2, UnknownScript_0x9cef6
	giveitem MOOMOO_MILK, $1
	iffalse UnknownScript_0x9cefc
	takemoney $0, 500
	special Function24ae8
	waitsfx
	playsound SFX_TRANSACTION
	writetext UnknownText_0x9d05d
	buttonsound
	itemnotify
	closetext
	end
; 0x9cef6

UnknownScript_0x9cef6: ; 0x9cef6
	writetext UnknownText_0x9d07c
	waitbutton
	closetext
	end
; 0x9cefc

UnknownScript_0x9cefc: ; 0x9cefc
	writetext UnknownText_0x9d09d
	waitbutton
	closetext
	end
; 0x9cf02

UnknownScript_0x9cf02: ; 0x9cf02
	writetext UnknownText_0x9d0b7
	waitbutton
	closetext
	end
; 0x9cf08

UnknownScript_0x9cf08: ; 0x9cf08
	writetext UnknownText_0x9d0dc
	waitbutton
	closetext
	end
; 0x9cf0e

PokefanFScript_0x9cf0e: ; 0x9cf0e
	faceplayer
	loadfont
	checkevent EVENT_GOT_TM13_SNORE_FROM_MOOMOO_FARM
	iftrue UnknownScript_0x9cf2f
	checkevent EVENT_HEALED_MOOMOO
	iftrue UnknownScript_0x9cf22
	writetext UnknownText_0x9d0f6
	waitbutton
	closetext
	end
; 0x9cf22

UnknownScript_0x9cf22: ; 0x9cf22
	writetext UnknownText_0x9d156
	buttonsound
	verbosegiveitem TM_DAZZLINGLEAM, 1
	iffalse UnknownScript_0x9cf33
	setevent EVENT_GOT_TM13_SNORE_FROM_MOOMOO_FARM
UnknownScript_0x9cf2f: ; 0x9cf2f
	writetext UnknownText_0x9d1c7
	waitbutton
UnknownScript_0x9cf33: ; 0x9cf33
	closetext
	end
; 0x9cf35

MapRoute39FarmhouseSignpost1Script: ; 0x9cf35
	jumpstd picturebookshelf
; 0x9cf38

UnknownText_0x9cf38: ; 0x9cf38
	text "Ma chtite ECREMEUH"
	line "m'donne plus eud'"
	cont "lait."

	para "Et pourtant qu'il"
	line "était bien bon"
	cont "not'lait d'ici."

	para "Et tout eul'monde"
	line "y veut a boire."

	para "Si j'en avais des"
	line "BAIES ORAN à lui"

	para "donner elle"
	line "m'donnerait aussi"
	cont "du lait, par le"
	cont "fait."
	done
; 0x9cfe1

UnknownText_0x9cfe1: ; 0x9cfe1
	text "Ca te dit du bon"
	line "LAI MEUMEU?"

	para "C'est ma fierté"
	line "et ma joie."

	para "Donnes-en à tes"
	line "#MON pour en"
	cont "gagner des PV!"

	para "Pour juste ¥500"
	line "je te l'offre."
	done
; 0x9d05d

UnknownText_0x9d05d: ; 0x9d05d
	text "Tiens!"
	line "Bien à toi!"
	done
; 0x9d07c

UnknownText_0x9d07c: ; 0x9d07c
	text "Pas d'sous, pas"
	line "d'lait!"
	done
; 0x9d09d

UnknownText_0x9d09d: ; 0x9d09d
	text "T'as pas la place"
	line "mon poussin."
	done
; 0x9d0b7

UnknownText_0x9d0b7: ; 0x9d0b7
	text "T'en veux pas?"
	line "A plus tard, hein?"
	done
; 0x9d0dc

UnknownText_0x9d0dc: ; 0x9d0dc
	text "Bon. J'ai à"
	line "traire."
	done
; 0x9d0f6

UnknownText_0x9d0f6: ; 0x9d0f6
	text "Notre lait est mê"
	line "me vendu à KANTO."

	para "Si notre fidèle"
	line "ECREMEUH ne donne"

	para "plus de lait, on"
	line "court à la"
	cont "faillite!"
	done
; 0x9d156

UnknownText_0x9d156: ; 0x9d156
	text "Notre ECREMEUH à"
	line "l'air d'aller"
	cont "mieux!"

	para "Elle donne à nou-"
	line "veau du bon LAIT"
	cont "MEUMEU."

	para "Voilà pour te"
	line "remercier."
	done
; 0x9d1b5

UnknownText_0x9d1b5: ; 0x9d1b5
	text "<PLAYER> reçoit"
	line "CT13."
	done
; 0x9d1c7

UnknownText_0x9d1c7: ; 0x9d1c7
	text "C'est ECLAT MAGIK."

	para "C'est une forte"
	line "attaque FEE."

	para "BLANCHE en a ache-"
	line "té plein et nous"

	para "l'a donné pour"
	line "not' MEUMEU."

	para "Elle m'en voudras"
	line "pas si j'ten donne"
	cont "un."
	done
; 0x9d242

Route39Farmhouse_MapEventHeader: ; 0x9d242
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 2, GROUP_ROUTE_39, MAP_ROUTE_39
	warp_def $7, $3, 2, GROUP_ROUTE_39, MAP_ROUTE_39

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 0, $0, MapRoute39FarmhouseSignpost1Script
	signpost 1, 1, $0, MapRoute39FarmhouseSignpost1Script

	; people-events
	db 2
	person_event SPRITE_POKEFAN_M, 6, 7, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, PokefanMScript_0x9ceb4, -1
	person_event SPRITE_POKEFAN_F, 8, 9, $8, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, PokefanFScript_0x9cf0e, -1
; 0x9d276

