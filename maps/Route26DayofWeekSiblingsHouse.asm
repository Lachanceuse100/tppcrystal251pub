Route26DayofWeekSiblingsHouse_MapScriptHeader: ; 0x7b1e2
	; trigger count
	db 0

	; callback count
	db 0
; 0x7b1e4

PokedexScript_0x7b1e4: ; 0x7b1e4
	loadfont
	writetext UnknownText_0x7b1f9
	yesorno
	iffalse UnknownText_0x7b1f7
	writetext UnknownText_0x7b222
	yesorno
	iffalse UnknownText_0x7b1f7
	writetext UnknownText_0x7b2b9
	waitbutton
UnknownText_0x7b1f7: ; 0x7b1f7
	closetext
	end
; 0x7b1f9

UnknownText_0x7b1f9: ; 0x7b1f9
	text "Il y a quelque"
	line "chose d'écrit."

	para "Lire?"
	done
; 0x7b222

UnknownText_0x7b222: ; 0x7b222
	text "A mes frères et"
	line "soeurs:"

	para "Nous prenons fier-"
	line "té a aider les"
	cont "dresseurs de"
	cont "#MON."

	para "Quand un dresseur"
	line "vient vous parler,"
	cont "donnez-lui un"
	cont "objet utile."

	para "Bisous,"
	line "LUCIE"

	para "Continuer à lire?"
	done
; 0x7b2b9

UnknownText_0x7b2b9: ; 0x7b2b9
	text "Lundie, LUCIE"
	line "ROUTE 40"

	para "Mardi, MARIE"
	line "ROUTE 29"

	para "Mercredi, HOMER"
	line "LAC COLERE"

	para "Jeudi, JEROME"
	line "ROUTE 36"

	para "Vendredi, VANESSA"
	line "ROUTE 32"

	para "Samedi, SAMUEL"
	line "EBENELLE"

	para "Dimanche, DIMITRI"
	line "ROUTE 37"
	done
; 0x7b375

Route26DayofWeekSiblingsHouse_MapEventHeader: ; 0x7b375
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 3, GROUP_ROUTE_26, MAP_ROUTE_26
	warp_def $7, $3, 3, GROUP_ROUTE_26, MAP_ROUTE_26

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_POKEDEX, 7, 7, $1, 0, 0, -1, -1, 0, 0, 0, PokedexScript_0x7b1e4, -1
; 0x7b392

