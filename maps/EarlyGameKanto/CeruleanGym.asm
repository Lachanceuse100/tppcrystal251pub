CeruleanGymRB_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

CeruleanGymRB_MistyScript:
	faceplayer
	loadfont
	checkevent EVENT_GOT_TM_RAIN_DANCE
	iftrue .got_tm
	checkflag ENGINE_CASCADEBADGE
	iftrue .have_badge
	writetext CeruleanGymRB_MistyIntroText
	waitbutton
	closetext
	winlosstext CeruleanGymRB_MistyLostText, $0000
	loadtrainer MISTY_RB, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_MISTY_RB
	setevent EVENT_BEAT_SWIMMERM_PARKER_RB
	setevent EVENT_BEAT_SWIMMERF_DIANA_RB
	loadfont
	writetext CeruleanGymRB_GotBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_CASCADEBADGE
.have_badge:
	writetext CeruleanGymRB_MistyCongratsText
	waitbutton
.got_tm
	scall .tm
	waitbutton
	closetext
	end

.tm:
	givetm TM_RAIN_DANCE, EVENT_GOT_TM_RAIN_DANCE, .already_had_it, .bag_full
	writetext CeruleanGymRB_TMText
	end

.already_had_it:
	writetext CeruleanGymRB_TMText
	end

.bag_full:
	writetext CeruleanGymRB_NeedTMText
	end

TrainerSwimmerfDianaRB:
	trainer EVENT_BEAT_SWIMMERF_DIANA_RB, SWIMMERF, DIANA_RB, CeruleanGymRB_BattleText1, CeruleanGymRB_EndBattleText1, NULL, .After

.After:
	talkaftercancel
	loadfont
	writetext CeruleanGymRB_AfterBattleText1
	waitbutton
	closetext
	end

TrainerSwimmermParkerRB:
	trainer EVENT_BEAT_SWIMMERM_PARKER_RB, SWIMMERM, PARKER_RB, CeruleanGymRB_BattleText2, CeruleanGymRB_EndBattleText2, NULL, .After

.After:
	talkaftercancel
	loadfont
	writetext CeruleanGymRB_AfterBattleText2
	waitbutton
	closetext
	end

CeruleanGymRB_GymGuyScript:
	faceplayer
	loadfont
	checkevent EVENT_BEAT_MISTY_RB
	iftrue .Won
	writetext CeruleanGymRB_GymGuyText
	waitbutton
	closetext
	end

.Won
	writetext CeruleanGymRB_GymGuyWinText
	waitbutton
	closetext
	end

CeruleanGymRB_StatueScript:
	trainertotext MISTY_RB, 1, $1
	checkflag ENGINE_CASCADEBADGE
	iftrue .HaveBadge
	jumpstd gymstatue1

.HaveBadge:
	jumpstd gymstatue2

CeruleanGymRB_MistyIntroText:
	text "Tiens, une"
	line "nouvelle tête!"

	para "Si tu veux être un"
	line "vrai dresseur, il"
	para "te faut une vraie"
	line "stratégie pour"
	cont "tes #MON!"

	para "C'est quoi ta"
	line "tactique?"

	para "Moi je fonce dans"
	line "le tas avec mes"
	para "#MON EAU!"
	done

CeruleanGymRB_MistyLostText:
	text "Woah! T'es trop!"

	para "D'accord!"

	para "Tu peux avoir le"
	line "BADGECASCADE pour"
	cont "te vanter de"
	cont "m'avoir battue!"
	done

CeruleanGymRB_GotBadgeText:
	text "<PLAYER> reçoit le"
	line "BADGECASCADE."
	done

CeruleanGymRB_MistyCongratsText:
	text "Le BADGECASCADE"
	line "fait obéir tes"
	cont "#MON jusqu'au"
	cont "niveau 30."

	para "Cela inclue"
	line "les échangés!"

	para "En plus, tu"
	line "pourras utiliser"
	cont "COUPE à tout"
	cont "moment!"

	para "Tu pourras couper"
	line "les petits"
	cont "buissons et ouvrir"
	cont "de nouveaux"
	cont "chemins!"

	para "Tu peux aussi"
	line "avoir ma CT"
	cont "favorite!"
	done

CeruleanGymRB_TMText:
	text "La CT18 contient"
	line "DANSE PLUIE!"

	para "C'est bien pour"
	line "les #MON"
	cont "aquatique!"
	done

CeruleanGymRB_NeedTMText:
	text "Il te faut de la"
	line "place pour la CT!"
	done

CeruleanGymRB_BattleText1:
	text "Je suis plus"
	line "qu'assez pour toi!"

	para "ONDINE attendra!"
	done

CeruleanGymRB_EndBattleText1:
	text "Argh, tu m'as"
	line "écrasé!"
	done

CeruleanGymRB_AfterBattleText1:
	text "Combat d'autres"
	line "dresseurs pour"
	cont "savoir ce que tu"
	cont "vaux vraiment."
	done

CeruleanGymRB_BattleText2:
	text "Plouf!"

	para "Moi d'abord!"
	line "C'est parti!"
	done

CeruleanGymRB_EndBattleText2:
	text "Impossible!"
	done

CeruleanGymRB_AfterBattleText2:
	text "ONDINE ne cesse"
	line "de s'améliorer!"

	para "Elle ne perdra pas"
	line "contre quelqu'un"
	cont "comme toi!"
	done

CeruleanGymRB_GymGuyText:
	text "Salut! Futur"
	line "champion!"

	para "Voilà mon conseil!"

	para "La CHAMPIONNE"
	line "ONDINE, est une"
	cont "pro des #MON"
	cont "EAU."

	para "Tu peux les"
	line "drainer avec tes"
	cont "#MON PLANTE!"

	para "Ou bien les"
	line "électrocuter!"
	done

CeruleanGymRB_GymGuyWinText:
	text "T'as battu ONDINE!"
	line "Qu'est-ce que je"
	cont "te disais?"

	para "Toi et mon fils,"
	line "vous feriez une"
	cont "sacré équipe!"
	done


CeruleanGymRB_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 2
	warp_def 15, 4, 4, GROUP_CERULEAN_CITY_RB, MAP_CERULEAN_CITY_RB
	warp_def 15, 5, 4, GROUP_CERULEAN_CITY_RB, MAP_CERULEAN_CITY_RB

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 13, 2, $0, CeruleanGymRB_StatueScript
	signpost 13, 6, $0, CeruleanGymRB_StatueScript

	; people-events
	db 4
	person_event SPRITE_MISTY, 7, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, CeruleanGymRB_MistyScript, -1
	person_event SPRITE_LASS, 8, 6, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 3, TrainerSwimmerfDianaRB, -1
	person_event SPRITE_SWIMMER_GUY, 13, 12, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerSwimmermParkerRB, -1
	person_event SPRITE_GYM_GUY, 17, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, CeruleanGymRB_GymGuyScript, -1

