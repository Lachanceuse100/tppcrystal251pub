Route35Goldenrodgate_MapScriptHeader: ; 0x69d35
	; trigger count
	db 0

	; callback count
	db 0
; 0x69d37

OfficerScript_0x69d37: ; 0x69d37
	faceplayer
	loadfont
	checkevent EVENT_GOT_HP_UP_FROM_RANDY
	iftrue UnknownScript_0x69d92
	checkevent EVENT_GAVE_KENYA
	iftrue UnknownScript_0x69d85
	checkevent EVENT_GOT_KENYA
	iftrue UnknownScript_0x69d73
	writetext UnknownText_0x69ddd
	yesorno
	iffalse UnknownScript_0x69d7f
	writetext UnknownText_0x69e48
	buttonsound
	waitsfx
	checkcode VAR_PARTYCOUNT
	if_equal $6, UnknownScript_0x69d79
	writetext UnknownText_0x69eb8
	playsound SFX_KEY_ITEM
	waitsfx
	givepoke NOCTOWL, 30, 0, 1, GiftSpearowName, GiftSpearowOTName
	givepokeitem GiftSpearowMail
	setevent EVENT_GOT_KENYA
UnknownScript_0x69d73: ; 0x69d73
	writetext UnknownText_0x69ed6
	waitbutton
	closetext
	end
; 0x69d79

UnknownScript_0x69d79: ; 0x69d79
	writetext UnknownText_0x69f56
	waitbutton
	closetext
	end
; 0x69d7f

UnknownScript_0x69d7f: ; 0x69d7f
	writetext UnknownText_0x69f74
	waitbutton
	closetext
	end
; 0x69d85

UnknownScript_0x69d85: ; 0x69d85
	writetext UnknownText_0x69f8b
	buttonsound
	verbosegiveitem HP_UP, 1
	iffalse UnknownScript_0x69d96
	setevent EVENT_GOT_HP_UP_FROM_RANDY
UnknownScript_0x69d92: ; 0x69d92
	writetext UnknownText_0x69fd9
	waitbutton
UnknownScript_0x69d96: ; 0x69d96
	closetext
	end

GiftSpearowMail: ; 0x69d98
	db FLOWER_MAIL
	db   "ANTRE NOIRE"
	next "mène autre part@"
GiftSpearowName: ; 0x69db9
	db "ALFRED@"
GiftSpearowOTName: ; 0x69dbf
	db "BOBBY@"

	db 0 ; 0x69dc5 XXX is there a reason for this?

PokefanFScript_0x69dc6: ; 0x69dc6
	faceplayer
	loadfont
	checkevent EVENT_FOUGHT_SUDOWOODO
	iftrue UnknownScript_0x69dd4
	writetext UnknownText_0x6a00a
	waitbutton
	closetext
	end
; 0x69dd4

UnknownScript_0x69dd4: ; 0x69dd4
	writetext UnknownText_0x6a09a
	waitbutton
	closetext
	end
; 0x69dda

FisherScript_0x69dda: ; 0x69dda
	jumptextfaceplayer UnknownText_0x6a0cb
; 0x69ddd

UnknownText_0x69ddd: ; 0x69ddd
	text "Excuse moi!"
	line "Tu peux me rendre"
	cont "un service?"

	para "Tu peux apporter"
	line "ce #MON et sa"
	cont "LETTRE à mon pote?"

	para "Il est sur la"
	line "ROUTE 31."
	done
; 0x69e48

UnknownText_0x69e48: ; 0x69e48
	text "Tu veux bien?"
	line "Merci!"

	para "Mon pote est un"
	line "paresseux, il"
	cont "pionce tout le"
	cont "temps."

	para "Tu le reconnaî-"
	line "tras de suite!"
	done
; 0x69eb8

UnknownText_0x69eb8: ; 0x69eb8
	text "<PLAYER> reçoit un"
	line "#MON avec une"
	cont "LETTRE."
	done
; 0x69ed6

UnknownText_0x69ed6: ; 0x69ed6
	text "Tu peux la lire"
	line "mais ne la perds"
	cont "pas, OK?"

	para "Souviens-toi: la"
	line "ROUTE 31!"

	para "Ah oui, il y a un"
	line "arbre bizarre qui"
	cont "bloque le chemin."

	para "Il est parti, tu"
	line "crois?"
	done
; 0x69f56

UnknownText_0x69f56: ; 0x69f56
	text "Tu ne peux plus"
	line "porter de #MON!"
	done
; 0x69f74

UnknownText_0x69f74: ; 0x69f74
	text "Oh<...> Laisse tomber"
	line "alors<...>"
	done
; 0x69f8b

UnknownText_0x69f8b: ; 0x69f8b
	text "Merci bien! Tu"
	line "as bien fait la"
	cont "livraison!"

	para "Voilà pour toi!"
	done
; 0x69fd9

UnknownText_0x69fd9: ; 0x69fd9
	text "Mon pote pionce"
	line "comme un fou, non?"
	cont "Je te l'avais dis."
	done
; 0x6a00a

UnknownText_0x6a00a: ; 0x6a00a
	text "Un arbre bizarre"
	line "bloque le chemin."

	para "Il gigote si on"
	line "s'en approche."

	para "Il paraît qu'il"
	line "devient fou si on"

	para "l'asperge avec une"
	line "CARAPUCE A O."
	done
; 0x6a09a

UnknownText_0x6a09a: ; 0x6a09a
	text "Je me sens mal"
	line "pour le gars au"
	cont "comptoir<...>"

	para "Il a laissé une"
	line "fille emprunter"

	para "son meilleur #-"
	line "MON postier et"

	para "elle ne l'a jamais"
	line "rendu. Je me"
	cont "demande ce qu'il"
	cont "devient<...>"
	done
; 0x6a0cb

UnknownText_0x6a0cb: ; 0x6a0cb
	text "Je me demande"
	line "combien de types"

	para "de #MON il y a"
	line "dans le monde."

	para "Il y a trois mois,"
	line "le PROF.CHEN"

	para "disait qu'il y"
	line "avait 150 types"
	cont "différents."
	done
; 0x6a148

Route35Goldenrodgate_MapEventHeader: ; 0x6a148
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $0, $4, 1, GROUP_ROUTE_35, MAP_ROUTE_35
	warp_def $0, $5, 2, GROUP_ROUTE_35, MAP_ROUTE_35
	warp_def $7, $4, 12, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY
	warp_def $7, $5, 12, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_OFFICER, 8, 4, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, OfficerScript_0x69d37, -1
	person_event SPRITE_POKEFAN_F, 8, 10, $4, 1, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, PokefanFScript_0x69dc6, -1
	person_event SPRITE_FISHER, 6, 7, $3, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, FisherScript_0x69dda, -1
; 0x6a189

