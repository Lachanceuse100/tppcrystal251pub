KrissNeighborsHouse_MapScriptHeader: ; 0x7acec
	; trigger count
	db 0

	; callback count
	db 0
; 0x7acee

CooltrainerFScript_0x7acee: ; 0x7acee
	jumptextfaceplayer UnknownText_0x7ad2f
; 0x7acf1

PokefanFScript_0x7acf1: ; 0x7acf1
	jumptextfaceplayer UnknownText_0x7add4
; 0x7acf4

MapKrissNeighborsHouseSignpost1Script: ; 0x7acf4
	jumpstd magazinebookshelf
; 0x7acf7

MapKrissNeighborsHouseSignpost2Script: ; 0x7acf7
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue UnknownScript_0x7ad24
	checkevent EVENT_LISTENED_TO_RADIO_IN_NEIGHBORS_HOUSE
	iftrue UnknownScript_0x7ad27
	playmusic MUSIC_POKEMON_TALK
	loadfont
	writetext UnknownText_0x7ae3b
	pause 45
	writetext UnknownText_0x7ae6c
	pause 45
	writetext UnknownText_0x7ae7b
	pause 45
	musicfadeout $003c, $10
	writetext UnknownText_0x7ae9b
	pause 45
	closetext
	setevent EVENT_LISTENED_TO_RADIO_IN_NEIGHBORS_HOUSE
	end
; 0x7ad24

UnknownScript_0x7ad24: ; 0x7ad24
	jumpstd radio1
; 0x7ad27

UnknownScript_0x7ad27: ; 0x7ad27
	loadfont
	writetext UnknownText_0x7ae9b
	pause 45
	closetext
	end
; 0x7ad2f

UnknownText_0x7ad2f: ; 0x7ad2f
	text "J'ai appris que"
	line "PIKACHU est un"
	cont "#MON évolué."

	; para "I also heared"
	; line "some people"
	; cont "call it PIKAQ."

	para "<...><...>"

	para "Si j'étais un"
	line "grand scientifique"
	cont "comme PROF.ORME<...>"
	done
; 0x7add4

UnknownText_0x7add4: ; 0x7add4
	para "Ma fille veux de-"
	line "venir l'assistante"

	para "du PROF.ORME."

	para "Elle aime les"
	line "#MON!"

	para "Enfin, moi aussi!"
	done
; 0x7ae3b

UnknownText_0x7ae3b: ; 0x7ae3b
	text "La CHRONIQUE #-"
	line "MON reviens"
	cont "tout à l'heure!"
	done
; 0x7ae6c

UnknownText_0x7ae6c: ; 0x7ae6c
	text "CHAINE #MON!"
	done
; 0x7ae7b

UnknownText_0x7ae7b: ; 0x7ae7b
	text "Je suis DJ LULA,"
	line "votre"
	cont "co-animatrice!"
	done
; 0x7ae9b

UnknownText_0x7ae9b: ; 0x7ae9b
	text "#MON!"
	line "CHAINE #MON<...>"
	done
; 0x7aeb0

KrissNeighborsHouse_MapEventHeader: ; 0x7aeb0
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 3, GROUP_NEW_BARK_TOWN, MAP_NEW_BARK_TOWN
	warp_def $7, $3, 3, GROUP_NEW_BARK_TOWN, MAP_NEW_BARK_TOWN

	; xy triggers
	db 0

	; signposts
	db 3
	signpost 1, 0, $0, MapKrissNeighborsHouseSignpost1Script
	signpost 1, 1, $0, MapKrissNeighborsHouseSignpost1Script
	signpost 1, 7, $0, MapKrissNeighborsHouseSignpost2Script

	; people-events
	db 2
	person_event SPRITE_COOLTRAINER_F, 7, 6, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, CooltrainerFScript_0x7acee, -1
	person_event SPRITE_POKEFAN_F, 7, 9, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, PokefanFScript_0x7acf1, EVENT_NEIGHBOR_IN_HER_HOUSE
; 0x7aee9

