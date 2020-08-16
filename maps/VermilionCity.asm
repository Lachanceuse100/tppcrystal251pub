VermilionCity_MapScriptHeader: ; 0x1aa97a
	; trigger count
	db 3

	; triggers

	dw VermilionCityTrigger1, $0000
	dw VermilionCityTrigger2, $0000
	dw VermilionCityTrigger3, $0000

	; callback count
	db 1

	; callbacks

	dbw 5, UnknownScript_0x1aa97f
; 0x1aa97f

VermilionCityTrigger1:
	priorityjump VermilionCitySimonScript1
	end

VermilionCityTrigger2:
	end

VermilionCityTrigger3:
	end

UnknownScript_0x1aa97f: ; 0x1aa97f
	checkevent EVENT_BEAT_SIMON_4
	iffalse .false
	setflag ENGINE_FLYPOINT_VERMILION
.false
	checkevent EVENT_SET_BY_OAK_AFTER_16_BADGES
	iffalse .no_rematch
	warpmod 1, GROUP_VERMILION_GYM_2, MAP_VERMILION_GYM_2
	return
.no_rematch
	warpmod 1, GROUP_VERMILION_GYM, MAP_VERMILION_GYM
	return
; 0x1aa983

VermilionCitySimonScript1:
	showemote $0, $8, 15
	pause 15
	spriteface $8, $0
	playmusic MUSIC_POKEMANIAC_ENCOUNTER
	loadfont
	writetext VermilionCitySimonText1
	waitbutton
	closetext
	checkcode VAR_XCOORD
	if_equal 20, .simonextrastepdown
	applymovement $8, VermilionCitySimonMovement1
	jump .startbattle
.simonextrastepdown
	applymovement $8, VermilionCitySimonMovement1a
	spriteface $0, LEFT
.startbattle
	winlosstext VermilionCitySimonLossText, $0000
	loadtrainer BURGLAR, SIMON_4
	startbattle
	reloadmapmusic
	returnafterbattle
	playmusic MUSIC_POKEMANIAC_ENCOUNTER
	loadfont
	writetext VermilionCitySimonText2
	buttonsound
	verbosegiveitem TM_ROCK_SLIDE, 1
	writetext VermilionCitySimonText3
	waitbutton
	closetext
	checkcode VAR_FACING
	if_equal LEFT, .simonextrastepup
	applymovement $8, VermilionCitySimonMovement2
	jump .simonsplashesdown
.simonextrastepup
	spriteface $0, UP
	applymovement $8, VermilionCitySimonMovement2a
.simonsplashesdown
	pause 10
	disappear $8
	playsound SFX_RAIN_DANCE
	pause 30
	special DeleteSavedMusic
	playmapmusic
	dotrigger $1
	blackoutmod GROUP_VERMILION_CITY, MAP_VERMILION_CITY
	setflag ENGINE_FLYPOINT_VERMILION
	end

VermilionCitySimonMovement1:
	big_step_down
	big_step_right
	big_step_down
	step_end

VermilionCitySimonMovement1a:
	big_step_down
	big_step_right
	big_step_down
	big_step_down
	turn_head_right
	step_end

VermilionCitySimonMovement2a:
	big_step_up
VermilionCitySimonMovement2:
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	step_end

TeacherScript_0x1aa983: ; 0x1aa983
	jumptextfaceplayer UnknownText_0x1aaa15
; 0x1aa986

GrampsScript_0x1aa986: ; 0x1aa986
	jumptextfaceplayer UnknownText_0x1aaa6f
; 0x1aa989

MachopScript_0x1aa989: ; 0x1aa989
	loadfont
	writetext UnknownText_0x1aaaca
	cry MACHOP
	waitbutton
	closetext
	earthquake 30
	loadfont
	writetext UnknownText_0x1aaae2
	waitbutton
	closetext
	end
; 0x1aa99b

SuperNerdScript_0x1aa99b: ; 0x1aa99b
	jumptextfaceplayer UnknownText_0x1aab1a
; 0x1aa99e

BigSnorlaxScript_0x1aa99e: ; 0x1aa99e
	loadfont
	special SpecialSnorlaxAwake
	iftrue UnknownScript_0x1aa9ab
	checkitem POKE_FLUTE
	iftrue .FluteWakeSnorlax
	writetext UnknownText_0x1aab64
	waitbutton
	closetext
	end
.FluteWakeSnorlax
	writetext SnorlaxVermWakeyWakeyPrompt
	yesorno
	iffalse .nope
	farscall _PokefluteSnorlaxScript
	end
.nope
	closetext
	end
; 0x1aa9ab

UnknownScript_0x1aa9ab: ; 0x1aa9ab
	writetext UnknownText_0x1aab84
	pause 15
	cry SNORLAX
	closetext
	writecode VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadpokedata SNORLAX, 85
	startbattle
	disappear $6
	setevent EVENT_FOUGHT_SNORLAX
	returnafterbattle
	end
; 0x1aa9c2

PokefanMScript_0x1aa9c2: ; 0x1aa9c2
	faceplayer
	loadfont
	checkevent EVENT_GOT_HP_UP_FROM_VERMILION_POKEFAN_M
	iftrue UnknownScript_0x1aa9f7
	checkcode VAR_BADGES
	if_equal $10, UnknownScript_0x1aa9ea
	if_greater_than $d, UnknownScript_0x1aa9e4
	if_greater_than $9, UnknownScript_0x1aa9de
	writetext UnknownText_0x1aabc8
	waitbutton
	closetext
	end
; 0x1aa9de

UnknownScript_0x1aa9de: ; 0x1aa9de
	writetext UnknownText_0x1aac2b
	waitbutton
	closetext
	end
; 0x1aa9e4

UnknownScript_0x1aa9e4: ; 0x1aa9e4
	writetext UnknownText_0x1aac88
	waitbutton
	closetext
	end
; 0x1aa9ea

UnknownScript_0x1aa9ea: ; 0x1aa9ea
	writetext UnknownText_0x1aacf3
	buttonsound
	verbosegiveitem HP_UP, 1
	iffalse UnknownScript_0x1aa9fb
	setevent EVENT_GOT_HP_UP_FROM_VERMILION_POKEFAN_M
UnknownScript_0x1aa9f7: ; 0x1aa9f7
	writetext UnknownText_0x1aad4a
	waitbutton
UnknownScript_0x1aa9fb: ; 0x1aa9fb
	closetext
	end
; 0x1aa9fd

MapVermilionCitySignpost0Script: ; 0x1aa9fd
	jumptext UnknownText_0x1aadb9
; 0x1aaa00

MapVermilionCitySignpost1Script: ; 0x1aaa00
	jumptext UnknownText_0x1aade7
; 0x1aaa03

MapVermilionCitySignpost2Script: ; 0x1aaa03
	jumptext UnknownText_0x1aae28
; 0x1aaa06

MapVermilionCitySignpost3Script: ; 0x1aaa06
	jumptext UnknownText_0x1aae4e
; 0x1aaa09

MapVermilionCitySignpost4Script: ; 0x1aaa09
	jumptext UnknownText_0x1aae5e
; 0x1aaa0c

MapVermilionCitySignpost5Script: ; 0x1aaa0c
	jumpstd pokecentersign
; 0x1aaa0f

MapVermilionCitySignpost6Script: ; 0x1aaa0f
	jumpstd martsign
; 0x1aaa12

MapVermilionCitySignpostItem7: ; 0x1aaa12
	dw $00fc
	db FULL_HEAL

; 0x1aaa15

UnknownText_0x1aaa15: ; 0x1aaa15
	text "Le port de CARMIN"
	line "SUR MER est la"
	cont "porte de KANTO"
	cont "verrs l'océan."

	para "Les paquebots de"
	line "luxe du monde"
	cont "entier viennent y"
	cont "jeter l'ancre."
	done
; 0x1aaa6f

UnknownText_0x1aaa6f: ; 0x1aaa6f
	text "Mon #MON pré-"
	line "pare le terrain"
	cont "pour construire."

	para "Mais je n'ai pas"
	line "d'argent pour com-"
	cont "mencer le projet."
	done
; 0x1aaaca

UnknownText_0x1aaaca: ; 0x1aaaca
	text "MACHOC: Maaaa!"
	line "Choc!"
	done
; 0x1aaae2

UnknownText_0x1aaae2: ; 0x1aaae2
	text "Un MACHOC grogne"
	line "en aplatissant le"
	cont "sol."
	done
; 0x1aab1a

UnknownText_0x1aab1a: ; 0x1aab1a
	text "Il y a huit arènes"
	line "à KANTO."

	para "Ce grand bâtiment"
	line "est l'ARENE #-"
	cont "MON de CARMIN SUR"
	cont "MER."
	done
; 0x1aab64

SnorlaxVermWakeyWakeyPrompt:
	text "RONFLEX ronfle"
	line "paisiblement<...>"

	para "Jouer la #"
	line "FLUTE?"
	done


UnknownText_0x1aab64: ; 0x1aab64
	text "RONFLEX ronfle"
	line "paisiblement<...>"
	done
; 0x1aab84

UnknownText_0x1aab84: ; 0x1aab84
	text "Vous placez le"
	line "#MATOS près du"
	cont "RONFLEX endormi<...>"

	para "<...>"

	para "RONFLEX se"
	line "réveille!"
	done
; 0x1aabc8

VermilionCitySimonText1:
	text "Hé!"

	para "Mais tu m'as suivi"
	line "jusqu'ici toi?"
	done

VermilionCitySimonLossText:
	text "Arrgh!"
	done

VermilionCitySimonText2:
	text "Raah<...>"

	para "Bon, pas grave."

	para "Tu peux prendre"
	line "ça."

	para "Ce serait mieux"
	line "pour moi mais bon,"
	cont "tant pis."
	done

VermilionCitySimonText3:
	text "Tchao-tchao!"
	done

UnknownText_0x1aabc8: ; 0x1aabc8
	text "Les grands dres-"
	line "seurs se rassem-"
	cont "blent à KANTO."

	para "Les CHAMPIONS d'"
	line "ARENE sont vrai-"
	cont "ment costaud."

	para "Ils ne seront pas"
	line "facile à battre!"
	done
; 0x1aac2b

UnknownText_0x1aac2b: ; 0x1aac2b
	text "Tu as commencé la"
	line "collection des"
	cont "BADGES de KANTO?"

	para "Alors, que penses-"
	line "tu des dresseurs"
	cont "par ici?"

	para "Pas de la tarte,"
	line "hein?"
	done
; 0x1aac88

UnknownText_0x1aac88: ; 0x1aac88
	text "On dirait que tu"
	line "bientôt fini ta"

	para "conquête des ARE-"
	line "NES de KANTO."

	para "Fais moi savoir"
	line "quand tu auras les"
	cont "huit BADGES."
	done
; 0x1aacf3

UnknownText_0x1aacf3: ; 0x1aacf3
	text "Félicitations!"

	para "Tu as tous les"
	line "BADGES de KANTO"

	para "Voilà une récom-"
	line "pense pour toi!"
	done
; 0x1aad4a

UnknownText_0x1aad4a: ; 0x1aad4a
	text "Avoir des #MON"
	line "aux types variés"

	para "te donnera l'avan-"
	line "tage en combat."

	para "Ca te sera d'une"
	line "grande aide dans"
	cont "ta quête aux"
	cont "BADGES!"
	done
; 0x1aadb9

UnknownText_0x1aadb9: ; 0x1aadb9
	text "CARMIN SUR MER"

	para "Le port aux cou-"
	line "chers de soleil."
	done
; 0x1aade7

UnknownText_0x1aade7: ; 0x1aade7
	text "CARMIN SUR MER"
	line "ARENE #MON"

	para "CHAMPION:"
	line "MAJOR BOB"

	para "L'américain"
	line "survolté."
	done
; 0x1aae28

UnknownText_0x1aae28: ; 0x1aae28
	text "FAN CLUB #MON"

	para "Fans de #MON"
	line "bienvenus!"
	done
; 0x1aae4e

UnknownText_0x1aae4e: ; 0x1aae4e
	text "CAVE TAUPIQUEUR"
	done
; 0x1aae5e

UnknownText_0x1aae5e: ; 0x1aae5e
	text "PORT de CARMIN SUR"
	line "MER: ENTREE"
	done
; 0x1aae77

VermilionCity_MapEventHeader: ; 0x1aae77
	; filler
	db 0, 0

	; warps
	db 10
	warp_def $5, $5, 1, GROUP_VERMILION_HOUSE_FISHING_SPEECH_HOUSE, MAP_VERMILION_HOUSE_FISHING_SPEECH_HOUSE
	warp_def $5, $9, 1, GROUP_VERMILION_POKECENTER_1F, MAP_VERMILION_POKECENTER_1F
	warp_def $d, $7, 1, GROUP_POKEMON_FAN_CLUB, MAP_POKEMON_FAN_CLUB
	warp_def $d, $d, 1, GROUP_VERMILION_MAGNET_TRAIN_SPEECH_HOUSE, MAP_VERMILION_MAGNET_TRAIN_SPEECH_HOUSE
	warp_def $d, $15, 2, GROUP_VERMILION_MART, MAP_VERMILION_MART
	warp_def $11, $15, 1, GROUP_VERMILION_HOUSE_DIGLETTS_CAVE_SPEECH_HOUSE, MAP_VERMILION_HOUSE_DIGLETTS_CAVE_SPEECH_HOUSE
	warp_def $13, $a, -1, 0, 0 ; Vermilion Gym
	warp_def $1f, $13, 1, GROUP_VERMILION_PORT_PASSAGE, MAP_VERMILION_PORT_PASSAGE
	warp_def $1f, $14, 2, GROUP_VERMILION_PORT_PASSAGE, MAP_VERMILION_PORT_PASSAGE
	warp_def $7, $22, 1, GROUP_DIGLETTS_CAVE, MAP_DIGLETTS_CAVE

	; xy triggers
	db 0

	; signposts
	db 8
	signpost 3, 25, $0, MapVermilionCitySignpost0Script
	signpost 19, 5, $0, MapVermilionCitySignpost1Script
	signpost 13, 5, $0, MapVermilionCitySignpost2Script
	signpost 9, 33, $0, MapVermilionCitySignpost3Script
	signpost 15, 27, $0, MapVermilionCitySignpost4Script
	signpost 5, 10, $0, MapVermilionCitySignpost5Script
	signpost 13, 22, $0, MapVermilionCitySignpost6Script
	signpost 19, 12, $7, MapVermilionCitySignpostItem7

	; people-events
	db 7
	person_event SPRITE_TEACHER, 13, 22, $2, 1, 1, -1, -1, 0, 0, 0, TeacherScript_0x1aa983, -1
	person_event SPRITE_GRAMPS, 10, 27, $9, 0, 0, -1, -1, 0, 0, 0, GrampsScript_0x1aa986, -1
	person_event SPRITE_MACHOP, 11, 30, $16, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, MachopScript_0x1aa989, -1
	person_event SPRITE_SUPER_NERD, 20, 18, $2, 1, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, SuperNerdScript_0x1aa99b, -1
	person_event SPRITE_BIG_SNORLAX, 12, 38, $15, 0, 0, -1, -1, 0, 0, 0, BigSnorlaxScript_0x1aa99e, EVENT_SNORLAX_IN_VERMILION_CITY
	person_event SPRITE_POKEFAN_M, 16, 35, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, PokefanMScript_0x1aa9c2, -1
	person_event SPRITE_PHARMACIST, 32, 22, $7, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ObjectEvent, EVENT_BEAT_SIMON_4
; 0x1aaf25

