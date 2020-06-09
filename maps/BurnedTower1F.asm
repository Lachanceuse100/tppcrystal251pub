BurnedTower1F_MapScriptHeader: ; 0x185be1
	; trigger count
	db 3

	; triggers
	dw UnknownScript_0x185bf2, $0000
	dw UnknownScript_0x185bf6, $0000
	dw UnknownScript_0x185bf7, $0000

	; callback count
	db 1

	; callbacks

	dbw 1, UnknownScript_0x185bf8
; 0x185bf2

UnknownScript_0x185bf2: ; 0x185bf2
	priorityjump UnknownScript_0x185c0d
	end
; 0x185bf6

UnknownScript_0x185bf6: ; 0x185bf6
	end
; 0x185bf7

UnknownScript_0x185bf7: ; 0x185bf7
	end
; 0x185bf8

UnknownScript_0x185bf8: ; 0x185bf8
	checkevent EVENT_OPENED_HOLE_IN_BURNED_TOWER_1F
	iftrue UnknownScript_0x185c02
	changeblock $a, $8, $32
UnknownScript_0x185c02: ; 0x185c02
	checkevent EVENT_RELEASED_THE_BEASTS
	iftrue UnknownScript_0x185c0c
	changeblock $6, $e, $9
UnknownScript_0x185c0c: ; 0x185c0c
	return
; 0x185c0d

UnknownScript_0x185c0d: ; 0x185c0d
	spriteface $3, $0
	showemote $0, $3, 15
	applymovement $3, MovementData_0x185cd3
	loadfont
	writetext UnknownText_0x185ecc
	waitbutton
	closetext
	moveperson $3, $9, $e
	dotrigger $1
	end
; 0x185c25

UnknownScript_0x185c25: ; 0x185c25
	showemote $0, $4, 15
	special Functionc48f
	pause 15
	spriteface $4, $3
	pause 15
	applymovement $0, MovementData_0x185ccd
	applymovement $4, MovementData_0x185ccf
	playmusic MUSIC_RIVAL_ENCOUNTER
	loadfont
	writetext UnknownText_0x185cd9
	waitbutton
	closetext
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue UnknownScript_0x185c60
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue UnknownScript_0x185c70
	winlosstext UnknownText_0x185d9b, UnknownText_0x185e2c
	setlasttalked $4
	loadtrainer RIVAL1, RIVAL1_9
	startbattle
	reloadmapmusic
	returnafterbattle
	jump UnknownScript_0x185c80
; 0x185c60

UnknownScript_0x185c60: ; 0x185c60
	winlosstext UnknownText_0x185d9b, UnknownText_0x185e2c
	setlasttalked $4
	loadtrainer RIVAL1, RIVAL1_7
	startbattle
	reloadmapmusic
	returnafterbattle
	jump UnknownScript_0x185c80
; 0x185c70

UnknownScript_0x185c70: ; 0x185c70
	winlosstext UnknownText_0x185d9b, UnknownText_0x185e2c
	setlasttalked $4
	loadtrainer RIVAL1, RIVAL1_8
	startbattle
	reloadmapmusic
	returnafterbattle
	jump UnknownScript_0x185c80
; 0x185c80

UnknownScript_0x185c80: ; 0x185c80
	special DeleteSavedMusic
	playmusic MUSIC_RIVAL_AFTER
	loadfont
	writetext UnknownText_0x185de2
	waitbutton
	closetext
	dotrigger $2
	setevent EVENT_SILVER_IN_BURNED_TOWER
	special Functionc48f
	pause 15
	earthquake 50
	showemote $0, $0, 15
	playsound SFX_ENTER_DOOR
	waitsfx
	changeblock $a, $8, $25
	reloadmappart
	pause 15
	applymovement $0, MovementData_0x185cd1
	playsound SFX_KINESIS
	showemote $0, $4, 20
	loadfont
	writetext UnknownText_0x185e75
	waitbutton
	closetext
	setevent EVENT_OPENED_HOLE_IN_BURNED_TOWER_1F
	pause 15
	warpcheck
	end
; 0x185cbc

SuperNerdScript_0x185cbc: ; 0x185cbc
	jumptextfaceplayer UnknownText_0x185f99
; 0x185cbf

MortyScript_0x185cbf: ; 0x185cbf
	jumptextfaceplayer UnknownText_0x186002
; 0x185cc2

RockScript_0x185cc2: ; 0x185cc2
	jumpstd smashrock
; 0x185cc5

MapBurnedTower1FSignpostItem0: ; 0x185cc5
	dw $0080
	db ETHER

; 0x185cc8

MapBurnedTower1FSignpostItem1: ; 0x185cc8
	dw $00ff
	db ULTRA_BALL

; 0x185ccb

ItemFragment_0x185ccb: ; 0x185ccb
	db HP_UP, 1
; 0x185ccd

MovementData_0x185ccd: ; 0x185ccd
	step_left
	step_end
; 0x185ccf

MovementData_0x185ccf: ; 0x185ccf
	step_right
	step_end
; 0x185cd1

MovementData_0x185cd1: ; 0x185cd1
	db $59 ; movement
	step_end
; 0x185cd3

MovementData_0x185cd3: ; 0x185cd3
	step_down
	step_left
	step_left
	step_left
	step_down
	step_end
; 0x185cd9

UnknownText_0x185cd9: ; 0x185cd9
	text $56, " ", $56, " ", $56

	para "<...>Oh, c'est toi."

	para "Je suis venu pour"
	line "trouver une sorte"

	para "de #MON légen-"
	line "daire<...>"

	para "Mais il n'y a"
	line "rien ici!"

	para "Venir dans ce trou"
	line "paumé et ne rien"

	para "trouver, j'ai"
	line "la rage!"

	para "Tout est de ta"
	line "faute!"
	done
; 0x185d9b

UnknownText_0x185d9b: ; 0x185d9b
	text "<...>Pfff!"

	para "Aucun intérêt."
	done
; 0x185de2

UnknownText_0x185de2: ; 0x185de2
	text "Peu importe."

	para "Comme si un raté"
	line "comme toi pouvait"

	para "capturer un #-"
	line "MON légendaire de"
	cont "toute façon."
	done
; 0x185e2c

UnknownText_0x185e2c: ; 0x185e2c
	text "<...>Pfff!"

	para "Quelle perte de"
	line "temps<...>"
	done
; 0x185e75

UnknownText_0x185e75: ; 0x185e75
	text "Pfff!"

	para "Tu tombes dans"
	line "les trous?"

	para "C'est bien, tu"
	line "sais où es ta"
	cont "place."
	done
; 0x185ecc

UnknownText_0x185ecc: ; 0x185ecc
	text "EUSINE: Mon nom"
	line "est EUSINE."

	para "Je poursuis un"
	line "#MON du nom de"
	cont "SUICUNE."

	para "Et tu es?"

	para "<PLAYER>? Ravi de"
	line "te connaître!"

	para "On racontre que"
	line "SUICUNE est dans"

	para "cette TOUR"
	line "CENDREE<...>"

	para "Mais où?"
	done
; 0x185f99

UnknownText_0x185f99: ; 0x185f99
	text "On racontre que"
	line "SUICUNE est dans"

	para "cette TOUR"
	line "CENDREE<...>"

	para "Mais où?"
	done
; 0x186002

UnknownText_0x186002: ; 0x186002
	text "MORTIMER: Le CHAM-"
	line "PION de ROSALIA"

	para "doit étudier les"
	line "#MON légen-"

	para "daires: SUICUNE,"
	line "ENTEI et RAIKOU."

	para "EUSINE est ici."
	line "J'ai décidé de"

	para "fouiller la TOUR"
	line "avec lui."
	done
; 0x1860b2

BurnedTower1F_MapEventHeader: ; 0x1860b2
	; filler
	db 0, 0

	; warps
	db 14
	warp_def $f, $9, 13, GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY
	warp_def $f, $a, 13, GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY
	warp_def $9, $a, 1, GROUP_BURNED_TOWER_B1F, MAP_BURNED_TOWER_B1F
	warp_def $5, $5, 1, GROUP_BURNED_TOWER_B1F, MAP_BURNED_TOWER_B1F
	warp_def $6, $5, 1, GROUP_BURNED_TOWER_B1F, MAP_BURNED_TOWER_B1F
	warp_def $6, $4, 1, GROUP_BURNED_TOWER_B1F, MAP_BURNED_TOWER_B1F
	warp_def $4, $f, 2, GROUP_BURNED_TOWER_B1F, MAP_BURNED_TOWER_B1F
	warp_def $5, $f, 2, GROUP_BURNED_TOWER_B1F, MAP_BURNED_TOWER_B1F
	warp_def $7, $a, 3, GROUP_BURNED_TOWER_B1F, MAP_BURNED_TOWER_B1F
	warp_def $e, $5, 4, GROUP_BURNED_TOWER_B1F, MAP_BURNED_TOWER_B1F
	warp_def $e, $4, 4, GROUP_BURNED_TOWER_B1F, MAP_BURNED_TOWER_B1F
	warp_def $e, $e, 5, GROUP_BURNED_TOWER_B1F, MAP_BURNED_TOWER_B1F
	warp_def $e, $f, 5, GROUP_BURNED_TOWER_B1F, MAP_BURNED_TOWER_B1F
	warp_def $f, $7, 6, GROUP_BURNED_TOWER_B1F, MAP_BURNED_TOWER_B1F

	; xy triggers
	db 1
	xy_trigger 1, $9, $b, $0, UnknownScript_0x185c25, $0, $0

	; signposts
	db 2
	signpost 7, 8, $7, MapBurnedTower1FSignpostItem0
	signpost 11, 13, $7, MapBurnedTower1FSignpostItem1

	; people-events
	db 5
	person_event SPRITE_ROCK, 8, 19, $18, 0, 0, -1, -1, 0, 0, 0, RockScript_0x185cc2, -1
	person_event SPRITE_SUPER_NERD, 16, 16, $3, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, SuperNerdScript_0x185cbc, EVENT_EUSINE_IN_BURNED_TOWER_1F
	person_event SPRITE_SILVER, 13, 12, $8, 0, 0, -1, -1, 0, 2, 3, ObjectEvent, EVENT_SILVER_IN_BURNED_TOWER
	person_event SPRITE_MORTY, 18, 18, $2, 1, 1, -1, -1, 8 + PAL_OW_BROWN, 0, 0, MortyScript_0x185cbf, EVENT_MORTY_IN_BURNED_TOWER_1F
	person_event SPRITE_POKE_BALL, 6, 18, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x185ccb, EVENT_ITEM_BURNED_TOWER_F1_HP_UP
; 0x186151

