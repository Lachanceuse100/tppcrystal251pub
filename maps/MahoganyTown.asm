MahoganyTown_MapScriptHeader: ; 0x190000
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x19000d, $0000
	dw UnknownScript_0x19000e, $0000

	; callback count
	db 1

	; callbacks

	dbw 5, UnknownScript_0x19000f
; 0x19000d

UnknownScript_0x19000d: ; 0x19000d
	end
; 0x19000e

UnknownScript_0x19000e: ; 0x19000e
	end
; 0x19000f

UnknownScript_0x19000f: ; 0x19000f
	setflag ENGINE_FLYPOINT_MAHOGANY
	return
; 0x190013

UnknownScript_0x190013: ; 0x190013
	showemote $0, $2, 15
	applymovement $2, MovementData_0x1900a9
	follow $0, $2
	applymovement $0, MovementData_0x1900a7
	stopfollow
	spriteface $0, $3
	scall UnknownScript_0x19002f
	applymovement $2, MovementData_0x1900ad
	end
; 0x19002e

PokefanMScript_0x19002e: ; 0x19002e
	faceplayer
UnknownScript_0x19002f: ; 0x19002f
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue UnknownScript_0x190039
	scall UnknownScript_0x190040
	end
; 0x190039

UnknownScript_0x190039: ; 0x190039
	loadfont
	writetext UnknownText_0x1901a6
	waitbutton
	closetext
	end
; 0x190040

UnknownScript_0x190040: ; 0x190040
	loadfont
	writetext UnknownText_0x1900b0
	special Function24ae8
	yesorno
	iffalse UnknownScript_0x190072
	checkmoney $0, 300
	if_equal $2, UnknownScript_0x19006c
	giveitem RAGECANDYBAR, $1
	iffalse UnknownScript_0x190078
	waitsfx
	playsound SFX_TRANSACTION
	takemoney $0, 300
	special Function24ae8
	writetext UnknownText_0x19014a
	waitbutton
	closetext
	end
; 0x19006c

UnknownScript_0x19006c: ; 0x19006c
	writetext UnknownText_0x19015b
	waitbutton
	closetext
	end
; 0x190072

UnknownScript_0x190072: ; 0x190072
	writetext UnknownText_0x190178
	waitbutton
	closetext
	end
; 0x190078

UnknownScript_0x190078: ; 0x190078
	writetext UnknownText_0x190188
	waitbutton
	closetext
	end
; 0x19007e

GrampsScript_0x19007e: ; 0x19007e
	faceplayer
	loadfont
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue UnknownScript_0x19008c
	writetext UnknownText_0x1901e5
	waitbutton
	closetext
	end
; 0x19008c

UnknownScript_0x19008c: ; 0x19008c
	writetext UnknownText_0x19021d
	waitbutton
	closetext
	end
; 0x190092

FisherScript_0x190092: ; 0x190092
	jumptextfaceplayer UnknownText_0x190276
; 0x190095

LassScript_0x190095: ; 0x190095
	jumptextfaceplayer UnknownText_0x1902f2
; 0x190098

MapMahoganyTownSignpost0Script: ; 0x190098
	jumptext UnknownText_0x19032e
; 0x19009b

MapMahoganyTownSignpost1Script: ; 0x19009b
	jumptext UnknownText_0x19035e
; 0x19009e

MapMahoganyTownSignpost2Script: ; 0x19009e
	jumptext UnknownText_0x190391
; 0x1900a1

MapMahoganyTownSignpost3Script: ; 0x1900a1
	jumpstd pokecentersign
; 0x1900a4

MovementData_0x1900a4: ; 0x1900a4
	step_down
	big_step_up
	turn_head_down
MovementData_0x1900a7: ; 0x1900a7
	step_left
	step_end
; 0x1900a9

MovementData_0x1900a9: ; 0x1900a9
	step_right
	step_down
	turn_head_left
	step_end
; 0x1900ad

MovementData_0x1900ad: ; 0x1900ad
	step_up
	turn_head_down
	step_end
; 0x1900b0

UnknownText_0x1900b0: ; 0x1900b0
	text "Salut toi!"

	para "Tu es nouveau à"
	line "ACAJOU toi, non?"

	para "Alors tu DOIS"
	line "essayer le BONBON"
	cont "RAGE!"

	para "¥300 et c'est à"
	line "toi! OK?"
	done
; 0x19014a

UnknownText_0x19014a: ; 0x19014a
	text "Super! Savoure-le!"
	done
; 0x19015b

UnknownText_0x19015b: ; 0x19015b
	text "Tu n'as pas assez"
	line "d'argent."
	done
; 0x190178

UnknownText_0x190178: ; 0x190178
	text "Oh, très bien<...>"
	done
; 0x190188

UnknownText_0x190188: ; 0x190188
	text "Non, tu n'as plus"
	line "de place!"
	done
; 0x1901a6

UnknownText_0x1901a6: ; 0x1901a6
	text "Je n'ai plus de"
	line "BONBON RAGE."

	para "Je me tire d'ici,"
	line "me dérange plus."
	done
; 0x1901e5

UnknownText_0x1901e5: ; 0x1901e5
	text "Sors-tu voir le"
	line "LEVIATOR déchaîné"
	cont "au LAC?"
	done
; 0x19021d

UnknownText_0x19021d: ; 0x19021d
	text "Des MAGICARPE sont"
	line "revenus au LAC"
	cont "COLERE."

	para "Ca devrait faire"
	line "plaisir aux"
	cont "pêcheurs du coin."
	done
; 0x190276

UnknownText_0x190276: ; 0x190276
	text "Si tu as fait tout"
	line "ce chemin, prends"

	para "donc le temps de"
	line "faire du tourisme."

	para "Tu devrais aller"
	line "visiter le LAC"

	para "COLERE au nord"
	line "d'ici."
	done
; 0x1902f2

UnknownText_0x1902f2: ; 0x1902f2
	text "Va voir la"
	line "boutique de mémé."

	para "Elle vend des"
	line "trucs incroyables."
	done
; 0x19032e

UnknownText_0x19032e: ; 0x19032e
	text "ACAJOU"

	para "Bienvenue chez"
	line "le grand ninja!"
	done
; 0x19035e

UnknownText_0x19035e: ; 0x19035e
	text "Pendant votre"
	line "visite d'ACAJOU,"

	para "essayez un BONBON"
	line "RAGE!"
	done
; 0x190391

UnknownText_0x190391: ; 0x190391
	text "ARENE #MON"
	line "d'ACAJOU"

	para "CHAMPION:"
	line "FREDO"

	para "Le professeur au"
	line "sang froid."
	done
; 0x1903d8

MahoganyTown_MapEventHeader: ; 0x1903d8
	; filler
	db 0, 0

	; warps
	db 5
	warp_def $7, $b, 1, GROUP_MAHOGANY_MART_1F, MAP_MAHOGANY_MART_1F
	warp_def $7, $11, 1, GROUP_MAHOGANY_RED_GYARADOS_SPEECH_HOUSE, MAP_MAHOGANY_RED_GYARADOS_SPEECH_HOUSE
	warp_def $d, $6, 1, GROUP_MAHOGANY_GYM, MAP_MAHOGANY_GYM
	warp_def $d, $f, 1, GROUP_MAHOGANY_POKECENTER_1F, MAP_MAHOGANY_POKECENTER_1F
	warp_def $1, $9, 3, GROUP_ROUTE_43_MAHOGANY_GATE, MAP_ROUTE_43_MAHOGANY_GATE

	; xy triggers
	db 2
	xy_trigger 0, $8, $13, $0, UnknownScript_0x190013, $0, $0
	xy_trigger 0, $9, $13, $0, UnknownScript_0x190013, $0, $0

	; signposts
	db 4
	signpost 5, 1, $0, MapMahoganyTownSignpost0Script
	signpost 7, 9, $0, MapMahoganyTownSignpost1Script
	signpost 13, 3, $0, MapMahoganyTownSignpost2Script
	signpost 13, 16, $0, MapMahoganyTownSignpost3Script

	; people-events
	db 4
	person_event SPRITE_POKEFAN_M, 12, 23, $6, 0, 0, -1, -1, 0, 0, 0, PokefanMScript_0x19002e, EVENT_POKEFAN_M_IN_MAHOGANY_TOWN
	person_event SPRITE_GRAMPS, 13, 10, $5, 0, 1, -1, -1, 0, 0, 0, GrampsScript_0x19007e, -1
	person_event SPRITE_FISHER, 18, 10, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, FisherScript_0x190092, EVENT_FISHER_BLOCKING_GYM_IN_MAHOGANY_TOWN
	person_event SPRITE_LASS, 12, 16, $6, 0, 0, -1, -1, 0, 0, 0, LassScript_0x190095, EVENT_MAHOGANY_MART_TRUE_OWNERS
; 0x19044f

