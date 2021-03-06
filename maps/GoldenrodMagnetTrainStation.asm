GoldenrodMagnetTrainStation_MapScriptHeader: ; 0x550e5
	; trigger count
	db 1

	; triggers
	dw UnknownScript_0x550eb, $0000

	; callback count
	db 0
; 0x550eb

UnknownScript_0x550eb: ; 0x550eb
	end
; 0x550ec

OfficerScript_0x550ec: ; 0x550ec
	faceplayer
	loadfont
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue UnknownScript_0x550fa
	writetext UnknownText_0x55160
	waitbutton
	closetext
	end
; 0x550fa

UnknownScript_0x550fa: ; 0x550fa
	writetext UnknownText_0x551b7
	yesorno
	iffalse UnknownScript_0x5512a
	checkitem PASS
	iffalse UnknownScript_0x55124
	writetext UnknownText_0x551ed
	waitbutton
	closetext
	applymovement $2, MovementData_0x55146
	applymovement $0, MovementData_0x5514f
	writebyte $0
	special Function8cc04
	warpcheck
	newloadmap $f9
	applymovement $0, MovementData_0x55122
	wait $14
	end
; 0x55122

MovementData_0x55122: ; 0x55122
	turn_head_down
	step_end
; 0x55124

UnknownScript_0x55124: ; 0x55124
	writetext UnknownText_0x5522c
	waitbutton
	closetext
	end
; 0x5512a

UnknownScript_0x5512a: ; 0x5512a
	writetext UnknownText_0x5524f
	waitbutton
	closetext
	end
; 0x55130

UnknownScript_0x55130: ; 0x55130
	applymovement $2, MovementData_0x55146
	applymovement $0, MovementData_0x55158
	applymovement $2, MovementData_0x5514b
	loadfont
	writetext UnknownText_0x5526a
	waitbutton
	closetext
	end
; 0x55143

GentlemanScript_0x55143: ; 0x55143
	jumptextfaceplayer UnknownText_0x552a3
; 0x55146

MovementData_0x55146: ; 0x55146
	step_up
	step_up
	step_right
	turn_head_left
	step_end
; 0x5514b

MovementData_0x5514b: ; 0x5514b
	step_left
	step_down
	step_down
	step_end
; 0x5514f

MovementData_0x5514f: ; 0x5514f
	step_up
	step_up
	step_up
	step_left
	step_left
	step_left
	step_up
	step_up
	step_end
; 0x55158

MovementData_0x55158: ; 0x55158
	step_left
	step_left
	step_down
	step_down
	step_down
	step_down
	turn_head_up
	step_end
; 0x55160

UnknownText_0x55160: ; 0x55160
	text "Le train ne passe"
	line "pas<...>"

	para "Je sais! Je vais"
	line "transporter les"
	cont "passagers sur mon"
	cont "dos!"

	para "<...>"

	para "Non, ça ne"
	line "marchera pas<...>"
	done
; 0x551b7

UnknownText_0x551b7: ; 0x551b7
	text "Nous allons partir"
	line "pour SAFRANIA."

	para "Vous montez"
	line "à bord?"
	done
; 0x551ed

UnknownText_0x551ed: ; 0x551ed
	text "Puis-je voir votre"
	line "PASSE TRAIN, s'il"
	cont "vous plaît?"

	para "Merci, c'est"
	line "par là<...>"
	done
; 0x5522c

UnknownText_0x5522c: ; 0x5522c
	text "Désolé, vous"
	line "n'avez pas de"
	cont "PASSE TRAIN."
	done
; 0x5524f

UnknownText_0x5524f: ; 0x5524f
	text "Nous espérons vous"
	line "revoir bientôt."
	done
; 0x5526a

UnknownText_0x5526a: ; 0x5526a
	text "On est arrivé"
	line "à DOUBLONVILLE."

	para "Nous espérons vous"
	line "revoir bientôt."
	done
; 0x552a3

UnknownText_0x552a3: ; 0x552a3
	text "Je suis le"
	line "PRESIDENT."

	para "Mon rêve était de"
	line "construire un"

	para "train plus rapide"
	line "que n'importe quel"
	cont "#MON."

	para "Cela rapproche"
	line "JOHTO de KANTO."
	done
; 0x5531f

GoldenrodMagnetTrainStation_MapEventHeader: ; 0x5531f
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $11, $8, 5, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY
	warp_def $11, $9, 5, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY
	warp_def $5, $6, 4, GROUP_SAFFRON_TRAIN_STATION, MAP_SAFFRON_TRAIN_STATION
	warp_def $5, $b, 3, GROUP_SAFFRON_TRAIN_STATION, MAP_SAFFRON_TRAIN_STATION

	; xy triggers
	db 1
	xy_trigger 0, $6, $b, $0, UnknownScript_0x55130, $0, $0

	; signposts
	db 0

	; people-events
	db 2
	person_event SPRITE_OFFICER, 13, 13, $6, 0, 0, -1, -1, 0, 0, 0, OfficerScript_0x550ec, -1
	person_event SPRITE_GENTLEMAN, 18, 15, $2, 2, 2, -1, -1, 0, 0, 0, GentlemanScript_0x55143, EVENT_MAGNET_TRAIN_PRESIDENT_IN_GOLDENROD_STATION
; 0x5535b

