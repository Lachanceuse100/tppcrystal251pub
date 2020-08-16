Route6SaffronGate_MapScriptHeader: ; 0x1926e3
	; trigger count
	db 1

	; triggers
	dw UnknownScript_0x1926e9, $0000

	; callback count
	db 0
; 0x1926e9

UnknownScript_0x1926e9: ; 0x1926e9
	end
; 0x1926ea

OfficerScript_0x1926ea: ; 0x1926ea
	faceplayer
	loadfont
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x1926f8
	writetext UnknownText_0x1926fe
	waitbutton
	closetext
	end
; 0x1926f8

UnknownScript_0x1926f8: ; 0x1926f8
	writetext UnknownText_0x1927cb
	waitbutton
	closetext
	end
; 0x1926fe

UnknownText_0x1926fe: ; 0x1926fe
	text "Bienvenue à"
	line "SAFRANIA, la ville"
	cont "du TRAIN MAGNET!"

	para "<...>Enfin<...>"
	line "Le TRAIN MAGNET ne"

	para "fonctionne pas en"
	line "ce moment."

	para "Il n'y a plus de"
	line "courant depuis le"

	para "problème de la"
	line "CENTRALE."
	done
; 0x1927cb

UnknownText_0x1927cb: ; 0x1927cb
	text "Le TRAIN MAGNET"
	line "est la fierté de"
	cont "SAFRANIA."
	done
; 0x192807

Route6SaffronGate_MapEventHeader: ; 0x192807
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $0, $4, 12, GROUP_SAFFRON_CITY, MAP_SAFFRON_CITY
	warp_def $0, $5, 13, GROUP_SAFFRON_CITY, MAP_SAFFRON_CITY
	warp_def $7, $4, 2, GROUP_ROUTE_6, MAP_ROUTE_6
	warp_def $7, $5, 2, GROUP_ROUTE_6, MAP_ROUTE_6

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_OFFICER, 8, 4, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, OfficerScript_0x1926ea, -1
; 0x19282e

