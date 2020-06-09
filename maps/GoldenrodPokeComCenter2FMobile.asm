GoldenrodPokeComCenter2FMobile_MapScriptHeader: ; 0x625cf
	; trigger count
	db 0

	; callback count
	db 0
; 0x625d1

ScientistScript_0x625d1: ; 0x625d1
	jumptextfaceplayer UnknownText_0x62674
; 0x625d4

ScientistScript_0x625d4: ; 0x625d4
	jumptextfaceplayer UnknownText_0x626f9
; 0x625d7

ScientistScript_0x625d7: ; 0x625d7
	jumptextfaceplayer UnknownText_0x62795
; 0x625da
MapGoldenrodPokeComCenter2FMobileSignpost0Script: ; 0x62671
	jumptext UnknownText_0x62b26
; 0x62674
MapGoldenrodPokeComCenter2FMobileSignpost1Script: ; 0x62671
	jumptext PCC_OfficePCText
; 0x62674
MapGoldenrodPokeComCenter2FMobileSignpost2Script: ; 0x62671
	jumptext PCC_OfficePCText2
; 0x62674

UnknownText_0x62674: ; 0x62674
	text "Le CENTRE #COM"
	line "a été construit"

	para "pour satisfaire"
	line "les demandes des"
	cont "dresseurs voulant"
	cont "interagir entre"
	cont "eux de n'importe"
	cont "ou."

	para "Même des étrangers"
	line "peuvent s'amuser"
	cont "ensemble!"
	
	para "Je me demande si"
	line "l'on peut créer un"
	cont "jeu la-dessus<...>"
	
	done
; 0x626f9

UnknownText_0x626f9: ; 0x626f9
	text "Quand tu as été"
	line "relié sans fil"

	para "avec quelqu'un"
	line "pour la première"
	cont "fois."

	para "N'étais-tu pas"
	line "impressionné?"

	para "J'ai eu des"
	line "frissons la"
	cont "première fois!"
	done
; 0x62795

UnknownText_0x62795: ; 0x62795
	text "Cet établissement"
	line "existe grâce aux"
	cont "avancées des tech-"
	cont "nologies sans fil."

	para "Si le signal s'"
	line "arrête, il y aura"
	cont "des révoltes!"
	done
; 0x627ee

UnknownText_0x62b26: ; 0x62b26
	text "Le BUREAU ADMINI-"
	line "STRATIF a reçu un"
	cont "e-mail."

	para $56, " ", $56, " ", $56

	para "A l'équipe du"
	line "CENTRE #COM<...>"

	para "Les communications"
	line "sans fil ont"

	para "permit aux dre-"
	line "sseurs du pays"
	cont "d'interagir entre"
	cont "eux."

	para "Continuons sur"
	line "notre lancée et"

	para "relions les dre-"
	line "sseurs du monde"
	cont "entier!"

	para $56, " ", $56, " ", $56
	done

PCC_OfficePCText: ; 0x62b26
	text "L'écran est rempli"
	line "de code compliqué!"

	para "Mieux vaut ne rien"
	line "toucher<...>"
	done

PCC_OfficePCText2: ; 0x62b26
	text "Il y a une vidéo"
	line "qui se joue à"
	
	para "l'écran avec une"
	line "une salle de"
	cont "discussion à côté."

	para "Les mots défilent"
	line "trop vite pour"
	cont "les lire!"
	done

GoldenrodPokeComCenter2FMobile_MapEventHeader: ; 0x62c32
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $1f, $0, 3, GROUP_GOLDENROD_POKECENTER_1F, MAP_GOLDENROD_POKECENTER_1F
	warp_def $1f, $1, 3, GROUP_GOLDENROD_POKECENTER_1F, MAP_GOLDENROD_POKECENTER_1F

	; xy triggers
	db 0

	; signposts
	db 3
	signpost 26, 6, $1, MapGoldenrodPokeComCenter2FMobileSignpost0Script
	signpost 28, 6, $1, MapGoldenrodPokeComCenter2FMobileSignpost1Script
	signpost 26, 3, $1, MapGoldenrodPokeComCenter2FMobileSignpost2Script

	; people-events
	db 3
	person_event SPRITE_SCIENTIST, 32, 8, $4, 1, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, ScientistScript_0x625d1, -1
	person_event SPRITE_SCIENTIST, 31, 11, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ScientistScript_0x625d4, -1
	person_event SPRITE_SCIENTIST, 33, 11, $7, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ScientistScript_0x625d7, -1
; 0x62c78

