CinnabarIsland_MapScriptHeader: ; 0x1ac9a7
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 5, UnknownScript_0x1ac9ac
; 0x1ac9ac

UnknownScript_0x1ac9ac: ; 0x1ac9ac
	setflag ENGINE_FLYPOINT_CINNABAR
	return
; 0x1ac9b0

BlueScript_0x1ac9b0: ; 0x1ac9b0
	faceplayer
	loadfont
	writetext UnknownText_0x1ac9d2
	waitbutton
	closetext
	playsound SFX_WARP_TO
	applymovement $2, MovementData_0x1ac9d0
	disappear $2
	clearevent EVENT_BLUE_IN_HIS_GYM
	end
; 0x1ac9c4

MapCinnabarIslandSignpost1Script: ; 0x1ac9c4
	jumptext UnknownText_0x1acc73
; 0x1ac9c7

MapCinnabarIslandSignpost2Script: ; 0x1ac9c7
	jumptext UnknownText_0x1accc2
; 0x1ac9ca

MapCinnabarIslandSignpost0Script: ; 0x1ac9ca
	jumpstd pokecentersign
; 0x1ac9cd

MapCinnabarIslandSignpostItem3: ; 0x1ac9cd
	dw $00fe
	db RARE_CANDY

; 0x1ac9d0

MapCinnabarIslandSignpost4Script:
	jumptext EnteiCaveSign

MovementData_0x1ac9d0: ; 0x1ac9d0
	teleport_from
	step_end
; 0x1ac9d2


UnknownText_0x1ac9d2: ; 0x1ac9d2
	text "T'es qui toi?"

	para "Oui, ça se voit"
	line "que t'es dresseur<...>"

	para "Moi c'est BLUE."

	para "J'ai été un MAITRE"
	line "pendant un temps."

	para "Enfin, quelques"
	line "minutes<...>"

	para "Juste ave que"
	line "<RED> me batte<...>"

	para "Bref, tu veux"
	line "quoi? Te battre?"

	para "Désolé mais j'ai"
	line "pas la tête à ça."

	para "Regarde autour de"
	line "toi<...>"

	para "Un volcan explose"
	line "et une ville"

	para "disparaît de la"
	line "carte, juste comme"
	cont "ça<...>"

	para "On peut gagner ou"
	line "perdre à #MON<...>"

	para "Mais on peut se"
	line "faire balayer par"

	para "une catastrophe"
	line "naturelle à tout"
	cont "moment."

	para "<...>"

	para "C'est comme ça."
	line "On y peut rien<...>"

	para "Mais bon. Je reste"
	line "un dresseur."

	para "Et quand je vois"
	line "quelqu'un de"
	cont "balèze, j'ai envie"
	cont "de me battre!"

	para "Si tu cherches un"
	line "bon combat, viens"
	cont "à l'ARENE de"
	cont "JADIELLE."

	para "Je t'y ferais ta"
	line "fête."
	done
; 0x1acc73

UnknownText_0x1acc73: ; 0x1acc73
	text "Il y a un mot<...>"

	para "l'ARENE de CRAMOI-"
	line "S'ILE est déplacée"
	cont "aux ILES ECUME."

	para "AUGUSTE"
	done
; 0x1accc2

UnknownText_0x1accc2: ; 0x1accc2
	text "CRAMOIS'ILE"

	para "La ville des"
	line "désirs brûlants."
	done
; 0x1accf4

EnteiCaveSign: ; 0x1accc2
	text "Vous essayez de"
    line "lire le panneau<...>"

    para "Mais il est"
    line "carbonisé<...>"
    done

CinnabarIsland_MapEventHeader: ; 0x1accf4
	; filler
	db 0, 0

	; warps
	db 3
	warp_def 15, $b, 1, GROUP_CINNABAR_POKECENTER_1F, MAP_CINNABAR_POKECENTER_1F
	warp_def 7, 22, 1, GROUP_CINNABAR_VOLCANO_ENTRANCE, MAP_CINNABAR_VOLCANO_ENTRANCE
	warp_def 21, 26, 1, GROUP_ENTEI_ROOM, MAP_ENTEI_ROOM

	; xy triggers
	db 0

	; signposts
	db 5
	signpost 15, 12, $0, MapCinnabarIslandSignpost0Script
	signpost 15, 9, $0, MapCinnabarIslandSignpost1Script
	signpost 11, 7, $0, MapCinnabarIslandSignpost2Script
	signpost 23, 25, $0, MapCinnabarIslandSignpost4Script
	signpost 5, 9, $7, MapCinnabarIslandSignpostItem3

	; people-events
	db 1
	person_event SPRITE_BLUE, 14, 12, $3, 0, 0, -1, -1, 0, 0, 0, BlueScript_0x1ac9b0, EVENT_BLUE_IN_CINNABAR
; 0x1acd20

