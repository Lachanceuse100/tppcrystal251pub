SafariZoneWardensHome_MapScriptHeader: ; 0x1965c4
	; trigger count
	db 0

	; callback count
	db 0
; 0x1965c6

LassScript_0x1965c6: ; 0x1965c6
	faceplayer
	loadfont
	checkevent EVENT_TALKED_TO_WARDENS_GRANDDAUGHTER
	iftrue UnknownScript_0x1965d7
	writetext UnknownText_0x1965e6
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_WARDENS_GRANDDAUGHTER
	end
; 0x1965d7

UnknownScript_0x1965d7: ; 0x1965d7
	writetext UnknownText_0x196691
	waitbutton
	closetext
	end
; 0x1965dd

MapSafariZoneWardensHomeSignpost2Script: ; 0x1965dd
	jumptext UnknownText_0x1966ea
; 0x1965e0

MapSafariZoneWardensHomeSignpost3Script: ; 0x1965e0
	jumptext UnknownText_0x196726
; 0x1965e3

MapSafariZoneWardensHomeSignpost1Script: ; 0x1965e3
	jumpstd picturebookshelf
; 0x1965e6

UnknownText_0x1965e6: ; 0x1965e6
	text "Mon grand-père est"
	line "le GARDIEN du PARC"
	cont "SAFARI."

	para "Enfin, il l'était<...>"

	para "Il a décidé d'un"
	line "coup de partir en"

	para "vacances à"
	line "l'étranger."

	para "Il a fermé le PARC"
	line "SAFARI, juste"
	cont "comme ça<...>"
	done
; 0x196691

UnknownText_0x196691: ; 0x196691
	text "Les gens étaient"
	line "déçus d'apprendre"

	para "la fermeture du"
	line "PARC SAFARI mais"
	cont "pépé est si têtu<...>"
	done
; 0x1966ea

UnknownText_0x1966ea: ; 0x1966ea
	text "C'est la photo"
	line "d'un vieil homme"

	para "souriant entouré"
	line "de #MON."
	done
; 0x196726

UnknownText_0x196726: ; 0x196726
	text "C'est la photo"
	line "d'une grande plai-"

	para "ne verdoyante avec"
	line "des #MON rares"
	cont "tout partout."
	done
; 0x19676b

SafariZoneWardensHome_MapEventHeader: ; 0x19676b
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 6, GROUP_FUCHSIA_CITY, MAP_FUCHSIA_CITY
	warp_def $7, $3, 6, GROUP_FUCHSIA_CITY, MAP_FUCHSIA_CITY

	; xy triggers
	db 0

	; signposts
	db 4
	signpost 1, 0, $0, MapSafariZoneWardensHomeSignpost1Script
	signpost 1, 1, $0, MapSafariZoneWardensHomeSignpost1Script
	signpost 0, 7, $0, MapSafariZoneWardensHomeSignpost2Script
	signpost 0, 9, $0, MapSafariZoneWardensHomeSignpost3Script

	; people-events
	db 1
	person_event SPRITE_LASS, 8, 6, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, LassScript_0x1965c6, -1
; 0x19679c

