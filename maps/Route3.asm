Route3_MapScriptHeader: ; 0x1adf63
	; trigger count
	db 0

	; callback count
	db 0
; 0x1adf65

TrainerFirebreatherOtis: ; 0x1adf65
	; bit/flag number
	dw $446

	; trainer group && trainer id
	db FIREBREATHER, OTIS

	; text when seen
	dw FirebreatherOtisSeenText

	; text when trainer beaten
	dw FirebreatherOtisBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw FirebreatherOtisScript
; 0x1adf71

FirebreatherOtisScript: ; 0x1adf71
	talkaftercancel
	loadfont
	writetext UnknownText_0x1adff7
	waitbutton
	closetext
	end
; 0x1adf79

TrainerYoungsterWarren: ; 0x1adf79
	; bit/flag number
	dw $5b1

	; trainer group && trainer id
	db YOUNGSTER, WARREN

	; text when seen
	dw YoungsterWarrenSeenText

	; text when trainer beaten
	dw YoungsterWarrenBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw YoungsterWarrenScript
; 0x1adf85

YoungsterWarrenScript: ; 0x1adf85
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ae051
	waitbutton
	closetext
	end
; 0x1adf8d

TrainerYoungsterJimmy: ; 0x1adf8d
	; bit/flag number
	dw $5b2

	; trainer group && trainer id
	db YOUNGSTER, JIMMY

	; text when seen
	dw YoungsterJimmySeenText

	; text when trainer beaten
	dw YoungsterJimmyBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw YoungsterJimmyScript
; 0x1adf99

YoungsterJimmyScript: ; 0x1adf99
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ae0a9
	waitbutton
	closetext
	end
; 0x1adfa1

TrainerFirebreatherBurt: ; 0x1adfa1
	; bit/flag number
	dw $449

	; trainer group && trainer id
	db FIREBREATHER, BURT

	; text when seen
	dw FirebreatherBurtSeenText

	; text when trainer beaten
	dw FirebreatherBurtBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw FirebreatherBurtScript
; 0x1adfad

FirebreatherBurtScript: ; 0x1adfad
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ae118
	waitbutton
	closetext
	end
; 0x1adfb5

MapRoute3Signpost0Script: ; 0x1adfb5
	jumptext UnknownText_0x1ae163
; 0x1adfb8
MapRoute3PokecenterSign:
	jumpstd pokecentersign

FirebreatherOtisSeenText: ; 0x1adfb8
	text "Ah! Quelle belle"
	line "journée!"
	done
; 0x1adfdb

FirebreatherOtisBeatenText: ; 0x1adfdb
	text "Il fait beau mais"
	line "je suis tout"
	cont "mouillé<...>"
	done
; 0x1adff7

UnknownText_0x1adff7: ; 0x1adff7
	text "Dur dur de m'al-"
	line "lumer quand il"
	cont "pleut."
	done
; 0x1ae021

YoungsterWarrenSeenText: ; 0x1ae021
	text "Euuh<...> Je sais pas"
	line "quoi faire<...>"
	done
; 0x1ae040

YoungsterWarrenBeatenText: ; 0x1ae040
	text "Je savais que"
	line "j'allais perdre<...>"
	done
; 0x1ae051

UnknownText_0x1ae051: ; 0x1ae051
	text "T'es balèze."

	para "J'avais peur de"
	line "t'affronter<...>"
	done
; 0x1ae082

YoungsterJimmySeenText: ; 0x1ae082
	text "Je cours comme le"
	line "vent!"
	done
; 0x1ae09c

YoungsterJimmyBeatenText: ; 0x1ae09c
	text "Je suis soufflé!"
	done
; 0x1ae0a9

UnknownText_0x1ae0a9: ; 0x1ae0a9
	text "Je porte des"
	line "shorts toute"
	cont "l'année."

	para "C'est mon sens de"
	line "la mode."
	done
; 0x1ae0e7

FirebreatherBurtSeenText: ; 0x1ae0e7
	text "Avance et regarde!"
	done
; 0x1ae107

FirebreatherBurtBeatenText: ; 0x1ae107
	text "Yow! C'est chaud!"
	done
; 0x1ae118

UnknownText_0x1ae118: ; 0x1ae118
	text "Je suis le plus"
	line "grand crache-feu"
	cont "de KANTO."

	para "Mais pas le plus"
	line "grand dresseur<...>"
	done
; 0x1ae163

UnknownText_0x1ae163: ; 0x1ae163
	text "SQUARE du MONT"
	line "SELENITE:"

	para "En haut puis à"
	line "droite des"
	cont "escaliers."
	done
; 0x1ae18a

Route3_MapEventHeader: ; 0x1ae18a
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $1, $34, 1, GROUP_MT_MOON_B1F, MAP_MT_MOON_B1F
	warp_def $3, $2f, 1, GROUP_MOUNT_MOON_POKECENTER_1F, MAP_MOUNT_MOON_POKECENTER_1F

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 13, 49, $0, MapRoute3Signpost0Script
	signpost  3, 48, $0, MapRoute3PokecenterSign

	; people-events
	db 4
	person_event SPRITE_FISHER, 16, 30, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 2, TrainerFirebreatherOtis, -1
	person_event SPRITE_YOUNGSTER, 11, 14, $8, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerYoungsterWarren, -1
	person_event SPRITE_YOUNGSTER, 7, 20, $a, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 1, TrainerYoungsterJimmy, -1
	person_event SPRITE_FISHER, 9, 53, $a, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerFirebreatherBurt, -1
; 0x1ae1ce

