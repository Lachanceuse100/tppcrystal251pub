CianwoodPokeCenter1F_MapScriptHeader: ; 0x9dbcd
	; trigger count
	db 0

	; callback count
	db 0
; 0x9dbcf

NurseScript_0x9dbcf: ; 0x9dbcf
	jumpstd pokecenternurse
; 0x9dbd2

LassScript_0x9dbd2: ; 0x9dbd2
	jumptextfaceplayer UnknownText_0x9dbed
; 0x9dbd5

CianwoodGymGuyScript: ; 0x9dbd5
	faceplayer
	checkevent EVENT_BEAT_CHUCK
	iftrue .CianwoodGymGuyWinScript
	loadfont
	writetext CianwoodGymGuyText
	waitbutton
	closetext
	end

.CianwoodGymGuyWinScript
	loadfont
	writetext CianwoodGymGuyWinText
	waitbutton
	closetext
	end
; 0x9dbea

SuperNerdScript_0x9dbea: ; 0x9dbea
	jumptextfaceplayer UnknownText_0x9ded7
; 0x9dbed

UnknownText_0x9dbed: ; 0x9dbed
	text "As-tu rencontré le"
	line "#MANIAC?"

	para "Il se vante sans"
	line "cesse de ses"
	cont "#MON rares."
	done
; 0x9dc33

CianwoodGymGuyText: ; 0x9dc33
	text "Les dresseurs de"
	line "l'ARENE sont des"
	cont "grosses brutes."

	para "Je veux pas qu'ils"
	line "s'en prennent à"
	cont "moi."

	para "Un conseil: le"
	line "CHAMPION utilise"
	cont "le type COMBAT."

	para "Confronte le avec"
	line "des #MON du"
	cont "type PSY."

	para "Mets son équipe"
	line "K.O. avant qu'elle"

	para "n'utilise sa"
	line "force physique."

	para "Et les rochers au"
	line "milieu de l'ARENE?"

	para "Bouge-les correc-"
	line "tement ou tu"

	para "n'atteindras pas"
	line "le CHAMPION."

	para "Si tu es bloqué,"
	line "sors."
	done
; 0x9ddc5

CianwoodGymGuyWinText: ; 0x9ddc5
	text "<PLAYER>!"
	line "Tu as gagné!"

	para "Je le savais rien"
	line "qu'en te voyant!"
	done
; 0x9ddf2

UnknownText_0x9ddf2: ; 0x9ddf2
	text "Tu n'as jamais ce"
	line "besoin de montrer"

	para "tes #MON à tes"
	line "amis?"

	para "J'aimerais pouvoir"
	line "montrer le #MON"

	para "que j'ai élevé à"
	line "mon pote de"
	cont "MAUVILLE."
	done
; 0x9de66

;UnknownText_0x9de66: ; 0x9de66
;	text "I've been battling" mobile and unrefernced
;	line "my pal in VIOLET"

;	para "using a MOBILE"
;	line "ADAPTER link."

;	para "I'm down 5-7"
;	line "against him. I've"
;	cont "gotta crank it up!"
;	done
; 0x9ded7

UnknownText_0x9ded7: ; 0x9ded7
	text "J'adore frimer"
	line "avec mes #MON."

	para "Et toi?"
	line "C'est ton truc?"

	para "Je vais faire"
	line "plein de combats"

	para "et frimer avec"
	line "mes jolis #MON!"
	done
; 0x9df4e

CianwoodPokeCenter1F_MapEventHeader: ; 0x9df4e
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $7, $3, 3, GROUP_CIANWOOD_CITY, MAP_CIANWOOD_CITY
	warp_def $7, $4, 3, GROUP_CIANWOOD_CITY, MAP_CIANWOOD_CITY
	warp_def $7, $0, 1, GROUP_POKECENTER_2F, MAP_POKECENTER_2F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 4
	person_event SPRITE_NURSE, 5, 7, $6, 0, 0, -1, -1, 0, 0, 0, NurseScript_0x9dbcf, -1
	person_event SPRITE_LASS, 9, 5, $4, 1, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, LassScript_0x9dbd2, -1
	person_event SPRITE_GYM_GUY, 7, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, CianwoodGymGuyScript, -1
	person_event SPRITE_SUPER_NERD, 10, 12, $5, 0, 1, -1, -1, 8 + PAL_OW_BLUE, 0, 0, SuperNerdScript_0x9dbea, -1
; 0x9df97

