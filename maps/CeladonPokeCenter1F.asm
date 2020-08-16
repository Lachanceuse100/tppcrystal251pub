CeladonPokeCenter1F_MapScriptHeader: ; 0x71e20
	; trigger count
	db 0

	; callback count
	db 0
; 0x71e22

NurseScript_0x71e22: ; 0x71e22
	jumpstd pokecenternurse
; 0x71e25

GentlemanScript_0x71e25: ; 0x71e25
	jumpstd happinesschecknpc
; 0x71e28

CooltrainerFScript_0x71e28: ; 0x71e28
	jumptextfaceplayer UnknownText_0x71e70
; 0x71e2b

PharmacistScript_0x71e2b: ; 0x71e2b
	jumptextfaceplayer UnknownText_0x71ec1
; 0x71e2e

SuperNerdScript_0x71e2e: ; 0x71e2e
	faceplayer
	loadfont
	writetext UnknownText_0x71f22
	buttonsound
	writebyte SUICUNE
	special SpecialMonCheck
	iffalse UnknownScript_0x71e46
	special SpecialBeastsCheck
	iftrue UnknownScript_0x71e48
	writetext UnknownText_0x7201a
	waitbutton
UnknownScript_0x71e46: ; 0x71e46
	closetext
	end
; 0x71e48

UnknownScript_0x71e48: ; 0x71e48
	writetext UnknownText_0x71f65
	waitbutton
	closetext
	checkcode VAR_FACING
	if_equal $1, UnknownScript_0x71e5a
	applymovement $6, MovementData_0x71e6b
	jump UnknownScript_0x71e5e
; 0x71e5a

UnknownScript_0x71e5a: ; 0x71e5a
	applymovement $6, MovementData_0x71e65
UnknownScript_0x71e5e: ; 0x71e5e
	disappear $6
	playsound SFX_EXIT_BUILDING
	waitsfx
	end
; 0x71e65

MovementData_0x71e65: ; 0x71e65
	step_left
	step_down
	step_down
	step_down
	step_down
	step_end
; 0x71e6b

MovementData_0x71e6b: ; 0x71e6b
	step_down
	step_down
	step_down
	step_down
	step_end
; 0x71e70

UnknownText_0x71e70: ; 0x71e70
	text "ERIKA est la"
	line "maîtresse des"
	cont "#MON PLANTES."

	para "Fais attention ou"
	line "tu le regretteras."
	done
; 0x71ec1

UnknownText_0x71ec1: ; 0x71ec1
	text "La planque de la"
	line "TEAM ROCKET est au"

	para "sous-sol du"
	line "CASINO."

	para "Attends<...> C'était"
	line "il y a 3 mois, ça."
	done
; 0x71f22

UnknownText_0x71f22: ; 0x71f22
	text "EUSINE: Salut!"

	para "Je reviens visiter"
	line "ma ville natale."

	para "Ca faisait un"
	line "moment!"
	done
; 0x71f65

UnknownText_0x71f65: ; 0x71f65
	text "<PLAYER>, tu es au"
	line "courant?"

	para "Des rumeurs cou-"
	line "rent qu'un #MON"

	para "arc-en-ciel est"
	line "apparue à la TOUR"
	cont "FERAILLE."

	para "Je viens de soi-"
	line "gner mon équipe et"

	para "je vais partir"
	line "pour ROSALIA."

	para "A plus tard,"
	line "<PLAYER>!"
	done
; 0x7201a

UnknownText_0x7201a: ; 0x7201a
	text "Oh, au fait,"
	line "<PLAYER>."

	para "As-tu capturé les"
	line "#MON légen-"

	para "daires RAIKOU et"
	line "ENTEI?"

	para $56, $56, $56

	para "D'accord<...>"

	para "Si tu en attrapes"
	line "un, j'espère que"
	cont "tu me le diras."

	para "Je compte sur toi,"
	line "<PLAYER>!"
	done
; 0x720b8

CeladonOldCenter_LinkScript:
	jumpstd pokecenteroldlink
	
CeladonPokeCenter1F_MapEventHeader: ; 0x720b8
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $7, $5, 5, GROUP_CELADON_CITY, MAP_CELADON_CITY
	warp_def $7, $6, 5, GROUP_CELADON_CITY, MAP_CELADON_CITY
	warp_def $7, $2, 1, GROUP_POKECENTER_2F, MAP_POKECENTER_2F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 6
	person_event SPRITE_NURSE, 5, 9, $6, 0, 0, -1, -1, 0, 0, 0, NurseScript_0x71e22, -1
	person_event SPRITE_GENTLEMAN, 7, 13, $5, 0, 1, -1, -1, 0, 0, 0, GentlemanScript_0x71e25, -1
	person_event SPRITE_PHARMACIST, 8, 6, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, PharmacistScript_0x71e2b, -1
	person_event SPRITE_COOLTRAINER_F, 10, 16, $5, 0, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, CooltrainerFScript_0x71e28, -1
	person_event SPRITE_SUPER_NERD, 9, 6, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, SuperNerdScript_0x71e2e, EVENT_SET_WHEN_FOUGHT_HO_OH
	person_event SPRITE_LINK_RECEPTIONIST, 6, 17, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, CeladonOldCenter_LinkScript, -1
; 0x7210e

