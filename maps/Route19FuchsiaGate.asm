Route19FuchsiaGate_MapScriptHeader: ; 0x1ab3f4
	; trigger count
	db 0

	; callback count
	db 0
; 0x1ab3f6

OfficerScript_0x1ab3f6: ; 0x1ab3f6
	faceplayer
	loadfont
	checkevent EVENT_ROAD_WORK_ON_ROUTE_19_FINISHED
	iftrue UnknownScript_0x1ab404
	writetext UnknownText_0x1ab40a
	waitbutton
	closetext
	end
; 0x1ab404

UnknownScript_0x1ab404: ; 0x1ab404
	writetext UnknownText_0x1ab48a
	waitbutton
	closetext
	end
; 0x1ab40a

UnknownText_0x1ab40a: ; 0x1ab40a
	text "Le volcan de"
	line "CRAMOIS'ILE est en"
	cont "éruption."

	para "Il a craché des"
	line "rochers bloquant"
	cont "la ROUTE 19."

	para "J'espère que les"
	line "habitants de"
	cont "CRAMOIS'ILE sont"
	cont "en sécurité<...>"
	done
; 0x1ab48a

UnknownText_0x1ab48a: ; 0x1ab48a
	text "Bonne nouvelle!"
	line "Personne n'a été"

	para "blessé lors de"
	line "l'éruption! Super!"
	done
; 0x1ab4cd

Route19FuchsiaGate_MapEventHeader: ; 0x1ab4cd
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $0, $4,  9, GROUP_FUCHSIA_CITY, MAP_FUCHSIA_CITY
	warp_def $0, $5, 10, GROUP_FUCHSIA_CITY, MAP_FUCHSIA_CITY
	warp_def $7, $4,  1, GROUP_ROUTE_19, MAP_ROUTE_19
	warp_def $7, $5,  1, GROUP_ROUTE_19, MAP_ROUTE_19

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_OFFICER, 8, 4, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, OfficerScript_0x1ab3f6, -1
; 0x1ab4f4

