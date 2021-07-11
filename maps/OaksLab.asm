OaksLab_MapScriptHeader: ; 0x19b3c5
	; trigger count
	db 0

	; callback count
	db 0
; 0x19b3c7

UnknownScript_0x19b3c7: ; 0x19b3c7
	end
; 0x19b3c8

OakScript_0x19b3c8: ; 0x19b3c8
	faceplayer
	loadfont
	checkevent EVENT_ALLOWED_INTO_ROUTE_28
	iftrue OakAfterAll
	checkevent EVENT_BEAT_ELITE_REMATCH
	iftrue OakAfterE4
	checkevent EVENT_OAK_DEFEATED
	iftrue OakAfterDefeat
	checkevent EVENT_SET_BY_OAK_AFTER_16_BADGES
	iftrue RematchCheck
	checkevent EVENT_TALKED_TO_OAK_IN_HIS_LAB
	iftrue UnknownScript_0x19b3dd
	writetext UnknownText_0x19b427
	buttonsound
	setevent EVENT_TALKED_TO_OAK_IN_HIS_LAB
UnknownScript_0x19b3dd: ; 0x19b3dd
	checkcode VAR_BADGES
	if_equal $10, UnknownScript_0x19b3f7
	if_equal $8, UnknownScript_0x19b401
	jump UnknownScript_0x19b408
; 0x19b3ea

RematchCheck:
	special Special_CheckRematches
	if_less_than 16, UnknownScript_0x19b3ea
	writetext OakBeforeBattle
	waitbutton
	closetext
	checkevent EVENT_GOT_BULBASAUR_FROM_OAK
	iftrue .OakHasBlastoise
	checkevent EVENT_GOT_CHARMANDER_FROM_OAK
	iftrue .OakHasVenusaur
	loadtrainer POKEMON_PROF, 3
	jump .got_oaks_team

.OakHasBlastoise:
	loadtrainer POKEMON_PROF, 1
	jump .got_oaks_team

.OakHasVenusaur:
	loadtrainer POKEMON_PROF, 2
.got_oaks_team
	winlosstext OakDefeated, $0000
	startbattle
	returnafterbattle
	loadfont
	writetext OakAfterBattle
	setevent EVENT_OAK_DEFEATED
	waitbutton
	closetext
	end

OakBeforeBattle:
	text "Battre les 16"
	line "CHAMPIONS d'ARENE"

	para "sans handicap est"
	line "un exploit très"
	cont "rare."

	para "Le CONSEIL des 4 à"
	line "vu ton potentiel"

	para "et m'a demandé de"
	line "te mettre à"
	cont "l'épreuve."

	para "Jusqu'ici tu as"
	line "prouvé ta valeur"

	para "mais tu as encore"
	line "un adversaire à"
	cont "battre."

	para "Ne te retient pas."

	done

OakAfterBattle:
	text "Bravo."
	line "Ce fut un beau"
	cont "combat."

	para "Le CONSEIL des 4"
	line "va te défier en"

	para "utilisant cette"
	line "fois leurs meil-"
	cont "leurs équipes."

	para "Ils attendent au"
	line "PLATEAU INDIGO."

	done

OakDefeated:
	text "Je suis sans voix!"

	para "Tes exploits n'ont"
	line "rien d'éxagéré!"

	done

OakAfterDefeatText:
	text "Le CONSEIL des 4"
	line "t'attendent au"
	cont "PLATEAU INDIGO."

	para "Bonne chance!"
	done

OakAfterDefeat: ; 0x19b3ea
	checkevent EVENT_OAK_KNOWS_DEX_FULL
	iftrue SkipfterDefeatDexCheck
	writetext UnknownText_0x19b4a2
	waitbutton
	special ProfOaksPCBoot
	checkcode VAR_DEXCAUGHT
	if_equal 251, PGKOak_FullDex
SkipfterDefeatDexCheck:
	writetext OakAfterDefeatText
	waitbutton
	closetext
	end

OakAfterE4:
	writetext UnknownText_0x19b4a2
	waitbutton
	special ProfOaksPCBoot
	checkcode VAR_DEXCAUGHT
	if_equal 251, PGKOak_FullDex
	writetext OakAfterE4Text
	waitbutton
	closetext
	end

OakAfterE4Text:
	text "Continue! Attrape-"
	line "les tous!"
	done

OakAfterAll:
	writetext OakAfterAllText
	waitbutton
	closetext
	end

OakAfterAllText:
	text "Le MONT ARGENT est"
	line "à l'est de la"
	cont "ROUTE 22."
	done

UnknownScript_0x19b3ea: ; 0x19b3ea
	checkevent EVENT_OAK_KNOWS_DEX_FULL
	iftrue .skip_dex_check
	writetext UnknownText_0x19b4a2
	waitbutton
	special ProfOaksPCBoot
	checkcode VAR_DEXCAUGHT
	if_equal 251, PGKOak_FullDex
.skip_dex_check
	checkevent EVENT_SET_BY_OAK_AFTER_16_BADGES
	iffalse .dont_mention_rematches
	writetext UnknownText_0x19b4c8
	waitbutton
	closetext
	end
.dont_mention_rematches
	writetext UnknownText_0x19b4c8_2
	waitbutton
	closetext
	end
; 0x19b3f7

PGKOak_FullDex
	checkevent EVENT_BEAT_ELITE_REMATCH
	iftrue OakLabUnlock28
	writetext OakDexButNotE4Text
	setevent EVENT_OAK_KNOWS_DEX_FULL
	waitbutton
	closetext
	end

OakDexButNotE4Text:
	text "Un #DEX par-"
	line "fait! J'en ai"

	para "toujours rêvé!"
	line "Félicitations!"

	para "Pense à chercher"
	line "un DIPLOME à"
	para "CELADOPOLE en ré-"
	line "compense de ton"
	cont "exploit."
	done

OakLabUnlock28:
	farwritetext OakFullDex
	buttonsound
	farwritetext OakCongrats
	setevent EVENT_ALLOWED_INTO_ROUTE_28
	waitbutton
	closetext
	end


UnknownScript_0x19b3f7: ; 0x19b3f7
	writetext UnknownText_0x19b4fc
	buttonsound
	setevent EVENT_SET_BY_OAK_AFTER_16_BADGES
	clearevent EVENT_MORTY_IS_AT_BACK_OF_GYM
	jump UnknownScript_0x19b3ea
; 0x19b401

UnknownScript_0x19b401: ; 0x19b401
	writetext UnknownText_0x19b6a2
	buttonsound
	jump UnknownScript_0x19b3ea
; 0x19b408

UnknownScript_0x19b408: ; 0x19b408
	writetext UnknownText_0x19b73c
	buttonsound
	jump UnknownScript_0x19b3ea
; 0x19b40f

ScientistScript_0x19b40f: ; 0x19b40f
	jumptextfaceplayer UnknownText_0x19b7fb
; 0x19b412

ScientistScript_0x19b412: ; 0x19b412
	jumptextfaceplayer UnknownText_0x19b859
; 0x19b415

ScientistScript_0x19b415: ; 0x19b415
	jumptextfaceplayer UnknownText_0x19b8a7
; 0x19b418

MapOaksLabSignpost11Script: ; 0x19b418
	jumpstd difficultbookshelf
; 0x19b41b

MapOaksLabSignpost12Script: ; 0x19b41b
	jumptext UnknownText_0x19b8ea
; 0x19b41e

MapOaksLabSignpost13Script: ; 0x19b41e
	jumptext UnknownText_0x19b909
; 0x19b421

MapOaksLabSignpost14Script: ; 0x19b421
	jumptext UnknownText_0x19b945
; 0x19b424

MapOaksLabSignpost15Script: ; 0x19b424
	jumptext UnknownText_0x19b95e
; 0x19b427

UnknownText_0x19b427: ; 0x19b427
	text "CHEN: Ah, <PLAY_G>!"
	line "Bienvenue à la"
	cont "maison!"

	para "Tu as été absent"
	line "un bon moment."

	para "Que penses-tu des"
	line "dresseurs par ici?"

	para "Il n'y a pas que"
	line "toi qui te sois"
	cont "entraîné sans"
	cont "relâche!"
	done
; 0x19b4a2

UnknownText_0x19b4a2: ; 0x19b4a2
	text "Ou en est ton"
	line "#DEX?"

	para "Voyons voir<...>"
	done
; 0x19b4c8

UnknownText_0x19b4c8: ; 0x19b4c8
	text "Reviens lorsque tu"
	line "auras battu les 16"
	cont "CHAMPIONS d'ARENE"
	done
; 0x19b4fc

UnknownText_0x19b4c8_2: ; 0x19b4c8
	text "Reviens lorsque tu"
	line "auras les 16"
	cont "BADGES d'ARENE."
	done

UnknownText_0x19b4fc: ; 0x19b4fc
	text "CHEN: Excellent!"

	para "Tu as tous les"
	line "BADGES des ARENES"
	cont "de KANTO!"

	para "Je ne m'étais pas"
	line "trompé sur toi."

	para "Hmm<...>"

	para "Maintenant que tu"
	line "as prouvé ta"
	cont "valeur<...>"

	para "Les CHAMPIONS"
	line "d'ARENE voudraient"
	cont "te mettre à l'é-"
	para "preuve."

	para "Si tu arrives à"
	line "les battre sans"

	para "handicap, reviens"
	line "me voir."
	done
; 0x19b6a2

UnknownText_0x19b6a2: ; 0x19b6a2
	text "CHEN: Tu ne pars"
	line "pas à la quête des"
	cont "BADGES de KANTO?"

	para "Les CHAMPIONS"
	line "d'ARENE de KANTO"

	para "sont aussi forts"
	line "que ceux de JOHTO."

	para "Tu devrais tenter"
	line "ta chance face à"
	cont "eux."
	done
; 0x19b73c

UnknownText_0x19b73c: ; 0x19b73c
	text "CHEN: Tu"
	line "collectionnes les"
	cont "BADGES de KANTO."

	para "Cela doit être"
	line "difficile, mais tu"

	para "as beaucoup"
	line "d'expérience à"
	cont "présent."

	para "Viens me voir si"
	line "tu les as tous."

	para "J'aurai un cadeau"
	line "pour toi."

	para "Bonne chance,"
	line "<PLAY_G>!"
	done
; 0x19b7fb

UnknownText_0x19b7fb: ; 0x19b7fb
	text "La CHRONIQUE #"
	line "MON du PROF.CHEN"

	para "ne passe pas ici,"
	line "à KANTO."

	para "C'est bête<...>"
	line "Je l'aime tant."
	done
; 0x19b859

UnknownText_0x19b859: ; 0x19b859
	text "Grâce à ton tra-"
	line "vail sur le #-"
	
	para "DEX, les recher-"
	line "ches du PROF ont"
	cont "bien progressé."
	done
; 0x19b8a7

UnknownText_0x19b8a7: ; 0x19b8a7
	text "Ne le répète pas,"
	line "mais la CHRONIQUE"

	para "#MON du PROF."
	line "CHEN n'est pas en"
	cont "direct."
	done
; 0x19b8ea

UnknownText_0x19b8ea: ; 0x19b8ea
	text "Appuie sur START"
	line "pour ouvrir le"
	cont "MENU!"
	done
; 0x19b909

UnknownText_0x19b909: ; 0x19b909
	text "L'option pour"
	line "sauvegarder est"
	cont "dans le MENU!"
	done
; 0x19b945

UnknownText_0x19b945: ; 0x19b945
	text "Il n'y a rien"
	line "ici<...>"
	done
; 0x19b95e

UnknownText_0x19b95e: ; 0x19b95e
	text "Il y a un e-mail"
	line "sur le PC."

	para "<...>"

	para "PROF.CHEN, comment"
	line "avance vos"
	cont "recherches?"

	para "Moi, je bosse"
	line "comme un barbare."

	para "On racontre que"
	line "<PLAY_G> se fait"

	para "une sacré réputa-"
	line "tion à KANTO."

	para "Ca fait plaisir"
	line "à entendre."

	para "ORME du BOURG"
	line "GEON."
	cont "8-)"
	done
; 0x19ba33

OaksLab_MapEventHeader: ; 0x19ba33
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $b, $4, 3, GROUP_PALLET_TOWN, MAP_PALLET_TOWN
	warp_def $b, $5, 3, GROUP_PALLET_TOWN, MAP_PALLET_TOWN

	; xy triggers
	db 0

	; signposts
	db 16
	signpost 1, 6, $0, MapOaksLabSignpost11Script
	signpost 1, 7, $0, MapOaksLabSignpost11Script
	signpost 1, 8, $0, MapOaksLabSignpost11Script
	signpost 1, 9, $0, MapOaksLabSignpost11Script
	signpost 7, 0, $0, MapOaksLabSignpost11Script
	signpost 7, 1, $0, MapOaksLabSignpost11Script
	signpost 7, 2, $0, MapOaksLabSignpost11Script
	signpost 7, 3, $0, MapOaksLabSignpost11Script
	signpost 7, 6, $0, MapOaksLabSignpost11Script
	signpost 7, 7, $0, MapOaksLabSignpost11Script
	signpost 7, 8, $0, MapOaksLabSignpost11Script
	signpost 7, 9, $0, MapOaksLabSignpost11Script
	signpost 0, 4, $0, MapOaksLabSignpost12Script
	signpost 0, 5, $0, MapOaksLabSignpost13Script
	signpost 3, 9, $0, MapOaksLabSignpost14Script
	signpost 1, 0, $0, MapOaksLabSignpost15Script

	; people-events
	db 4
	person_event SPRITE_OAK, 6, 8, $6, 0, 0, -1, -1, 0, 0, 0, OakScript_0x19b3c8, -1
	person_event SPRITE_SCIENTIST, 12, 5, $5, 0, 1, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ScientistScript_0x19b40f, -1
	person_event SPRITE_SCIENTIST, 13, 12, $4, 1, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ScientistScript_0x19b412, -1
	person_event SPRITE_SCIENTIST, 8, 5, $2, 1, 1, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ScientistScript_0x19b415, -1
; 0x19bac7



