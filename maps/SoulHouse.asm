SoulHouse_MapScriptHeader: ; 0x7ec45
	; trigger count
	db 0

	; callback count
	db 0
; 0x7ec47

GrampsScript_0x7ec47: ; 0x7ec47
	jumptextfaceplayer UnknownText_0x7ec53
; 0x7ec4a

TeacherScript_0x7ec4a: ; 0x7ec4a
	jumptextfaceplayer UnknownText_0x7ed4d
; 0x7ec4d

LassScript_0x7ec4d: ; 0x7ec4d
	jumptextfaceplayer UnknownText_0x7edb1
; 0x7ec50

GrannyScript_0x7ec50: ; 0x7ec50
	jumptextfaceplayer UnknownText_0x7eddb
; 0x7ec53

UnknownText_0x7ec53: ; 0x7ec53
	text "M.FUJI: Bienvenue."

	para "Hmm<...> Tu as l'air"
	line "d'être un dresseur"

	para "de #MON doux et"
	line "attentionné."

	para "Ceux qui aiment"
	line "les #MON vien-"

	para "nent ici saluer"
	line "leur âme."

	para "Tu peux présenter"
	line "ici tes condoléan-"
	cont "ces."

	para "Cela leur fera"
	line "plaisir."
	done
; 0x7ed4d

UnknownText_0x7ed4d: ; 0x7ed4d
	text "Il y a d'autres"
	line "tombes de #MON"
	cont "ici, je crois."

	para "Beaucoup de pièces"
	line "ne sont réservées"
	cont "qu'à M.FUJI."
	done
; 0x7edb1

UnknownText_0x7edb1: ; 0x7edb1
	text "Je suis venue avec"
	line "ma maman pour voir"
	cont "les tombes des"
	cont "#MON<...>"
	done
; 0x7eddb

UnknownText_0x7eddb: ; 0x7eddb
	text "Les #MON que"
	line "j'ai perdu<...>"

	para "Je les aimais com-"
	line "me mes petits-"
	cont "enfants<...>"
	done
; 0x7ee1d

SoulHouse_MapEventHeader: ; 0x7ee1d
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $4, 6, GROUP_LAVENDER_TOWN, MAP_LAVENDER_TOWN
	warp_def $7, $5, 6, GROUP_LAVENDER_TOWN, MAP_LAVENDER_TOWN

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 4
	person_event SPRITE_GRAMPS, 6, 8, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, GrampsScript_0x7ec47, -1
	person_event SPRITE_TEACHER, 7, 11, $5, 0, 1, -1, -1, 8 + PAL_OW_BLUE, 0, 0, TeacherScript_0x7ec4a, -1
	person_event SPRITE_LASS, 9, 6, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, LassScript_0x7ec4d, -1
	person_event SPRITE_GRANNY, 7, 5, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, GrannyScript_0x7ec50, -1
; 0x7ee61

