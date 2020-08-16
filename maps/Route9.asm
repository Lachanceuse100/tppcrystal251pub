Route9_MapScriptHeader: ; 0x1aaf25
	; trigger count
	db 0

	; callback count
	db 0
; 0x1aaf27

TrainerCamperDean: ; 0x1aaf27
	; bit/flag number
	dw $420

	; trainer group && trainer id
	db CAMPER, DEAN

	; text when seen
	dw CamperDeanSeenText

	; text when trainer beaten
	dw CamperDeanBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CamperDeanScript
; 0x1aaf33

CamperDeanScript: ; 0x1aaf33
	talkaftercancel
	loadfont
	writetext UnknownText_0x1aafd9
	waitbutton
	closetext
	end
; 0x1aaf3b

TrainerPicnickerHeidi: ; 0x1aaf3b
	; bit/flag number
	dw $48a

	; trainer group && trainer id
	db PICNICKER, HEIDI

	; text when seen
	dw PicnickerHeidiSeenText

	; text when trainer beaten
	dw PicnickerHeidiBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PicnickerHeidiScript
; 0x1aaf47

PicnickerHeidiScript: ; 0x1aaf47
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ab07c
	waitbutton
	closetext
	end
; 0x1aaf4f

TrainerCamperSid: ; 0x1aaf4f
	; bit/flag number
	dw $421

	; trainer group && trainer id
	db CAMPER, SID

	; text when seen
	dw CamperSidSeenText

	; text when trainer beaten
	dw CamperSidBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CamperSidScript
; 0x1aaf5b

CamperSidScript: ; 0x1aaf5b
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ab0f6
	waitbutton
	closetext
	end
; 0x1aaf63

TrainerPicnickerEdna: ; 0x1aaf63
	; bit/flag number
	dw $48b

	; trainer group && trainer id
	db PICNICKER, EDNA

	; text when seen
	dw PicnickerEdnaSeenText

	; text when trainer beaten
	dw PicnickerEdnaBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PicnickerEdnaScript
; 0x1aaf6f

PicnickerEdnaScript: ; 0x1aaf6f
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ab15f
	waitbutton
	closetext
	end
; 0x1aaf77

TrainerHikerTim: ; 0x1aaf77
	; bit/flag number
	dw $530

	; trainer group && trainer id
	db HIKER, TIM

	; text when seen
	dw HikerTimSeenText

	; text when trainer beaten
	dw HikerTimBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw HikerTimScript
; 0x1aaf83

HikerTimScript: ; 0x1aaf83
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ab210
	waitbutton
	closetext
	end
; 0x1aaf8b

TrainerHikerSidney: ; 0x1aaf8b
	; bit/flag number
	dw $532

	; trainer group && trainer id
	db HIKER, SIDNEY

	; text when seen
	dw HikerSidneySeenText

	; text when trainer beaten
	dw HikerSidneyBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw HikerSidneyScript
; 0x1aaf97

HikerSidneyScript: ; 0x1aaf97
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ab278
	waitbutton
	closetext
	end
; 0x1aaf9f

MapRoute9Signpost0Script: ; 0x1aaf9f
	jumptext UnknownText_0x1ab2a2
; 0x1aafa2

MapRoute9SignpostItem1: ; 0x1aafa2
	dw $00f2
	db ETHER

; 0x1aafa5

CamperDeanSeenText: ; 0x1aafa5
	text "Je viens pour ex-"
	line "plorer la GROTTE."
	done
; 0x1aafc5

CamperDeanBeatenText: ; 0x1aafc5
	text "Whoa! Danger!"
	done
; 0x1aafd9

UnknownText_0x1aafd9: ; 0x1aafd9
	text "Mes #MON ont"
	line "été blessés avant"

	para "d'entrer dans la"
	line "GROTTE."

	para "Je devrais les"
	line "amener à un CENTRE"
	cont "#MON."
	done
; 0x1ab03f

PicnickerHeidiSeenText: ; 0x1ab03f
	text "J'ai fait un"
	line "pique-nique à la"
	cont "CENTRALE."

	para "L'ambiance était"
	line "électrique!"
	done
; 0x1ab074

PicnickerHeidiBeatenText: ; 0x1ab074
	text "Ohhhh!"
	done
; 0x1ab07c

UnknownText_0x1ab07c: ; 0x1ab07c
	text "La CENTRALE est"
	line "super grande."

	para "Il paraît qu'on"
	line "peut y trouver un"
	cont "#MON très rare."
	done
; 0x1ab0c2

CamperSidSeenText: ; 0x1ab0c2
	text "Hé! Il y a des"
	line "poubelle, tu sais?"
	done
; 0x1ab0da

CamperSidBeatenText: ; 0x1ab0da
	text "Je disais ça comme"
	line "ça<...>"
	done
; 0x1ab0f6

UnknownText_0x1ab0f6: ; 0x1ab0f6
	text "Attention à ne"
	line "rien jeter par"
	cont "terre!"
	done
; 0x1ab127

PicnickerEdnaSeenText: ; 0x1ab127
	text "Les gens ne de-"
	line "vraient pas jeter"
	cont "de déchets."
	done
; 0x1ab151

PicnickerEdnaBeatenText: ; 0x1ab151
	text "Les SMOGOGO aident"
	line "à garder la nature"
	cont "propre."

	para "Ils absorbent les"
	line "déchets!"
	done
; 0x1ab15f

UnknownText_0x1ab15f: ; 0x1ab15f
	text "Conserver nos"
	line "énergies est im-"
	cont "portant mais"

	para "l'environnement"
	line "est plus impor-"
	cont "tant!"
	done
; 0x1ab1a8

HikerTimSeenText: ; 0x1ab1a8
	text "Elle descend du"
	line "MONT ARGENT à"
	cont "cheval<...>"
	cont "La la la la la<...>"

	para "Le MONT ARGENT est"
	line "à JOHTO, non?"
	done
; 0x1ab1f7

HikerTimBeatenText: ; 0x1ab1f7
	text "J'étais occupé à"
	line "chanter<...>"
	done
; 0x1ab210

UnknownText_0x1ab210: ; 0x1ab210
	text "Il faut que je me"
	line "concentre plus en"
	cont "combat."
	done
; 0x1ab232

HikerSidneySeenText: ; 0x1ab232
	text "Je vais te dire un"
	line "secret."

	para "Mais d'abord,"
	line "combat!"
	done
; 0x1ab260

HikerSidneyBeatenText: ; 0x1ab260
	text "Ah, zut!"
	line "Perdu<...>"
	done
; 0x1ab278

UnknownText_0x1ab278: ; 0x1ab278
	text "La CENTRALE est de"
	line "l'autre côté d'une"
	cont "rivière."
	done
; 0x1ab2a2

UnknownText_0x1ab2a2: ; 0x1ab2a2
	text "ROUTE 9"

	para "AZURIA -"
	line "GROTTE"
	done
; 0x1ab2c7

Route9_MapEventHeader: ; 0x1ab2c7
	; filler
	db 0, 0

	; warps
	db 1
	warp_def $f, $30, 1, GROUP_ROCK_TUNNEL_1F, MAP_ROCK_TUNNEL_1F

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 7, 15, $0, MapRoute9Signpost0Script
	signpost 15, 41, $7, MapRoute9SignpostItem1

	; people-events
	db 6
	person_event SPRITE_YOUNGSTER, 15, 27, $8, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 3, TrainerCamperDean, -1
	person_event SPRITE_LASS, 12, 43, $a, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 3, TrainerPicnickerHeidi, -1
	person_event SPRITE_YOUNGSTER, 8, 15, $a, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 5, TrainerCamperSid, -1
	person_event SPRITE_LASS, 19, 16, $7, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 1, TrainerPicnickerEdna, -1
	person_event SPRITE_POKEFAN_M, 7, 32, $9, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 2, TrainerHikerTim, -1
	person_event SPRITE_POKEFAN_M, 19, 40, $9, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 4, TrainerHikerSidney, -1
; 0x1ab32a

