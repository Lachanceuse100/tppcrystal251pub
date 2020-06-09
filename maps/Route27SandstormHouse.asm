Route27SandstormHouse_MapScriptHeader: ; 0x7b392
	; trigger count
	db 0

	; callback count
	db 0
; 0x7b394

GrannyScript_0x7b394: ; 0x7b394
	faceplayer
	loadfont
	checkevent EVENT_GOT_TM_SWORDS_DANCE
	iftrue UnknownScript_0x7b3b7
	special Function718d
	writetext UnknownText_0x7b3c6
	buttonsound
	if_greater_than $95, UnknownScript_0x7b3aa
	jump UnknownScript_0x7b3bd
; 0x7b3aa

UnknownScript_0x7b3aa: ; 0x7b3aa
	writetext UnknownText_0x7b42b
	buttonsound
	verbosegiveitem TM_SWORDS_DANCE, 1
	iffalse UnknownScript_0x7b3bb
	setevent EVENT_GOT_TM_SWORDS_DANCE
UnknownScript_0x7b3b7: ; 0x7b3b7
	writetext UnknownText_0x7b48f
	waitbutton
UnknownScript_0x7b3bb: ; 0x7b3bb
	closetext
	end
; 0x7b3bd

UnknownScript_0x7b3bd: ; 0x7b3bd
	writetext UnknownText_0x7b51f
	waitbutton
	closetext
	end
; 0x7b3c3

MapRoute27SandstormHouseSignpost1Script: ; 0x7b3c3
	jumpstd magazinebookshelf
; 0x7b3c6

UnknownText_0x7b3c6: ; 0x7b3c6
	text "Où tu vas toi avec"
	line "tes #MON?"

	para "La LIGUE #MON?"

	para "Tes #MON sont"
	line "assez confiants"
	cont "pour y aller?"

	para "Voyons<...>"
	done
; 0x7b42b

UnknownText_0x7b42b: ; 0x7b42b
	text "Ah! Ton #MON"
	line "te faut vraiment"
	cont "confiance."

	para "C'est agréable de"
	line "voir un bon"
	cont "dresseur."

	para "Tiens! Un cadeau"
	line "pour toi."
	done
; 0x7b48f

UnknownText_0x7b48f: ; 0x7b48f
	text "CT41 apprend"
	line "DANSE-LAMES."

	para "Cela monte l'"
	line "ATTAQUE rapidement"

	para "mais laisse le"
	line "temps a l'adver-"
	cont "saire de changer"
	cont "de stratégie."

	para "Utilise-la si tu"
	line "l'oses."

	para "Bonne chance!"
	done
; 0x7b51f

UnknownText_0x7b51f: ; 0x7b51f
	text "Si il ne te fais"
	line "pas plus confian-"

	para "ce, ça risque d'"
	line "être difficile<...>"

	para "La confiance est"
	line "le lien qui unit"
	cont "un #MON à son"
	cont "dresseur."
	done
; 0x7b592

Route27SandstormHouse_MapEventHeader: ; 0x7b592
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 1, GROUP_ROUTE_27, MAP_ROUTE_27
	warp_def $7, $3, 1, GROUP_ROUTE_27, MAP_ROUTE_27

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 0, $0, MapRoute27SandstormHouseSignpost1Script
	signpost 1, 1, $0, MapRoute27SandstormHouseSignpost1Script

	; people-events
	db 1
	person_event SPRITE_GRANNY, 8, 6, $6, 0, 0, -1, -1, 0, 0, 0, GrannyScript_0x7b394, -1
; 0x7b5b9

