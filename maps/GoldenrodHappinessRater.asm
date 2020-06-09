GoldenrodHappinessRater_MapScriptHeader: ; 0x54951
	; trigger count
	db 0

	; callback count
	db 0
; 0x54953

TeacherScript_0x54953: ; 0x54953
	faceplayer
	loadfont
	special Function718d
	writetext UnknownText_0x549a3
	buttonsound
	if_greater_than $fe, UnknownScript_0x54973
	if_greater_than $c7, UnknownScript_0x54979
	if_greater_than $95, UnknownScript_0x5497f
	if_greater_than $63, UnknownScript_0x54985
	if_greater_than $31, UnknownScript_0x5498b
	if_greater_than $00, UnknownScript_0x54991
	jump UnknownScript_0x54991_2
; 0x54973

UnknownScript_0x54973: ; 0x54973
	writetext UnknownText_0x549fc
	waitbutton
	closetext
	end
; 0x54979

UnknownScript_0x54979: ; 0x54979
	writetext UnknownText_0x54a2c
	waitbutton
	closetext
	end
; 0x5497f

UnknownScript_0x5497f: ; 0x5497f
	writetext UnknownText_0x54a5a
	waitbutton
	closetext
	end
; 0x54985

UnknownScript_0x54985: ; 0x54985
	writetext UnknownText_0x54a8e
	waitbutton
	closetext
	end
; 0x5498b

UnknownScript_0x5498b: ; 0x5498b
	writetext UnknownText_0x54a9f
	waitbutton
	closetext
	end
; 0x54991

UnknownScript_0x54991: ; 0x54991
	writetext UnknownText_0x54ad1
	waitbutton
	closetext
	end
; 0x54997

UnknownScript_0x54991_2:
	writetext UnknownText_0x54ad1_2
	waitbutton
	closetext
	end

PokefanMScript_0x54997: ; 0x54997
	jumptextfaceplayer UnknownText_0x54b04
; 0x5499a

TwinScript_0x5499a: ; 0x5499a
	jumptextfaceplayer UnknownText_0x54b67
; 0x5499d

MapGoldenrodHappinessRaterSignpost1Script: ; 0x5499d
	jumpstd difficultbookshelf
; 0x549a0

MapGoldenrodHappinessRaterSignpost2Script: ; 0x549a0
	jumpstd radio2
; 0x549a3

UnknownText_0x549a3: ; 0x549a3
	text "Si tu traites ton"
	line "#MON avec"

	para "amour, ils te le"
	line "rendront bien."

	para "Oh? Montre-moi"
	line "ton @"
	text_from_ram StringBuffer3
	text "<...>"
	done
; 0x549fc

UnknownText_0x549fc: ; 0x549fc
	text "Il a l'air très"
	line "content! Il doit"
	cont "t'aimer"
	cont "énormément!"
	done
; 0x54a2c

UnknownText_0x54a2c: ; 0x54a2c
	text "Je crois qu'il te"
	line "fait vraiment"
	cont "confiance."
	done
; 0x54a5a

UnknownText_0x54a5a: ; 0x54a5a
	text "Il est amical."
	line "Il a l'air à"
	cont "l'aise avec toi."
	done
; 0x54a8e

UnknownText_0x54a8e: ; 0x54a8e
	text "Il est mignon."
	done
; 0x54a9f

UnknownText_0x54a9f: ; 0x54a9f
	text "Tu devrais mieux"
	line "le traiter. C'est"
	cont "pour ton bien"
	done
; 0x54ad1

UnknownText_0x54ad1: ; 0x54ad1
	text "Il ne t'aime vrai-"
	line "ment pas beaucoup."
	done
; 0x54b04

UnknownText_0x54ad1_2: ; 0x54ad1
	text "Il te déteste."
	done
; 0x54b04

UnknownText_0x54b04: ; 0x54b04
	text "je ne fais que"
	line "perdre les combats"

	para "avec mes #MON,"
	line "ils sont tout le"
	cont "temps K.O<...>" 

	para "C'est peut-être"
	line "pour ça que mes"
	cont "#MON ne"
	cont "m'aiment pas trop!"
	done
; 0x54b67

UnknownText_0x54b67: ; 0x54b67
	text "Lorsque j'utilise"
	line "un objet sur mes"
	cont "#MON, ils ont"
	cont "l'air content!"
	done
; 0x54b9c

GoldenrodHappinessRater_MapEventHeader: ; 0x54b9c
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 3, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY
	warp_def $7, $3, 3, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY

	; xy triggers
	db 0

	; signposts
	db 3
	signpost 1, 0, $0, MapGoldenrodHappinessRaterSignpost1Script
	signpost 1, 1, $0, MapGoldenrodHappinessRaterSignpost1Script
	signpost 1, 7, $0, MapGoldenrodHappinessRaterSignpost2Script

	; people-events
	db 3
	person_event SPRITE_TEACHER, 8, 6, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, TeacherScript_0x54953, -1
	person_event SPRITE_POKEFAN_M, 7, 9, $8, 0, 0, -1, -1, 0, 0, 0, PokefanMScript_0x54997, -1
	person_event SPRITE_TWIN, 10, 9, $5, 0, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, TwinScript_0x5499a, -1
; 0x54be2

