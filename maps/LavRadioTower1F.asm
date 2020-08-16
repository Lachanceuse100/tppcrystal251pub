LavRadioTower1F_MapScriptHeader: ; 0x7ee61
	; trigger count
	db 0

	; callback count
	db 0
; 0x7ee63

ReceptionistScript_0x7ee63: ; 0x7ee63
	faceplayer
	checkevent EVENT_LAVENDER_HAUNTER
	iftrue NotGhostReceptionist
	checktime $4
	iffalse NotGhostReceptionist
	loadfont
	writetext GhostReceptionistText
	waitbutton
	closetext
	end

NotGhostReceptionist:
	loadfont
	writetext UnknownText_0x7eebf
	waitbutton
	closetext
	end
; 0x7ee66

GhostReceptionistText:
	text "Oh, le fantôme"
	line "est de retour."

	para "Vous pourriez le"
	line "capturer?"
	done

OfficerScript_0x7ee66: ; 0x7ee66
	faceplayer
	checkevent EVENT_LAVENDER_HAUNTER
	iftrue NotGhostOfficer
	checktime $4
	iffalse NotGhostOfficer
	loadfont
	writetext GhostOfficerText
	waitbutton
	closetext
	end

NotGhostOfficer:
	loadfont
	writetext UnknownText_0x7eefa
	waitbutton
	closetext
	end

; 0x7ee69
GhostOfficerText:
	text "J-je p-peux r-"
	line "rester c-c-calme."
	done

HaunterScript:
	loadfont
	writetext HaunterText
	cry HAUNTER
	waitbutton
	closetext
	loadpokedata HAUNTER, 75
	startbattle
	writebyte HAUNTER
	special SpecialMonCheck
	iffalse DontKillHaunter
	disappear $7
	setevent EVENT_CAUGHT_HAUNTER
DontKillHaunter:
	returnafterbattle
	end
HaunterText:
	text "Héhéhéhé<...>"
	done

SuperNerdScript_0x7ee69: ; 0x7ee69
	jumptextfaceplayer UnknownText_0x7ef90
; 0x7ee6c

GentlemanScript_0x7ee6c: ; 0x7ee6c
	faceplayer
	loadfont
	checkevent EVENT_LAVENDER_HAUNTER
	iffalse GhostGentleman
NotGhostGentleman:
	checkflag ENGINE_EXPN_CARD
	iftrue UnknownScript_0x7ee8e
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x7ee80
	writetext UnknownText_0x7effb
	waitbutton
	closetext
	end
; 0x7ee80

UnknownScript_0x7ee80: ; 0x7ee80
	writetext UnknownText_0x7f0a1
	buttonsound
	stringtotext expncardname, $1
	scall UnknownScript_0x7ee94
	setflag ENGINE_EXPN_CARD
UnknownScript_0x7ee8e ; 0x7ee8e
	writetext UnknownText_0x7f141
	waitbutton
	checkflag ENGINE_RADIO_CARD
	iftrue HasRadioCard
	writetext NeedsRadioCard
	buttonsound
	stringtotext RadioCardName, $1
	scall UnknownScript_0x7ee94
	setflag ENGINE_RADIO_CARD
HasRadioCard:
	closetext
	end

GhostGentleman:
	checktime $4
	iffalse NotGhostGentleman
	writetext GhostGentlemanText
	waitbutton
	closetext
	end

GhostGentlemanText:
	text "Encore?"

	para "Les fantômes sont"
	line "très actifs ici<...>"
	done

NeedsRadioCard:
	text "Hein? Tu n'as pas"
	line "de COUPON RADIO!?"

	para "Oh non, non, non,"
	line "ça ne vas pas ça."
	cont "Tiens."
	done
; 0x7ee94

UnknownScript_0x7ee94 ; 0x7ee94
	jumpstd receiveitem
	end
; 0x7ee98

expncardname ; 0x7ee98
	db "CPN. EXPAN.@"
; 0x7eea2

RadioCardName:
	db "COUPON RADIO@"

SuperNerdScript_0x7eea2: ; 0x7eea2
	faceplayer
	loadfont
	checkflag ENGINE_EXPN_CARD
	iftrue UnknownScript_0x7eeb0
	writetext UnknownText_0x7f193
	waitbutton
	closetext
	end
; 0x7eeb0

UnknownScript_0x7eeb0: ; 0x7eeb0
	writetext UnknownText_0x7f248
	waitbutton
	closetext
	end
; 0x7eeb6

MapLavRadioTower1FSignpost0Script: ; 0x7eeb6
	jumptext UnknownText_0x7f2e3
; 0x7eeb9

MapLavRadioTower1FSignpost1Script: ; 0x7eeb9
	jumptext UnknownText_0x7f32d
; 0x7eebc

UnknownScript_0x7eebc: ; 0x7eebc
	jumptext UnknownText_0x7f36b
; 0x7eebf

UnknownText_0x7eebf: ; 0x7eebf
	text "Bienvenue!"
	line "Tu peux visiter"

	para "cet étage tant que"
	line "tu le veux."
	done
; 0x7eefa

UnknownText_0x7eefa: ; 0x7eefa
	text "Seul le rez-de-"
	line "chaussée est à"
	cont "visiter."

	para "Depuis l'attaque"
	line "de la TOUR RADIO"

	para "de JOHTO par un"
	line "gang criminel, on"

	para "a renforcé les me-"
	line "sures de sécurité."
	done
; 0x7ef90

UnknownText_0x7ef90: ; 0x7ef90
	text "Les gens travail-"
	line "lent dur ici, à"
	cont "la TOUR RADIO."

	para "Ils se donnent à"
	line "fond pour faire"
	cont "de bonnes émis-"
	cont "sions."
	done
; 0x7effb

UnknownText_0x7effb: ; 0x7effb
	text "Oh, non, non, non!"

	para "Nous ne sommes"
	line "plus à l'antenne"

	para "depuis l'incident"
	line "de la CENTRALE."

	para "Je cours à la ca-"
	line "tastrophe si je ne"
	cont "peux plus émettre!"

	para "Je vais être"
	line "ruiné!"
	done
; 0x7f0a1

UnknownText_0x7f0a1: ; 0x7f0a1
	text "Ah! Tu es <PLAY_G>,"
	line "celui qui a résolu"

	para "le problème de la"
	line "CENTRALE?"

	para "Grâce à toi, je"
	line "peux garder mon"
	cont "job."

	para "Tu me sauves la"
	line "vie, c'est moi qui"
	cont "te le dit."

	para "Prends ça en"
	line "cadeau."
	done
; 0x7f141

UnknownText_0x7f141: ; 0x7f141
	text "Avec ça, tu peux"
	line "écouter nos émis-"

	para "sions partout dans"
	line "KANTO."

	para "Hahahahaha!"
	done
; 0x7f193

UnknownText_0x7f193: ; 0x7f193
	text "Salut toi!"

	para "Je suis le"
	line "DIRECTEUR MUSICAL!"

	para "Hein? Ton #-"
	line "MATOS ne peut pas"

	para "capter nos émis-"
	line "sions de radio?"
	cont "Dommage<...>"

	para "Avec un CPN EXPAN,"
	line "tu peux améliorer"

	para "ton matériel!"
	line "Va en trouver un!"
	done
; 0x7f248

UnknownText_0x7f248: ; 0x7f248
	text "Salut toi!"

	para "Je suis le"
	line "DIRECTEUR MUSICAL!"

	para "Je suis à l'origi-"
	line "ne des belles"

	para "mélodies diffusés"
	line "à l'antenne."

	para "Alors branche ton"
	line "#MATOS et écoute"
	cont "nos émissions!"
	done
; 0x7f2e3

UnknownText_0x7f2e3: ; 0x7f2e3
	text "RDC  RECEPTION"
	line "1ER  VENTES"

	para "2EME PERSONNEL"
	line "3EME PRODUCTION"

	para "4EME BUREAU"
	line "     DIRECTION"
	done
; 0x7f32d

UnknownText_0x7f32d: ; 0x7f32d
	text "Animez vos #MON"
	line "avec des sons de"

	para "# FLUTE sur"
	line "l'ANETENNE 20"
	done
; 0x7f36b

UnknownText_0x7f36b: ; 0x7f36b
	text "Woah! Une étagère"
	line "de CDs et vidéos"
	cont "#MON!"
	done
; 0x7f3b9

LavRadioTower1F_MapEventHeader: ; 0x7f3b9
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 7, GROUP_LAVENDER_TOWN, MAP_LAVENDER_TOWN
	warp_def $7, $3, 7, GROUP_LAVENDER_TOWN, MAP_LAVENDER_TOWN

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 0, 11, $0, MapLavRadioTower1FSignpost0Script
	signpost 0, 5, $0, MapLavRadioTower1FSignpost1Script

	; people-events
	db 6
	person_event SPRITE_RECEPTIONIST, 10, 10, $7, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ReceptionistScript_0x7ee63, -1
	person_event SPRITE_OFFICER, 5, 19, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, OfficerScript_0x7ee66, -1
	person_event SPRITE_SUPER_NERD, 7, 5, $2, 1, 1, -1, 2, 8 + PAL_OW_RED, 0, 0, SuperNerdScript_0x7ee69, -1
	person_event SPRITE_GENTLEMAN, 5, 13, $7, 0, 0, -1, -1, 0, 0, 0, GentlemanScript_0x7ee6c, -1
	person_event SPRITE_SUPER_NERD, 10, 18, $9, 0, 0, -1, 2, 0, 0, 0, SuperNerdScript_0x7eea2, -1
	person_event SPRITE_GENGAR, 6, 10, $16, 0, 0, -1, 4, 0, 0, 0, HaunterScript, EVENT_LAVENDER_HAUNTER
; 0x7f414

