VioletCity_MapScriptHeader: ; 0x1a83b2
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 5, UnknownScript_0x1a83b7
; 0x1a83b7

UnknownScript_0x1a83b7: ; 0x1a83b7
	setflag ENGINE_FLYPOINT_VIOLET
	return
; 0x1a83bb

FisherScript_0x1a83bb: ; 0x1a83bb
	applymovement $2, MovementData_0x1a8465
	faceplayer
	loadfont
	writetext UnknownText_0x1a8473
	yesorno
	iffalse UnknownScript_0x1a83d1
	jump UnknownScript_0x1a83cb
; 0x1a83cb

UnknownScript_0x1a83cb: ; 0x1a83cb
	writetext UnknownText_0x1a84ac
	waitbutton
	closetext
	end
; 0x1a83d1

UnknownScript_0x1a83d1: ; 0x1a83d1
	writetext UnknownText_0x1a84cb
	waitbutton
	closetext
	playmusic MUSIC_SHOW_ME_AROUND
	follow $2, $0
	applymovement $2, MovementData_0x1a842a
	spriteface $0, $1
	applymovement $2, MovementData_0x1a8465
	stopfollow
	special RestartMapMusic
	loadfont
	writetext UnknownText_0x1a84f9
	waitbutton
	closetext
	applymovement $2, MovementData_0x1a8465
	applymovement $2, MovementData_0x1a8463
	playsound SFX_ENTER_DOOR
	disappear $2
	clearevent EVENT_EARL_INSIDE
	waitsfx
	end
; 0x1a8403

LassScript_0x1a8403: ; 0x1a8403
	jumptextfaceplayer UnknownText_0x1a8529
; 0x1a8406

SuperNerdScript_0x1a8406: ; 0x1a8406
	jumptextfaceplayer UnknownText_0x1a8593
; 0x1a8409

GrampsScript_0x1a8409: ; 0x1a8409
	jumptextfaceplayer UnknownText_0x1a85ef
; 0x1a840c

YoungsterScript_0x1a840c: ; 0x1a840c
	jumptextfaceplayer UnknownText_0x1a8665
; 0x1a840f

MapVioletCitySignpost0Script: ; 0x1a840f
	jumptext UnknownText_0x1a86b2
; 0x1a8412

MapVioletCitySignpost1Script: ; 0x1a8412
	jumptext UnknownText_0x1a86dc
; 0x1a8415

MapVioletCitySignpost2Script: ; 0x1a8415
	jumptext UnknownText_0x1a8724
; 0x1a8418

MapVioletCitySignpost3Script: ; 0x1a8418
	jumptext UnknownText_0x1a874d
; 0x1a841b

MapVioletCitySignpost4Script: ; 0x1a841b
	jumpstd pokecentersign
; 0x1a841e

MapVioletCitySignpost5Script: ; 0x1a841e
	jumpstd martsign
; 0x1a8421

ItemFragment_0x1a8421: ; 0x1a8421
	db PP_UP, 1
; 0x1a8423

ItemFragment_0x1a8423: ; 0x1a8423
	db RARE_CANDY, 1
; 0x1a8425

FruitTreeScript_0x1a8425: ; 0x1a8425
	fruittree $9
; 0x1a8427

MapVioletCitySignpostItem6: ; 0x1a8427
	dw $00b0
	db HYPER_POTION

; 0x1a842a

MovementData_0x1a842a: ; 0x1a842a
	big_step_down
	big_step_down
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	big_step_down
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	big_step_up
	turn_head_down
	step_end
; 0x1a8463

MovementData_0x1a8463: ; 0x1a8463
	step_up
	step_end
; 0x1a8465

MovementData_0x1a8465: ; 0x1a8465
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	step_end
; 0x1a8473

UnknownText_0x1a8473: ; 0x1a8473
	text "Salut!"
	line "Dresseur es-tu?"

	para "Gagné contre le"
	line "CHAMPION d'ARENE"
	cont "as-tu?"
	done
; 0x1a84ac

UnknownText_0x1a84ac: ; 0x1a84ac
	text "Ooh, là là!"
	line "Super!"
	done
; 0x1a84cb

UnknownText_0x1a84cb: ; 0x1a84cb
	text "Ah bon? Alors"
	line "étudier tu dois!"
	cont "Suis-moi!"
	done
; 0x1a84f9

UnknownText_0x1a84f9: ; 0x1a84f9
	text "La, enseignant je"
	line "suis. Etudier ici"
	cont "tu devrais!"
	done
; 0x1a8529

UnknownText_0x1a8529: ; 0x1a8529
	text "On dit qu'il y a"
	line "des fantômes à la"
	cont "TOUR CHETIFLOR."

	para "Apparamment les"
	line "capacités #MON"

	para "NORMAL n'ont pas"
	line "d'effet sur eux."
	done
; 0x1a8593

UnknownText_0x1a8593: ; 0x1a8593
	text "Tu es un dresseur"
	line "de #MON?"

	para "Si tu bats le"
	line "CHAMPION d'ARENE,"

	para "tu passeras au"
	line "20 heures!"
	done
; 0x1a85ef

UnknownText_0x1a85ef: ; 0x1a85ef
	text "ALBERT de l'ARENE"
	line "#MON de"

	para "MAUVILLE est un"
	line "super dresseur!"

	para "Il a hérité de"
	line "l'ARENE de son"

	para "père et fait du"
	line "bon travail avec."
	done
; 0x1a8665

UnknownText_0x1a8665: ; 0x1a8665
	text "J'ai vu un arbre"
	line "bizarre là-bas."

	para "Si tu le touches,"
	line "il danse le smurf!"
	cont "Trop cool!"
	done
; 0x1a86b2

UnknownText_0x1a86b2: ; 0x1a86b2
	text "MAUVILLE"

	para "La ville aux"
	line "senteurs du passé."
	done
; 0x1a86dc

UnknownText_0x1a86dc: ; 0x1a86dc
	text "MAUVILLE"
	line "ARENE #MON"

	para "CHAMPION:"
	line "ALBERT"

	para "L'élégant maître"
	line "des #MON"
	cont "volants!"
	done
; 0x1a8724

UnknownText_0x1a8724: ; 0x1a8724
	text "TOUR CHETIFLOR"

	para "Vivez en harmonie"
	line "avec les #MON."
	done
; 0x1a874d

UnknownText_0x1a874d: ; 0x1a874d
	text "ACADEMIE #MON"
	line "de THEOPHILE"
	done
; 0x1a8762

VioletCity_MapEventHeader: ; 0x1a8762
	; filler
	db 0, 0

	; warps
	db 9
	warp_def $11, $9, 2, GROUP_VIOLET_MART, MAP_VIOLET_MART
	warp_def $11, $12, 1, GROUP_VIOLET_GYM, MAP_VIOLET_GYM
	warp_def $11, $1e, 1, GROUP_EARLS_POKEMON_ACADEMY, MAP_EARLS_POKEMON_ACADEMY
	warp_def $f, $3, 1, GROUP_VIOLET_NICKNAME_SPEECH_HOUSE, MAP_VIOLET_NICKNAME_SPEECH_HOUSE
	warp_def $19, $1f, 1, GROUP_VIOLET_POKECENTER_1F, MAP_VIOLET_POKECENTER_1F
	warp_def $1d, $15, 1, GROUP_VIOLET_ONIX_TRADE_HOUSE, MAP_VIOLET_ONIX_TRADE_HOUSE
	warp_def $5, $17, 1, GROUP_SPROUT_TOWER_1F, MAP_SPROUT_TOWER_1F
	warp_def $18, $27, 1, GROUP_ROUTE_31_VIOLET_GATE, MAP_ROUTE_31_VIOLET_GATE
	warp_def $19, $27, 2, GROUP_ROUTE_31_VIOLET_GATE, MAP_ROUTE_31_VIOLET_GATE

	; xy triggers
	db 0

	; signposts
	db 7
	signpost 20, 24, $0, MapVioletCitySignpost0Script
	signpost 17, 15, $0, MapVioletCitySignpost1Script
	signpost 8, 24, $0, MapVioletCitySignpost2Script
	signpost 17, 27, $0, MapVioletCitySignpost3Script
	signpost 25, 32, $0, MapVioletCitySignpost4Script
	signpost 17, 10, $0, MapVioletCitySignpost5Script
	signpost 14, 37, $7, MapVioletCitySignpostItem6

	; people-events
	db 8
	person_event SPRITE_FISHER, 20, 17, $3, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, FisherScript_0x1a83bb, EVENT_EARL_OUTSIDE
	person_event SPRITE_LASS, 32, 32, $2, 2, 2, -1, -1, 8 + PAL_OW_GREEN, 0, 0, LassScript_0x1a8403, -1
	person_event SPRITE_SUPER_NERD, 18, 28, $2, 2, 1, -1, -1, 8 + PAL_OW_RED, 0, 0, SuperNerdScript_0x1a8406, -1
	person_event SPRITE_GRAMPS, 24, 21, $5, 0, 1, -1, -1, 0, 0, 0, GrampsScript_0x1a8409, -1
	person_event SPRITE_YOUNGSTER, 22, 9, $3, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, YoungsterScript_0x1a840c, -1
	person_event SPRITE_FRUIT_TREE, 33, 18, $1, 0, 0, -1, -1, 0, 0, 0, FruitTreeScript_0x1a8425, -1
	person_event SPRITE_POKE_BALL, 5, 8, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x1a8421, EVENT_ITEM_VIOLET_CITY_PP_UP
	person_event SPRITE_POKE_BALL, 9, 39, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x1a8423, EVENT_ITEM_VIOLET_CITY_RARE_CANDY
; 0x1a8820

