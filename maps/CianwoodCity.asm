CianwoodCity_MapScriptHeader: ; 0x1a0000
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x1a000d, $0000
	dw UnknownScript_0x1a000e, $0000

	; callback count
	db 1

	; callbacks

	dbw 5, UnknownScript_0x1a000f
; 0x1a000d

UnknownScript_0x1a000d: ; 0x1a000d
	end
; 0x1a000e

UnknownScript_0x1a000e: ; 0x1a000e
	end
; 0x1a000f

UnknownScript_0x1a000f: ; 0x1a000f
	setflag ENGINE_FLYPOINT_CIANWOOD
	setevent EVENT_EUSINE_IN_BURNED_TOWER_B1F
	checkevent EVENT_SUICUNE_RAN_AWAY_IN_CIANWOOD_CITY
	iffalse UnknownScript_0x1a001d
	disappear $c
UnknownScript_0x1a001d: ; 0x1a001d
	return
; 0x1a001e

UnknownScript_0x1a001e: ; 0x1a001e
	spriteface $0, $1
	showemote $0, $0, 15
	pause 15
	playsound SFX_WARP_FROM
	applymovement $d, MovementData_0x1a00da
	spriteface $0, $0
	pause 15
	playsound SFX_WARP_FROM
	applymovement $d, MovementData_0x1a00e0
	disappear $d
	pause 10
	dotrigger $0
	clearevent EVENT_SAW_SUICUNE_ON_ROUTE_42
	domaptrigger GROUP_ROUTE_42, MAP_ROUTE_42, $1
	checkevent EVENT_SUICUNE_RAN_AWAY_IN_CIANWOOD_CITY
	iftrue UnknownScript_0x1a0083
	setevent EVENT_SUICUNE_RAN_AWAY_IN_CIANWOOD_CITY
	playmusic MUSIC_MYSTICALMAN_ENCOUNTER
	appear $c
	applymovement $c, MovementData_0x1a00e7
	loadfont
	writetext UnknownText_0x1a0433
	waitbutton
	closetext
	winlosstext UnknownText_0x1a05a1, $0000
	setlasttalked $c
	loadtrainer MYSTICALMAN, EUSINE
	startbattle
	reloadmapmusic
	returnafterbattle
	playmusic MUSIC_MYSTICALMAN_ENCOUNTER
	loadfont
	writetext UnknownText_0x1a05c3
	waitbutton
	closetext
	applymovement $c, MovementData_0x1a00ec
	disappear $c
	pause 20
	special Functionc48f
	special DeleteSavedMusic
	playmapmusic
	pause 10
UnknownScript_0x1a0083: ; 0x1a0083
	end
; 0x1a0084

PokefanFScript_0x1a0084: ; 0x1a0084
	faceplayer
	loadfont
	checkevent EVENT_GOT_HM05_FLASH
	iftrue UnknownScript_0x1a00ad
	checkitem HM_FLY
	iftrue FlashBranch1
	writetext FlashText1
	buttonsound
	checkevent EVENT_BEAT_CHUCK
	iftrue UnknownScript_0x1a009c
	writetext UnknownText_0x1a0163
	waitbutton
	closetext
	end

UnknownScript_0x1a009c: ; 0x1a009c
	writetext UnknownText_0x1a01e3
	buttonsound
	verbosegiveitem HM_FLY, 1
	iffalse UnknownScript_0x1a00b1
	setevent EVENT_GOT_HM05_FLASH
	writetext UnknownText_0x1a021d
	buttonsound
UnknownScript_0x1a00ad: ; 0x1a00ad
	writetext UnknownText_0x1a0277
	waitbutton
UnknownScript_0x1a00b1: ; 0x1a00b1
	closetext
	end
; 0x1a00b3

FlashBranch1:
	writetext FlashText1
	buttonsound
	checkevent EVENT_BEAT_CHUCK
	iftrue FlashBranch2
	writetext FlashText2
	waitbutton
	closetext
	end

FlashBranch2: ; 0x1a009c
	writetext UnknownText_0x1a01e3
	buttonsound
	verbosegiveitem HM_FLASH, 1
	iffalse UnknownScript_0x1a00b1
	setevent EVENT_GOT_HM05_FLASH
	writetext FlashText3
	buttonsound
	jump UnknownScript_0x1a00ad ; 0x1a00ad


StandingYoungsterScript_0x1a00b3: ; 0x1a00b3
	jumptextfaceplayer UnknownText_0x1a02df
; 0x1a00b6

PokefanMScript_0x1a00b6: ; 0x1a00b6
	jumptextfaceplayer UnknownText_0x1a0319
; 0x1a00b9

LassScript_0x1a00b9: ; 0x1a00b9
	jumptextfaceplayer UnknownText_0x1a0394
; 0x1a00bc

;UnknownScript_0x1a00bc: ; 0x1a00bc removing redundent stuff
	;jumptextfaceplayer UnknownText_0x1a03cc
; 0x1a00bf

MapCianwoodCitySignpost0Script: ; 0x1a00bf
	jumptext UnknownText_0x1a0660
; 0x1a00c2

MapCianwoodCitySignpost1Script: ; 0x1a00c2
	jumptext UnknownText_0x1a068f
; 0x1a00c5

MapCianwoodCitySignpost3Script: ; 0x1a00c5
	jumptext UnknownText_0x1a06d6
; 0x1a00c8

MapCianwoodCitySignpost4Script: ; 0x1a00c8
	jumptext UnknownText_0x1a0725
; 0x1a00cb

MapCianwoodCitySignpost5Script: ; 0x1a00cb
	jumptext UnknownText_0x1a0760
; 0x1a00ce

MapCianwoodCitySignpost2Script: ; 0x1a00ce
	jumpstd pokecentersign
; 0x1a00d1

RockScript_0x1a00d1: ; 0x1a00d1
	jumpstd smashrock

; 0x1a00d4

MapCianwoodCitySignpostItem6: ; 0x1a00d4
	dw $00b2
	db SOFT_SAND

; 0x1a00d7

MapCianwoodCitySignpostItem7: ; 0x1a00d7
	dw $00b3
	db MAX_ETHER

; 0x1a00da

MovementData_0x1a00da: ; 0x1a00da
	db $39 ; movement
	fast_jump_step_down
	fast_jump_step_down
	fast_jump_step_right
	db $38 ; movement
	step_end
; 0x1a00e0

MovementData_0x1a00e0: ; 0x1a00e0
	db $39 ; movement
	fast_jump_step_right
	fast_jump_step_up
	fast_jump_step_right
	fast_jump_step_right
	db $38 ; movement
	step_end
; 0x1a00e7

MovementData_0x1a00e7: ; 0x1a00e7
	step_up
	step_up
	step_up
	step_up
	step_end
; 0x1a00ec

MovementData_0x1a00ec: ; 0x1a00ec
	step_down
	step_down
	step_down
	step_down
	step_end
; 0x1a00f1

UnknownText_0x1a00f1: ; 0x1a00f1
	text "Tu as traversé la"
	line "mer pour venir"
	cont "ici?"

	para "Ca a dû être"
	line "bien dur."

	para "Ce serait plus"
	line "facile si tes"

	para "#MON savaient"
	line "voler<...>"
	done

FlashText1: ; 0x1a00f1
	text "As-tu vu l'ANTRE"
	line "NOIR?"

	para "Ce serait plus"
	line "facile de l'explo-"

	para "rer si ton #MON"
	line "connaissait FLASH<...>"
	done
; 0x1a0163

UnknownText_0x1a0163: ; 0x1a0163
	text "Mais tu ne peux"
	line "pas utiliser VOL"
	cont "sans le BADGE de"
	cont "cette ville."

	para "Si tu bats le"
	line "CHAMPION d'ARENE"
	cont "du coin, reviens"
	cont "me voir."

	para "J'aurai un joli"
	line "cadeau pour toi!"
	done

FlashText2: ; 0x1a0163
	text "Mais tu ne peux"
	line "pas utiliser FLASH"
	cont "sans le BADGE de"
	cont "cette ville."

	para "Si tu bats le"
	line "CHAMPION d'ARENE"
	cont "du coin, reviens"
	cont "me voir."

	para "J'aurai un joli"
	line "cadeau pour toi!"
	done
; 0x1a01e3

UnknownText_0x1a01e3: ; 0x1a01e3
	text "C'est le BADGE de"
	line "l'ARENA D'IRISA!"

	para "Voilà pour toi:"
	line "une CS."
	done
; 0x1a021d

UnknownText_0x1a021d: ; 0x1a021d
	text "Apprends VOL à ton"
	line "#MON."

	para "Tu pourras voler"
	line "tout de suite et"

	para "te rendre dans"
	line "toutes les villes"
	cont "que tu as déjà"
	cont "visité."
	done

FlashText3: ; 0x1a021d
	text "Apprends FLASH à"
	line "ton #MON."

	para "Tu pourras illu-"
	line "miner les endroits"
	cont "sombres."
	done
; 0x1a0277

UnknownText_0x1a0277: ; 0x1a0277
	text "Mon mari a perdu"
	line "face à toi, il"
	cont "doit donc encore"
	cont "s'entraîner!"

	para "Ca tombe bien! Il"
	line "est un peu gros en"
	cont "ce moment."
	done
; 0x1a02df

UnknownText_0x1a02df: ; 0x1a02df
	text "Tu peux retourner"
	line "instantanément"

	para "à OLIVILLE en"
	line "utilisant VOL."
	done
; 0x1a0319

UnknownText_0x1a0319: ; 0x1a0319
	text "Les rochers au"
	line "nord de la ville"
	cont "peuvent être"
	cont "ecrasés."

	para "Ils cachent peut-"
	line "être quelque"
	cont "chose."

	para "Ton #MON peut"
	line "utiliser ECLATE-"
	cont "ROC pour les"
	cont "détruire."
	done
; 0x1a0394

UnknownText_0x1a0394: ; 0x1a0394
	text "CHUCK, le CHAMPION"
	line "d'ARENE s'entraîne"

	para "avec ses #MON"
	line "de type COMBAT."
	done
; 0x1a03cc

; possibly unused
;UnknownText_0x1a03cc: ; 0x1a03cc
;	text "There are several"
	;line "islands between"
;	cont "here and OLIVINE."

	;para "A mythical sea"
;	line "creature supposed-"
	;cont "ly lives there."
;	done
; 0x1a0433

UnknownText_0x1a0433: ; 0x1a0433
	text "EUSINE: Hé,"
	line "<PLAYER>."

	para "C'était pas"
	line "SUICUNE?"

	para "Je l'ai juste"
	line "aperçu mais j'ai"

	para "vu SUICUNE courir"
	line "sur les vagues."

	para "SUICUNE est si"
	line "beau et vaillant!"

	para "Il court et tra-"
	line "verse les villes"

	para "à une vitesse"
	line "incroyable."

	para "C'est dingue<...>"

	para "Je veux voir"
	line "SUICUNE de près<...>"

	para "C'est décidé."

	para "Je vais t'affron-"
	line "ter pour gagner le"
	cont "respect de"
	cont "SUICUNE!"

	para "Allez, <PLAYER>."
	line "C'est parti!"
	done
; 0x1a05a1

UnknownText_0x1a05a1: ; 0x1a05a1
	text "Bon d'accord."
	line "Tu as gagné."
	done
; 0x1a05c3

UnknownText_0x1a05c3: ; 0x1a05c3
	text "Tu es incroyable,"
	line "<PLAYER>!"

	para "Les #MON"
	line "doivent t'adorer."

	para "Je comprends"
	line "maintenant."

	para "Je vais continuer"
	line "de traquer le"
	cont "grand SUICUNE."

	para "Je suis sûr que"
	line "nous nous retrou-"
	cont "verons."

	para "A bientôt!"
	done
; 0x1a0660

UnknownText_0x1a0660: ; 0x1a0660
	text "IRISIA"

	para "Un port entouré"
	line "d'une mer bien"
	cont "déchaînée."
	done
; 0x1a068f

UnknownText_0x1a068f: ; 0x1a068f
	text "ARENE #MON"
	line "d'IRISIA"

	para "CHAMPION:"
	line "CHUCK"

	para "Ses poings parlent"
	line "pour lui."
	done
; 0x1a06d6

UnknownText_0x1a06d6: ; 0x1a06d6
	text "500 ans de"
	line "tradition."

	para "PHARMACIE d'IRISIA"

	para "Malades<...>"
	line "Venez nombreux!"
	done
; 0x1a0725

UnknownText_0x1a0725: ; 0x1a0725
	text "STUDIO PHOTO"
	line "D'IRISIA"

	para "Prenez une photo"
	line "souvenir!"
	done
; 0x1a0760

UnknownText_0x1a0760: ; 0x1a0760
	text "#DEVIN"
	line "TOUT DROIT"
	done

; 0x1a0772

CianwoodCity_MapEventHeader: ; 0x1a0772
	; filler
	db 0, 0

	; warps
	db 8
	warp_def $29, $11, 1, GROUP_MANIAS_HOUSE, MAP_MANIAS_HOUSE
	warp_def $2b, $8, 1, GROUP_CIANWOOD_GYM, MAP_CIANWOOD_GYM
	warp_def $2b, $17, 1, GROUP_CIANWOOD_POKECENTER_1F, MAP_CIANWOOD_POKECENTER_1F
	warp_def $2f, $f, 1, GROUP_CIANWOOD_PHARMACY, MAP_CIANWOOD_PHARMACY
	warp_def $1f, $9, 1, GROUP_CIANWOOD_CITY_PHOTO_STUDIO, MAP_CIANWOOD_CITY_PHOTO_STUDIO
	warp_def $25, $f, 1, GROUP_CIANWOOD_LUGIA_SPEECH_HOUSE, MAP_CIANWOOD_LUGIA_SPEECH_HOUSE
	warp_def $11, $5, 1, GROUP_POKE_SEERS_HOUSE, MAP_POKE_SEERS_HOUSE
	warp_def $1f, $11, 1, GROUP_CIANWOOD_ROCK_SMASH_SPEECH_HOUSE, MAP_CIANWOOD_ROCK_SMASH_SPEECH_HOUSE

	; xy triggers
	db 1
	xy_trigger 1, $10, $b, $0, UnknownScript_0x1a001e, $0, $0

	; signposts
	db 8
	signpost 34, 20, $0, MapCianwoodCitySignpost0Script
	signpost 45, 7, $0, MapCianwoodCitySignpost1Script
	signpost 43, 24, $0, MapCianwoodCitySignpost2Script
	signpost 47, 19, $0, MapCianwoodCitySignpost3Script
	signpost 32, 8, $0, MapCianwoodCitySignpost4Script
	signpost 24, 8, $0, MapCianwoodCitySignpost5Script
	signpost 19, 4, $7, MapCianwoodCitySignpostItem6
	signpost 29, 5, $7, MapCianwoodCitySignpostItem7

	; people-events
	db 12
	person_event SPRITE_STANDING_YOUNGSTER, 41, 25, $3, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, StandingYoungsterScript_0x1a00b3, -1
	person_event SPRITE_POKEFAN_M, 37, 21, $5, 0, 1, -1, -1, 0, 0, 0, PokefanMScript_0x1a00b6, -1
	person_event SPRITE_LASS, 46, 18, $4, 2, 0, -1, -1, 0, 0, 0, LassScript_0x1a00b9, -1
	person_event SPRITE_ROCK, 20, 12, $18, 0, 0, -1, -1, 0, 0, 0, RockScript_0x1a00d1, -1
	person_event SPRITE_ROCK, 21, 13, $18, 0, 0, -1, -1, 0, 0, 0, RockScript_0x1a00d1, -1
	person_event SPRITE_ROCK, 29, 8, $18, 0, 0, -1, -1, 0, 0, 0, RockScript_0x1a00d1, -1
	person_event SPRITE_ROCK, 33, 9, $18, 0, 0, -1, -1, 0, 0, 0, RockScript_0x1a00d1, -1
	person_event SPRITE_ROCK, 31, 14, $18, 0, 0, -1, -1, 0, 0, 0, RockScript_0x1a00d1, -1
	person_event SPRITE_ROCK, 23, 8, $18, 0, 0, -1, -1, 0, 0, 0, RockScript_0x1a00d1, -1
	person_event SPRITE_POKEFAN_F, 50, 14, $5, 0, 1, -1, -1, 0, 0, 0, PokefanFScript_0x1a0084, -1
	person_event SPRITE_AZALEA_ROCKET, 25, 15, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ObjectEvent, EVENT_EUSINE_IN_CIANWOOD_CITY
	person_event SPRITE_SUICUNE, 18, 14, $1, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ObjectEvent, EVENT_SAW_SUICUNE_AT_CIANWOOD_CITY
; 0x1a0867

