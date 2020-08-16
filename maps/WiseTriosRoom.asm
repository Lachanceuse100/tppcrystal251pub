WiseTriosRoom_MapScriptHeader: ; 0x98565
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x98572, $0000
	dw UnknownScript_0x98573, $0000

	; callback count
	db 1

	; callbacks

	dbw 2, UnknownScript_0x98574
; 0x98572

UnknownScript_0x98572: ; 0x98572
	end
; 0x98573

UnknownScript_0x98573: ; 0x98573
	end
; 0x98574

UnknownScript_0x98574: ; 0x98574
	checkevent EVENT_FOUGHT_SUICUNE
	iftrue UnknownScript_0x98593
	checkevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	iftrue UnknownScript_0x9858c
	checkitem CLEAR_BELL
	iftrue UnknownScript_0x9858c
	clearevent EVENT_WISE_TRIO_IN_PASSAGEWAY_NOT_TRAINERS
	setevent EVENT_WISE_TRIO_IN_PASSAGEWAY_TRAINERS
	return
; 0x9858c

UnknownScript_0x9858c: ; 0x9858c
	setevent EVENT_WISE_TRIO_IN_PASSAGEWAY_NOT_TRAINERS
	clearevent EVENT_WISE_TRIO_IN_PASSAGEWAY_TRAINERS
	return
; 0x98593

UnknownScript_0x98593: ; 0x98593
	setevent EVENT_WISE_TRIO_IN_PASSAGEWAY_NOT_TRAINERS
	setevent EVENT_WISE_TRIO_IN_PASSAGEWAY_TRAINERS
	return
; 0x9859a

SageScript_0x9859a: ; 0x9859a
	jumptextfaceplayer UnknownText_0x9862b
; 0x9859d

SageScript_0x9859d: ; 0x9859d
	jumptextfaceplayer UnknownText_0x9868b
; 0x985a0

SageScript_0x985a0: ; 0x985a0
	jumptextfaceplayer UnknownText_0x987af
; 0x985a3

UnknownScript_0x985a3: ; 0x985a3
	spriteface $4, $1
	spriteface $0, $0
	showemote $0, $4, 20
	follow $0, $4
	applymovement $0, MovementData_0x98622
	stopfollow
	spriteface $0, $3
	loadfont
	writetext UnknownText_0x98712
	waitbutton
	closetext
	applymovement $4, MovementData_0x98625
	spriteface $4, $2
	end
; 0x985c6

TrainerSageGaku: ; 0x985c6
	; bit/flag number
	dw $5c9

	; trainer group && trainer id
	db SAGE, GAKU

	; text when seen
	dw SageGakuSeenText

	; text when trainer beaten
	dw SageGakuBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SageGakuScript
; 0x985d2

SageGakuScript: ; 0x985d2
	loadfont
	writetext UnknownText_0x98938
	waitbutton
	closetext
	end
; 0x985d9

TrainerSageMasa: ; 0x985d9
	; bit/flag number
	dw $5ca

	; trainer group && trainer id
	db SAGE, MASA

	; text when seen
	dw SageMasaSeenText

	; text when trainer beaten
	dw SageMasaBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SageMasaScript
; 0x985e5

SageMasaScript: ; 0x985e5
	loadfont
	writetext UnknownText_0x98a35
	waitbutton
	closetext
	end
; 0x985ec

TrainerSageKoji: ; 0x985ec
	; bit/flag number
	dw $5cb

	; trainer group && trainer id
	db SAGE, KOJI

	; text when seen
	dw SageKojiSeenText

	; text when trainer beaten
	dw SageKojiBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SageKojiScript
; 0x985f8

SageKojiScript: ; 0x985f8
	checkevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	iftrue UnknownScript_0x9861b
	pause 10
	showemote $0, $7, 20
	loadfont
	writetext UnknownText_0x98c6c
	buttonsound
	writetext UnknownText_0x98cac
	waitbutton
	closetext
	applymovement $7, MovementData_0x98628
	spriteface $7, $1
	setevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	dotrigger $1
	end
; 0x9861b

UnknownScript_0x9861b: ; 0x9861b
	loadfont
	writetext UnknownText_0x98db5
	waitbutton
	closetext
	end
; 0x98622

MovementData_0x98622: ; 0x98622
	step_left
	step_left
	step_end
; 0x98625

MovementData_0x98625: ; 0x98625
	step_right
	step_down
	step_end
; 0x98628

MovementData_0x98628: ; 0x98628
	step_right
	step_down
	step_end
; 0x9862b

UnknownText_0x9862b: ; 0x9862b
	text "Incroyable<...>"

	para "SUICUNE, ENTEI et"
	line "RAIKOU se sont"
	cont "réveillés<...>"

	para "La légende est-"
	line "elle vraie?"
	done
; 0x9868b

UnknownText_0x9868b: ; 0x9868b
	text "On s'entraîne à la"
	line "TOUR CENDREE mais"

	para "on n'a jamais vu"
	line "de trou s'ouvrir"

	para "jusqu'à présent."
	line "Quelqu'un doit en"
	cont "être responsable."
	done
; 0x98712

UnknownText_0x98712: ; 0x98712
	text "La TOUR FERRAILLE"
	line "est accessible aux"

	para "porteurs du BADGE"
	line "BRUME."

	para "Toutefois, depuis"
	line "le réveil de"
	cont "SUICUNE, RAIKOU"

	para "et ENTEI, je ne"
	line "peux pas vous"
	cont "laisser entrer!"
	done
; 0x987af

UnknownText_0x987af: ; 0x987af
	text "Nous sommes le"
	line "TRIO des SAGES"

	para "Nous protégeons le"
	line "#MON"
	cont "légendaire."
	done
; 0x987ed

SageGakuSeenText: ; 0x987ed
	text "La légende dit"
	line "que la venue d'un"

	para "dresseur pouvant"
	line "toucher l'âme des"

	para "#MON invoquera"
	line "un #MON légen-"

	para "daire pour le"
	line "mettre à l'épreuve"

	para "dans la TOUR"
	line "FERRAILLE."

	para "La légende s'est"
	line "réalisée!"

	para "Le #MON"
	line "légendaire SUICUNE"
	cont "est arrivé!"

	para "Nous, le TRIO des"
	line "SAGES, te mettons"
	cont "au défi d'entrer!"
	done
; 0x98914

SageGakuBeatenText: ; 0x98914
	text "Beau combat, mais"
	line "ce n'est que le"
	cont "début<...>"
	done
; 0x98938

UnknownText_0x98938: ; 0x98938
	text "Tu prétends donc"
	line "avoir vu SUICUNE,"
	cont "ENTEI et RAIKOU"
	cont "dans leur sommeil?"

	para "Incroyable!"

	para "La légende dit"
	line "bien qu'on ne peut"
	cont "les voir dormir<...>"
	done
; 0x989d2

SageMasaSeenText: ; 0x989d2
	text "Doit-on te faire"
	line "confiance?"

	para "Je dois te mettre"
	line "à l'épreuve."
	done
; 0x98a18

SageMasaBeatenText: ; 0x98a18
	text "<...>Très bien, je"
	line "dirai la vérité<...>"
	done
; 0x98a35

UnknownText_0x98a35: ; 0x98a35
	text "Jadis, il y avait"
	line "deux tours ici."

	para "La TOUR de CUIVRE"
	line "qui pouvait éveil-"

	para "ler les #MON,"
	line "et la TOUR FER-"

	para "RAILLE où les"
	line "#MON se"
	cont "reposaient."

	para "La vue depuis le"
	line "sommet des TOURS"

	para "devait être"
	line "magnifique."

	para "En ce temps-là, un"
	line "immense #MON"

	para "argenté avait fait"
	line "son nid en haut de"
	cont "la TOUR de CUIVRE."

	para "Cependant<...>"

	para "Il y a 150 ans,"
	line "un éclair frappa"
	cont "l'une des TOURS."

	para "Elle prit feu et"
	line "brûla pendant"
	cont "trois jours."

	para "Une soudaine aver-"
	line "se mis fin à"
	cont "l'incendie."

	para "Et ainsi fut née"
	line "la TOUR CENDREE."
	done
; 0x98c42

SageKojiSeenText: ; 0x98c42
	text "Montre-moi ta"
	line "force!"
	done
; 0x98c5a

SageKojiBeatenText: ; 0x98c5a
	text "Si puissant!"
	line "Comment?"
	done
; 0x98c6c

UnknownText_0x98c6c: ; 0x98c6c
	text "Toi<...> Es-tu le"
	line "dresseur attendu"

	para "par le #MON"
	line "légendaire?"
	done
; 0x98cac

UnknownText_0x98cac: ; 0x98cac
	text "Je vois<...>"

	para "Nous, le TRIO des"
	line "SAGES, avons le"

	para "devoir de protéger"
	line "les #MON légen-"
	cont "daires."

	para "Nous ne laissons"
	line "passer que ceux"
	cont "au coeur pur."

	para "Tu trouveras plus"
	line "loin la TOUR"
	cont "FERRAILLE."

	para "SUICUNE te mettra"
	line "à l'épreuve."
	done
; 0x98db5

UnknownText_0x98db5: ; 0x98db5
	para "Tu trouveras plus"
	line "loin la TOUR"
	cont "FERRAILLE."

	para "SUICUNE te mettra"
	line "à l'épreuve."
	done
; 0x98dea

WiseTriosRoom_MapEventHeader: ; 0x98dea
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $4, $7, 4, GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY
	warp_def $5, $7, 5, GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY
	warp_def $4, $1, 5, GROUP_ECRUTEAK_HOUSE, MAP_ECRUTEAK_HOUSE

	; xy triggers
	db 1
	xy_trigger 0, $4, $7, $0, UnknownScript_0x985a3, $0, $0

	; signposts
	db 0

	; people-events
	db 6
	person_event SPRITE_SAGE, 6, 10, $3, 0, 0, -1, -1, 0, 0, 0, SageScript_0x9859a, EVENT_WISE_TRIO_IN_PASSAGEWAY_NOT_TRAINERS
	person_event SPRITE_SAGE, 11, 10, $5, 0, 1, -1, -1, 0, 0, 0, SageScript_0x9859d, EVENT_WISE_TRIO_IN_PASSAGEWAY_NOT_TRAINERS
	person_event SPRITE_SAGE, 9, 11, $8, 0, 0, -1, -1, 0, 0, 0, SageScript_0x985a0, EVENT_WISE_TRIO_IN_PASSAGEWAY_NOT_TRAINERS
	person_event SPRITE_SAGE, 6, 8, $6, 0, 0, -1, -1, 0, 2, 2, TrainerSageGaku, EVENT_WISE_TRIO_IN_PASSAGEWAY_TRAINERS
	person_event SPRITE_SAGE, 10, 8, $7, 0, 0, -1, -1, 0, 2, 2, TrainerSageMasa, EVENT_WISE_TRIO_IN_PASSAGEWAY_TRAINERS
	person_event SPRITE_SAGE, 8, 10, $8, 0, 0, -1, -1, 0, 2, 2, TrainerSageKoji, EVENT_WISE_TRIO_IN_PASSAGEWAY_TRAINERS
; 0x98e55

