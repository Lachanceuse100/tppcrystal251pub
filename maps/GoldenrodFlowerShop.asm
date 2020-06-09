GoldenrodFlowerShop_MapScriptHeader: ; 0x5535b
	; trigger count
	db 0

	; callback count
	db 0
; 0x5535d

TeacherScript_0x5535d: ; 0x5535d
	checkevent EVENT_FOUGHT_SUDOWOODO
	iftrue .Lalala
	checkevent EVENT_GOT_SQUIRTBOTTLE
	iftrue .GotSquirtbottle
	checkevent EVENT_SPOKE_TO_FLOWER_SHOP_GIRL_AT_SUDOWOODO
	iffalse .HaventMetFloria
	checkevent EVENT_SPOKE_TO_FLOWER_SHOP_GIRL_IN_FLOWER_SHOP
	iffalse .Lalala
	checkflag ENGINE_PLAINBADGE
	iffalse .NoPlainBadge
	faceplayer
	loadfont
	writetext UnknownText_0x554c2
	buttonsound
	verbosegiveitem SQUIRTBOTTLE
	setevent EVENT_GOT_SQUIRTBOTTLE
	closetext
	setevent EVENT_FLOWER_SHOP_LASS_ON_ROUTE_36
	clearevent EVENT_FLOWER_SHOP_LASS_IN_GOLDENROD_FLOWER_SHOP
	end

.Lalala:
	spriteface $2, LEFT
	loadfont
	writetext UnknownText_0x5552e
	waitbutton
	closetext
	end

.GotSquirtbottle:
	jumptextfaceplayer UnknownText_0x5550d

.NoPlainBadge:
	jumptextfaceplayer UnknownText_0x55463

.HaventMetFloria:
	jumptextfaceplayer UnknownText_0x553d4

; TeacherScript_0x5535d: ; 0x5535d
	; checkevent EVENT_FOUGHT_SUDOWOODO
	; iftrue UnknownScript_0x5538f
	; checkevent EVENT_GOT_SQUIRTBOTTLE
	; iftrue UnknownScript_0x55399
	; checkflag ENGINE_PLAINBADGE
	; iftrue FlowerShopWithBadge
	; checkevent EVENT_SPOKE_TO_FLOWER_SHOP_GIRL_AT_SUDOWOODO
	; iffalse UnknownScript_0x5539f
	; checkevent EVENT_SPOKE_TO_FLOWER_SHOP_GIRL_IN_FLOWER_SHOP
	; iffalse UnknownScript_0x5538f
	; jumptextfaceplayer UnknownText_0x55463

; FlowerShopWithBadge:
	; faceplayer
	; loadfont
	; writetext UnknownText_0x554c2
	; buttonsound
	; verbosegiveitem SQUIRTBOTTLE, 1
	; setevent EVENT_GOT_SQUIRTBOTTLE
	; closetext
	; setevent EVENT_FLOWER_SHOP_LASS_ON_ROUTE_36
	; clearevent EVENT_FLOWER_SHOP_LASS_IN_GOLDENROD_FLOWER_SHOP
	; end
; ; 0x5538f

; UnknownScript_0x5538f: ; 0x5538f
	; spriteface $2, $2
	; loadfont
	; writetext UnknownText_0x5552e
	; waitbutton
	; closetext
	; end
; ; 0x55399

; UnknownScript_0x55399: ; 0x55399
	; jumptextfaceplayer UnknownText_0x5550d
; ; 0x5539c

; ;UnknownScript_0x5539c: ; 0x5539c

; 0x5539f

UnknownScript_0x5539f: ; 0x5539f
	jumptextfaceplayer UnknownText_0x553d4
; 0x553a2

LassScript_0x553a2: ; 0x553a2
	faceplayer
	loadfont
	checkevent EVENT_FOUGHT_SUDOWOODO
	iftrue UnknownScript_0x553c5
	checkevent EVENT_GOT_SQUIRTBOTTLE
	iftrue UnknownScript_0x553bf
	writetext UnknownText_0x55561
	waitbutton
	closetext
	setevent EVENT_SPOKE_TO_FLOWER_SHOP_GIRL_IN_FLOWER_SHOP
	setevent EVENT_FLOWER_SHOP_LASS_IN_GOLDENROD_FLOWER_SHOP
	clearevent EVENT_FLOWER_SHOP_LASS_ON_ROUTE_36
	end
; 0x553bf

UnknownScript_0x553bf: ; 0x553bf
	writetext UnknownText_0x555e6
	waitbutton
	closetext
	end
; 0x553c5

UnknownScript_0x553c5: ; 0x553c5
	writetext UnknownText_0x55604
	waitbutton
	closetext
	end
; 0x553cb

UnknownScript_0x553cb: ; 0x553cb
	jumpstd picturebookshelf
; 0x553ce

UnknownScript_0x553ce: ; 0x553ce
	jumpstd magazinebookshelf
; 0x553d1

UnknownScript_0x553d1: ; 0x553d1
	jumpstd radio2
; 0x553d4

UnknownText_0x553d4: ; 0x553d4
	text "As-tu vu l'arbre"
	line "qui gigote sur la"
	cont "ROUTE 36?"

	para "Ma petite soeur a"
	line "absolument tenu à"
	cont "aller le voir<...>"

	para "Ca m'inquiète<...>"
	line "N'est-ce pas"
	cont "dangereux?"
	done
; 0x55463

UnknownText_0x55463: ; 0x55463
	text "Tu veux emprunter"
	line "la bouteille"
	cont "d'eau?"

	para "Je ne veux pas que"
	line "tu fasses de"
	cont "bêtises avec."
	done
; 0x554c2

UnknownText_0x554c2: ; 0x554c2
	text "Oh, tu as battu"
	line "BLANCHE<...>"

	para "D'accord, tu peux"
	line "avoir le"
	cont "CARAPUCE'A'O!"
	done
; 0x5550d

UnknownText_0x5550d: ; 0x5550d
	text "Ne fais pas de"
	line "bêtises!"
	done
; 0x5552e

UnknownText_0x5552e: ; 0x5552e
	text "Lalala lalalala."
	line "L'eau ça mouille!"
	done
; 0x55561

UnknownText_0x55561: ; 0x55561
	text "Quand j'ai parlé"
	line "de l'arbre qui"

	para "gigote à ma soeur,"
	line "elle a dit que c'"
	cont "était dangeureux."

	para "Si je bats"
	line "BLANCHE, elle me"
	cont "prêtera sa bou-"
	cont "teille!"
	cont "C'est sûr!"
	done
; 0x555e6

UnknownText_0x555e6: ; 0x555e6
	text "Tu as battu"
	line "BLANCHE? Cool!"
	done
; 0x55604

UnknownText_0x55604: ; 0x55604
	text "Alors c'était"
	line "vraiment un"
	cont "#MON!"
	done
; 0x5561e

GoldenrodFlowerShop_MapEventHeader: ; 0x5561e
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 6, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY
	warp_def $7, $3, 6, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 2
	person_event SPRITE_TEACHER, 8, 6, $9, 0, 0, -1, -1, 0, 0, 0, TeacherScript_0x5535d, -1
	person_event SPRITE_LASS, 10, 9, $2, 1, 1, -1, -1, 8 + PAL_OW_BLUE, 0, 0, LassScript_0x553a2, EVENT_FLOWER_SHOP_LASS_IN_GOLDENROD_FLOWER_SHOP
; 0x55648

