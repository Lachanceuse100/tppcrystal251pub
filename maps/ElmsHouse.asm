ElmsHouse_MapScriptHeader: ; 0x7aee9
	; trigger count
	db 0

	; callback count
	db 0
; 0x7aeeb

TeacherScript_0x7aeeb: ; 0x7aeeb
	jumptextfaceplayer UnknownText_0x7aef7
; 0x7aeee

BugCatcherScript_0x7aeee: ; 0x7aeee
	jumptextfaceplayer UnknownText_0x7af6b
; 0x7aef1

MapElmsHouseSignpost0Script: ; 0x7aef1
	jumptext UnknownText_0x7b01b
; 0x7aef4

MapElmsHouseSignpost2Script: ; 0x7aef4
	jumpstd difficultbookshelf
; 0x7aef7

UnknownText_0x7aef7: ; 0x7aef7
	text "Bonjour, <PLAY_G>!"
	line "Mon mari est tou-"
	cont "jours occupé."
	cont "J'espère qu'il"
	cont "va bien."

	para "Quand il est dans"
	line "ses recherches"
	cont "#MON, il en"
	cont "oublie de manger."
	done
; 0x7af6b

UnknownText_0x7af6b: ; 0x7af6b
	text "Quand je serais"
	line "grand, je vais"
	cont "aider mon papa!"

	para "Je serais une"
	line "grande professeur"
	cont "#MON!"
	done
; 0x7afbc

UnknownText_0x7afbc: ; 0x7afbc
	text "Il y a de la nou-"
	line "rriture ici. Ca"
	cont "doit être pour le"
	cont "LABORATOIRE."
	done
; 0x7afec

UnknownText_0x7afec: ; 0x7afec
	text "Il y a de la nou-"
	line "rriture ici. Ca"
	cont "doit être pour les"
	cont "#MON."
	done
; 0x7b01b

UnknownText_0x7b01b: ; 0x7b01b
	text "Les #MON, d'ou"
	line "viennent-ils? "

	para "Ou vont-ils?"

	para "Pourquoi personne"
	line "n'a vu la nai-"
	cont "ssance d'un"
	cont "#MON?"

	para "Je veux le savoir!"
	line "Je vais dédier ma"
	cont "vie à l'étude des"
	cont "#MON!"

	para "<...>"

	para "C'est une partie"
	line "des papiers de re-"
	cont "cherches du PROF."
	cont "ORME."
	done
; 0x7b0ea

ElmsHouse_MapEventHeader: ; 0x7b0ea
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 4, GROUP_NEW_BARK_TOWN, MAP_NEW_BARK_TOWN
	warp_def $7, $3, 4, GROUP_NEW_BARK_TOWN, MAP_NEW_BARK_TOWN

	; xy triggers
	db 0

	; signposts
	db 3
	signpost 1, 0, $0, MapElmsHouseSignpost0Script
	signpost 1, 6, $0, MapElmsHouseSignpost2Script
	signpost 1, 7, $0, MapElmsHouseSignpost2Script

	; people-events
	db 2
	person_event SPRITE_TEACHER, 9, 5, $4, 1, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, TeacherScript_0x7aeeb, -1
	person_event SPRITE_BUG_CATCHER, 8, 9, $7, 0, 0, -1, -1, 0, 0, 0, BugCatcherScript_0x7aeee, -1
; 0x7b123

