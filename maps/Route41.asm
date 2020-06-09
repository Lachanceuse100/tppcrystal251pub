Route41_MapScriptHeader: ; 0x1a683f
	; trigger count
	db 0

	; callback count
	db 0
; 0x1a6841

TrainerSwimmerfKaylee: ; 0x1a6841
	; bit/flag number
	dw $3ea

	; trainer group && trainer id
	db SWIMMERF, KAYLEE

	; text when seen
	dw SwimmerfKayleeSeenText

	; text when trainer beaten
	dw SwimmerfKayleeBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SwimmerfKayleeScript
; 0x1a684d

SwimmerfKayleeScript: ; 0x1a684d
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a6c7f
	waitbutton
	closetext
	end
; 0x1a6855

TrainerSwimmerfSusie: ; 0x1a6855
	; bit/flag number
	dw $3eb

	; trainer group && trainer id
	db SWIMMERF, SUSIE

	; text when seen
	dw SwimmerfSusieSeenText

	; text when trainer beaten
	dw SwimmerfSusieBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SwimmerfSusieScript
; 0x1a6861

SwimmerfSusieScript: ; 0x1a6861
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a6d11
	waitbutton
	closetext
	end
; 0x1a6869

TrainerSwimmerfDenise: ; 0x1a6869
	; bit/flag number
	dw $3ec

	; trainer group && trainer id
	db SWIMMERF, DENISE

	; text when seen
	dw SwimmerfDeniseSeenText

	; text when trainer beaten
	dw SwimmerfDeniseBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SwimmerfDeniseScript
; 0x1a6875

SwimmerfDeniseScript: ; 0x1a6875
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a6d79
	waitbutton
	closetext
	end
; 0x1a687d

TrainerSwimmerfKara: ; 0x1a687d
	; bit/flag number
	dw $3ed

	; trainer group && trainer id
	db SWIMMERF, KARA

	; text when seen
	dw SwimmerfKaraSeenText

	; text when trainer beaten
	dw SwimmerfKaraBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SwimmerfKaraScript
; 0x1a6889

SwimmerfKaraScript: ; 0x1a6889
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a6e58
	waitbutton
	closetext
	end
; 0x1a6891

TrainerSwimmerfWendy: ; 0x1a6891
	; bit/flag number
	dw $3ee

	; trainer group && trainer id
	db SWIMMERF, WENDY

	; text when seen
	dw SwimmerfWendySeenText

	; text when trainer beaten
	dw SwimmerfWendyBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SwimmerfWendyScript
; 0x1a689d

SwimmerfWendyScript: ; 0x1a689d
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a6ec2
	waitbutton
	closetext
	end
; 0x1a68a5

TrainerSwimmermCharlie: ; 0x1a68a5
	; bit/flag number
	dw $597

	; trainer group && trainer id
	db SWIMMERM, CHARLIE

	; text when seen
	dw SwimmermCharlieSeenText

	; text when trainer beaten
	dw SwimmermCharlieBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SwimmermCharlieScript
; 0x1a68b1

SwimmermCharlieScript: ; 0x1a68b1
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a696e
	waitbutton
	closetext
	end
; 0x1a68b9

TrainerSwimmermGeorge: ; 0x1a68b9
	; bit/flag number
	dw $598

	; trainer group && trainer id
	db SWIMMERM, GEORGE

	; text when seen
	dw SwimmermGeorgeSeenText

	; text when trainer beaten
	dw SwimmermGeorgeBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SwimmermGeorgeScript
; 0x1a68c5

SwimmermGeorgeScript: ; 0x1a68c5
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a69d4
	waitbutton
	closetext
	end
; 0x1a68cd

TrainerSwimmermBerke: ; 0x1a68cd
	; bit/flag number
	dw $599

	; trainer group && trainer id
	db SWIMMERM, BERKE

	; text when seen
	dw SwimmermBerkeSeenText

	; text when trainer beaten
	dw SwimmermBerkeBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SwimmermBerkeScript
; 0x1a68d9

SwimmermBerkeScript: ; 0x1a68d9
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a6aa4
	waitbutton
	closetext
	end
; 0x1a68e1

TrainerSwimmermKirk: ; 0x1a68e1
	; bit/flag number
	dw $59a

	; trainer group && trainer id
	db SWIMMERM, KIRK

	; text when seen
	dw SwimmermKirkSeenText

	; text when trainer beaten
	dw SwimmermKirkBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SwimmermKirkScript
; 0x1a68ed

SwimmermKirkScript: ; 0x1a68ed
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a6b6c
	waitbutton
	closetext
	end
; 0x1a68f5

TrainerSwimmermMathew: ; 0x1a68f5
	; bit/flag number
	dw $59b

	; trainer group && trainer id
	db SWIMMERM, MATHEW

	; text when seen
	dw SwimmermMathewSeenText

	; text when trainer beaten
	dw SwimmermMathewBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SwimmermMathewScript
; 0x1a6901

SwimmermMathewScript: ; 0x1a6901
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a6bed
	waitbutton
	closetext
	end
; 0x1a6909

UnknownScript_0x1a6909: ; 0x1a6909
	jumpstd smashrock
; 0x1a690c

MapRoute41SignpostItem0: ; 0x1a690c
	dw $00ac
	db MAX_ETHER
; 0x1a690f

SwimmermCharlieSeenText: ; 0x1a690f
	text "J'ai volé jusqu'"
	line "ici depuis KANTO!"

	para "Les eaux sont plus"
	line "propres par ici."
	done
; 0x1a6952

SwimmermCharlieBeatenText: ; 0x1a6952
	text "Houlà!"
	done
; 0x1a696e

UnknownText_0x1a696e: ; 0x1a696e
	text "Lâcher des gaz"
	line "dans l'océan"
	
	para "n'était pas très"
	line "intelligent<...>"
	done
; 0x1a6999

SwimmermGeorgeSeenText: ; 0x1a6999
	text "Je suis fatigué."
	line "Si je gagne, tu me"
	cont "donne ton #MON,"
	cont "OK?"
	done
; 0x1a69c7

SwimmermGeorgeBeatenText: ; 0x1a69c7
	text "Pfff<...> pff<...>"
	done
; 0x1a69d4

UnknownText_0x1a69d4: ; 0x1a69d4
	text "IRISIA est si"
	line "loin."

	para "Mais retourner à"
	line "OLIVILLE<...> Ca fait"
	cont "une trotte!"

	para "Que faire?"
	done
; 0x1a6a2e

SwimmermBerkeSeenText: ; 0x1a6a2e
	text "Tu vois ces îles"
	line "bloquées par des"
	cont "siphons?"

	para "Il doit y avoir un"
	line "secret bien gardé!"
	done
; 0x1a6a80

SwimmermBerkeBeatenText: ; 0x1a6a80
	text "C'est quoi le se-"
	line "cret de ta force?"
	done
; 0x1a6aa4

UnknownText_0x1a6aa4: ; 0x1a6aa4
	text "Par une nuit noire"
	line "et profonde<...>"

	para "J'ai vu ce #MON"
	line "géant voler depuis"
	cont "les îles."

	para "Il répendait ses"
	line "plumes de ses"
	cont "ailes d'argent."
	done
; 0x1a6b26

SwimmermKirkSeenText: ; 0x1a6b26
	text "Je vis à EBENELLE!"

	para "J'ai volé ici avec"
	line "mes #MON de"
	cont "type VOL"
	done
; 0x1a6b62

SwimmermKirkBeatenText: ; 0x1a6b62
	text "Je suis K.O.!"
	done
; 0x1a6b6c

UnknownText_0x1a6b6c: ; 0x1a6b6c
	text "Les courants m'em-"
	line "pêchent d'attein-"
	cont "dre cette île<...>"
	done
; 0x1a6b9d

SwimmermMathewSeenText: ; 0x1a6b9d
	text "Tu cherches le"
	line "secret des"
	cont "TOURB'ILES?"
	done
; 0x1a6bcc

SwimmermMathewBeatenText: ; 0x1a6bcc
	text "Ooh! Quelle"
	line "endurance!"
	done
; 0x1a6bed

UnknownText_0x1a6bed: ; 0x1a6bed
	text "Il y a un secret"
	line "aux TOURB'ILES<...>"

	para "Il y fait noir!"
	line "Ca c'est sûr!"
	done
; 0x1a6c24

SwimmerfKayleeSeenText: ; 0x1a6c24
	text "Je vais aux"
	line "TOURB'ILES."

	para "Je vais les explo-"
	line "rer avec un ami."
	done
; 0x1a6c67

SwimmerfKayleeBeatenText: ; 0x1a6c67
	text "LOUPIO illumine"
	line "ma route."
	done
; 0x1a6c7f

UnknownText_0x1a6c7f: ; 0x1a6c7f
	text "On dit qu'il y a"
	line "un gros #MON"
	cont "au fond des"
	cont "TOURB'ILES."

	para "Je me demande ce"
	line "que c'est<...>"
	done
; 0x1a6cda

SwimmerfSusieSeenText: ; 0x1a6cda
	text "Tu as l'air si"
	line "élégant sur ton"
	cont "#MON."
	done
; 0x1a6d04

SwimmerfSusieBeatenText: ; 0x1a6d04
	text "Je suis écrasée<...>"
	done
; 0x1a6d11

UnknownText_0x1a6d11: ; 0x1a6d11
	text "N'y avait-il pas"
	line "une chanson d'un"
	cont "garçon sur son"
	cont "LOKHLASS?"
	done
; 0x1a6d46

SwimmerfDeniseSeenText: ; 0x1a6d46
	text "Il y a beaucoup"
	line "trop d'eau par"
	cont "ici<...>"
	done
; 0x1a6d72

SwimmerfDeniseBeatenText: ; 0x1a6d72
	text "Ohh!"
	done
; 0x1a6d79

UnknownText_0x1a6d79: ; 0x1a6d79
	text "Un coup de soleil"
	line "est vite arrivé."

	para "Mais je ne mets"
	line "pas de crème."

	para "Je veux garder"
	line "l'eau propre."
	done
; 0x1a6dd0

SwimmerfKaraSeenText: ; 0x1a6dd0
	text "Si tu es à plat,"
	line "fais la planche!"

	para "Ou assieds-toi sur"
	line "ton #MON EAU."
	done
; 0x1a6e33

SwimmerfKaraBeatenText: ; 0x1a6e33
	text "CORAYON est con-"
	line "fortable au moins."
	done
; 0x1a6e58

UnknownText_0x1a6e58: ; 0x1a6e58
	text "J'entends des cris"
	line "venant des ILES."
	done
; 0x1a6e85

SwimmerfWendySeenText: ; 0x1a6e85
	text "Je plonge sous"
	line "l'eau avec mes"
	cont "#MON!"
	done
; 0x1a6eb7

SwimmerfWendyBeatenText: ; 0x1a6eb7
	text "Oh<...>"
	done
; 0x1a6ec2

UnknownText_0x1a6ec2: ; 0x1a6ec2
	text "Les STARI sont"
	line "utile quand tu"
	cont "plonges sous"
	cont "l'eau."

	para "Mais tu ne peux"
	line "pas les trouver"
	cont "dans l'océan."
	done
; 0x1a6f12

Route41_MapEventHeader: ; 0x1a6f12
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $11, $c, 1, GROUP_WHIRL_ISLAND_NW, MAP_WHIRL_ISLAND_NW
	warp_def $13, $24, 1, GROUP_WHIRL_ISLAND_NE, MAP_WHIRL_ISLAND_NE
	warp_def $25, $c, 1, GROUP_WHIRL_ISLAND_SW, MAP_WHIRL_ISLAND_SW
	warp_def $2d, $24, 1, GROUP_WHIRL_ISLAND_SE, MAP_WHIRL_ISLAND_SE

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 35, 9, $7, MapRoute41SignpostItem0

	; people-events
	db 10
	person_event SPRITE_OLIVINE_RIVAL, 10, 36, $a, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerSwimmermCharlie, -1
	person_event SPRITE_OLIVINE_RIVAL, 12, 50, $a, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerSwimmermGeorge, -1
	person_event SPRITE_OLIVINE_RIVAL, 30, 24, $1e, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerSwimmermBerke, -1
	person_event SPRITE_OLIVINE_RIVAL, 34, 36, $1f, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerSwimmermKirk, -1
	person_event SPRITE_OLIVINE_RIVAL, 50, 23, $1e, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerSwimmermMathew, -1
	person_event SPRITE_SWIMMER_GIRL, 8, 21, $a, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 3, TrainerSwimmerfKaylee, -1
	person_event SPRITE_SWIMMER_GIRL, 23, 27, $7, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 3, TrainerSwimmerfSusie, -1
	person_event SPRITE_SWIMMER_GIRL, 38, 31, $8, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 3, TrainerSwimmerfDenise, -1
	person_event SPRITE_SWIMMER_GIRL, 32, 48, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 4, TrainerSwimmerfKara, -1
	person_event SPRITE_SWIMMER_GIRL, 54, 13, $a, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 2, TrainerSwimmerfWendy, -1
; 0x1a6fb3

