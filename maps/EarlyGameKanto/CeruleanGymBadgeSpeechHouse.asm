CeruleanGymBadgeSpeechHouseRB_MapScriptHeader: ; 0x188000
	; trigger count
	db 0

	; callback count
	db 0
; 0x188002

GymBadgeSpeechHouseRBScript: ; 0x188002
	faceplayer
	loadfont
	writetext _CeruleanHouse2Text_74e77
.loop
	buttonsound
	writetext _CeruleanHouse2Text_74e7c
	loadmenudata .MenuDataHeader
	interpretmenu2
	writebackup
	iffalse .quit
	if_equal 1, .boulder
	if_equal 2, .cascade
	if_equal 3, .thunder
	if_equal 4, .rainbow
	if_equal 5, .soul
	if_equal 6, .marsh
	if_equal 7, .volcano
	if_equal 8, .earth
.quit
	writetext _CeruleanHouse2Text_74e81
	waitbutton
	closetext
	end

.boulder
	writetext _CeruleanHouse2Text_74e96
	jump .loop
.cascade
	writetext _CeruleanHouse2Text_74e9b
	jump .loop
.thunder
	writetext _CeruleanHouse2Text_74ea0
	jump .loop
.rainbow
	writetext _CeruleanHouse2Text_74ea5
	jump .loop
.soul
	writetext _CeruleanHouse2Text_74eaa
	jump .loop
.marsh
	writetext _CeruleanHouse2Text_74eaf
	jump .loop
.volcano
	writetext _CeruleanHouse2Text_74eb4
	jump .loop
.earth
	writetext _CeruleanHouse2Text_74eb9
	jump .loop

.MenuDataHeader
	db $40 ; flags
	db 00, 00 ; start coords
	db 17, 15 ; end coords
	dw .MenuData2
	db 1 ; default option
.MenuData2
	db $a0 ; flags
	db 8
	db "BADGE ROCHE@"
	db "BADGECASCADE@"
	db "BADGE FOUDRE@"
	db "BADGE PRISME@"
	db "BADGE AME@"
	db "BADGE MARAIS@"
	db "BADGE VOLCAN@"
	db "BADGE TERRE@"

_CeruleanHouse2Text_74e77:
	text "Les BADGES #MON"
	line "sont tenus par des"
	cont "dresseurs"
	cont "talentueux."

	para "Je vois que tu en"
	line "as au moins un."

	para "Ces BADGES"
	line "renferment des"
	cont "des secrets!"
	done

_CeruleanHouse2Text_74e7c:
	text "Bien alors<...>"

	para "Lequel des BADGES"
	line "veux-tu que je"
	cont "décrive?"

	para ""
	done

_CeruleanHouse2Text_74e81:
	text "Reviens me voir"
	line "quand tu veux."
	done

_CeruleanHouse2Text_74e96:
	text "L'ATTAQUE de tes"
	line "#MON augmente"
	cont "un peu."

	para "Tu peux aussi"
	line "utiliser FLASH"
	cont "quand tu veux."
	done

_CeruleanHouse2Text_74e9b:
	text "Les #MON jusqu'"
	line "au niveau 30"
	cont "t'obéiront."

	para "Plus haut et ils"
	line "n'en feront qu'à"
	cont "leur tête."

	para "Tu peux aussi"
	line "utiliser COUPE"
	cont "quand tu veux."
	done

_CeruleanHouse2Text_74ea0:
	text "La VITESSE de tes"
	line "#MON augmente"
	cont "un peu."

	para "Tu peux aussi"
	line "utiliser VOL"
	cont "quand tu veux."
	done

_CeruleanHouse2Text_74ea5:
	text "Les #MON jusqu'"
	line "au niveau 50"
	cont "t'obéiront."

	para "Plus haut et ils"
	line "n'en feront qu'à"
	cont "leur tête."

	para "Tu peux aussi"
	line "utiliser FORCE"
	cont "quand tu veux."
	done

_CeruleanHouse2Text_74eaa:
	text "La DEFENSE de tes"
	line "#MON augmente"
	cont "un peu."

	para "Tu peux aussi"
	line "utiliser SURF"
	cont "quand tu veux."
	done

_CeruleanHouse2Text_74eaf:
	text "Les #MON jusqu'"
	line "au niveau 70"
	cont "t'obéiront."

	para "Plus haut et ils"
	line "n'en feront qu'à"
	cont "leur tête."
	done

_CeruleanHouse2Text_74eb4:
	text "L'ATQ.SPE. de tes"
	line "#MON augmente"
	cont "un peu."
	done

_CeruleanHouse2Text_74eb9:
	text "Tous les #MON"
	line "t'obéiront!"
	done

CeruleanGymBadgeSpeechHouseRB_MapEventHeader: ; 0x18802b
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $7, $2, 1, GROUP_CERULEAN_CITY_RB, MAP_CERULEAN_CITY_RB
	warp_def $7, $3, 1, GROUP_CERULEAN_CITY_RB, MAP_CERULEAN_CITY_RB
	warp_def $0, $3, 6, GROUP_CERULEAN_CITY_RB, MAP_CERULEAN_CITY_RB

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_POKEFAN_M, 7, 6, $9, 0, 0, -1, -1, 0, 0, 0, GymBadgeSpeechHouseRBScript, -1
; 0x188048

