LakeofRageMagikarpHouse_MapScriptHeader: ; 0x19a6ac
	; trigger count
	db 0

	; callback count
	db 0
; 0x19a6ae

FishingGuruScript_0x19a6ae: ; 0x19a6ae
	faceplayer
	loadfont
	checkevent EVENT_SHOWED_A_BIG_MAGIKARP_BUT_NO_ROOM
	iftrue UnknownScript_0x19a6fe
	checkevent EVENT_INITIATED_SHOWING_OF_THE_MAGIKARP
	iftrue UnknownScript_0x19a6e0
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue UnknownScript_0x19a6d7
	checkevent EVENT_TALKED_TO_LAKE_OF_RAGE_FISHERMAN_ABOUT_GYARADOS
	iftrue UnknownScript_0x19a6d1
	writetext UnknownText_0x19a72e
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_LAKE_OF_RAGE_FISHERMAN_ABOUT_GYARADOS
	end
; 0x19a6d1

UnknownScript_0x19a6d1: ; 0x19a6d1
	writetext UnknownText_0x19a84d
	waitbutton
	closetext
	end
; 0x19a6d7

UnknownScript_0x19a6d7: ; 0x19a6d7
	writetext UnknownText_0x19a890
	waitbutton
	closetext
	setevent EVENT_INITIATED_SHOWING_OF_THE_MAGIKARP
	end
; 0x19a6e0

UnknownScript_0x19a6e0: ; 0x19a6e0
	writebyte MAGIKARP
	special Functionc276
	iffalse UnknownScript_0x19a6d7
	writetext UnknownText_0x19a93e
	waitbutton
	special Functionfbb32
	if_equal $0, UnknownScript_0x19a71c
	if_equal $1, UnknownScript_0x19a722
	if_equal $2, UnknownScript_0x19a716
	jump UnknownScript_0x19a6fe
; 0x19a6fe

UnknownScript_0x19a6fe: ; 0x19a6fe
	writetext UnknownText_0x19a977
	buttonsound
	verbosegiveitem ELIXER, 1
	iffalse UnknownScript_0x19a711
	writetext UnknownText_0x19a9c3
	waitbutton
	closetext
	clearevent EVENT_SHOWED_A_BIG_MAGIKARP_BUT_NO_ROOM
	end
; 0x19a711

UnknownScript_0x19a711: ; 0x19a711
	closetext
	setevent EVENT_SHOWED_A_BIG_MAGIKARP_BUT_NO_ROOM
	end
; 0x19a716

UnknownScript_0x19a716: ; 0x19a716
	writetext UnknownText_0x19aa01
	waitbutton
	closetext
	end
; 0x19a71c

UnknownScript_0x19a71c: ; 0x19a71c
	writetext UnknownText_0x19aa5c
	waitbutton
	closetext
	end
; 0x19a722

UnknownScript_0x19a722: ; 0x19a722
	writetext UnknownText_0x19aa79
	waitbutton
	closetext
	end
; 0x19a728

UnknownScript_0x19a728: ; 0x19a728
	jumptext UnknownText_0x19aabc
; 0x19a72b

MapLakeofRageMagikarpHouseSignpost1Script: ; 0x19a72b
	jumpstd difficultbookshelf
; 0x19a72e

UnknownText_0x19a72e: ; 0x19a72e
	text "Le LAC COLERE est"
	line "en fait un cratère"

	para "crée par le"
	line "déchaînement des"
	cont "LEVIATOR."

	para "Le cratère s'est"
	line "peu à peu rempli"

	para "d'eau de pluie et"
	line "un LAC s'est"
	cont "s'est formé."

	para "Cette histoire se"
	line "transmet de géné-"

	para "ration en généra-"
	line "tion. Elle vient"

	para "d'un de mes"
	line "grands-pères."

	para "On pouvait attra-"
	line "per de vrais"

	para "MAGICARPE en"
	line "pleine forme ici!"

	para "Je ne comprends"
	line "pas ce qu'il se"
	cont "passe."
	done
; 0x19a84d

UnknownText_0x19a84d: ; 0x19a84d
	text "Ce LAC n'est plus"
	line "normal depuis"

	para "l'arrivée des"
	line "hommes en noir."
	done
; 0x19a890

UnknownText_0x19a890: ; 0x19a890
	text "Le LAC COLERE est"
	line "redevenu normal."

	para "Les MAGICARPE sont"
	line "de retour."

	para "Mon rêve va peut-"
	line "être se réaliser:"
	cont "Voir le plus gros"
	cont "MAGICARPE du"
	cont "monde!"

	para "As-tu une CANNE?"
	line "Aide-moi si tu en"
	cont "as une."
	done
; 0x19a93e

UnknownText_0x19a93e: ; 0x19a93e
	text "Ah, tu as un"
	line "MAGICARPE! Laisse-"

	para "moi voir sa"
	line "taille."
	done
; 0x19a977

UnknownText_0x19a977: ; 0x19a977
	text "Whaou! Celui-ci"
	line "est démesuré!"

	para "Je te tire mon"
	line "chapeau!"

	para "Accepte ceci en"
	line "récompense!"
	done
; 0x19a9c3

UnknownText_0x19a9c3: ; 0x19a9c3
	text "Ce qui est impor-"
	line "tant, c'est d'épa-"

	para "ter la galerie!"
	line "Suis mes conseils!"
	done
; 0x19aa01

UnknownText_0x19aa01: ; 0x19aa01
	text "Pas mal du tout!"

	para "Mais j'en ai déjà"
	line "vu des plus gros<...>"
	done
; 0x19aa5c

UnknownText_0x19aa5c: ; 0x19aa5c
	text "Hein? Ce n'est pas"
	line "un MAGICARPE!"
	done
; 0x19aa79

UnknownText_0x19aa79: ; 0x19aa79
	text "Ah<...> Il n'est pas"
	line "assez bon pour"
	cont "être montré?"

	para "Plus de chance la"
	line "prochaine fois!"
	done
; 0x19aabc

UnknownText_0x19aabc: ; 0x19aabc
	text "RECORD ACTUEL:"

	para "@"
	text_from_ram StringBuffer3
	text " par"
	line "@"
	text_from_ram StringBuffer4
	db "@@"
; 0x19aae2

LakeofRageMagikarpHouse_MapEventHeader: ; 0x19aae2
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 2, GROUP_LAKE_OF_RAGE, MAP_LAKE_OF_RAGE
	warp_def $7, $3, 2, GROUP_LAKE_OF_RAGE, MAP_LAKE_OF_RAGE

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 0, $0, MapLakeofRageMagikarpHouseSignpost1Script
	signpost 1, 1, $0, MapLakeofRageMagikarpHouseSignpost1Script

	; people-events
	db 1
	person_event SPRITE_FISHING_GURU, 7, 6, $3, 0, 0, -1, -1, 0, 0, 0, FishingGuruScript_0x19a6ae, -1
; 0x19ab09

