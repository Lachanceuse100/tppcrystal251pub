BillsHouseRB_MapScriptHeader:
	db 0
	db 0

BillsHouseRBComputerScript:
	checkevent EVENT_HELPED_BILL_RB
	iftrue .SystemStatusMonitor
	checkevent EVENT_000_STD
	iftrue .ActivateTeleporter
.SystemStatusMonitor
	jumptext _BillsHouseMonitorText

.ActivateTeleporter
	loadfont
	writetext _BillsHouseInitiatedText
	playmusic MUSIC_NONE
	playsound SFX_PUSH_BUTTON
	waitsfx
	closetext
	pause 15
	playsound SFX_BOOT_PC
	waitsfx
	pause 20
	playsound SFX_CHOOSE_PC_OPTION
	waitsfx
	pause 10
	playsound SFX_CHOOSE_PC_OPTION
	waitsfx
	pause 30
	playsound SFX_WARP_FROM
	waitsfx
	pause 20
	playsound SFX_WARP_TO
	waitsfx
	pause 30
	variablesprite SPRITE_EGK_BILL, SPRITE_BILL
	special Function14209
	moveperson $2, 1, 2
	appear $2
	playsound SFX_EXIT_BUILDING
	applymovement $2, Movement_BillExitsTeleporter
	waitsfx
	setevent EVENT_HELPED_BILL_RB
	playsound SFX_LEVEL_UP
	waitsfx
	special RestartMapMusic
	applymovement $2, Movement_BillWalksToPlayer
	spriteface 0, RIGHT
	applymovement $2, Movement_BillFinishesWalkToPlayer
	loadfont
BillsHouseRBBillScriptGiveTicket
	writetext _BillThankYouText
	buttonsound
	verbosegiveitem S_S_TICKET
	iffalse BillScriptRB_bag_full
	setevent EVENT_RECEIVED_S_S_TICKET_RB
	clearevent EVENT_CERULEAN_RB_ROCKET_1
	writetext _BillsHouseText_1e8cb
	waitbutton
BillScriptRB_bag_full:
	closetext
	applymovement $2, Movement_ResetBill
	moveperson $2, 6, 5
	end

BillsHouseRBBillScriptContinue:
	writetext _BillsHouseText_1e8cb
	waitbutton
	closetext
	end

BillsHouseRBBillScript:
	faceplayer
	loadfont
	checkevent EVENT_HELPED_BILL_RB
	iffalse .init_event
	checkevent EVENT_RECEIVED_S_S_TICKET_RB
	iftrue BillsHouseRBBillScriptContinue
	writetext _BillThankYouText
	buttonsound
	verbosegiveitem S_S_TICKET
	iffalse .bag_full
	setevent EVENT_RECEIVED_S_S_TICKET_RB
	clearevent EVENT_CERULEAN_RB_ROCKET_1
	writetext _BillsHouseText_1e8cb
	waitbutton
.bag_full
	closetext
	end


.init_event
	writetext _BillsHouseText_1e865
.loop
	yesorno
	iftrue .proceed
	writetext _BillsHouseText_1e86f
	jump .loop

.proceed
	writetext _BillsHouseText_1e86a
	waitbutton
	closetext
	checkcode VAR_FACING
	if_equal DOWN, .down
	spriteface $0, UP
	applymovement $2, Movement_BillGoesStraightIntoTeleporter
	disappear $2
	playsound SFX_ENTER_DOOR
	waitsfx
	end

.down
	spriteface $0, UP
	applymovement $2, Movement_BillMeandersAroundPlayerToEnterTeleporter
	disappear $2
	playsound SFX_ENTER_DOOR
	waitsfx
	end

Movement_BillGoesStraightIntoTeleporter:
	step_up
	step_up
	step_up
	step_end

Movement_BillMeandersAroundPlayerToEnterTeleporter:
	step_left
	step_up
	step_up
	step_right
	step_up
	step_end

Movement_BillWalksToPlayer:
	step_right
	step_down
	step_down
Movement_BillExitsTeleporter:
	step_down
	step_end

Movement_BillFinishesWalkToPlayer:
	step_left
	step_end

Movement_ResetBill:
	step_right
	step_right
	step_right
	step_right
	step_right
	step_up
	step_end

_BillsHouseText_1e865:
	text "Salut! Je suis un"
	line "#MON<...>"
	cont "<...>En fait non<...>"

	para "Moi c'est LEO!"
	line "Je suis un vrai"
	cont "#MANIAC! Hé!"
	cont "C'est quoi ce"
	cont "regard sceptique?"

	para "C'est vrai! J'ai"
	line "raté une expérien-"
	cont "ce et me voilà"
	cont "transformé en"
	cont "#MON!"

	para "Alors? Aide moi"
	line "s'il te plaît!"
	done

_BillsHouseText_1e86a:
	text "Quand je suis dans"
	line "le TELEPORTEUR,"
	cont "Lance le programme"
	cont "de séparation"
	cont "du PC!"
	done

_BillsHouseText_1e86f:
	text "Non!? Allez, tu"
	line "peux bien aider un"
	cont "mec cool!"

	para "Allez, s'il te"
	line "plaît? Pitié?"
	cont "Oui? Super!"
	done

_BillThankYouText:
	text "BILL: Yahoo!"
	line "Merci, je t'en"
	cont "dois une!"

	para "Tu es venu voir"
	line "ma collection de"
	cont "#MON? Ah bon?"
	cont "C'est dommage<...>"

	para "Je dois te remer-"
	line "cier<...> Oh tiens,"
	cont "ça fera l'affaire."
	done

_BillsHouseText_1e8cb:
	text "Ce paquebot,"
	line "l'OCEANE, est à"
	cont "CARMIN SUR MER."
	cont "Les passagers sont"
	cont "tous dresseurs!"

	para "Ils m'ont invité"
	line "à leur fête, mais"
	cont "je ne supporte pas"
	cont "ces mariolles."
	cont "Si tu veux y"
	cont "aller à ma place,"
	cont "fais-toi plaisir!"
	done

_BillsHouseText_1e8da:
	text "LEO: Tu peux"
	line "regarder ma"
	cont "collection de"
	cont "#MON rares sur"
	cont "mon PC."
	done

_BillsHouseMonitorText:
	text "Le TELEPORTEUR est"
	line "affiché sur"
	cont "l'écran du PC."
	done

_BillsHouseInitiatedText:
	text "<PLAYER> enclenche"
	line "le séparateur de"
	cont "cellules du"
	cont "TELEPORTEUR."
	done

BillsHouseRB_MapEventHeader:
	db 0, 0
	db 2
	warp_def 7, 2, 1, GROUP_ROUTE_25_RB, MAP_ROUTE_25_RB
	warp_def 7, 3, 1, GROUP_ROUTE_25_RB, MAP_ROUTE_25_RB

	db 0

	db 1
	signpost 5, 0, $1, BillsHouseRBComputerScript

	db 1
	person_event SPRITE_EGK_BILL, 9, 10, $3, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, BillsHouseRBBillScript, EVENT_000_STD
