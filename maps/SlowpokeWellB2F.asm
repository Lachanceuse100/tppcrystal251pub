SlowpokeWellB2F_MapScriptHeader: ; 0x5ad09
	; trigger count
	db 0

	; callback count
	db 0
; 0x5ad0b

GymGuyScript_0x5ad0b: ; 0x5ad0b
	faceplayer
	loadfont
	checkevent EVENT_GOT_KINGS_ROCK_IN_SLOWPOKE_WELL
	iftrue UnknownScript_0x5ad22
	writetext UnknownText_0x5ad2a
	buttonsound
	verbosegiveitem KINGS_ROCK, 1
	iffalse UnknownScript_0x5ad20
	setevent EVENT_GOT_KINGS_ROCK_IN_SLOWPOKE_WELL
UnknownScript_0x5ad20: ; 0x5ad20
	closetext
	end
; 0x5ad22

UnknownScript_0x5ad22: ; 0x5ad22
	writetext UnknownText_0x5adf2
	waitbutton
	closetext
	end
; 0x5ad28

ItemFragment_0x5ad28: ; 0x5ad28
	db TM_CURSE, 1
; 0x5ad2a

UnknownText_0x5ad2a: ; 0x5ad2a
	text "J'attends le mo-"
	line "ment de l'évolu-"
	cont "tion de RAMOLOSS."

	para "Avec de l'observa-"
	line "tion, j'ai fait"
	cont "une nouvelle"
	cont "découverte."

	para "Un RAMOLOSS avec"
	line "une ROCHE ROYALE"

	para "est souvent mordu"
	line "par un KOKIYAS."

	para "Tiens, en voilà"
	line "une pour toi."
	done
; 0x5adf2

UnknownText_0x5adf2: ; 0x5adf2
	text "Je serai comme"
	line "RAMOLOSS."

	para "Je serais patient"
	line "et j'en verrais un"
	cont "évoluer."
	done
; 0x5ae40

SlowpokeWellB2F_MapEventHeader: ; 0x5ae40
	; filler
	db 0, 0

	; warps
	db 1
	warp_def $b, $9, 2, GROUP_SLOWPOKE_WELL_B1F, MAP_SLOWPOKE_WELL_B1F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 2
	person_event SPRITE_GYM_GUY, 8, 9, $2, 2, 1, -1, -1, 0, 0, 1, GymGuyScript_0x5ad0b, -1
	person_event SPRITE_POKE_BALL, 9, 19, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x5ad28, EVENT_ITEM_SLOWPOKE_WELL_B2F_TM_CURSE
; 0x5ae65

