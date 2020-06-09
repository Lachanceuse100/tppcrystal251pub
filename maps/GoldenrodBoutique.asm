GoldenrodBoutique_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

SetPlayerPal:
	ld a, [ScriptVar] ; 1 - 8
	add $7 ; 8 - 15
	ld [wPlayerPalette], a
	swap a ; parameter for Functionc225
	ld [ScriptVar], a
	ret

BoutiqueCooltrainerMScript:
	jumptextfaceplayer BoutiqueCooltrainerMText

BoutiqueCooltrainerM2Script:
	jumptextfaceplayer BoutiqueCooltrainerM2Text

BoutiqueCooltrainerFScript:
	jumptextfaceplayer BoutiqueCooltrainerFText

BoutiqueRockerScript:
	jumptextfaceplayer BoutiqueRockerText

BoutiqueStylistBusyScript:
	faceplayer
	loadfont
	writetext BoutiqueStylistBusyText
	waitbutton
	closetext
	spriteface $2, LEFT
	end

BoutiqueStylistScript:
	faceplayer
	loadfont
	writetext BoutiqueStylistText1
	yesorno
	iffalse BoutiqueStylistScriptNoStyle
	writetext BoutiqueStylistText2
	checkmoney 0, 500
	if_equal 2, BoutiqueStylistScriptNoMoney
	yesorno
	iffalse BoutiqueStylistScriptNoStyle
	takemoney 0, 500
	playsound SFX_TRANSACTION
	waitsfx
	closetext
	spriteface $3, LEFT
	;move player
	checkcode VAR_FACING
	if_equal UP, .MoveAroundCounterUp
	checkcode VAR_FACING
	if_equal RIGHT, .MoveAroundCounterRight
	applymovement $0, Movement_WalkAroundLong
.MoveAroundCounterUp
	applymovement $0, Movement_WalkFromFront
.MoveAroundCounterRight
	applymovement $0, Movement_WalkFaceLeft
	loadfont
	writetext BoutiqueStylistText3
	loadmenudata MenuDataHeaderBoutique
	interpretmenu2
	writebackup
	closetext
	pause 10
	callasm SetPlayerPal
	special Functionc225
	playsound SFX_TINGLE
	applymovement $0, Boutique_PlayerSpin
	showemote $0, $0, 15
	spriteface $0, RIGHT
	loadfont
	writetext BoutiqueStylistText4
	waitbutton
	closetext
	spriteface $3, DOWN
	end

Movement_WalkAroundLong:
	step_down
	step_down
	step_left
	step_left
	step_end
	
Movement_WalkFromFront:
	step_left
	step_up
	step_up
	step_end
	
Movement_WalkFaceLeft:
	half_step_left
	step_end

Boutique_PlayerSpin: ; 0x192d1c
	turn_head_up
	step_sleep 3
	turn_head_right
	step_sleep 3
	turn_head_down
	step_sleep 3
	turn_head_left
	step_sleep 3
	step_end
	
BoutiqueStylistScriptNoStyle:
	writetext BoutiqueStylistTextExit
	waitbutton
	closetext
	end

BoutiqueStylistText1:
	text "Bienvenue au"
	line "SALON de COIFFURE!"

	para "Tu veux changer"
	line "ton look?"
	done

BoutiqueStylistText2:
	text "Super! Ca te coû-"
	line "tera ", $f0, "500, OK?"
	done

BoutiqueStylistText3:
	text "C'est parti!"

	para "Quelle est ta"
	line "couleur préférée?"
	done
	;change it

BoutiqueStylistText4:
	text "Voila! C'est bon!"
	done

BoutiqueStylistTextExit:
	text "Si tu veux changer"
	line "de look, n'hésites"
	cont "pas à revenir!"
	done

BoutiqueStylistScriptNoMoney:
	buttonsound
	writetext BoutiqueStylistTextNoMoney
	waitbutton
	closetext
	end

BoutiqueStylistTextNoMoney:
	text "Tu n'as pas assez"
	line "d'argent!"

	para "Reviens quand tu"
	line "auras le compte!"
	done

	;branch to move the player around

BoutiqueCooltrainerMText:
	text "Cet endroit est"
	line "génial!"

	para "J'aimerais que"
	line "l'attente ne soit"
	cont "pas si longue<...>"
	done

BoutiqueCooltrainerM2Text:
	text "J'attends que mon"
	line "ami arrive!"

	para "On va se faire le"
	line "même look!"
	done

BoutiqueCooltrainerFText:
	text "Il y a tellement"
	line "de choix"
	cont "différents!"

	para "Je me demande"
	line "laquelle est la"
	cont "plus mignonne<...>"
	done

BoutiqueRockerText:
	text "Je me teins les"
	line "cheveux!"

	para "Faut que je reste"
	line "à la mode!"
	done
	
BoutiqueStylistBusyText:
	text "Je suis un styli-"
	line "ste professionnel!"

	para "Je donne un tout"
	line "nouveau look à ce"
	cont "jeune dresseur!"
	done

MenuDataHeaderBoutique:
	db $40 ; flags
	db 00, 00 ; start coords
	db 11, 09 ; end coords
	dw MenuDataBoutique
	db 1 ; default option

MenuDataBoutique:
	db $81 ; flags
	db 5 ; items
	db "ROUGE@"
	db "BLEU@"
	db "VERT@"
	db "MARRON@"
	db "JAUNE@"

GoldenrodBoutique_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $3, 16, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY
	warp_def $7, $4, 16, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 6	
	person_event SPRITE_CLERK, 5, 5, $8, 0, 0, -1, -1, 0, 0, 0, BoutiqueStylistBusyScript, -1
	person_event SPRITE_CLERK, 5, 9, $6, 0, 0, -1, -1, 0, 0, 0, BoutiqueStylistScript, -1
	person_event SPRITE_COOLTRAINER_M, 9, 9, $8, 0, 0, -1, -1, 0, 0, 0, BoutiqueCooltrainerMScript, -1
	person_event SPRITE_COOLTRAINER_F, 6, 13, $5, 0, 1, -1, -1, 0, 0, 0, BoutiqueCooltrainerFScript, -1
	person_event SPRITE_ROCKER, 5, 4, $a, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, BoutiqueRockerScript, -1
	person_event SPRITE_COOLTRAINER_M, 11, 13, $2, 1, 1, -1, -1, 8 + PAL_OW_RED, 0, 0, BoutiqueCooltrainerM2Script, -1