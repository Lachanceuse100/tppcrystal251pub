GoldenrodDeptStoreRoof_MapScriptHeader: ; 0x56713
	; trigger count
	db 0

	; callback count
	db 2

	; callbacks

	dbw 1, UnknownScript_0x5671b

	dbw 2, UnknownScript_0x5672b
; 0x5671b

UnknownScript_0x5671b: ; 0x5671b
	checkflag ENGINE_GOLDENROD_DEPT_STORE_SALE_IS_ON
	iftrue UnknownScript_0x56722
	return
; 0x56722

UnknownScript_0x56722: ; 0x56722
	changeblock $0, $2, $3f
	changeblock $0, $4, $f
	return
; 0x5672b

UnknownScript_0x5672b: ; 0x5672b
	checkflag ENGINE_GOLDENROD_DEPT_STORE_SALE_IS_ON
	iftrue UnknownScript_0x56738
	setevent EVENT_GOLDENROD_DEPT_STORE_ROOF_SET_1
	clearevent EVENT_GOLDENROD_DEPT_STORE_ROOF_SET_2
	return
; 0x56738

UnknownScript_0x56738: ; 0x56738
	clearevent EVENT_GOLDENROD_DEPT_STORE_ROOF_SET_1
	setevent EVENT_GOLDENROD_DEPT_STORE_ROOF_SET_2
	return
; 0x5673f

ClerkScript_0x5673f: ; 0x5673f
	loadfont
	pokemart $4, $0000
	closetext
	end
; 0x56746

PokefanFScript_0x56746: ; 0x56746
	jumptextfaceplayer UnknownText_0x5677f
; 0x56749

FisherScript_0x56749: ; 0x56749
	faceplayer
	loadfont
	writetext UnknownText_0x567d2
	waitbutton
	closetext
	spriteface $4, $1
	end
; 0x56754

TwinScript_0x56754: ; 0x56754
	jumptextfaceplayer UnknownText_0x56839
; 0x56757

SuperNerdScript_0x56757: ; 0x56757
	loadfont
	writetext UnknownText_0x56867
	waitbutton
	closetext
	spriteface $6, $1
	loadfont
	writetext UnknownText_0x56871
	waitbutton
	closetext
	spriteface $6, $3
	end
; 0x5676a

PokefanMScript_0x5676a: ; 0x5676a
	jumptextfaceplayer UnknownText_0x5688e
; 0x5676d

TeacherScript_0x5676d: ; 0x5676d
	jumptextfaceplayer UnknownText_0x56901
; 0x56770

BugCatcherScript_0x56770: ; 0x56770
	jumptextfaceplayer UnknownText_0x56942
; 0x56773

MapGoldenrodDeptStoreRoofSignpost0Script: ; 0x56773
	jumptext UnknownText_0x569c3
; 0x56776

MapGoldenrodDeptStoreRoofSignpost1Script: ; 0x56776
	jumptext UnknownText_0x56a2b
; 0x56779

MapGoldenrodDeptStoreRoofSignpost2Script: ; 0x56779
	jumptext UnknownText_0x56aa6
; 0x5677c

MapGoldenrodDeptStoreRoofSignpost3Script: ; 0x5677c
	jumptext UnknownText_0x56b11
; 0x5677f

UnknownText_0x5677f: ; 0x5677f
	text "Ahhhhhhh<...>"

	para "Je vais souvent"
	line "sur le toit pour"

	para "me reposer après"
	line "les courses."
	done
; 0x567d2

UnknownText_0x567d2: ; 0x567d2
	text "Pardon? Comment ça"
	line "un adulte n'a pas"
	cont "le droit de faire"
	cont "ça?"

	para "Je veux toutes"
	line "les poupées!"
	done
; 0x56839

UnknownText_0x56839: ; 0x56839
	text "Ils ont souvent"
	line "des promotions"
	cont "ici."
	done
; 0x56867

UnknownText_0x56867: ; 0x56867
	text "Oh!"
	done
; 0x56871

UnknownText_0x56871: ; 0x56871
	text "Tu me lâches,"
	line "ouais?"
	done
; 0x5688e

UnknownText_0x5688e: ; 0x5688e
	text "Il y a quelque"
	line "chose que je vou-"
	cont "drais acheter mais"

	para "je n'ai pas assez"
	line "d'argent<...>"

	para "Et si je vendais"
	line "les BAIES que j'ai"
	cont "ramassé<...>"
	done
; 0x56901

UnknownText_0x56901: ; 0x56901
	text "Tout ces bons prix"
	line "par ici!"

	para "Mon SAC déborde"
	line "avec tout ce que"
	cont "j'ai pris."
	done
; 0x56942

UnknownText_0x56942: ; 0x56942
	text "Mon #MON finit"
	line "toujours paralysé"

	para "ou empoisonné"
	line "après un combat<...>"

	para "Alors je suis venu"
	line "acheter des TOTAL"
	cont "SOIN."

	para "Je me demande si"
	line "il en reste?"
	done
; 0x569c3

UnknownText_0x569c3: ; 0x569c3
	text "Ces jumelles me"
	line "permettent de voir"

	para "loin. Peut-être"
	line "que je peux voir"
	cont "ma maison."

	para "Est-ce que c'est"
	line "celle avec le toit"
	cont "vert?"
	done
; 0x56a2b

UnknownText_0x56a2b: ; 0x56a2b
	text "Des dresseurs qui"
	line "se battent sur la"
	cont "route!"

	para "A #MON crache"
	line "des feuilles!"

	para "Ca me donne envie"
	line "de combattre!"
	cont "right now!"
	done
; 0x56aa6

UnknownText_0x56aa6: ; 0x56aa6
	text "Un PECHEUR à cap-"
	line "turer plein de"
	cont "REMORAID<...>"

	para "Ils utilisent"
	line "PISTOLET A O en"
	cont "même temps."

	para "Toute cette eau"
	line "qui jaillit est"
	cont "un joli spectacle!"
	done
; 0x56b11

UnknownText_0x56b11: ; 0x56b11
	text "Une machine à"
	line "poupées #MON?"

	para "Mettez des sous"
	line "et tourner<...>"

	para "C'est presque"
	line "vide<...>"
	done
; 0x56b6d

GoldenrodDeptStoreRoof_MapEventHeader: ; 0x56b6d
	; filler
	db 0, 0

	; warps
	db 1
	warp_def $1, $d, 3, GROUP_GOLDENROD_DEPT_STORE_6F, MAP_GOLDENROD_DEPT_STORE_6F

	; xy triggers
	db 0

	; signposts
	db 4
	signpost 3, 15, $3, MapGoldenrodDeptStoreRoofSignpost0Script
	signpost 5, 15, $3, MapGoldenrodDeptStoreRoofSignpost1Script
	signpost 6, 15, $3, MapGoldenrodDeptStoreRoofSignpost2Script
	signpost 0, 3, $1, MapGoldenrodDeptStoreRoofSignpost3Script

	; people-events
	db 8
	person_event SPRITE_CLERK, 8, 5, $9, 0, 0, -1, -1, 0, 0, 0, ClerkScript_0x5673f, EVENT_GOLDENROD_DEPT_STORE_ROOF_SET_1
	person_event SPRITE_POKEFAN_F, 7, 14, $5, 0, 1, -1, -1, 8 + PAL_OW_RED, 0, 0, PokefanFScript_0x56746, -1
	person_event SPRITE_FISHER, 5, 6, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, FisherScript_0x56749, -1
	person_event SPRITE_TWIN, 8, 7, $2, 1, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, TwinScript_0x56754, EVENT_GOLDENROD_DEPT_STORE_ROOF_SET_2
	person_event SPRITE_SUPER_NERD, 10, 18, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, SuperNerdScript_0x56757, EVENT_GOLDENROD_DEPT_STORE_ROOF_SET_2
	person_event SPRITE_POKEFAN_M, 4, 11, $5, 0, 1, -1, -1, 0, 0, 0, PokefanMScript_0x5676a, EVENT_GOLDENROD_DEPT_STORE_ROOF_SET_1
	person_event SPRITE_TEACHER, 7, 9, $2, 1, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, TeacherScript_0x5676d, EVENT_GOLDENROD_DEPT_STORE_ROOF_SET_1
	person_event SPRITE_BUG_CATCHER, 10, 5, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, BugCatcherScript_0x56770, EVENT_GOLDENROD_DEPT_STORE_ROOF_SET_1
; 0x56bf4

