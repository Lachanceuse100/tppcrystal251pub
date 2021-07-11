BattleTentBattleRoom_MapScriptHeader:

	db 2

	dw MapBattleTentBattleRoom_Trigger1, $0000
	dw MapBattleTentBattleRoom_Trigger2, $0000

	db 0

MapBattleTentBattleRoom_Trigger1:
	priorityjump MapBattleTentBattleRoomBillScript1
	end

MapBattleTentBattleRoom_Trigger2:
	end

MapBattleTentBattleRoomDoorScript:
	dw EVENT_OAK_DEFEATED
	dw .Script
.Script
	jumptext MapBattleTentBattleRoomDoorText

MapBattleTentBattleRoomBillScript1:
	pause 15
	showemote $0, 2, 15
	pause 15
	spriteface $2, DOWN
	loadfont
	writetext MapBattleTentBattleRoomBillText1
	waitbutton
	closetext
	applymovement $2, MapBattleTentBattleRoomMovementData5
	loadfont
	writetext MapBattleTentBattleRoomBillText2
	waitbutton
	pause 15
	showemote $0, 2, 15
	pause 15
	loadfont
	writetext MapBattleTentBattleRoomBillText3
	waitbutton
	closetext
	follow $2, $0
	applymovement $2, MapBattleTentBattleRoomMovementData3
	stopfollow
	applymovement $2, MapBattleTentBattleRoomMovementData6
	applymovement $0, MapBattleTentBattleRoomMovementData4
	winlosstext MapBattleTentBattleRoomBillLossText, $0000
	loadtrainer BILL_TC, BILL_BT
	startbattle
	returnafterbattle
	dotrigger $1
	setevent EVENT_BEAT_BILL_IN_BATTLE_TENT
	loadfont
	writetext MapBattleTentBattleRoomBillText4
	waitbutton
	closetext
	applymovement $2, MapBattleTentBattleRoomMovementData9
	loadfont
	verbosegiveitem HM_WHIRLPOOL, 1
	writetext MapBattleTentBattleRoomBillText5
	waitbutton
	closetext
	spriteface $0, DOWN
	applymovement $2, MapBattleTentBattleRoomMovementData2
	playsound SFX_EXIT_BUILDING
	disappear $2
	setevent EVENT_UNLOCKED_GARDEN
	clearevent EVENT_BILL_IN_GOLDENROD_BILLS_HOUSE
	pause 15
	end

MapBattleTentBattleRoomBillScript2:
	faceplayer
	loadfont
	writetext MapBattleTentBattleRoomBillText7
	buttonsound
	verbosegiveitem HM_WHIRLPOOL, 1
	writetext MapBattleTentBattleRoomBillText5
	waitbutton
	closetext
	copybytetovar PlayerFacing
	if_equal OW_UP, .walkaround
	spriteface $0, DOWN
	applymovement $2, MapBattleTentBattleRoomMovementData7
	jump .done
.walkaround
	spriteface $0, LEFT
	applymovement $2, MapBattleTentBattleRoomMovementData8
	spriteface $0, DOWN
.done
	playsound SFX_EXIT_BUILDING
	disappear $2
	setevent EVENT_UNLOCKED_GARDEN
	clearevent EVENT_BILL_IN_GOLDENROD_BILLS_HOUSE
	pause 15
	end

MapBattleTentBattleRoomMovementData4:
	step_left
	turn_head_right
	step_end

MapBattleTentBattleRoomMovementData5:
	step_left
	step_down
	step_end

MapBattleTentBattleRoomMovementData2:
	step_down
	step_down
	step_down
	step_down
	step_end

MapBattleTentBattleRoomMovementData8:
	step_left
MapBattleTentBattleRoomMovementData7:
	step_down
	step_down
	step_end

MapBattleTentBattleRoomMovementData3:
	step_up
	step_up
	step_up
	step_right
	step_end

MapBattleTentBattleRoomMovementData6:
	step_right
	turn_head_left
	step_end

MapBattleTentBattleRoomMovementData9:
	step_left
	step_left
	step_end


MapBattleTentBattleRoomBillText1:
	text "Ah, <PLAY_G>!"

	para "Dieu merci, tu es"
	line "là!"
	done

MapBattleTentBattleRoomBillText2:
	text "On m'a demandé de"
	line "faire des répara-"
	cont "tions par ici."

	para "La ville prévoit"
	line "de réouvrir ce bâ-"
	cont "timent un jour."

	para "Mais pendant que"
	line "je travaillais,"

	para "il y a eu une cou-"
	line "pire de courant et"
	
	para "la porte s'est"
	line "vérouillée"
	cont "derrière moi."

	para "C'est toi qui a"
	line "rallumé le GENERA-"
	cont "TEUR?"

	para "Je t'en dois une!"
	done
MapBattleTentBattleRoomBillText3:
	text "Pendant que tu es"
	line "ici<...>"

	para "Que dirais-tu d'un"
	line "petit combat?"

	para "Nous sommes à la"
	line "TENTE de COMBAT"
	cont "après tout!"
	done

MapBattleTentBattleRoomBillLossText:
	text "Wouah<...>"
	done

MapBattleTentBattleRoomBillText4:
	text "Merci beaucoup."
	line "C'était exaltant!"

	para "Tiens, j'ai trouvé"
	line "ça par terre."

	para "Je n'en ai pas"
	line "besoin, alors"
	cont "c'est pour toi."
	done

MapBattleTentBattleRoomBillText5:
	text "Ca devrait être"
	line "bon dans cette"
	cont "pièce."

	para "Dis, tu te sou-"
	line "viens de ma maison"
	cont "à la VILLA DU CAP?"

	para "J'ai vendu cette"
	line "maison à mon"
	cont "grand-père en dé-"
	cont "ménageant à JOHTO."

	para "Il l'entretient"
	line "ainsi que le"
	cont "jardin derrière."

	para "Tu devrais lui"
	line "rendre visite, il"
	cont "doit se sentir"
	cont "seul!"

	para "Oups! Je dois y"
	line "aller! Merci"
	cont "encore, <PLAY_G>!"
	done


MapBattleTentBattleRoomBillText7:
	text "Ah, <PLAY_G>!"

	para "Tiens, j'ai trouvé"
	line "ça par terre."
	done

MapBattleTentBattleRoomDoorText:
	text "C'est fermé<...>"
	done

BattleTentBattleRoom_MapEventHeader:

	db 0, 0

	db 3
	warp_def $7, $5, 4, GROUP_BATTLE_TENT_RUINS, MAP_BATTLE_TENT_RUINS
	warp_def $7, $6, 4, GROUP_BATTLE_TENT_RUINS, MAP_BATTLE_TENT_RUINS
	warp_def $0, $6, 1, GROUP_BATTLE_TENT_PC_ROOM, MAP_BATTLE_TENT_PC_ROOM

	db 0

	db 1
	signpost $0, $6, $6, MapBattleTentBattleRoomDoorScript

	db 1
	person_event SPRITE_BILL, $9, $a, $7, 0, 0, -1, -1, 0, 0, 0, MapBattleTentBattleRoomBillScript2, EVENT_BILL_IN_BATTLE_TENT_BATTLE_ROOM
