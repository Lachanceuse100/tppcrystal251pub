MrPokemonsHouse_MapScriptHeader: ; 0x196e47
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x196e51, $0000
	dw UnknownScript_0x196e55, $0000

	; callback count
	db 0
; 0x196e51

UnknownScript_0x196e51: ; 0x196e51
	priorityjump UnknownScript_0x196e56
	end
; 0x196e55

UnknownScript_0x196e55: ; 0x196e55
	end
; 0x196e56

UnknownScript_0x196e56: ; 0x196e56
	showemote $0, $2, 15
	spriteface $2, $0
	loadfont
	writetext UnknownText_0x196f66
	waitbutton
	closetext
	applymovement $0, MovementData_0x196f5a
	loadfont
	writetext UnknownText_0x196fa8
	buttonsound
	waitsfx
	giveitem MYSTERY_EGG, $1
	writetext UnknownText_0x196fd2
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	blackoutmod GROUP_CHERRYGROVE_CITY, MAP_CHERRYGROVE_CITY
	writetext UnknownText_0x196feb
	buttonsound
	spriteface $2, $3
	writetext UnknownText_0x197092
	buttonsound
	spriteface $2, $0
	spriteface $3, $2
	writetext UnknownText_0x1970b7
	waitbutton
	closetext
	jump UnknownScript_0x196ec9
; 0x196e97

GentlemanScript_0x196e97: ; 0x196e97
	faceplayer
	loadfont
	checkitem RED_SCALE
	iftrue UnknownScript_0x196eb0
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue UnknownScript_0x196eaa
	writetext UnknownText_0x197134
	waitbutton
	closetext
	end
; 0x196eaa

UnknownScript_0x196eaa: ; 0x196eaa
	writetext UnknownText_0x19714a
	waitbutton
	closetext
	end
; 0x196eb0

UnknownScript_0x196eb0: ; 0x196eb0
	writetext UnknownText_0x197476
	yesorno
	iffalse UnknownScript_0x196ec3
	checkevent EVENT_GOT_EXP_SHARE_FROM_SIMON
	iffalse .give_exp_share
	verbosegiveitem SLEEP_GUARD, 1
	iffalse UnknownScript_0x196ec7
	jump .take_red_scale
.give_exp_share
	verbosegiveitem EXP_SHARE, 1
	iffalse UnknownScript_0x196ec7
.take_red_scale
	takeitem RED_SCALE, 1
	jump UnknownScript_0x196eaa
; 0x196ec3

UnknownScript_0x196ec3: ; 0x196ec3
	writetext UnknownText_0x19750d
	waitbutton
UnknownScript_0x196ec7: ; 0x196ec7
	closetext
	end
; 0x196ec9

UnknownScript_0x196ec9: ; 0x196ec9
	playmusic MUSIC_PROF_OAK
	applymovement $3, MovementData_0x196f5d
	spriteface $0, $3
	loadfont
	writetext UnknownText_0x197185
	buttonsound
	waitsfx
	special ProfOaksPCBoot
	buttonsound
	waitsfx
	writetext UnknownText_0x197185_2
	buttonsound
	waitsfx
	writetext UnknownText_0x1973cc
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_DEX_UPGRADED
	writetext UnknownText_0x1973de
	waitbutton
	closetext
	spriteface $0, $0
	applymovement $3, MovementData_0x196f61
	playsound SFX_EXIT_BUILDING
	disappear $3
	waitsfx
	special RestartMapMusic
	pause 15
	spriteface $0, $1
	loadfont
	writetext UnknownText_0x1970ed
	waitbutton
	closetext
	special Special_FadeToBlack
	special Functiond91
	playmusic MUSIC_HEAL
	special Function1060a2
	special HealParty
	pause 60
	special Function8c0ab
	special RestartMapMusic
	loadfont
	writetext UnknownText_0x197134
	waitbutton
	closetext
	setevent EVENT_SILVER_IN_NEW_BARK_TOWN
	setevent EVENT_NEIGHBOR_IN_YOUR_HOUSE_1F
	clearevent EVENT_NEIGHBOR_IN_HER_HOUSE
	dotrigger $1
	domaptrigger GROUP_CHERRYGROVE_CITY, MAP_CHERRYGROVE_CITY, $1
	domaptrigger GROUP_ELMS_LAB, MAP_ELMS_LAB, $3
	specialphonecall $2
	clearevent EVENT_OFFICER_IN_ELMS_LAB
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue UnknownScript_0x196f49
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue UnknownScript_0x196f4d
	setevent EVENT_TOTODILE_POKEBALL
	end
; 0x196f49

UnknownScript_0x196f49: ; 0x196f49
	setevent EVENT_CHIKORITA_POKEBALL
	end
; 0x196f4d

UnknownScript_0x196f4d: ; 0x196f4d
	setevent EVENT_CYNDAQUIL_POKEBALL
	end
; 0x196f51

MapMrPokemonsHouseSignpost1Script: ; 0x196f51
	jumptext UnknownText_0x197543
; 0x196f54

MapMrPokemonsHouseSignpost3Script: ; 0x196f54
	jumptext UnknownText_0x197584
; 0x196f57

MapMrPokemonsHouseSignpost4Script: ; 0x196f57
	jumptext UnknownText_0x1975ac
; 0x196f5a

MovementData_0x196f5a: ; 0x196f5a
	step_right
	step_up
	step_end
; 0x196f5d

MovementData_0x196f5d: ; 0x196f5d
	step_down
	step_left
	step_left
	step_end
; 0x196f61

MovementData_0x196f61: ; 0x196f61
	step_down
	step_left
	turn_head_down
	db $3f ; movement
	step_end
; 0x196f66

UnknownText_0x196f66: ; 0x196f66
	text "Bonjour, bonjour!"
	line "Tu es <PLAY_G>,"
	cont "c'est ça?"

	para "Le PROF.ORME"
	line "m'a prévenu de"
	cont "ton arrivée."
	done
; 0x196fa8

UnknownText_0x196fa8: ; 0x196fa8
	text "Voilà ce que je"
	line "voudrais qu'il"
	cont "examine."
	done
; 0x196fd2

UnknownText_0x196fd2: ; 0x196fd2
	text "<PLAYER> reçoit"
	line "l'OEUF MYSTERE."
	done
; 0x196feb

UnknownText_0x196feb: ; 0x196feb
	text "Je connais un"
	line "couple qui tient"
	cont "une pension"
	cont "#MON."

	para "Ils m'ont donné"
	line "cet OEUF."

	para "J'étais intrigué,"
	line "alors j'ai envoyé"
	cont "un e-mail au"
	cont "PROF.ORME."

	para "Le PROF.ORME est"
	line "incollable en"
	cont "évolution #MON."
	done
; 0x197092

UnknownText_0x197092: ; 0x197092
	text "Même le PROF.CHEN"
	line "est d'accord."
	done
; 0x1970b7

UnknownText_0x1970b7: ; 0x1970b7
	text "Le PROF.ORME aura"
	line "sûrement une"
	cont "explication."
	done
; 0x1970ed

UnknownText_0x1970ed: ; 0x1970ed
	text "Tu retournes chez"
	line "le PROF.ORME?"

	para "Tiens, tu devrais"
	line "te reposer avant."
	done
; 0x197134

UnknownText_0x197134: ; 0x197134
	text "Je compte sur toi!"
	done
; 0x19714a

UnknownText_0x19714a: ; 0x19714a
	text "La vie est belle!"

	para "Toujours de nou-"
	line "velles découvertes"
	cont "à faire."
	done
; 0x197185

UnknownText_0x197185: ; 0x197185
	text "CHEN: Ah, <PLAY_G>!"
	line "Quelle surprise!"

	para "J'ai entendu ce"
	line "qui s'est passé à"
	cont "l'OCEANE."

	para "Tu vas bien, c'est"
	line "une bonne"
	cont "nouvelle!"

	para "Ah! Laisse moi"
	line "voir ton #DEX."
	done
; 0x1973cc
UnknownText_0x197185_2:
	text "J'ai presque"
	line "oublié."

	para "Tiens, la dernière"
	line "version du"
	cont "#DEX!"

	para "Je travaillais"
	line "dessus depuis que"
	cont "tu étais parti."
	done

UnknownText_0x1973cc: ; 0x1973cc
	text "Le #DEX de"
	line "<PLAYER> est"
	cont "amélioré."
	done
; 0x1973de

UnknownText_0x1973de: ; 0x1973de
	text "Va rencontrer des"
	line "#MON et"
	cont "complète ce"
	cont "#DEX!"

	para "Bon, je dois"
	line "partir."

	para "J'ai rendez-vous"
	line "a DOUBLONVILLE"
	cont "pour mon émission"
	cont "de radio."

	para "<PLAY_G>, je"
	line "compte sur toi!"
	done
; 0x197476

UnknownText_0x197476: ; 0x197476
	text "Hm? Cette écaille!"
	line "Mais c'est<...>"
	cont "Un LEVIATOR rouge?"

	para "C'est rare"
	line "Je, je le veux<...>"

	para "<PLAY_G>, tu"
	line "veux l'échanger?"

	para "Je peux t'offrir"
	line "ce GARDE SOM. que"
	cont "j'ai eu du"
	cont "PROF. CHEN."
	done
; 0x19750d

UnknownText_0x19750d: ; 0x19750d
	text "C'est décevant,"
	line "c'est un objet"
	cont "rare."
	done
; 0x197543

UnknownText_0x197543: ; 0x197543
	text "Il y a plein de"
	line "magasines d'une"
	cont "langue étrange."

	para "Je ne lis même pas"
	line "les titres<...>"
	done
; 0x197584

UnknownText_0x197584: ; 0x197584
	text "C'est un grand"
	line "ordinateur."

	para "Oh, il est cassé<...>"
	done
; 0x1975ac

UnknownText_0x1975ac: ; 0x1975ac
	text "Une pile de pièces"
	line "étranges!"

	para "Peut-être d'un"
	line "autre pays?"
	done
; 0x1975ef

MrPokemonsHouse_MapEventHeader: ; 0x1975ef
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 2, GROUP_ROUTE_30, MAP_ROUTE_30
	warp_def $7, $3, 2, GROUP_ROUTE_30, MAP_ROUTE_30

	; xy triggers
	db 0

	; signposts
	db 5
	signpost 1, 0, $0, MapMrPokemonsHouseSignpost1Script
	signpost 1, 1, $0, MapMrPokemonsHouseSignpost1Script
	signpost 1, 6, $0, MapMrPokemonsHouseSignpost3Script
	signpost 1, 7, $0, MapMrPokemonsHouseSignpost3Script
	signpost 4, 6, $0, MapMrPokemonsHouseSignpost4Script

	; people-events
	db 2
	person_event SPRITE_GENTLEMAN, 9, 7, $9, 0, 0, -1, -1, 0, 0, 0, GentlemanScript_0x196e97, -1
	person_event SPRITE_OAK, 9, 10, $7, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_OAK_IN_MR_POKEMONS_HOUSE
; 0x197632

