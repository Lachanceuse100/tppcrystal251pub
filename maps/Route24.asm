Route24_MapScriptHeader: ; 0x1adbf8
	; trigger count
	db 0

	; callback count
	db 0
; 0x1adbfa

RocketScript_0x1adbfa: ; 0x1adbfa
	faceplayer
	playmusic MUSIC_ROCKET_ENCOUNTER
	loadfont
	writetext UnknownText_0x1adc2e
	waitbutton
	closetext
	winlosstext UnknownText_0x1add67, $ffff
	loadtrainer GRUNTM, 31
	startbattle
	reloadmapmusic
	returnafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	loadfont
	writetext UnknownText_0x1addc0
	buttonsound
	special Functionc48f
	writetext UnknownText_0x1adee1
	waitbutton
	closetext
	special Special_FadeToBlack
	special Functiond91
	disappear $2
	pause 25
	special Function8c0ab
	playmapmusic
	end
; 0x1adc2e

UnknownText_0x1adc2e: ; 0x1adc2e
	text "Hé toi! Moi yé"
	line "souis dé la TEAM"
	cont "ROCKET!"

	para "Yé souis de oune"
	line "autre pays. Mé moi"
	cont "numéro un!"

	para "Si arrété énérgie"
	line "ici pas bien pour"
	cont "lé amis à moi!"

	para "Ma mission cé oune"
	line "sécré alors pas"
	cont "té dire!"

	para "Mé! Si toi mé"
	line "gagné, cé dé"

	para "l'honor de té dire"
	line "lé secret à moi."

	para "Hé gamin, cé"
	line "parti!"
	done
; 0x1add67

UnknownText_0x1add67: ; 0x1add67
	text "Ayiéééé! No, no,"
	line "no, yé lé crois"
	cont "pas!"

	para "Té qui toi, no?"
	line "Yé souis pas dé"
	cont "la hauteur!"
	done
; 0x1addc0

UnknownText_0x1addc0: ; 0x1addc0
	text "OK. Moi lé dire"
	line "la secret."

	para "PARTIE MACH. jé la"
	line "volé moi."

	para "La planqué aussi"
	line "dans ARENE AZURIA"

	para "Dans l'eau té la"
	line "cherches au"
	cont "milieu."

	para "Ma toi oublies"
	line "pas moi!"

	para "TEAM ROCKET té"
	line "battre!"

	para "Ils viennent de"
	line "JOHTO mes amis et"

	para "té tête té la"
	line "cassent, oh oui."
	done
; 0x1adee1

UnknownText_0x1adee1: ; 0x1adee1
	text "<...>"

	para "Qué dit? TEAM"
	line "ROCKET cassé?"

	cont "Par toi en plous?"

	para "Oh, non! Qué yé"
	line "dois faire moi?"
	done
; 0x1adf50

Route24_MapEventHeader: ; 0x1adf50
	; filler
	db 0, 0

	; warps
	db 0

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_ROCKET, 11, 12, $3, 0, 0, -1, -1, 0, 0, 0, RocketScript_0x1adbfa, EVENT_ROCKET_ON_ROUTE_24
; 0x1adf63

