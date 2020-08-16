CeruleanPokeCenter1F_MapScriptHeader: ; 0x18820d
	; trigger count
	db 0

	; callback count
	db 0
; 0x18820f

NurseScript_0x18820f: ; 0x18820f
	jumpstd pokecenternurse
; 0x188212

SuperNerdScript_0x188212: ; 0x188212
	special Function10630f
	iftrue UnknownScript_0x18821b
	jumptextfaceplayer UnknownText_0x188221
; 0x18821b

UnknownScript_0x18821b: ; 0x18821b
	jumptextfaceplayer UnknownText_0x18828c
; 0x18821e

GymGuyScript_0x18821e: ; 0x18821e
	checkunit
	iftrue .imperial
	jumptextfaceplayer UnknownText_0x1882ff_Metric
.imperial
	jumptextfaceplayer UnknownText_0x1882ff
; 0x188221

UnknownText_0x188221: ; 0x188221
	text "Pour les combats,"
	line "je préfère utili-"

	para "ser des #MON"
	line "que j'ai entraînés"

	para "plutôt que des"
	line "#MON plus forts"
	cont "que je viens"
	cont "d'attraper."
	done
; 0x18828c

UnknownText_0x18828c: ; 0x18828c
	text "Tu combats par té-"
	line "léphone mobile?"

	para "Si le temps est"
	line "écoulé en combat,"

	para "c'est stressant de"
	line "savoir qui a vrai-"
	cont "ment gagné!"
	done
; 0x1882ff

UnknownText_0x1882ff: ; 0x1882ff
	text "Le TRAIN MAGNER"
	line "fait du 340 mp/h!"

	para "Il va de KANTO à"
	line "JOHTO en un rien"
	cont "de temps."

	para "Aller à JOHTO est"
	line "alors très facile."
	done
; 0x188386

UnknownText_0x1882ff_Metric:
	text "Le TRAIN MAGNER"
	line "fait du 550 km/h!"

	para "Il va de KANTO à"
	line "JOHTO en un rien"
	cont "de temps."

	para "Aller à JOHTO est"
	line "alors très facile."
	done

CeruleanOldCenter_LinkScript:
	jumpstd pokecenteroldlink

CeruleanPokeCenter1F_MapEventHeader: ; 0x188386
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $7, $5, 4, GROUP_CERULEAN_CITY, MAP_CERULEAN_CITY
	warp_def $7, $6, 4, GROUP_CERULEAN_CITY, MAP_CERULEAN_CITY
	warp_def $7, $2, 1, GROUP_POKECENTER_2F, MAP_POKECENTER_2F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 4
	person_event SPRITE_NURSE, 5, 9, $6, 0, 0, -1, -1, 0, 0, 0, NurseScript_0x18820f, -1
	person_event SPRITE_SUPER_NERD, 9, 15, $5, 0, 1, -1, -1, 0, 0, 0, SuperNerdScript_0x188212, -1
	person_event SPRITE_GYM_GUY, 9, 7, $2, 1, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, GymGuyScript_0x18821e, -1
	person_event SPRITE_LINK_RECEPTIONIST, 6, 17, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, CeruleanOldCenter_LinkScript, -1
; 0x1883c2

