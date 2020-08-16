Route40_MapScriptHeader: ; 0x1a6160
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 2, MonicaCallback

MonicaCallback:
	clearevent EVENT_BATTLE_TOWER_SPRITE_SET_INIT
	checkcode VAR_WEEKDAY
	if_equal MONDAY, .MonicaAppears
	disappear $a
	return

.MonicaAppears
	appear $a
	return

TrainerSwimmerfElaine: ; 0x1a6174
	; bit/flag number
	dw $3e8

	; trainer group && trainer id
	db SWIMMERF, ELAINE

	; text when seen
	dw SwimmerfElaineSeenText

	; text when trainer beaten
	dw SwimmerfElaineBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SwimmerfElaineScript
; 0x1a6180

SwimmerfElaineScript: ; 0x1a6180
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a637b
	waitbutton
	closetext
	end
; 0x1a6188

TrainerSwimmerfPaula: ; 0x1a6188
	; bit/flag number
	dw $3e9

	; trainer group && trainer id
	db SWIMMERF, PAULA

	; text when seen
	dw SwimmerfPaulaSeenText

	; text when trainer beaten
	dw SwimmerfPaulaBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SwimmerfPaulaScript
; 0x1a6194

SwimmerfPaulaScript: ; 0x1a6194
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a63f5
	waitbutton
	closetext
	end
; 0x1a619c

TrainerSwimmermSimon: ; 0x1a619c
	; bit/flag number
	dw $595

	; trainer group && trainer id
	db SWIMMERM, SIMON

	; text when seen
	dw SwimmermSimonSeenText

	; text when trainer beaten
	dw SwimmermSimonBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SwimmermSimonScript
; 0x1a61a8

SwimmermSimonScript: ; 0x1a61a8
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a6282
	waitbutton
	closetext
	end
; 0x1a61b0

TrainerSwimmermRandall: ; 0x1a61b0
	; bit/flag number
	dw $596

	; trainer group && trainer id
	db SWIMMERM, RANDALL

	; text when seen
	dw SwimmermRandallSeenText

	; text when trainer beaten
	dw SwimmermRandallBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SwimmermRandallScript
; 0x1a61bc

SwimmermRandallScript: ; 0x1a61bc
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a62fa
	waitbutton
	closetext
	end
; 0x1a61c4

LassScript_0x1a61c4: ; 0x1a61c4
	jumptextfaceplayer UnknownText_0x1a6429
; 0x1a61c7

PokefanMScript_0x1a61c7: ; 0x1a61c7
	special Function10630f
	iftrue UnknownScript_0x1a61d0
	jumptextfaceplayer UnknownText_0x1a646a
; 0x1a61d0

UnknownScript_0x1a61d0: ; 0x1a61d0
	jumptextfaceplayer UnknownText_0x1a649b
; 0x1a61d3

LassScript_0x1a61d3: ; 0x1a61d3
	jumptextfaceplayer UnknownText_0x1a64e6
; 0x1a61d6

StandingYoungsterScript_0x1a61d6: ; 0x1a61d6
	jumptextfaceplayer UnknownText_0x1a6564
; 0x1a61d9

MonicaScript:
	faceplayer
	loadfont
	checkevent EVENT_GOT_SHARP_BEAK_FROM_MONICA
	iftrue MonicaMondayScript
	checkcode VAR_WEEKDAY
	if_not_equal MONDAY, MonicaNotMondayScript
	checkevent EVENT_MET_MONICA_OF_MONDAY
	iftrue .MetMonica
	writetext MeetMonicaText
	buttonsound
	setevent EVENT_MET_MONICA_OF_MONDAY
.MetMonica
	writetext MonicaGivesGiftText
	buttonsound
	verbosegiveitem SHARP_BEAK, 1
	iffalse MonicaDoneScript
	setevent EVENT_GOT_SHARP_BEAK_FROM_MONICA
	writetext MonicaGaveGiftText
	waitbutton
	closetext
	end

MonicaMondayScript:
	writetext MonicaMondayText
	waitbutton
MonicaDoneScript:
	closetext
	end

MonicaNotMondayScript:
	writetext MonicaNotMondayText
	waitbutton
	closetext
	end

MapRoute40Signpost0Script: ; 0x1a6213
	jumptext UnknownText_0x1a6767
; 0x1a6216

RockScript_0x1a6216: ; 0x1a6216
	jumpstd smashrock
; 0x1a6219

MapRoute40SignpostItem1: ; 0x1a6219
	dw $00ab
	db HYPER_POTION
; 0x1a621c

MovementData_0x1a621c: ; 0x1a621c
	step_right
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end
; 0x1a6224

MovementData_0x1a6224: ; 0x1a6224
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end
; 0x1a622a

MovementData_0x1a622a: ; 0x1a622a
	step_up
	step_up
	step_up
	step_up
	step_end
; 0x1a622f

SwimmermSimonSeenText: ; 0x1a622f
	text "Un célèbre voleur"
	line "a le même nom que"
	cont "moi!"

	para "Mais moi je suis"
	line "innocent!"
	done
; 0x1a626e

SwimmermSimonBeatenText: ; 0x1a626e
	text "OK! Je me rends!"
	done
; 0x1a6282

UnknownText_0x1a6282: ; 0x1a6282
	text "Un voleur qui"
	line "se prénomme SIMON"

	para "fait les unes de"
	line "JOHTO et de KANTO."

	para "La police pense"
	line "qu'il a aussi un"
	cont "complice."

	para "Je me demande où"
	line "son partenaire"
	cont "est parti<...>"
	done
; 0x1a62b4

SwimmermRandallSeenText: ; 0x1a62b4
	text "Je suis un"
	line "déménageur."

	para "J'ai besoin d'une"
	line "pause."

	para "On se bat près de"
	line "la falaise?"
	done
; 0x1a62ea

SwimmermRandallBeatenText: ; 0x1a62ea
	text "Oh-oh. J'ai perdu<...>"
	done
; 0x1a62fa

UnknownText_0x1a62fa: ; 0x1a62fa
	text "Je met les meubles"
	line "sur mon LOKHLASS"
	cont "et mes #MON s'y"
	cont "accrochent!"
	done
; 0x1a632d

SwimmerfElaineSeenText: ; 0x1a632d
	text "Tu vas à IRISIA?"

	para "Un petit combat"
	line "d'abord?"
	done
; 0x1a6369

SwimmerfElaineBeatenText: ; 0x1a6369
	text "J'ai perdu!"
	done
; 0x1a637b

UnknownText_0x1a637b: ; 0x1a637b
	text "En tout cas, je"
	line "nage mieux que"
	cont "toi. Ouais!"
	done
; 0x1a63a9

SwimmerfPaulaSeenText: ; 0x1a63a9
	text "Pas de bouée pour"
	line "moi."

	para "Je m'accroche à un"
	line "#MON marin!"
	done
; 0x1a63dd

SwimmerfPaulaBeatenText: ; 0x1a63dd
	text "Ooh, j'ai la tête"
	line "qui tourne!"
	done
; 0x1a63f5

UnknownText_0x1a63f5: ; 0x1a63f5
	text "Je me laisse"
	line "porter par les"
	cont "vagues."
	done
; 0x1a6429

UnknownText_0x1a6429: ; 0x1a6429
	text "IRISIA est de"
	line "l'autre côté de la"
	cont "mer."
	done
; 0x1a646a

UnknownText_0x1a646a: ; 0x1a646a
	text "Il y a un grand"
	line "immeuble droit"
	cont "devant?"

	para "Qu'est-ce que"
	line "c'est?"
	done
; 0x1a649b

UnknownText_0x1a649b: ; 0x1a649b
	text "Hum! Regarde tous"
	line "ces dresseurs"
	cont "en ébulition<...>"

	para "Quoi?"

	para "Quoi?"
	done
; 0x1a64e6

UnknownText_0x1a64e6: ; 0x1a64e6
	text "Je suis venue à"
	line "OLIVILLE pour"

	para "voir les beaux"
	line "paysages<...>"

	para "C'est tellement"
	line "différent par rap-"
	cont "port à une grande"
	cont "ville!"
	done
; 0x1a6564

UnknownText_0x1a6564: ; 0x1a6564
	text "As-tu visité la"
	line "TOUR DE COMBAT?"

	para "Plein de dresseurs"
	line "super puissants"
	cont "s'y sont réunis."

	para "Mais vu que tu as"
	line "des BADGES, tu"

	para "devrais pouvoir"
	line "t'en sortir."
	done
; 0x1a6606

MeetMonicaText:
	text "MONICA: Ravie de"
	line "te recontrer!"

	para "Je suis LUCIE du"
	line "Lundi."
	done

MonicaGivesGiftText:
	text "En signe d'amitié,"
	line "voilà un cadeau"
	cont "pour toi!"
	done

MonicaGaveGiftText:
	text "LUCIE: C'est un"
	line "objet qui améliore"

	para "les capacités du"
	line "type VOL."

	para "Tu devrais le don-"
	line "ner à un #MON"
	cont "oiseau."
	done

MonicaMondayText:
	text "LUCIE: Mes frères"
	line "et soeurs sont un"
	cont "peu partout."

	para "Trouve-les tous!"
	done

MonicaNotMondayText:
	text "LUCIE: On est pas"
	line "Lundi aujourd'hui!"
	cont "Dommage<...>"
	done

UnknownText_0x1a6767: ; 0x1a6767
	text "ROUTE 40"

	para "IRISIA -"
	line "OLIVILLE"
	done
; 0x1a678e

Route40_MapEventHeader: ; 0x1a678e
	; filler
	db 0, 0

	; warps
	db 1
	warp_def $5, $9, 1, GROUP_ROUTE_40_BATTLE_TOWER_GATE, MAP_ROUTE_40_BATTLE_TOWER_GATE

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 10, 14, $0, MapRoute40Signpost0Script
	signpost 8, 7, $7, MapRoute40SignpostItem1

	; people-events
	db 12
	person_event SPRITE_OLIVINE_RIVAL, 19, 18, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 4, TrainerSwimmermSimon, -1
	person_event SPRITE_OLIVINE_RIVAL, 34, 22, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 5, TrainerSwimmermRandall, -1
	person_event SPRITE_SWIMMER_GIRL, 23, 7, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 4, TrainerSwimmerfElaine, -1
	person_event SPRITE_SWIMMER_GIRL, 29, 14, $1f, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 3, TrainerSwimmerfPaula, -1
	person_event SPRITE_ROCK, 15, 11, $18, 0, 0, -1, -1, 0, 0, 0, RockScript_0x1a6216, -1
	person_event SPRITE_ROCK, 13, 10, $18, 0, 0, -1, -1, 0, 0, 0, RockScript_0x1a6216, -1
	person_event SPRITE_ROCK, 12, 11, $18, 0, 0, -1, -1, 0, 0, 0, RockScript_0x1a6216, -1
	person_event SPRITE_LASS, 17, 15, $6, 0, 0, -1, -1, 0, 0, 0, LassScript_0x1a61c4, -1
	person_event SPRITE_BUENA, 14, 12, $3, 0, 0, -1, -1, 0, 0, 0, MonicaScript, EVENT_MONICA_OF_MONDAY
	person_event SPRITE_POKEFAN_M, 10, 11, $9, 0, 0, -1, -1, 0, 0, 0, PokefanMScript_0x1a61c7, -1
	person_event SPRITE_LASS, 8, 17, $3, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, LassScript_0x1a61d3, -1
	person_event SPRITE_STANDING_YOUNGSTER, 13, 16, $3, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, StandingYoungsterScript_0x1a61d6, EVENT_BATTLE_TOWER_SPRITE_SET_INIT
