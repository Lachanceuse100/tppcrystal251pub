SSAnne6_MapScriptHeader:
	db 0
	db 0

SSAnne6Gentleman1Script:
	checkevent EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	iftrue SSAnne6CookingUpTroubleScript
	jumptextfaceplayer _SSAnne6Text1

SSAnne6Gentleman2Script:
	checkevent EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	iftrue SSAnne6CookingUpTroubleScript
	jumptextfaceplayer _SSAnne6Text2

SSAnne6Gentleman3Script:
	checkevent EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	iftrue SSAnne6CookingUpTroubleScript
	jumptextfaceplayer _SSAnne6Text3

SSAnne6Gentleman4Script:
	checkevent EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	iftrue SSAnne6CookingUpTroubleScript
	jumptextfaceplayer _SSAnne6Text4

SSAnne6Gentleman5Script:
	checkevent EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	iftrue SSAnne6CookingUpTroubleScript
	jumptextfaceplayer _SSAnne6Text5

SSAnne6Gentleman6Script:
	checkevent EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	iftrue SSAnne6CookingUpTroubleScript
	jumptextfaceplayer _SSAnne6Text6

SSAnne6Gentleman7Script:
	checkevent EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	iftrue SSAnne6CookingUpTroubleScript
	faceplayer
	loadfont
	writetext _SSAnne6Text_61807
	buttonsound
	checkcode VAR_WEEKDAY
	if_equal SUNDAY, .zero
	if_equal MONDAY, .one
	if_equal TUESDAY, .two
	if_equal WEDNESDAY, .zero
	if_equal THURSDAY, .two
	if_equal FRIDAY, .zero
	if_equal SATURDAY, .one
.zero
	writetext _SSAnne6Text_6180c
	waitbutton
	closetext
	end
.one
	writetext _SSAnne6Text_61811
	waitbutton
	closetext
	end
.two
	writetext _SSAnne6Text_61816
	waitbutton
	closetext
	end

SSAnne6CookingUpTroubleScript:
	jumptextfaceplayer _SSAnne6Text_CookingUpTrouble

_SSAnne6Text1:
	text "Toi, mon chou!"
	line "On est occupé là!"
	cont "Hors du chemin!"
	done

_SSAnne6Text2:
	text "J'ai vu une BALL"
	line "bizarre dans la"
	cont "poubelle."
	done

_SSAnne6Text3:
	text "Je suis tellement"
	line "occupé, je me sens"
	cont "pas bien."
	done

_SSAnne6Text4:
	text "Dum-di-doo<...>"

	para "Je pêle des"
	line "patates!"
	cont "Hum-hum<...>"
	done

_SSAnne6Text5:
	text "Tu as entendu"
	line "parler de RONFLEX?"

	para "Tout ce qu'il fait"
	line "c'est manger et"
	cont "dormir!"
	done

_SSAnne6Text6:
	text "Sniff<...>"

	para "Y'a que moi qui"
	line "pêle les oignons<...>"
	cont "pleurniche<...>"
	done

_SSAnne6Text_61807:
	text "Ar-hem! Oui, c'est"
	line "bien moi le CHEF!"

	para "Le plat du jour"
	line "est:"
	done

_SSAnne6Text_6180c:
	text "Salade au saumon!"

	para "Les invités vont"
	line "encore râler que"
	cont "c'est du poisson<...>"
	done

_SSAnne6Text_61811:
	text "Anguilles au"
	line "barbecue"

	para "Ca sent la"
	line "mutinerie<...>"
	done

_SSAnne6Text_61816:
	text "Steak de boeuf!"

	para "Mais en aurais-je"
	line "suffisament?"
	done

_SSAnne6Text_CookingUpTrouble:
	text "Les hommes en noir"
	line "cuisinent quelque"
	cont "chose de mauvais!"
	done

SSAnne6TrashcanIfSet:
	dw EVENT_S_S_ANNE_6_GREAT_BALL, SSAnne6Trashcan
SSAnne6Trashcan:
	jumpstd trashcan
SSAnne6HiddenGreatBall:
	checkevent EVENT_S_S_ANNE_6_GREAT_BALL
	iftrue SSAnne6Trashcan
	loadfont
	verbosegiveitem GREAT_BALL, 1
	setevent EVENT_S_S_ANNE_6_GREAT_BALL
	closetext
	end

SSAnne6_MapEventHeader:
	db 0, 0
	db 1
	warp_def 0, 6, 11, GROUP_S_S_ANNE_1, MAP_S_S_ANNE_1

	db 0
	db 3
	signpost 5, 13, $0, SSAnne6Trashcan
	signpost 7, 13, $0, SSAnne6Trashcan
	signpost 9, 13, $0, SSAnne6HiddenGreatBall

	db 7
	person_event SPRITE_GENTLEMAN, 12,  5, $4, 2, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SSAnne6Gentleman1Script, -1
	person_event SPRITE_GENTLEMAN, 12,  9, $4, 2, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SSAnne6Gentleman2Script, -1
	person_event SPRITE_GENTLEMAN, 11, 13, $4, 2, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SSAnne6Gentleman3Script, -1
	person_event SPRITE_GENTLEMAN, 10, 17, $3, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SSAnne6Gentleman4Script, -1
	person_event SPRITE_GENTLEMAN, 12, 17, $3, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SSAnne6Gentleman5Script, -1
	person_event SPRITE_GENTLEMAN, 14, 17, $3, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SSAnne6Gentleman6Script, -1
	person_event SPRITE_GENTLEMAN, 17, 15, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SSAnne6Gentleman7Script, -1
