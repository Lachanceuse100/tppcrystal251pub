CeruleanPokeCenter1FRB_MapScriptHeader: ; 0x18820d
	; trigger count
	db 0

	; callback count
	db 0
; 0x18820f

CeruleanPokeCenter1FRBNurse: ; 0x18820f
	jumpstd pokecenternurse
; 0x188212
CeruleanPokeCenter1FRBSuperNerdScript:
	jumptextfaceplayer _CeruleanPokecenterText1

CeruleanPokeCenter1FRBGentlemanScript:
	jumptextfaceplayer _CeruleanPokecenterText3

CeruleanPokeCenter1FRBYoungsterScript:
	jumptextfaceplayer _CeruleanPokecenterGuyText

_CeruleanPokecenterText1:
	text "Ce LEO!"

	para "J'ai entendu qu'il"
	line "ferait n'importe"
	cont "quoi pour avoir"
	cont "des #MON rares!"
	done

_CeruleanPokecenterGuyText:
	text "LEO a des tas"
	line "de #MON!"

	para "Il collectionne"
	line "aussi les rares!"
	done


_CeruleanPokecenterText3:
	text "Tu as entendu"
	line "parler de LEO?"

	para "Tout le monde dit"
	line "que c'est un"
	cont "#MANIAC"

	para "Je crois que les"
	line "gens sont juste"
	cont "jaloux."

	para "Qui ne se vante-"
	line "rait pas de ses"
	cont "#MON?"
	done
	
CeruleanPokeCenter1FRB_LinkScript:
	jumpstd pokecenterlinkegk

CeruleanPokeCenter1FRB_MapEventHeader: ; 0x188386
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $5, 3, GROUP_CERULEAN_CITY_RB, MAP_CERULEAN_CITY_RB
	warp_def $7, $6, 3, GROUP_CERULEAN_CITY_RB, MAP_CERULEAN_CITY_RB

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 5
	person_event SPRITE_NURSE, 5, 9, $6, 0, 0, -1, -1, 0, 0, 0, CeruleanPokeCenter1FRBNurse, -1
	person_event SPRITE_SUPER_NERD, 9, 16, $2, 2, 10, -1, -1, 0, 0, 0, CeruleanPokeCenter1FRBSuperNerdScript, -1
	person_event SPRITE_GENTLEMAN, 7, 10, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, CeruleanPokeCenter1FRBGentlemanScript, -1
	person_event SPRITE_YOUNGSTER, 8, 6, $9, 0, 0, -1, -1, 0, 0, 0, CeruleanPokeCenter1FRBYoungsterScript, -1
	person_event SPRITE_LINK_RECEPTIONIST, 6, 17, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, CeruleanPokeCenter1FRB_LinkScript, -1
; 0x1883c2

