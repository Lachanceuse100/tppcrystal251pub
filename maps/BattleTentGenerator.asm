BattleTentGenerator_MapScriptHeader:
	; triggers
	db 0

	; callbacks
	db 2

	dbw 1, MapBattleTentGeneratorSwitchScript5
	dbw 2, RocketHideout_TurnOnLights

; <scripts go here>
MapBattleTentGeneratorSwitchScript5:
	checkevent EVENT_TURNED_ON_BATTLE_TENT_GENERATOR
	iffalse MapBattleTentGeneratorSwitchScript8
	changeblock $a, $b, $7
	changeblock $a, $c, $7
MapBattleTentGeneratorSwitchScript8:
	return

MapBattleTentGeneratorSwitchScript1:
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iffalse MapBattleTentGeneratorSwitchScript4
	playsound SFX_BOOT_PC
	loadfont
	checkevent EVENT_TURNED_ON_BATTLE_TENT_GENERATOR
	iftrue MapBattleTentGeneratorSwitchScript3
	writetext MapBattleTentGeneratorSwitchText1
	yesorno
	iffalse MapBattleTentGeneratorSwitchScript7
	playsound SFX_PUSH_BUTTON
	waitsfx
	closetext
	changeblock $a, $b, $7
	changeblock $a, $c, $7
	loadvar TimeOfDayPal, 1
	special Function1047eb
	playsound SFX_ENTER_DOOR
	loadfont
	writetext MapBattleTentGeneratorSwitchText2
	setevent EVENT_TURNED_ON_BATTLE_TENT_GENERATOR
MapBattleTentGeneratorSwitchScript2:
	waitbutton
MapBattleTentGeneratorSwitchScript7:
	closetext
	end

MapBattleTentGeneratorSwitchScript3:
	writetext MapBattleTentGeneratorSwitchText3
	jump MapBattleTentGeneratorSwitchScript2

MapBattleTentGeneratorSwitchScript4:
	jumptext MapBattleTentGeneratorSwitchText4

MapBattleTentGeneratorRandomPCScript1:
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iffalse MapBattleTentGeneratorSwitchScript4
	jumptext MapBattleTentGeneratorRandomPCText

; <text goes here>

MapBattleTentGeneratorSwitchText1:
	text "TENTE DE COMBAT:"
	line "PANNEAU DE CONTRO-"
	cont "LE DU GENERATEUR"

	para "STATUT: HORS"
	line "LIGNE"

	para "ALLUMER?"
	done

MapBattleTentGeneratorSwitchText2:
	text "TENTE DE COMBAT:"
	line "ALLUMAGE DU GENE-"
	cont "RATEUR O.K."

	para "ACCES:"
	line "ADMINISTRATEUR"
	
	para "OUVERTURE DE LA"
	line "PORTE"
	done

MapBattleTentGeneratorSwitchText3:
	text "TENTE DE COMBAT:"
	line "PANNEAU DE CONTRO-"
	cont "LE DU GENERATEUR"

	para "STATUT: O.K."
	done

MapBattleTentGeneratorSwitchText4:
	text $56, " ", $56, " ", $56
	line "Rien ne se passe."
	done

MapBattleTentGeneratorRandomPCText:
	text "Des lettres et des"
	line "chiffres aparais-"
	cont "sent à l'écran."

	para "Impossible de les"
	line "déchiffrer."
	done

BattleTentGenerator_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 3
	warp_def 14, 13, 3, GROUP_BATTLE_TENT_RUINS, MAP_BATTLE_TENT_RUINS ;to b tent upper ruins
	warp_def 08, 1, 1, GROUP_ROCKET_HIDEOUT_4, MAP_ROCKET_HIDEOUT_4 ;to b4 rocket maze lower stairs right
	warp_def 14, 1, 2, GROUP_ROCKET_HIDEOUT_4, MAP_ROCKET_HIDEOUT_4 ;to b4 rocket maze upper office right

	; coord events
	db 0

	; bg events
	db 2
	signpost $4, $e, 0, MapBattleTentGeneratorSwitchScript1
	signpost $4, $0, 0, MapBattleTentGeneratorRandomPCScript1

	; object events
	db 0

