SilphCo1F_MapScriptHeader: ; 0x18abe3
	; trigger count
	db 0

	; callback count
	db 0
; 0x18abe5

ReceptionistScript_0x18abe5: ; 0x18abe5
	jumptextfaceplayer UnknownText_0x18ac03
; 0x18abe8

OfficerScript_0x18abe8: ; 0x18abe8
	faceplayer
	loadfont
	writetext UnknownText_0x18ac36
	buttonsound
	checkmoney 0, 300000
	if_equal 2, Not300k
	yesorno
	iffalse DontBuyMasterBall
	verbosegiveitem MASTER_BALL, 1
	iffalse BagFullMasterBall
	takemoney 0, 300000
	writetext BoughtMasterBallText
	waitbutton
	closetext
	end

DontBuyMasterBall:
	writetext UnknownText_0x18aca8
	waitbutton
	closetext
	end

BagFullMasterBall
	writetext MasterBallBagFullText
	waitbutton
	closetext
	end
; 0x18ac03

Not300k:
	writetext Not300kText
	waitbutton
	closetext
	end


UnknownText_0x18ac03: ; 0x18ac03
	text "Bienvenue. Voici"
	line "les BUREAUX de la"
	cont "SYLPHE SARL."
	done
; 0x18ac36

UnknownText_0x18ac36: ; 0x18ac36
	text "Seuls les employés"
	line "peuvent aller à"
	cont "l'étage supérieur."

	para "Mais<...>"

	para "J'ai chipé quel-"
	line "ques MASTER BALLS"
	cont "de la cargaison."

	para "Je dois pouvoir en"
	line "faire disparaître"
	cont "une pour<...>"
	
	para "la modique somme"
	line "de ", $f0, "300,000."
	done
; 0x18aca8

UnknownText_0x18aca8: ; 0x18aca8
	text "Dommage<...>"
	done

BoughtMasterBallText:
	text "Au plaisir de"
	line "faire affaire avec"
	cont "toi!"

	para "Ne le gaspille pas"
	line "sur un POISSIRENE!"
	done

Not300kText:
	text "Pas d'argent?"
	line "Dommage<...>"
	done

MasterBallBagFullText:
	text "Elle rentre pas"
	line "dans ton SAC, fais"
	cont "un peu de place."
	done
; 0x18ace7

SilphCo1F_MapEventHeader: ; 0x18ace7
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 7, GROUP_SAFFRON_CITY, MAP_SAFFRON_CITY
	warp_def $7, $3, 7, GROUP_SAFFRON_CITY, MAP_SAFFRON_CITY

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 2
	person_event SPRITE_RECEPTIONIST, 6, 8, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ReceptionistScript_0x18abe5, -1
	person_event SPRITE_OFFICER, 5, 17, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, OfficerScript_0x18abe8, -1
; 0x18ad11

