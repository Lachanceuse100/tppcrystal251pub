Route7SaffronGate_MapScriptHeader: ; 0x73516
	; trigger count
	db 0

	; callback count
	db 0
; 0x73518

OfficerScript_0x73518: ; 0x73518
	faceplayer
	loadfont
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x73526
	writetext UnknownText_0x7352c
	waitbutton
	closetext
	end
; 0x73526

UnknownScript_0x73526: ; 0x73526
	writetext UnknownText_0x73592
	waitbutton
	closetext
	end
; 0x7352c

UnknownText_0x7352c: ; 0x7352c
	text "Tu as entendu pour"
	line "l'accident à la"
	cont "CENTRALE?"

	para "C'est à l'est d'"
	line "ici, près de"
	cont "LAVANVILLE."
	done
; 0x73592

UnknownText_0x73592: ; 0x73592
	text "Le SOUTERRAIN"
	line "a été fermé."

	para "Encore un coup des"
	line "extrêmistes de la"
	cont "chorale ça<...>"

	done
; 0x735e0

Route7SaffronGate_MapEventHeader: ; 0x735e0
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $4, $0, 1, GROUP_ROUTE_7, MAP_ROUTE_7
	warp_def $5, $0, 2, GROUP_ROUTE_7, MAP_ROUTE_7
	warp_def $4, $9, 10, GROUP_SAFFRON_CITY, MAP_SAFFRON_CITY
	warp_def $5, $9, 11, GROUP_SAFFRON_CITY, MAP_SAFFRON_CITY

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_OFFICER, 6, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, OfficerScript_0x73518, -1
; 0x73607

