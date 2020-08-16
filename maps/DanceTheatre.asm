DanceTheatre_MapScriptHeader: ; 0x99460
	; trigger count
	db 0

	; callback count
	db 0
; 0x99462

TrainerKimono_girlNaoko2: ; 0x99462
	; bit/flag number
	dw $4df

	; trainer group && trainer id
	db KIMONO_GIRL, NAOKO2

	; text when seen
	dw Kimono_girlNaoko2SeenText

	; text when trainer beaten
	dw Kimono_girlNaoko2BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Kimono_girlNaoko2Script
; 0x9946e

Kimono_girlNaoko2Script: ; 0x9946e
	talkaftercancel
	loadfont
	writetext UnknownText_0x99579
	waitbutton
	closetext
	end
; 0x99476

TrainerKimono_girlSayo: ; 0x99476
	; bit/flag number
	dw $4e0

	; trainer group && trainer id
	db KIMONO_GIRL, SAYO

	; text when seen
	dw Kimono_girlSayoSeenText

	; text when trainer beaten
	dw Kimono_girlSayoBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Kimono_girlSayoScript
; 0x99482

Kimono_girlSayoScript: ; 0x99482
	talkaftercancel
	loadfont
	writetext UnknownText_0x9960b
	waitbutton
	closetext
	end
; 0x9948a

TrainerKimono_girlZuki: ; 0x9948a
	; bit/flag number
	dw $4e1

	; trainer group && trainer id
	db KIMONO_GIRL, ZUKI

	; text when seen
	dw Kimono_girlZukiSeenText

	; text when trainer beaten
	dw Kimono_girlZukiBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Kimono_girlZukiScript
; 0x99496

Kimono_girlZukiScript: ; 0x99496
	talkaftercancel
	loadfont
	writetext UnknownText_0x99688
	waitbutton
	closetext
	end
; 0x9949e

TrainerKimono_girlKuni: ; 0x9949e
	; bit/flag number
	dw $4e2

	; trainer group && trainer id
	db KIMONO_GIRL, KUNI

	; text when seen
	dw Kimono_girlKuniSeenText

	; text when trainer beaten
	dw Kimono_girlKuniBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Kimono_girlKuniScript
; 0x994aa

Kimono_girlKuniScript: ; 0x994aa
	talkaftercancel
	loadfont
	writetext UnknownText_0x99714
	waitbutton
	closetext
	end
; 0x994b2

TrainerKimono_girlMiki: ; 0x994b2
	; bit/flag number
	dw $4e3

	; trainer group && trainer id
	db KIMONO_GIRL, MIKI

	; text when seen
	dw Kimono_girlMikiSeenText

	; text when trainer beaten
	dw Kimono_girlMikiBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Kimono_girlMikiScript
; 0x994be

Kimono_girlMikiScript: ; 0x994be
	talkaftercancel
	loadfont
	writetext UnknownText_0x997a8
	waitbutton
	closetext
	end
; 0x994c6

GentlemanScript_0x994c6: ; 0x994c6
	faceplayer
	loadfont
	writetext UnknownText_0x9980a
	buttonsound
	checkevent EVENT_GOT_HM03_SURF
	iftrue UnknownScript_0x99515
	checkevent EVENT_BEAT_KIMONO_GIRL_NAOKO
	iffalse UnknownScript_0x994f3
	checkevent EVENT_BEAT_KIMONO_GIRL_SAYO
	iffalse UnknownScript_0x994f3
	checkevent EVENT_BEAT_KIMONO_GIRL_ZUKI
	iffalse UnknownScript_0x994f3
	checkevent EVENT_BEAT_KIMONO_GIRL_KUNI
	iffalse UnknownScript_0x994f3
	checkevent EVENT_BEAT_KIMONO_GIRL_MIKI
	iffalse UnknownScript_0x994f3
	jump UnknownScript_0x99505
; 0x994f3

UnknownScript_0x994f3: ; 0x994f3
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue UnknownScript_0x994ff
	writetext UnknownText_0x99891
	waitbutton
	closetext
	end
; 0x994ff

UnknownScript_0x994ff: ; 0x994ff
	writetext UnknownText_0x998d4
	waitbutton
	closetext
	end
; 0x99505

UnknownScript_0x99505: ; 0x99505
	writetext UnknownText_0x9991a
	buttonsound
	verbosegiveitem HM_STRENGTH, 1
	setevent EVENT_GOT_HM03_SURF
	writetext UnknownText_0x9999b
	waitbutton
	closetext
	end
; 0x99515

UnknownScript_0x99515: ; 0x99515
	writetext UnknownText_0x999d5
	waitbutton
	closetext
	end
; 0x9951b

RhydonScript_0x9951b: ; 0x9951b
	loadfont
	writetext UnknownText_0x99a0a
	cry RHYDON
	waitbutton
	closetext
	end
; 0x99525

CooltrainerMScript_0x99525: ; 0x99525
	jumptextfaceplayer UnknownText_0x99a24
; 0x99528

GrannyScript_0x99528: ; 0x99528
	jumptextfaceplayer UnknownText_0x99aaa
; 0x9952b

MapDanceTheatreSignpost1Script: ; 0x9952b
	jumptext UnknownText_0x99b79
; 0x9952e

Kimono_girlNaoko2SeenText: ; 0x9952e
	text "Tu as de jolis"
	line "#MON. On peut"
	cont "voir ce que ça"
	cont "donne en combat?"
	done
; 0x9955f

Kimono_girlNaoko2BeatenText: ; 0x9955f
	text "Oh, ils ont de"
	line "gros biscotos!"
	done
; 0x99579

UnknownText_0x99579: ; 0x99579
	text "J'ai apprécié ce"
	line "duel. On pourra"
	cont "se revoir?"
	done
; 0x995ae

Kimono_girlSayoSeenText: ; 0x995ae
	text "Je danse toujours"
	line "avec mes #MON."

	para "Bien sûr, je les"
	line "entraîne aussi."
	done
; 0x995ea

Kimono_girlSayoBeatenText: ; 0x995ea
	text "Oh, j'ai failli"
	line "t'avoir!"
	done
; 0x9960b

UnknownText_0x9960b: ; 0x9960b
	text "Le rythme, c'est"
	line "important pour la"

	para "danse et pour les"
	line "MON."
	done
; 0x9963f

Kimono_girlZukiSeenText: ; 0x9963f
	text "Elle est pas belle"
	line "ma barrette?"

	para "Oh. Un combat de"
	line "#MON?"
	done
; 0x9966c

Kimono_girlZukiBeatenText: ; 0x9966c
	text "Je n'ai plus de"
	line "#MON<...>"
	done
; 0x99688

UnknownText_0x99688: ; 0x99688
	text "Tous les mois, je"
	line "change la fleur de"
	cont "ma barrette."
	done
; 0x996c0

Kimono_girlKuniSeenText: ; 0x996c0
	text "Oh, t'es mignon"
	line "comme dresseur!"

	para "Un petit combat en"
	line "tête à tête?"
	done
; 0x996f5

Kimono_girlKuniBeatenText: ; 0x996f5
	text "Tu es plus fort"
	line "que tu en as"
	cont "l'air!"
	done
; 0x99714

UnknownText_0x99714: ; 0x99714
	text "Je me suis entraî-"
	line "née d'arrache-pied"

	para "et je pensais être"
	line "au niveau. Zut<...>"
	done
; 0x9975c

Kimono_girlMikiSeenText: ; 0x9975c
	text "Tu aimes mes pas"
	line "de danse?"
	
	para "Je suis aussi"
	line "forte en #MON."
	done
; 0x9978a

Kimono_girlMikiBeatenText: ; 0x9978a
	text "Oh, t'es pas mau-"
	line "vais non plus."
	done
; 0x997a8

UnknownText_0x997a8: ; 0x997a8
	text "Je continue de"
	line "danser, les gens"
	cont "adorent ça!"

	para "Mes #MON aussi."
	done
; 0x9980a

UnknownText_0x9980a: ; 0x9980a
	text "Les KIMONO ne sont"
	line "pas seulement de"

	para "bonnes danseuses,"
	line "elles sont aussi"
	cont "douées en #MON."

	para "Je les défie sou-"
	line "vent mais je ne"

	para "leur arrive pas à"
	line "la cheville<...>"
	done
; 0x99891

UnknownText_0x99891: ; 0x99891
	text "Mon garçon, si tu"
	line "les bats, je te"

	para "donnerais une"
	line "récompense."
	done
; 0x998d4

UnknownText_0x998d4: ; 0x998d4
	text "Ma fille, si tu"
	line "les bats, je te"

	para "donnerais une"
	line "récompense."
	done
; 0x9991a

UnknownText_0x9991a: ; 0x9991a
	text "La façon dont tu"
	line "as combattu<...>"

	para "C'était aussi joli"
	line "qu'une danse."

	para "C'était plaisant"
	line "à voir!"

	para "Je veux que tu"
	line "acceptes ceci."
	cont "N'aie pas peur!"
	cont "Prends-le!"
	done
; 0x9999b

UnknownText_0x9999b: ; 0x9999b
	text "C'est FORCE."

	para "Cette capacité"
	line "permet aux #MON"
	cont "de bouger des gros"
	cont "rochers."

	para "Si tu veux traver-"
	line "ser les mers, tu"
	cont "devrais t'adresser"
	cont "à mon ami PETER."
	done
; 0x999d5

UnknownText_0x999d5: ; 0x999d5
	text "J'aimerais que mes"
	line "#MON soient"
	cont "aussi élégants que"
	cont "ceux des KIMONO<...>"
	done
; 0x99a0a

UnknownText_0x99a0a: ; 0x99a0a
	text "RHINOFEROS: Ross!"
	line "Férrroosss!"
	done
; 0x99a24

UnknownText_0x99a24: ; 0x99a24
	text "Cet homme est"
	line "toujours avec son"
	cont "RHINOFEROS."

	para "Il dit vouloir"
	line "un #MON sachant"
	cont "pousser et danser."

	para "Est-ce qu'il veut"
	line "faire une danse"
	cont "musclée?"
	done
; 0x99aaa

UnknownText_0x99aaa: ; 0x99aaa
	text "Les KIMONO sont"
	line "très belles<...>"

	para "Mais elles doivent"
	line "suivre un entraî-"
	cont "nement de titan."

	para "Elles doivent"
	line "apprendre à suivre"

	para "des règles avant"
	line "de se montrer en"
	cont "public."

	para "Mais quand tu"
	line "aimes quelque"
	cont "chose, tout est"
	cont "possible."
	done
; 0x99b79

UnknownText_0x99b79: ; 0x99b79
	text "C'est un joli"
	line "paravent décoré"
	cont "de fleurs."
	done
; 0x99baa

DanceTheatre_MapEventHeader: ; 0x99baa
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $d, $5, 8, GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY
	warp_def $d, $6, 8, GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 6, 5, $1, MapDanceTheatreSignpost1Script
	signpost 6, 6, $1, MapDanceTheatreSignpost1Script

	; people-events
	db 9
	person_event SPRITE_KIMONO_GIRL, 6, 4, $1e, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 0, TrainerKimono_girlNaoko2, -1
	person_event SPRITE_KIMONO_GIRL, 5, 6, $a, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 0, TrainerKimono_girlSayo, -1
	person_event SPRITE_KIMONO_GIRL, 6, 10, $3, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 0, TrainerKimono_girlZuki, -1
	person_event SPRITE_KIMONO_GIRL, 5, 13, $a, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 0, TrainerKimono_girlKuni, -1
	person_event SPRITE_KIMONO_GIRL, 6, 15, $1f, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 0, TrainerKimono_girlMiki, -1
	person_event SPRITE_GENTLEMAN, 14, 11, $7, 0, 0, -1, -1, 0, 0, 0, GentlemanScript_0x994c6, -1
	person_event SPRITE_RHYDON, 12, 10, $16, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, RhydonScript_0x9951b, -1
	person_event SPRITE_COOLTRAINER_M, 14, 14, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, CooltrainerMScript_0x99525, -1
	person_event SPRITE_GRANNY, 10, 7, $7, 0, 0, -1, -1, 0, 0, 0, GrannyScript_0x99528, -1
; 0x99c39

