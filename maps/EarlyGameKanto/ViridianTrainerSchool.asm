ViridianTrainerSchoolRB_MapScriptHeader:
	db 0
	db 0

ViridianTrainerSchoolRBLassScript:
	jumptextfaceplayer _SchoolText1

ViridianTrainerSchoolRBTeacherScript:
	jumptextfaceplayer _SchoolText2

ViridianTrainerSchoolRBBookcaseScript:
	jumpstd difficultbookshelf

ViridianTrainerSchoolRBBlackboardScript:
	loadfont
	writetext _ViridianSchoolBlackboardText1
	buttonsound
.loop
	writetext _ViridianSchoolBlackboardText2
	loadmenudata .MenuDataHeader
	interpretmenu
	writebackup
	if_equal 1, .Psn
	if_equal 2, .Par
	if_equal 3, .Slp
	if_equal 4, .Brn
	if_equal 5, .Frz
	closetext
	end

.Psn
	writetext _ViridianBlackboardPoisonText
	buttonsound
	jump .loop

.Par
	writetext _ViridianBlackboardPrlzText
	buttonsound
	jump .loop

.Slp
	writetext _ViridianBlackboardSleepText
	buttonsound
	jump .loop

.Brn
	writetext _ViridianBlackboardBurnText
	buttonsound
	jump .loop

.Frz
	writetext _ViridianBlackboardFrozenText
	buttonsound
	jump .loop

.MenuDataHeader
	db $40 ; flags
	db 00, 00 ; start coords
	db 08, 11 ; end coords
	dw .MenuData2
	db 1 ; default option
; 0x68ae9

.MenuData2
	db $80 ; flags
	dn 3, 2 ; rows, columns
	db 5 ; spacing
	dba .Strings
	dbw BANK(ViridianTrainerSchoolRB_MapScriptHeader), $0000
; 0x68af2

.Strings
	db "PSN@"
	db "PAR@"
	db "SOM@"
	db "BRU@"
	db "GEL@"
	db "QUIT@"
; 0x68b0b

ViridianTrainerSchoolRB_NotebookScript
	loadfont
	writetext _ViridianSchoolNotebookText1
	buttonsound
	writetext _TurnPageText
	yesorno
	iffalse .quit
	writetext _ViridianSchoolNotebookText2
	buttonsound
	writetext _TurnPageText
	yesorno
	iffalse .quit
	writetext _ViridianSchoolNotebookText3
	buttonsound
	writetext _TurnPageText
	yesorno
	iffalse .quit
	writetext _ViridianSchoolNotebookText4
	buttonsound
	waitsfx
	spriteface $2, UP
	writetext _ViridianSchoolNotebookText5
	waitbutton
.quit
	closetext
	end

_SchoolText1:
	text "Pfiou! J'essaie"
	line "de mémoriser"
	cont "mes notes."
	done

_SchoolText2:
	text "Très bien!"

	para "Attention de bien"
	line "lire le tableau!"
	done

_ViridianSchoolBlackboardText1:
	text "Le tableau décrit"
	line "les changements de"
	cont "STATUT durant les"
	cont "combats."
	done

_ViridianSchoolBlackboardText2:
	text "Lequel veux-tu"
	line "lire?"
	done

_ViridianBlackboardSleepText:
	text "Un #MON ne peux"
	line "pas attaquer si"
	cont "il dort!"

	para "Les #MON"
	line "restent endormis"
	cont "après les combats."

	para "Utilisez des"
	line "REVEIL pour les"
	cont "réveiller."
	done

_ViridianBlackboardPoisonText:
	text "Empoisonné, les PV"
	line "d'un #MON des-"
	cont "cendent lentement."

	para "Le poison reste"
	line "après les combats."

	para "Utilisez un ANTI-"
	line "DOTE pour soigner"
	cont "l'empoisonnement."
	done

_ViridianBlackboardPrlzText:
	text "La paralysie peut"
	line "empêcher le #-"
	cont "MON de bouger."

	para "La paralysie reste"
	line "après les combats."

	para "Utilisez des ANTI-"
	line "PARA pour guérir."
	done

_ViridianBlackboardBurnText:
	text "Une brûlure réduit"
	line "la puissance et la"
	cont "vitesse en plus"
	cont "d'infliger des"
	cont "dégâts graduels."

	para "La brûlure reste"
	line "après les combats."

	para "Elle se traite"
	line "avec l'ANTI-BRULE."
	done

_ViridianBlackboardFrozenText:
	text "Un #MON gelé"
	line "devient totalement"
	cont "immobile!"

	para "Le gel reste même"
	line "après les combats."

	para "Elle se traite"
	line "avec l'ANTI-GEL."
	done

_TurnPageText:
	text "Tourner la page?"
	done

_ViridianSchoolNotebookText5:
	text "FILLE: Hé! Ne"
	line "regarde pas mes"
	cont "notes."
	done

_ViridianSchoolNotebookText1:
	text "Vous regardez le"
	line "cahier!"

	para "Première page<...>"

	para "Les # BALL"
	line "peuvent capturer"
	cont "des #MON."

	para "Jusqu'à 6 #MON"
	line "peuvent être"
	cont "transportés."

	para "Les personnes"
	line "élevant les #-"
	cont "MON sont appelés"
	cont "les dresseurs de"
	cont "#MON."
	done

_ViridianSchoolNotebookText2:
	text "Seconde page<...>"

	para "Un #MON en"
	line "forme peut être"
	cont "dur à attraper, il"
	cont "faut d'abord"
	cont "l'affaiblir."

	para "Poison, brûlure et"
	line "autres dégâts sont"
	cont "efficaces!"
	done

_ViridianSchoolNotebookText3:
	text "Troisième page<...>"

	para "Le but de chaque"
	line "dresseur #MON"
	cont "est de s'engager"
	cont "dans des combats"
	cont "#MON contre d'"
	cont "autres dresseurs"

	para "Des combats se"
	line "tiennent en"
	cont "permanence dans"
	cont "les ARENES"
	cont "#MON."
	done

_ViridianSchoolNotebookText4:
	text "Quatrième page<...>"

	para "Le rêve de chaque"
	line "dresseur est de"
	cont "battre les 8 cham-"
	cont "pions d'ARENE"
	cont "#MON."

	para "Ces victoires"
	line "donnent le droit"
	cont "d'affronter<...>"

	para "Le CONSEIL des 4 à"
	line "la LIGUE #MON!"
	done


ViridianTrainerSchoolRB_MapEventHeader:
	db 0, 0
	; warps
	db 2
	warp_def $7, $2, 2, GROUP_VIRIDIAN_CITY_RB, MAP_VIRIDIAN_CITY_RB
	warp_def $7, $3, 2, GROUP_VIRIDIAN_CITY_RB, MAP_VIRIDIAN_CITY_RB

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 0, 3, $0, ViridianTrainerSchoolRBBlackboardScript
	signpost 4, 3, $0, ViridianTrainerSchoolRB_NotebookScript

	; people-events
	db 2
	person_event SPRITE_LASS, 9, 7, $7, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ViridianTrainerSchoolRBLassScript, -1
	person_event SPRITE_TEACHER, 5, 8, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, ViridianTrainerSchoolRBTeacherScript, -1
