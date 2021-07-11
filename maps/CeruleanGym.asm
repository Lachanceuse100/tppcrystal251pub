CeruleanGym_MapScriptHeader: ; 0x1883cf
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x1883d9, $0000
	dw UnknownScript_0x1883da, $0000

	; callback count
	db 0
; 0x1883d9

UnknownScript_0x1883d9: ; 0x1883d9
	end
; 0x1883da

UnknownScript_0x1883da: ; 0x1883da
	priorityjump UnknownScript_0x1883de
	end
; 0x1883de

UnknownScript_0x1883de: ; 0x1883de
	applymovement $2, MovementData_0x1884e3
	playsound SFX_TACKLE
	applymovement $2, MovementData_0x1884eb
	playmusic MUSIC_ROCKET_ENCOUNTER
	loadfont
	writetext UnknownText_0x1884fb
	waitbutton
	closetext
	showemote $0, $2, 15
	applymovement $2, MovementData_0x1884f7
	loadfont
	writetext UnknownText_0x188574
	waitbutton
	closetext
	applymovement $2, MovementData_0x1884f5
	loadfont
	writetext UnknownText_0x1885a5
	waitbutton
	closetext
	applymovement $2, MovementData_0x1884e8
	playsound SFX_EXIT_BUILDING
	disappear $2
	setevent EVENT_MET_ROCKET_GRUNT_AT_CERULEAN_GYM
	clearevent EVENT_ROCKET_ON_ROUTE_24
	clearevent EVENT_MISTY_AND_HER_DATE_ON_CERULEAN_CAPE
	dotrigger $0
	domaptrigger GROUP_ROUTE_25, MAP_ROUTE_25, $1
	domaptrigger GROUP_POWER_PLANT, MAP_POWER_PLANT, $0
	waitsfx
	special RestartMapMusic
	pause 15
	spriteface $0, $0
	pause 15
	end
; 0x188432
;
MistyScript_0x188432: ; 0x188432
	faceplayer
	loadfont
	checkevent EVENT_BEAT_ELM
	iftrue MistyPostgameRematchScript
	checkevent EVENT_MISTY_REMATCH
	iftrue MistyAfterRematch
	checkevent EVENT_SET_BY_OAK_AFTER_16_BADGES
	iftrue MistyRematchScript
	checkflag ENGINE_CASCADEBADGE
	iftrue UnknownScript_0x188460
	writetext UnknownText_0x188674
	waitbutton
	checkevent EVENT_BEAT_MISTY_RB
	iftrue MistySecondScript
	writetext TextBranchFirstMisty
	waitbutton
	closetext
MistyFight:
	winlosstext UnknownText_0x18870c, $0000
	loadtrainer MISTY, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_MISTY
	setevent EVENT_BEAT_SWIMMERF_DIANA
	setevent EVENT_BEAT_SWIMMERF_BRIANA
	setevent EVENT_BEAT_SWIMMERM_PARKER
	loadfont
	writetext UnknownText_0x188768
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_CASCADEBADGE
	checkevent EVENT_BEAT_MISTY_RB
	iffalse GiveRainBranch
UnknownScript_0x188460: ; 0x188460
	writetext UnknownText_0x188782
	waitbutton
	closetext
	end

MistySecondScript:
	writetext TextBranchSecondMisty
	waitbutton
	closetext
	jump MistyFight

MistyRematchScript:
	writetext MistyRematchTextBefore
	waitbutton
	closetext
	winlosstext MistyRematchBeatenText, $0000
	loadtrainer MISTY, 2
	startbattle
	returnafterbattle
	setevent EVENT_MISTY_REMATCH
	loadfont
	jump MistyAfterRematch
; 0x188466

MistyAfterRematch:
	writetext MistyAfterRematchText
	waitbutton
	closetext
	end

MistyRematchTextBefore:
	text "ONDINE: J'avais"
	line "pour rêve de par-"
	
	para "tir à l'aventure"
	line "et d'affronter les"
	
	para "dresseurs les plus"
	line "puissants."

	para "J'ai fais de mon"
	line "rêve une réalité."

	para "Et maintenant<...>"

	para "Mon rêve est de te"
	line "battre!"
	done

MistyRematchBeatenText:
	text "D'abord mon ren-"
	line "card."

	para "Et maintenant mon"
	line "rêve<...>"
	done

MistyAfterRematchText:
	text "ONDINE: Tu es"
	line "vraiment quelque"
	cont "chose<...>"

	para "Je l'admets, tu"
	line "as du talent."
	done

GiveRainBranch:
	writetext MistyBeforeRainDance
	verbosegiveitem TM_RAIN_DANCE, 1
	writetext MistyAfterRainDance
	waitbutton
	closetext
	end
	
TrainerSwimmerfDiana: ; 0x188466
	; bit/flag number
	dw $3f9

	; trainer group && trainer id
	db SWIMMERF, DIANA

	; text when seen
	dw SwimmerfDianaSeenText

	; text when trainer beaten
	dw SwimmerfDianaBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SwimmerfDianaScript
; 0x188472

SwimmerfDianaScript: ; 0x188472
	talkaftercancel
	loadfont
	writetext UnknownText_0x188856
	waitbutton
	closetext
	end
; 0x18847a

TrainerSwimmerfBriana: ; 0x18847a
	; bit/flag number
	dw $3fa

	; trainer group && trainer id
	db SWIMMERF, BRIANA

	; text when seen
	dw SwimmerfBrianaSeenText

	; text when trainer beaten
	dw SwimmerfBrianaBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SwimmerfBrianaScript
; 0x188486

SwimmerfBrianaScript: ; 0x188486
	talkaftercancel
	loadfont
	writetext UnknownText_0x1888c0
	waitbutton
	closetext
	end
; 0x18848e

TrainerSwimmermParker: ; 0x18848e
	; bit/flag number
	dw $5a8

	; trainer group && trainer id
	db SWIMMERM, PARKER

	; text when seen
	dw SwimmermParkerSeenText

	; text when trainer beaten
	dw SwimmermParkerBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SwimmermParkerScript
; 0x18849a

SwimmermParkerScript: ; 0x18849a
	talkaftercancel
	loadfont
	writetext UnknownText_0x188943
	waitbutton
	closetext
	end
; 0x1884a2

CeruleanGymGuyScript: ; 0x1884a2
	faceplayer
	loadfont
	checkevent EVENT_BEAT_MISTY
	iftrue .CeruleanGymGuyWinScript
	writetext CeruleanGymGuyText
	waitbutton
	closetext
	end

.CeruleanGymGuyWinScript
	writetext CeruleanGymGuyWinText
	waitbutton
	closetext
	end
; 0x1884b6

MapCeruleanGymSignpostItem0: ; 0x1884b6
	dw $00fb
	db MACHINE_PART

; 0x1884b9

MapCeruleanGymSignpost1Script: ; 0x1884b9
	checkevent EVENT_CERULEAN_GYM_POPULATION
	iffalse UnknownScript_0x1884d3
	loadfont
	writetext UnknownText_0x188610
	waitbutton
	closetext
	end
; 0x1884c6

MapCeruleanGymSignpost2Script: ; 0x1884c6
	checkevent EVENT_CERULEAN_GYM_POPULATION
	iffalse UnknownScript_0x1884d3
	loadfont
	writetext UnknownText_0x188642
	waitbutton
	closetext
	end
; 0x1884d3

UnknownScript_0x1884d3: ; 0x1884d3
	trainertotext MISTY, 1, $1
	checkflag ENGINE_CASCADEBADGE
	iftrue UnknownScript_0x1884dc
	jumpstd gymstatue1
; 0x1884dc

UnknownScript_0x1884dc: ; 0x1884dc
	jumpstd gymstatue2
; 0x1884e3

MovementData_0x1884e3: ; 0x1884e3
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	step_end
; 0x1884e8

MovementData_0x1884e8: ; 0x1884e8
	big_step_right
	big_step_down
	step_end
; 0x1884eb

MovementData_0x1884eb: ; 0x1884eb
	fix_facing
	db $39 ; movement
	jump_step_up
	db $38 ; movement
	remove_fixed_facing
	accelerate_last
	accelerate_last
	step_down
	step_down
	step_end
; 0x1884f5

MovementData_0x1884f5: ; 0x1884f5
	big_step_down
	step_end
; 0x1884f7

MovementData_0x1884f7: ; 0x1884f7
	fix_facing
	slow_step_up
	remove_fixed_facing
	step_end
; 0x1884fb

UnknownText_0x1884fb: ; 0x1884fb
	text "Oups! Moi désolé!"
	line "Toi pas blessé,"
	cont "OK?"

	para "Jé souis occupé."
	line "Moi faire vite"
	cont "sinon quelqu'un"
	cont "me voir."
	done
; 0x188574

UnknownText_0x188574: ; 0x188574
	text "Oh non! Té m'a"
	line "vu déjà! Jé fais"
	cont "grosse erreur!"
	done
; 0x1885a5

UnknownText_0x1885a5: ; 0x1885a5
	text "Hé, toué! Té rien"
	line "vu et rien enten-"
	cont "du, OK?"

	para "Rien du tout"

	para "Ciao-ciao!"
	line "Bye-bye!"
	done
; 0x188610

UnknownText_0x188610: ; 0x188610
	text "Sortie pour un"
	line "moment<...>"
	
	para "ONDINE, CHAMPIONNE"
	line "de l'ARENE."
	done
; 0x188642

UnknownText_0x188642: ; 0x188642
	text "ONDINE est partie,"
	line "alors nous aussi."

	para "Les dresseurs de"
	line "l'arène."
	done
; 0x188674

UnknownText_0x188674: ; 0x188674
	text "ONDINE: Je"
	line "t'attendais, toi!"

	para "Tu as peut-être"
	line "des BADGES de"

	para "JOHTO, mais tu vas"
	line "quand même te"
	cont "prendre une"
	cont "bonne raclée!"
	done

TextBranchFirstMisty
	text "Mes #MON"
	line "aquatiques sont"
	cont "trop forts!"
	done

TextBranchSecondMisty:
	text "Hé! Mais je te"
	line "reconnais!"

	para "T'as pas déjà eu"
	line "ton badge il y a 3"
	cont "mois?"

	para "<...>"

	para "Comment ça on te"
	line "l'a volé?"

	para "Et ben pour la"
	line "peine, faudra le"
	cont "regagner!"

	para "Punition pour"
	line "avoir gâché mon"
	cont "rencard!"
	done

; 0x18870c

UnknownText_0x18870c: ; 0x18870c
	text "ONDINE: D'accord,"
	line "je veux bien croi-"
	cont "re que tu m'ais"
	cont "déjà battue avant."

	para "Je vois que tu"
	line "n'as rien lâché"
	cont "non plus!"

	para "Tiens, ton nouveau"
	line "BADGE CASCADE. Le"
	cont "perds pas cette"
	cont "fois!"
	done
; 0x188768

UnknownText_0x188768: ; 0x188768
	text "<PLAYER> reçois"
	line "BADGE CASCADE."
	done
; 0x188782

MistyBeforeRainDance:
	text "ONDINE: Un petit"
	line "memento de notre"
	cont "combat."

	para "Prends ça!"

	done

MistyAfterRainDance:
	text "La CT contient"
	line "DANSE PLUIE."

	para "Ca renforce les"
	line "capacités eau."

	para "Je suis sûre que"
	line "tu sauras t'en"
	cont "servir."
	done

UnknownText_0x188782: ; 0x188782
	text "ONDINE: Est-ce qu'"
	line "il y a des dres-"
	cont "seurs aussi fort"
	cont "que toi à JOHTO?"

	para "Je vais y aller"
	line "un jour. Ca me"

	para "fera de l'entraî-"
	line "nement."
	done
; 0x18880a

SwimmerfDianaSeenText: ; 0x18880a
	text "Désolée d'avoir"
	line "été absente."
	cont "On y va!"
	done
; 0x188838

SwimmerfDianaBeatenText: ; 0x188838
	text "J'abandonne! T'as"
	line "gagné!"
	done
; 0x188856

UnknownText_0x188856: ; 0x188856
	text "Je vais nager"
	line "tranquillement."
	done
; 0x188870

SwimmerfBrianaSeenText: ; 0x188870
	text "Je nage trop bien."
	line "Ca t'énerve?"
	done
; 0x18889f

SwimmerfBrianaBeatenText: ; 0x18889f
	text "Ooh!"
	line "Impressionnant!"
	done
; 0x1888c0

UnknownText_0x1888c0: ; 0x1888c0
	text "Ne crâne pas trop<...>"

	para "ONDINE va te faire"
	line "mal!"
	done
; 0x188912

SwimmermParkerSeenText: ; 0x188912
	text "Gloups<...>"

	para "A l'attaque!"
	line "Glouarps!"
	done
; 0x188934

SwimmermParkerBeatenText: ; 0x188934
	text "Pas possible<...>"
	done
; 0x188943

UnknownText_0x188943: ; 0x188943
	text "ONDINE s'est bien"
	line "améliorée depuis"
	cont "ces derniers mois."

	para "Fais attention ou"
	line "tu te feras"
	cont "écraser!"
	done
; 0x1889a7

CeruleanGymGuyText: ; 0x1889a7
	text "Salut, champion en"
	line "herbe!"

	para "Quand ONDINE était"
	line "partie, j'suis"

	para "allé me balader."
	line "Hé-hé-hé."
	done
; 0x1889fa

CeruleanGymGuyWinText: ; 0x1889fa
	text "Whoa! Tu es un"
	line "p'tit tigre!w"

	para "Comme toujours,"
	line "c'était un sacré"
	cont "combat!"
	done
; 0x188a51

MistyPostgameRematchScript:
    writetext MistyPostgameRematchText
    yesorno
    iffalse .return
    closetext
    loadtrainer MISTY, 2
    winlosstext MistyPostgameBeatenText, 0
    startbattle
    returnafterbattle
    loadfont
    writetext MistyPostgameAfterText
    waitbutton
.return
    closetext
    end

MistyPostgameRematchText:
	text "Voyez-vous ça, si"
	line "ce n'est pas la"
	cont "petite peste."

	para "Ha! Quoi?"

	para "Tu veux un autre"
	line "combat?"
	done

MistyPostgameBeatenText:
	text "Impossible!"
	
	para "Tu m'as encore"
	line "battue?!"
	done

MistyPostgameAfterText:
	text "Oh, sale petite"
	line "peste<...>"

	para "Je ne peux jamais"
	line "gagner contre toi,"
	cont "hein?"
	
	para "Pfff."
	
	para "<...>Ok, t'es pas mal<...>"
	done

CeruleanGym_MapEventHeader: ; 0x188a51
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $f, $4, 5, GROUP_CERULEAN_CITY, MAP_CERULEAN_CITY
	warp_def $f, $5, 5, GROUP_CERULEAN_CITY, MAP_CERULEAN_CITY

	; xy triggers
	db 0

	; signposts
	db 3
	signpost 8, 3, $7, MapCeruleanGymSignpostItem0
	signpost 13, 2, $0, MapCeruleanGymSignpost1Script
	signpost 13, 6, $0, MapCeruleanGymSignpost2Script

	; people-events
	db 6
	person_event SPRITE_ROCKET, 14, 8, $6, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_ROCKET_IN_CERULEAN_GYM
	person_event SPRITE_MISTY, 7, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, MistyScript_0x188432, EVENT_CERULEAN_GYM_POPULATION
	person_event SPRITE_SWIMMER_GIRL, 10, 8, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 3, TrainerSwimmerfDiana, EVENT_CERULEAN_GYM_POPULATION
	person_event SPRITE_SWIMMER_GIRL, 13, 5, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 1, TrainerSwimmerfBriana, EVENT_CERULEAN_GYM_POPULATION
	person_event SPRITE_SWIMMER_GUY, 13, 12, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerSwimmermParker, EVENT_CERULEAN_GYM_POPULATION
	person_event SPRITE_GYM_GUY, 17, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, CeruleanGymGuyScript, EVENT_CERULEAN_GYM_POPULATION
; 0x188abe

