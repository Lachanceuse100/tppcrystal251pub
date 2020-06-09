EcruteakPokeCenter1F_MapScriptHeader: ; 0x98e55
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x98e5f, $0000
	dw UnknownScript_0x98e63, $0000

	; callback count
	db 0
; 0x98e5f

UnknownScript_0x98e5f: ; 0x98e5f
	priorityjump UnknownScript_0x98e64
	end
; 0x98e63

UnknownScript_0x98e63: ; 0x98e63
	end
; 0x98e64

UnknownScript_0x98e64: ; 0x98e64
	pause 30
	playsound SFX_EXIT_BUILDING
	appear $6
	waitsfx
	applymovement $6, MovementData_0x98ec5
	applymovement $0, MovementData_0x98ed4
	spriteface $2, $1
	pause 10
	spriteface $2, $0
	pause 30
	spriteface $2, $1
	pause 10
	spriteface $2, $0
	pause 20
	spriteface $6, $0
	pause 10
	loadfont
	writetext UnknownText_0x98ed8
	buttonsound
	jump UnknownScript_0x98e95
; 0x98e95

UnknownScript_0x98e95: ; 0x98e95
	writetext UnknownText_0x98f22
	waitbutton
	closetext
	spriteface $0, $0
	applymovement $6, MovementData_0x98ece
	playsound SFX_EXIT_BUILDING
	disappear $6
	clearevent EVENT_BILL_IN_GOLDENROD_BILLS_HOUSE
	setflag ENGINE_TIME_CAPSULE
	dotrigger $1
	waitsfx
	end
; 0x98eb0

NurseScript_0x98eb0: ; 0x98eb0
	jumpstd pokecenternurse
; 0x98eb3

PokefanMScript_0x98eb3: ; 0x98eb3
	special Function10630f
	iftrue UnknownScript_0x98ebc
	jumptextfaceplayer UnknownText_0x99155
; 0x98ebc

UnknownScript_0x98ebc: ; 0x98ebc
	jumptextfaceplayer UnknownText_0x991aa
; 0x98ebf

CooltrainerFScript_0x98ebf: ; 0x98ebf
	jumptextfaceplayer UnknownText_0x99240
; 0x98ec2

GymGuyScript_0x98ec2: ; 0x98ec2
	jumptextfaceplayer UnknownText_0x99286
; 0x98ec5

MovementData_0x98ec5: ; 0x98ec5
	step_up
	step_up
	step_up
	step_up
	step_right
	step_right
	step_right
	turn_head_up
	step_end
; 0x98ece

MovementData_0x98ece: ; 0x98ece
	step_right
	step_down
	step_down
	step_down
	step_down
	step_end
; 0x98ed4

MovementData_0x98ed4: ; 0x98ed4
	step_up
	step_up
	step_up
	step_end
; 0x98ed8

UnknownText_0x98ed8: ; 0x98ed8
	text "Salut, je suis"
	line "LEO. Et toi qui"
	cont "es-tu?"

	para "<PLAYER>, hein?"
	line "Tu arrives au bon"
	cont "moment."
	done
; 0x98f22

UnknownText_0x98f22: ; 0x98f22
	text "Je viens de finir"
	line "les derniers ré-"
	cont "glages du BLOC"
	cont "TEMPOREL."

	para "Tu sais que les"
	line "#MON peuvent"
	cont "être échangés?"

	para "Mon BLOC TEMPOREL"
	line "a été mis au point"

	para "pour faire des"
	line "échanges dans le"
	cont "temps."

	para "Mais tu ne peux"
	line "pas échanger des"

	para "choses qui"
	line "n'existaient pas"
	cont "dans le passé."

	para "Si tu le fais, le"
	line "PC du passé sera"
	cont "court-circuité."

	para "Tu dois donc en-"
	line "lever tout ce qui"

	para "n'appartient pas"
	line "au passé."

	para "En clair, pas de"
	line "nouvelles attaques"

	para "ou de nouveaux"
	line "#MON par le"
	cont "BLOC TEMPOREL."

	para "Ne t'en fais pas."
	line "J'ai fini les"
	cont "derniers ajuste-"
	cont "ments."

	para "Demain, les BLOCS"
	line "TEMPORELS seront"

	para "dans tous les"
	line "CENTRES #MON."

	para "Bon, je dois vite"
	line "rentre à DOUBLON-"
	cont "VILLE pour voir"
	cont "mes parents."

	para "Tchao!"
	done
; 0x99155

UnknownText_0x99155: ; 0x99155
	text "La façon dont les"
	line "KIMONO dansent est"
	cont "merveilleuse."

	para "Comme lorsqu'elles"
	line "utilisent leurs"
	cont "#MON."
	done
; 0x991aa

UnknownText_0x991aa: ; 0x991aa
	text "Tu cherches des"
	line "nouveaux défis?"

	para "On dit qu'il y a"
	line "un endroit à OLI-"

	para "VILLE ou les"
	line "dresseurs se"
	cont "rassemblent."
	done
; 0x99240

UnknownText_0x99240: ; 0x99240
	text "MORTIMER, le"
	line "CHAMPION d'ARENE"
	cont "est trop cool."

	para "Ses #MON sont"
	line "trop forts."
	done
; 0x99286

UnknownText_0x99286: ; 0x99286
	text "Le LAC COLERE<...>"

	para "L'apparition d'un"
	line "nid de LEVIATOR<...>"

	para "Ca sent la conspi-"
	line "ration! C'est sûr!"
	done
; 0x992dc

EcruteakPokeCenter1F_MapEventHeader: ; 0x992dc
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $7, $3, 6, GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY
	warp_def $7, $4, 6, GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY
	warp_def $7, $0, 1, GROUP_POKECENTER_2F, MAP_POKECENTER_2F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 5
	person_event SPRITE_NURSE, 5, 7, $6, 0, 0, -1, -1, 0, 0, 0, NurseScript_0x98eb0, -1
	person_event SPRITE_POKEFAN_M, 10, 11, $a, 0, 0, -1, -1, 0, 0, 0, PokefanMScript_0x98eb3, -1
	person_event SPRITE_COOLTRAINER_F, 8, 5, $3, 0, 0, -1, -1, 0, 0, 0, CooltrainerFScript_0x98ebf, -1
	person_event SPRITE_GYM_GUY, 5, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, GymGuyScript_0x98ec2, -1
	person_event SPRITE_BILL, 11, 4, $9, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_BILL_IN_ECRUTEAK_POKECENTER_1F
; 0x99332

