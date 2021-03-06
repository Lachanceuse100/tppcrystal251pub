Route32_MapScriptHeader: ; 0x19044f
	; trigger count
	db 3

	; triggers
	dw UnknownScript_0x190460, $0000
	dw UnknownScript_0x190461, $0000
	dw UnknownScript_0x190462, $0000

	; callback count
	db 1

	; callbacks

	dbw 2, FriedaCallback

UnknownScript_0x190460: ; 0x190460
	end
; 0x190461

UnknownScript_0x190461: ; 0x190461
	end
; 0x190462

UnknownScript_0x190462: ; 0x190462
	end
; 0x190463

FriedaCallback:
	checkcode VAR_WEEKDAY
	if_equal FRIDAY, .FriedaAppears
	disappear $e
	return

.FriedaAppears
	appear $e
	return

CooltrainerMScript_0x19046f: ; 0x19046f
	faceplayer
UnknownScript_0x190470: ; 0x190470
	loadfont
	checkevent EVENT_GOT_MIRACLE_SEED_IN_ROUTE_32
	iftrue .GotSeed
	checkflag ENGINE_ZEPHYRBADGE
	iffalse .GetBadge
	checkevent EVENT_GOT_HM02_FLY
	iffalse .GetFlash
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	iftrue .GotEgg
	writetext UnknownText_0x1907ab
	waitbutton
	closetext
	end
; 0x190489

.GetFlash: ; 0x190489
	writetext UnknownText_0x190820
	waitbutton
	closetext
	end
; 0x19048f

.GotEgg: ; 0x19048f
	writetext UnknownText_0x190925
	buttonsound
	verbosegiveitem MIRACLE_SEED, 1
	iffalse .BagFull
	setevent EVENT_GOT_MIRACLE_SEED_IN_ROUTE_32
	jump .GotSeed
; 0x19049f

.GetBadge: ; 0x19049f
	writetext UnknownText_0x1908b0
	waitbutton
	closetext
	end
; 0x1904a5

.GotSeed: ; 0x1904a5
	writetext UnknownText_0x190a15
	waitbutton
.BagFull: ; 0x1904a9
	closetext
	end
; 0x1904ab

UnknownScript_0x1904ab: ; 0x1904ab
	spriteface $9, $2
	spriteface $0, $3
	loadfont
	writetext UnknownText_0x190790
	waitbutton
	closetext
	follow $0, $9
	applymovement $0, MovementData_0x190789
	stopfollow
	spriteface $0, $0
	scall UnknownScript_0x190470
	applymovement $9, MovementData_0x19078c
	applymovement $9, MovementData_0x19078e
	end
; 0x1904ce

FisherScript_0x1904ce: ; 0x1904ce
	faceplayer
	loadfont
	writetext UnknownText_0x191133
	yesorno
	iffalse .quit
	writebyte 7
	writetext UnknownText_0x19118c
	special Function4925b
	iffalse .done
.quit
	writetext FalseTutorReject
	waitbutton
	closetext
	end

.done
	writetext FalseTutorDone
	waitbutton
	closetext
	end
; 0x1904e9

UnknownScript_0x1904e9: ; 0x1904e9
	spriteface $b, $0
	spriteface $0, $1
	jump UnknownScript_0x1904f3
; 0x1904f2

FisherScript_0x1904f2: ; 0x1904f2
	faceplayer
UnknownScript_0x1904f3: ; 0x1904f3
	dotrigger $2
	loadfont
	writetext UnknownText_0x190a59
	yesorno
	iffalse .refused
	writetext UnknownText_0x190acf
	waitbutton
	closetext
	end
; 0x190503

.refused: ; 0x190503
	writetext UnknownText_0x190afc
	waitbutton
	closetext
	end
; 0x190509

TrainerCamperRoland: ; 0x190509
	; bit/flag number
	dw $41a

	; trainer group && trainer id
	db CAMPER, ROLAND

	; text when seen
	dw CamperRolandSeenText

	; text when trainer beaten
	dw CamperRolandBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CamperRolandScript
; 0x190515

CamperRolandScript: ; 0x190515
	talkaftercancel
	loadfont
	writetext UnknownText_0x190faa
	waitbutton
	closetext
	end
; 0x19051d

TrainerFisherJustin: ; 0x19051d
	; bit/flag number
	dw $44e

	; trainer group && trainer id
	db FISHER, JUSTIN

	; text when seen
	dw FisherJustinSeenText

	; text when trainer beaten
	dw FisherJustinBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw FisherJustinScript
; 0x190529

FisherJustinScript: ; 0x190529
	talkaftercancel
	loadfont
	writetext UnknownText_0x190b4e
	waitbutton
	closetext
	end
; 0x190531

TrainerFisherRalph1: ; 0x190531
	; bit/flag number
	dw $44f

	; trainer group && trainer id
	db FISHER, RALPH1

	; text when seen
	dw FisherRalph1SeenText

	; text when trainer beaten
	dw FisherRalph1BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw FisherRalph1Script
; 0x19053d

FisherRalph1Script: ; 0x19053d
	writecode VAR_CALLERID, $11
	talkaftercancel
	loadfont
	checkflag ENGINE_RALPH
	iftrue UnknownScript_0x19057d
	checkflag ENGINE_SPECIAL_WILDDATA
	iftrue UnknownScript_0x1905f1
	checkcellnum $11
	iftrue UnknownScript_0x190603
	checkevent EVENT_ROUTE_32_277
	iftrue UnknownScript_0x190566
	writetext UnknownText_0x190bf8
	buttonsound
	setevent EVENT_ROUTE_32_277
	scall UnknownScript_0x1905f7
	jump UnknownScript_0x190569
; 0x190566

UnknownScript_0x190566: ; 0x190566
	scall UnknownScript_0x1905fb
UnknownScript_0x190569: ; 0x190569
	askforphonenumber $11
	if_equal $1, UnknownScript_0x19060b
	if_equal $2, UnknownScript_0x190607
	trainertotext FISHER, RALPH1, $0
	scall UnknownScript_0x1905ff
	jump UnknownScript_0x190603
; 0x19057d

UnknownScript_0x19057d: ; 0x19057d
	scall UnknownScript_0x19060f
	winlosstext FisherRalph1BeatenText, $0000
	copybytetovar wd9fb
	if_equal $4, UnknownScript_0x19059c
	if_equal $3, UnknownScript_0x1905a2
	if_equal $2, UnknownScript_0x1905a8
	if_equal $1, UnknownScript_0x1905ae
	if_equal $0, UnknownScript_0x1905b4
UnknownScript_0x19059c: ; 0x19059c
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue UnknownScript_0x1905e8
UnknownScript_0x1905a2: ; 0x1905a2
	checkevent EVENT_FIRST_TIME_HALL_OF_FAME
	iftrue UnknownScript_0x1905db
UnknownScript_0x1905a8: ; 0x1905a8
	checkflag ENGINE_FLYPOINT_LAKE_OF_RAGE
	iftrue UnknownScript_0x1905ce
UnknownScript_0x1905ae: ; 0x1905ae
	checkflag ENGINE_FLYPOINT_ECRUTEAK
	iftrue UnknownScript_0x1905c1
UnknownScript_0x1905b4: ; 0x1905b4
	loadtrainer FISHER, RALPH1
	startbattle
	returnafterbattle
	loadvar wd9fb, $1
	clearflag ENGINE_RALPH
	end
; 0x1905c1

UnknownScript_0x1905c1: ; 0x1905c1
	loadtrainer FISHER, RALPH2
	startbattle
	returnafterbattle
	loadvar wd9fb, $2
	clearflag ENGINE_RALPH
	end
; 0x1905ce

UnknownScript_0x1905ce: ; 0x1905ce
	loadtrainer FISHER, RALPH3
	startbattle
	returnafterbattle
	loadvar wd9fb, $3
	clearflag ENGINE_RALPH
	end
; 0x1905db

UnknownScript_0x1905db: ; 0x1905db
	loadtrainer FISHER, RALPH4
	startbattle
	returnafterbattle
	loadvar wd9fb, $4
	clearflag ENGINE_RALPH
	end
; 0x1905e8

UnknownScript_0x1905e8: ; 0x1905e8
	loadtrainer FISHER, RALPH5
	startbattle
	returnafterbattle
	clearflag ENGINE_RALPH
	end
; 0x1905f1

UnknownScript_0x1905f1: ; 0x1905f1
	writetext UnknownText_0x190c37
	waitbutton
	closetext
	end
; 0x1905f7

UnknownScript_0x1905f7: ; 0x1905f7
	jumpstd asknumber1m
	end
; 0x1905fb

UnknownScript_0x1905fb: ; 0x1905fb
	jumpstd asknumber2m
	end
; 0x1905ff

UnknownScript_0x1905ff: ; 0x1905ff
	jumpstd registerednumberm
	end
; 0x190603

UnknownScript_0x190603: ; 0x190603
	jumpstd numberacceptedm
	end
; 0x190607

UnknownScript_0x190607: ; 0x190607
	jumpstd numberdeclinedm
	end
; 0x19060b

UnknownScript_0x19060b: ; 0x19060b
	jumpstd phonefullm
	end
; 0x19060f

UnknownScript_0x19060f: ; 0x19060f
	jumpstd rematchm
	end
; 0x190613

TrainerFisherHenry: ; 0x190613
	; bit/flag number
	dw $452

	; trainer group && trainer id
	db FISHER, HENRY

	; text when seen
	dw FisherHenrySeenText

	; text when trainer beaten
	dw FisherHenryBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw FisherHenryScript
; 0x19061f

FisherHenryScript: ; 0x19061f
	talkaftercancel
	loadfont
	writetext UnknownText_0x190df2
	waitbutton
	closetext
	end
; 0x190627

TrainerPicnickerLiz1: ; 0x190627
	; bit/flag number
	dw $47e

	; trainer group && trainer id
	db PICNICKER, LIZ1

	; text when seen
	dw PicnickerLiz1SeenText

	; text when trainer beaten
	dw PicnickerLiz1BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PicnickerLiz1Script
; 0x190633

PicnickerLiz1Script: ; 0x190633
	writecode VAR_CALLERID, $12
	talkaftercancel
	loadfont
	checkflag ENGINE_LIZ
	iftrue UnknownScript_0x19066d
	checkcellnum $12
	iftrue UnknownScript_0x1906ed
	checkevent EVENT_ROUTE_32_279
	iftrue UnknownScript_0x190656
	writetext UnknownText_0x191060
	buttonsound
	setevent EVENT_ROUTE_32_279
	scall UnknownScript_0x1906e1
	jump UnknownScript_0x190659
; 0x190656

UnknownScript_0x190656: ; 0x190656
	scall UnknownScript_0x1906e5
UnknownScript_0x190659: ; 0x190659
	askforphonenumber $12
	if_equal $1, UnknownScript_0x1906f5
	if_equal $2, UnknownScript_0x1906f1
	trainertotext PICNICKER, LIZ1, $0
	scall UnknownScript_0x1906e9
	jump UnknownScript_0x1906ed
; 0x19066d

UnknownScript_0x19066d: ; 0x19066d
	scall UnknownScript_0x1906f9
	winlosstext PicnickerLiz1BeatenText, $0000
	copybytetovar wd9fc
	if_equal $4, UnknownScript_0x19068c
	if_equal $3, UnknownScript_0x190692
	if_equal $2, UnknownScript_0x190698
	if_equal $1, UnknownScript_0x19069e
	if_equal $0, UnknownScript_0x1906a4
UnknownScript_0x19068c: ; 0x19068c
	checkevent EVENT_FIRST_TIME_HALL_OF_FAME
	iftrue UnknownScript_0x1906d8
UnknownScript_0x190692: ; 0x190692
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue UnknownScript_0x1906cb
UnknownScript_0x190698: ; 0x190698
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue UnknownScript_0x1906be
UnknownScript_0x19069e: ; 0x19069e
	checkflag ENGINE_FLYPOINT_ECRUTEAK
	iftrue UnknownScript_0x1906b1
UnknownScript_0x1906a4: ; 0x1906a4
	loadtrainer PICNICKER, LIZ1
	startbattle
	returnafterbattle
	loadvar wd9fc, $1
	clearflag ENGINE_LIZ
	end
; 0x1906b1

UnknownScript_0x1906b1: ; 0x1906b1
	loadtrainer PICNICKER, LIZ2
	startbattle
	returnafterbattle
	loadvar wd9fc, $2
	clearflag ENGINE_LIZ
	end
; 0x1906be

UnknownScript_0x1906be: ; 0x1906be
	loadtrainer PICNICKER, LIZ3
	startbattle
	returnafterbattle
	loadvar wd9fc, $3
	clearflag ENGINE_LIZ
	end
; 0x1906cb

UnknownScript_0x1906cb: ; 0x1906cb
	loadtrainer PICNICKER, LIZ4
	startbattle
	returnafterbattle
	loadvar wd9fc, $4
	clearflag ENGINE_LIZ
	end
; 0x1906d8

UnknownScript_0x1906d8: ; 0x1906d8
	loadtrainer PICNICKER, LIZ5
	startbattle
	returnafterbattle
	clearflag ENGINE_LIZ
	end
; 0x1906e1

UnknownScript_0x1906e1: ; 0x1906e1
	jumpstd asknumber1f
	end
; 0x1906e5

UnknownScript_0x1906e5: ; 0x1906e5
	jumpstd asknumber2f
	end
; 0x1906e9

UnknownScript_0x1906e9: ; 0x1906e9
	jumpstd registerednumberf
	end
; 0x1906ed

UnknownScript_0x1906ed: ; 0x1906ed
	jumpstd numberacceptedf
	end
; 0x1906f1

UnknownScript_0x1906f1: ; 0x1906f1
	jumpstd numberdeclinedf
	end
; 0x1906f5

UnknownScript_0x1906f5: ; 0x1906f5
	jumpstd phonefullf
	end
; 0x1906f9

UnknownScript_0x1906f9: ; 0x1906f9
	jumpstd rematchf
	end
; 0x1906fd

TrainerYoungsterAlbert: ; 0x1906fd
	; bit/flag number
	dw $5ab

	; trainer group && trainer id
	db YOUNGSTER, ALBERT

	; text when seen
	dw YoungsterAlbertSeenText

	; text when trainer beaten
	dw YoungsterAlbertBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw YoungsterAlbertScript
; 0x190709

YoungsterAlbertScript: ; 0x190709
	talkaftercancel
	loadfont
	writetext UnknownText_0x190e82
	waitbutton
	closetext
	end
; 0x190711

TrainerYoungsterGordon: ; 0x190711
	; bit/flag number
	dw $5ac

	; trainer group && trainer id
	db YOUNGSTER, GORDON

	; text when seen
	dw YoungsterGordonSeenText

	; text when trainer beaten
	dw YoungsterGordonBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw YoungsterGordonScript
; 0x19071d

YoungsterGordonScript: ; 0x19071d
	talkaftercancel
	loadfont
	writetext UnknownText_0x190f49
	waitbutton
	closetext
	end
; 0x190725

TrainerBird_keeperPeter: ; 0x190725
	; bit/flag number
	dw $407

	; trainer group && trainer id
	db BIRD_KEEPER, PETER

	; text when seen
	dw Bird_keeperPeterSeenText

	; text when trainer beaten
	dw Bird_keeperPeterBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bird_keeperPeterScript
; 0x190731

Bird_keeperPeterScript: ; 0x190731
	talkaftercancel
	loadfont
	writetext UnknownText_0x1910d4
	waitbutton
	closetext
	end
; 0x190739

FriedaScript:
	faceplayer
	loadfont
	checkevent EVENT_GOT_POISON_BARB_FROM_FRIEDA
	iftrue FriedaFridayScript
	checkcode VAR_WEEKDAY
	if_not_equal FRIDAY, FriedaNotFridayScript
	checkevent EVENT_MET_FRIEDA_OF_FRIDAY
	iftrue .MetFrieda
	writetext MeetFriedaText
	buttonsound
	setevent EVENT_MET_FRIEDA_OF_FRIDAY
.MetFrieda
	writetext FriedaGivesGiftText
	buttonsound
	verbosegiveitem POISON_BARB, 1
	iffalse FriedaDoneScript
	setevent EVENT_GOT_POISON_BARB_FROM_FRIEDA
	writetext FriedaGaveGiftText
	waitbutton
	closetext
	end

FriedaFridayScript:
	writetext FriedaFridayText
	waitbutton
FriedaDoneScript:
	closetext
	end

FriedaNotFridayScript:
	writetext FriedaNotFridayText
	waitbutton
	closetext
	end

ItemFragment_0x190773: ; 0x190773
	db ULTRA_BALL, 1
; 0x190775

ItemFragment_0x190775: ; 0x190775
	db SUPER_REPEL, 1
; 0x190777

MapRoute32Signpost0Script: ; 0x190777
	jumptext UnknownText_0x19133a
; 0x19077a

MapRoute32Signpost1Script: ; 0x19077a
	jumptext UnknownText_0x19135e
; 0x19077d

MapRoute32Signpost2Script: ; 0x19077d
	jumptext UnknownText_0x19137b
; 0x190780

MapRoute32Signpost3Script: ; 0x190780
	jumpstd pokecentersign
; 0x190783

MapRoute32SignpostItem4: ; 0x190783
	dw $00a5
	db ULTRA_BALL

; 0x190786

MapRoute32SignpostItem5: ; 0x190786
	dw $00a6
	db HYPER_POTION

; 0x190789

MovementData_0x190789: ; 0x190789
	step_up
	step_up
	step_end
; 0x19078c

MovementData_0x19078c: ; 0x19078c
	step_down
	step_end
; 0x19078e

MovementData_0x19078e: ; 0x19078e
	step_right
	step_end
; 0x190790

UnknownText_0x190790: ; 0x190790
	text "Attends!"
	line "T'es pressé?"
	done
; 0x1907ab

UnknownText_0x1907ab: ; 0x1907ab
	text "<PLAYER>, c'est ça?"
	line "Un gars qui porte"

	para "des lunettes te"
	line "cherchait."

	para "Il t'attend au"
	line "centre #MON"

	para "Passe le voir."
	done
; 0x190820

UnknownText_0x190820: ; 0x190820
	text "Tu as visité la"
	line "TOUR CHETIFLOR?"

	para "Si tu passes à"
	line "MAUVILLE, il faut"

	para "que tu t'entraînes"
	line "là-bas."

	para "C'est la base pour"
	line "les dresseurs. Va"
	cont "a la TOUR"
	cont "CHETIFLOR!"
	done
; 0x1908b0

UnknownText_0x1908b0: ; 0x1908b0
	text "Tu es allé à"
	line "l'ARENE #MON?"

	para "Tu peux t'y mesu-"
	line "rer toi et tes"
	cont "#MON."

	para "C'est un rituel"
	line "pour tous les"
	cont "dresseurs!"
	done
; 0x190925

UnknownText_0x190925: ; 0x190925
	text "Tu as de bons"
	line "#MON."

	para "Ils ont du s'en-"
	line "traîner autour de"
	cont "MAUVILLE."

	para "Les combats dans"
	line "l'arène t'ont"

	para "donné de l'expé-"
	line "rience, non?"

	para "En souvenir de"
	line "MAUVILLE, accepte"
	cont "ceci."

	para "Cela améliore les"
	line "capacités du type"
	cont "PLANTE."
	done
; 0x190a15

UnknownText_0x190a15: ; 0x190a15
	text "Ta visite à"
	line "MAUVILLE te sera"
	cont "bénéfique."
	done
; 0x190a59

UnknownText_0x190a59: ; 0x190a59
	text "Ca t'intéresse une"
	line "délicieuse"
	cont "QUEUERAMOLOS?"

	para "Ca coûte que"
	line "¥1,000,000, t'en"
	cont "veux une?"
	done
; 0x190acf

UnknownText_0x190acf: ; 0x190acf
	text "Tsk! Je croyais"
	line "que les gosses"
	cont "étaient blindés"
	cont "de nos jours<...>"
	done
; 0x190afc

UnknownText_0x190afc: ; 0x190afc
	text "T'en veux pas?"
	line "Alors dégage!"
	done
; 0x190b21

FisherJustinSeenText: ; 0x190b21
	text "Waouh!"

	para "Tu m'as fait"
	line "perdre ma prise!"
	done
; 0x190b44

FisherJustinBeatenText: ; 0x190b44
	text "Plouf!"
	done
; 0x190b4e

UnknownText_0x190b4e: ; 0x190b4e
	text "Calme, composé<...>"
	line "L'essence de la"

	para "pêche et des #-"
	line "MON est la même."
	done
; 0x190b8f

FisherRalph1SeenText: ; 0x190b8f
	text "Je suis bon à la"
	line "pêche et avec les"
	cont "#MON."

	para "Je perdrais pas"
	line "face à toi!"
	done
; 0x190bda

FisherRalph1BeatenText: ; 0x190bda
	text "Tsk! J'ai voulu me"
	line "dépêcher<...>"
	done
; 0x190bf8

UnknownText_0x190bf8: ; 0x190bf8
	text "La pêche est ma"
	line "grande passion."

	para "Les #MON sont"
	line "mes amis depuis"
	cont "toujours!"
	done
; 0x190c37

UnknownText_0x190c37: ; 0x190c37
	text "Un, deux, trois<...>"
	line "Mouhahaha, quel"
	cont "beau butin!"
	
	text "J'ai finis, vas-y"
	line "et attrape en un"
	cont "maximum!"
	done
; 0x190c9c

; --- start a segment of possibly unused texts

;UnknownText_0x190c9c: ; 0x190c9c
;	text "I keep catching"
;	line "the same #MON<...>"


;	para "Maybe a battle"
;	line "will turn things"
;;	cont "around for me."
;	done
; 0x190ceb

;UnknownText_0x190ceb: ; 0x190ceb
;	text "Nothing ever goes"
;	line "right for me now<...>"
;	done

; 0x190d10

;UnknownText_0x190d10: ; 0x190d10
;	text "How come the guy"
;	line "next to me catches"
;;	cont "good #MON?"
;	done
; 0x190d40

;UnknownText_0x190d40: ; 0x190d40
;	text "Heh, I'm on a roll"
;	line "today. How about a"
;	cont "battle, kid?"
;	done
; 0x190d73

;UnknownText_0x190d73: ; 0x190d73
;	text "Oof. I wasn't"
;	line "lucky that time."
;	done
; 0x190d92

;UnknownText_0x190d92: ; 0x190d92
;	text "You have to have a"
;	line "good ROD if you"

;;	para "want to catch good"
;	line "#MON."
;	done
; 0x190dcf

; --- end a segment of possibly unused texts

FisherHenrySeenText: ; 0x190dcf
	text "Je surfais dans le"
	line "lac quand j'ai"

	para "trouvé ce #MON"
	line "rare!"
	done
; 0x190de9

FisherHenryBeatenText: ; 0x190de9
	text "Je dérive!"
	done
; 0x190df2

UnknownText_0x190df2: ; 0x190df2
	text "Tu peux trouver"
	line "plein de #MON"
	cont "rares dans les"
	cont "lacs."

	para "Si tu veux tous"
	line "les capturer,"

	para "pêche et surfe"
	line "dans différents"
	cont "endroits!"
	done
; 0x190e2e

YoungsterAlbertSeenText: ; 0x190e2e
	text "Je ne t'ai jamais"
	line "vu ici."

	para "Tu penses que tu"
	line "es costaud?"
	done
; 0x190e73

YoungsterAlbertBeatenText: ; 0x190e73
	text "Tu es costaud!"
	done
; 0x190e82

UnknownText_0x190e82: ; 0x190e82
	text "Je serai le"
	line "meilleur avec mes"
	cont "favoris."

	para "C'est important en"
	line "tant que dresseur"
	cont "d'être soi-même."
	done
; 0x190ee8

YoungsterGordonSeenText: ; 0x190ee8
	text "J'ai trouvé des"
	line "#MON dans les"
	cont "hautes herbes!"

	para "Je pense qu'ils"
	line "feront l'affaire!"
	done
; 0x190f2b

YoungsterGordonBeatenText: ; 0x190f2b
	text "Mince. Je pensais"
	line "pouvoir gagner."
	done
; 0x190f49

UnknownText_0x190f49: ; 0x190f49
	text "Y'a plein de trucs"
	line "dans l'herbe."
	done
; 0x190f6e

CamperRolandSeenText: ; 0x190f6e
	text "Ce regard<...>"
	line "C'est intriguant."
	done
; 0x190f8c

CamperRolandBeatenText: ; 0x190f8c
	text "Oh. C'est"
	line "décevant."
	done
; 0x190faa

UnknownText_0x190faa: ; 0x190faa
	text "Cet endroit a"
	line "plein de #MON"
	cont "uniques!"

	para "Ce lac attire"
	line "plein de #MON."
	done
; 0x190fdf

PicnickerLiz1SeenText: ; 0x190fdf
	text "Ah-ha. Ouais, et"
	line "tu sais<...>"

	para "Pardon? Combat?"
	line "Je suis au"
	cont "téléphone là."

	para "Bon, d'accord."
	line "Mais vite!"
	done
; 0x19103e

PicnickerLiz1BeatenText: ; 0x19103e
	text "Oh! Il faut que"
	line "je me calme!"
	done
; 0x191060

UnknownText_0x191060: ; 0x191060
	text "J'avais une copine"
	line "au téléphone."
	done
; 0x19107f

Bird_keeperPeterSeenText: ; 0x19107f
	text "Ce BADGE<...> Il"
	line "vient de MAUVILLE!"

	para "Tu as battu"
	line "ALBERT?"
	done
; 0x1910b4

Bird_keeperPeterBeatenText: ; 0x1910b4
	text "Je connais mes"
	line "faiblesses."
	done
; 0x1910d4

UnknownText_0x1910d4: ; 0x1910d4
	;text "I should train"
	;line "again at the GYM"
	;cont "in VIOLET CITY."
;	done
; 0x191105

; possibly unused
UnknownText_0x191105: ; 0x191105
	text "Ce pêcheur m'a"
	line "crié dessus pour"
	cont "les avoir embêter<...>"
	done
; 0x191133

UnknownText_0x191133: ; 0x191133
	text "Ecraser sans"
	line "casser."

	para "Trancher sans"
	line "couper."

	para "Attaquer sans"
	line "dégâts."

	para "Veux tu apprendre"
	line "l'art du"
	cont "FAUX-CHAGE?"

	done
; 0x19118c

UnknownText_0x19118c: ; 0x19118c
	text "Qui sera mon"
	line "étudiant?"
	done

FalseTutorReject:
	text "Très bien<...>"
	done

FalseTutorDone:
	text "Enseigner sans"
	line "savoir est la"
	cont "plus grande compé-"
	cont "tence qui soit<...>"
	done
; 0x1911c1

MeetFriedaText:
	text "VANESSA: Youpi!"
	line "C'est Vendredi!"

	para "Je suis VANESSA du"
	line "Vendredi!"

	para "Enchantée!"
	done

FriedaGivesGiftText:
	text "Voilà un PIC"
	line "VENIN pour toi!"
	done

FriedaGaveGiftText:
	text "VANESSA: Donne le"
	line "à un #MON qui"
	cont "connaît des atta-"
	cont "ques POISON."

	para "Oh!"

	para "C'est vicieux!"

	para "Tu seras surpris"
	line "de son efficacité!"
	done

FriedaFridayText:
	text "VANESSA: Salut!"
	line "C'est quoi ton"
	cont "jour préféré?"

	para "Moi c'est le"
	line "Vendredi!"

	para "Toi aussi, hein?"
	done

FriedaNotFridayText:
	text "VANESSA: Ce n'est"
	line "pas Vendredi?"

	para "Roooh, c'est nul!"
	done

UnknownText_0x19133a: ; 0x19133a
	text "ROUTE 32"

	para "MAUVILLE -"
	line "ECORCIA"
	done
; 0x19135e

UnknownText_0x19135e: ; 0x19135e
	text "RUINES ALPHA"
	line "ENTREE EST"
	done
; 0x19137b

UnknownText_0x19137b: ; 0x19137b
	text "CAVES JUMELLES"
	line "TOUT DROIT"
	done
; 0x19138d

Route32_MapEventHeader: ; 0x19138d
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $49, $b, 1, GROUP_ROUTE_32_POKECENTER_1F, MAP_ROUTE_32_POKECENTER_1F
	warp_def $2, $4, 3, GROUP_ROUTE_32_RUINS_OF_ALPH_GATE, MAP_ROUTE_32_RUINS_OF_ALPH_GATE
	warp_def $3, $4, 4, GROUP_ROUTE_32_RUINS_OF_ALPH_GATE, MAP_ROUTE_32_RUINS_OF_ALPH_GATE
	warp_def $4f, $6, 4, GROUP_UNION_CAVE_1F, MAP_UNION_CAVE_1F

	; xy triggers
	db 2
	xy_trigger 0, $8, $12, $0, UnknownScript_0x1904ab, $0, $0
	xy_trigger 1, $47, $7, $0, UnknownScript_0x1904e9, $0, $0

	; signposts
	db 6
	signpost 5, 13, $0, MapRoute32Signpost0Script
	signpost 1, 9, $0, MapRoute32Signpost1Script
	signpost 84, 10, $0, MapRoute32Signpost2Script
	signpost 73, 12, $0, MapRoute32Signpost3Script
	signpost 67, 12, $7, MapRoute32SignpostItem4
	signpost 40, 11, $7, MapRoute32SignpostItem5

	; people-events
	db 14
	person_event SPRITE_FISHER, 53, 12, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 1, TrainerFisherJustin, -1
	person_event SPRITE_FISHER, 60, 16, $7, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 3, TrainerFisherRalph1, -1
	person_event SPRITE_FISHER, 52, 10, $8, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 1, TrainerFisherHenry, -1
	person_event SPRITE_YOUNGSTER, 26, 16, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerYoungsterAlbert, -1
	person_event SPRITE_YOUNGSTER, 67, 8, $a, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerYoungsterGordon, -1
	person_event SPRITE_YOUNGSTER, 49, 7, $7, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 3, TrainerCamperRoland, -1
	person_event SPRITE_LASS, 34, 14, $8, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 1, TrainerPicnickerLiz1, -1
	person_event SPRITE_COOLTRAINER_M, 12, 23, $8, 0, 0, -1, -1, 0, 0, 0, CooltrainerMScript_0x19046f, -1
	person_event SPRITE_YOUNGSTER, 86, 15, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerBird_keeperPeter, -1
	person_event SPRITE_FISHER, 74, 11, $6, 0, 0, -1, -1, 0, 0, 0, FisherScript_0x1904f2, EVENT_ROCKET_TAKEOVER_OF_AZALEA_TOWN
	person_event SPRITE_POKE_BALL, 57, 10, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x190773, EVENT_ITEM_ROUTE_32_GREAT_BALL
	person_event SPRITE_FISHER, 17, 19, $9, 0, 0, -1, -1, 0, 0, 0, FisherScript_0x1904ce, -1
	person_event SPRITE_LASS, 71, 16, $8, 0, 0, -1, -1, 0, 0, 0, FriedaScript, EVENT_FREIDA_OF_FRIDAY
	person_event SPRITE_POKE_BALL, 34, 7, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x190775, EVENT_ITEM_ROUTE_32_REPEL
