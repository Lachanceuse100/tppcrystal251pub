BluesHouse_MapScriptHeader: ; 0x19b0ce
	; trigger count
	db 0

	; callback count
	db 0
; 0x19b0d0

DaisyScript_0x19b0d0: ; 0x19b0d0
	faceplayer
	loadfont
	checkcode VAR_HOUR
	if_equal $f, UnknownScript_0x19b0de
	writetext UnknownText_0x19b130
	waitbutton
	closetext
	end
; 0x19b0de

UnknownScript_0x19b0de: ; 0x19b0de
	checkflag ENGINE_TEA_IN_BLUES_HOUSE
	iftrue UnknownScript_0x19b11e
	writetext UnknownText_0x19b1b6
	yesorno
	iffalse UnknownScript_0x19b124
	writetext UnknownText_0x19b244
	waitbutton
	special Function741d
	if_equal $0, UnknownScript_0x19b124
	if_equal $1, UnknownScript_0x19b12a
	setflag ENGINE_TEA_IN_BLUES_HOUSE
	writetext UnknownText_0x19b266
	waitbutton
	closetext
	special Function8c084
	playmusic MUSIC_HEAL
	pause 60
	special Function8c079
	special RestartMapMusic
	loadfont
	writetext UnknownText_0x19b296
	special Functionc472
	buttonsound
	writetext UnknownText_0x19b2aa
	waitbutton
	closetext
	end
; 0x19b11e

UnknownScript_0x19b11e: ; 0x19b11e
	writetext UnknownText_0x19b2fa
	waitbutton
	closetext
	end
; 0x19b124

UnknownScript_0x19b124: ; 0x19b124
	writetext UnknownText_0x19b334
	waitbutton
	closetext
	end
; 0x19b12a

UnknownScript_0x19b12a: ; 0x19b12a
	writetext UnknownText_0x19b377
	waitbutton
	closetext
	end
; 0x19b130

UnknownText_0x19b130: ; 0x19b130
	text "NINA: Salut! Ma"
	line "famille vient d'"
	cont "arriver en ville."

	para "Mon petit frère"
	line "est le CHAMPION de"
	cont "l'ARENE de"
	cont "JADIELLE."

	para "Mais il se balade"
	line "beaucoup, ce qui"

	para "embête pas mal de"
	line "dresseurs."
	done
; 0x19b1b6

UnknownText_0x19b1b6: ; 0x19b1b6
	text "NINA: Salut! Tu"
	line "tombes bien, j'al-"
	cont "lais faire du thé."

	para "En veux-tu?"

	para "Oh, tes #MON"
	line "sont sales."

	para "Tu veux que j'en"
	line "bichonne un?"
	done
; 0x19b244

UnknownText_0x19b244: ; 0x19b244
	text "NINA: Lequel dois-"
	line "je bichonner?"
	done
; 0x19b266

UnknownText_0x19b266: ; 0x19b266
	text "NINA: OK, je vais"
	line "le faire beau en"
	cont "un rien de temps."
	done
; 0x19b296

UnknownText_0x19b296: ; 0x19b296
	text_from_ram StringBuffer3
	text " à l'air"
	line "heureux."
	done
; 0x19b2aa

UnknownText_0x19b2aa: ; 0x19b2aa
	text "NINA: Et voilà!"
	line "C'est fini!"

	para "Alors? Il est pas"
	line "trop beau, hein?"

	para "Un joli petit"
	line "#MON."
	done
; 0x19b2fa

UnknownText_0x19b2fa: ; 0x19b2fa
	text "NINA: Je me fais"
	line "toujours du thé à"

	para "cette heure ci."
	line "Tu peux rester."
	done
; 0x19b334

UnknownText_0x19b334: ; 0x19b334
	text "NINA: Tu ne veux"
	line "pas que je m'en"

	para "occupe? OK. Un peu"
	line "de thé alors<...>"
	done
; 0x19b377

UnknownText_0x19b377: ; 0x19b377
	text "NINA: Désolée, je"
	line "ne sais pas m'oc-"
	cont "cuper d'un OEUF."
	done
; 0x19b3a8

BluesHouse_MapEventHeader: ; 0x19b3a8
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 2, GROUP_PALLET_TOWN, MAP_PALLET_TOWN
	warp_def $7, $3, 2, GROUP_PALLET_TOWN, MAP_PALLET_TOWN

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_DAISY, 7, 6, $3, 0, 0, -1, -1, 0, 0, 0, DaisyScript_0x19b0d0, -1
; 0x19b3c5

