VermilionCityRB_MapScriptHeader: ; 0x1aa97a
	; trigger count
	db 3

	; triggers

	dw .Trigger0, 0
	dw .Trigger1, 0
	dw .Trigger2, 0

	db 1
	dbw 5, .Callback
.Trigger0
	end
.Trigger1
	end
.Trigger2
	end

.Callback
	checktriggers
	if_not_equal 2, .reset
	dotrigger $1
	jump .finish
.reset
	dotrigger $0
.finish
	return

VermilionCityRBSailor1Script:
	faceplayer
	loadfont
	checktriggers
	iffalse VermilionCityTicketScanContinueScript
	writetext _SSAnneWelcomeText4
	waitbutton
	closetext
	end

VermilionCityTicketScanTriggerScript:
	spriteface $0, RIGHT
	spriteface $4, LEFT
	loadfont
VermilionCityTicketScanContinueScript:
	writetext _SSAnneWelcomeText9
	buttonsound
	checkitem S_S_TICKET
	iffalse .dont_have_ticket
	writetext _SSAnneFlashedTicketText
	waitbutton
	closetext
	dotrigger 1
	end

.dont_have_ticket
	writetext _SSAnneNoTicketText
	waitbutton
	closetext
	spriteface $4, UP
	applymovement $0, Movement_VermilionPlayerStepsUp
	end

VermilionCityRBMachopScript:
	loadfont
	writetext _VermilionCityText5
	cry MACHOP
	closetext
	earthquake 30
	loadfont
	writetext _VermilionCityText14
	waitbutton
	closetext
	end

VermilionCityRBTeacherScript:
	jumptextfaceplayer _VermilionCityText1

VermilionCityRBGramps1Script:
	jumptextfaceplayer _VermilionCityText_198a7

VermilionCityRBGramps2Script:
	jumptextfaceplayer _VermilionCityText4

VermilionCityRBSailor2Script:
	jumptextfaceplayer _VermilionCityText6

VermilionCityRBPokeCenterSignScript:
	jumpstd pokecentersign

VermilionCityRBPokemartSignScript:
	jumpstd martsign

VermilionCityRBCityDescScript:
	jumptext _VermilionCityText7

VermilionCityRBFanClubSignScript:
	jumptext _VermilionCityText11

VermilionCityRBGymSignScript:
	jumptext _VermilionCityText12

VermilionCityRBPortSignScript:
	jumptext _VermilionCityText13

VermilionCityRBDiglettsCaveScript:
	jumptext _VermilionCityText15

Movement_VermilionPlayerStepsUp:
	step_up
	turn_head_down
	step_end

_VermilionCityText1:
	text "On fait attention"
	line "à la pollution!"

	para "Les TADMORV se"
	line "multiplient dans"
	cont "les déchets."
	done

_VermilionCityText_198a7:
	text "As-tu vu l'OCEANE"
	line "amarré au port?"
	done

_SSAnneWelcomeText4:
	text "Bienvenue sur"
	line "l'OCEANE!"
	done

_SSAnneWelcomeText9:
	text "Bienvenue sur"
	line "l'OCEANE!"

	para "Excusez moi, vous"
	line "avez un ticket?"
	done

_SSAnneFlashedTicketText:
	text "<PLAYER> crâne avec"
	line "son PASSE BATEAU!"

	para "Super! Bienvenue"
	line "sur l'OCEANE!"
	done

_SSAnneNoTicketText:
	text "<PLAYER> n'a pas"
	line "le PASSE BATEAU!"

	para "Désolé!"

	para "Il faut un ticket"
	line "pour monter."
	done

_VermilionCityText4:
	text "Je vais construire"
	line "un bâtiment ici."

	para "Mon #MON"
	line "prépare le"
	cont "terrain."
	done

_VermilionCityText5:
	text "MACHOC: Cho!"
	line "Chochoc!"
	done

_VermilionCityText14:
	text "Un MACHOC façonne"
	line "le terrain."
	done

_VermilionCityText6:
	text "L'OCEANE est un"
	line "paquebot de luxe."

	para "On visite CARMIN"
	line "SUR MER une fois"
	cont "par an."
	done

_VermilionCityText7:
	text "CARMIN SUR MER"
	line "Le port des cré-"
	cont "puscules excquis."
	done

_VermilionCityText11:
	text "FAN CLUB #MON"
	line "Tout les fans de"
	cont "#MON sont la"
	cont "bienvenue!"
	done

_VermilionCityText12:
	text "CARMIN SUR MER"
	line "ARENE #MON"
	cont "CHAMPION:"
	cont "MAJOR BOB"

	para "L'américain"
	line "électrique!"
	done

_VermilionCityText13:
	text "PORT DE CARMIN"
	line "SUR MER"
	done

_VermilionCityText15:
	text "CAVE TAUPIQUEUR"
	done

VermilionCityRB_MapEventHeader: ; 0x1aae77
	; filler
	db 0, 0

	; warps
	db 9
	warp_def  3,  7, 1, GROUP_VERMILION_HOUSE_FISHING_SPEECH_HOUSE_RB, MAP_VERMILION_HOUSE_FISHING_SPEECH_HOUSE_RB
	warp_def  3, 11, 1, GROUP_VERMILION_POKECENTER_1F_RB, MAP_VERMILION_POKECENTER_1F_RB
	warp_def 13,  9, 1, GROUP_POKEMON_FAN_CLUB_RB, MAP_POKEMON_FAN_CLUB_RB
	warp_def 13, 15, 1, GROUP_VERMILION_MAGNET_TRAIN_SPEECH_HOUSE_RB, MAP_VERMILION_MAGNET_TRAIN_SPEECH_HOUSE_RB
	warp_def 13, 23, 2, GROUP_VERMILION_MART_RB, MAP_VERMILION_MART_RB
	warp_def 19, 23, 1, GROUP_VERMILION_HOUSE_DIGLETTS_CAVE_SPEECH_HOUSE_RB, MAP_VERMILION_HOUSE_DIGLETTS_CAVE_SPEECH_HOUSE_RB
	warp_def 31, 18, 1, GROUP_VERMILION_DOCK, MAP_VERMILION_DOCK
	warp_def 31, 19, 2, GROUP_VERMILION_DOCK, MAP_VERMILION_DOCK
	warp_def  7, 36, 1, GROUP_DIGLETTS_CAVE_RB, MAP_DIGLETTS_CAVE_RB

	; xy triggers
	db 1
	xy_trigger 0, 30, 18, $0, VermilionCityTicketScanTriggerScript, 0, 0

	; signposts
	db 7
	signpost  3, 12, $0, VermilionCityRBPokeCenterSignScript
	signpost 13, 24, $0, VermilionCityRBPokemartSignScript
	signpost  3, 27, $0, VermilionCityRBCityDescScript
	signpost 13,  7, $0, VermilionCityRBFanClubSignScript
	signpost 19,  7, $0, VermilionCityRBGymSignScript
	signpost 15, 29, $0, VermilionCityRBPortSignScript
	signpost  9, 37, $0, VermilionCityRBDiglettsCaveScript

	; people-events
	db 6
	person_event SPRITE_TEACHER, 11, 23, $2, 2, 2, -1, -1, 8 + PAL_OW_BLUE, 0, 0, VermilionCityRBTeacherScript, -1
	person_event SPRITE_GRAMPS,  10, 18, $3, 0, 0, -1, -1, 0, 0, 0, VermilionCityRBGramps1Script, -1
	person_event SPRITE_SAILOR,  34, 23, $7, 0, 0, -1, -1, 0, 0, 0, VermilionCityRBSailor1Script, -1
	person_event SPRITE_GRAMPS,  11, 34, $3, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, VermilionCityRBGramps2Script, -1
	person_event SPRITE_MACHOP,  13, 33, $16, 0, 0, -1, -1, 0, 0, 0, VermilionCityRBMachopScript, -1
	person_event SPRITE_SAILOR,  31, 29, $5, 0, 2, -1, -1, 0, 0, 0, VermilionCityRBSailor2Script, -1
; 0x1aaf25

