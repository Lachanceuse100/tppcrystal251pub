SaffronPokeCenter1F_MapScriptHeader: ; 0x18a47b
	; trigger count
	db 0

	; callback count
	db 0
; 0x18a47d

NurseScript_0x18a47d: ; 0x18a47d
	jumpstd pokecenternurse
; 0x18a480

TeacherScript_0x18a480: ; 0x18a480
	special Function10630f
	iftrue UnknownScript_0x18a489
	jumptextfaceplayer UnknownText_0x18a4a3
; 0x18a489

UnknownScript_0x18a489: ; 0x18a489
	jumptextfaceplayer UnknownText_0x18a532
; 0x18a48c

FisherScript_0x18a48c: ; 0x18a48c
	faceplayer
	loadfont
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x18a49a
	writetext UnknownText_0x18a5d3
	waitbutton
	closetext
	end
; 0x18a49a

UnknownScript_0x18a49a: ; 0x18a49a
	writetext UnknownText_0x18a62e
	waitbutton
	closetext
	end
; 0x18a4a0

YoungsterScript_0x18a4a0: ; 0x18a4a0
	jumptextfaceplayer UnknownText_0x18a6c5
; 0x18a4a3

PokefanMScript_GiveFlute:
	faceplayer
	loadfont
	checkevent EVENT_GOT_POKE_FLUTE
	iftrue .GotFluteAlready
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .TryGiveFlute
	writetext SnorlaxInTheWayText
	waitbutton
	closetext
	end
.TryGiveFlute
	writetext TryGiveFluteText
	waitbutton
	verbosegiveitem POKE_FLUTE, 1
	iffalse .NoRoomForItem
	setevent EVENT_GOT_POKE_FLUTE
.GotFluteAlready
	writetext GotFluteAlreadyText
	waitbutton
.NoRoomForItem
	closetext
	end

SnorlaxInTheWayText:
	text "Tu as vu le"
	line "RONFLEX par ici?"

	para "Il cause des en-"
	line "nuis aux gens du"
	cont "coin."
	done

TryGiveFluteText:
	text "Tu as vu le"
	line "RONFLEX par ici?"

	para "Essaye donc de"
	line "jouer ça, il se"
	cont "réveillera peut-"
	cont "être."
	done

GotFluteAlreadyText:
	text "Cette flûte joue"
	line "un son sublime."

	para "Il réveille les"
	line "#MON endormis."

	para "C'est si efficace"
	line "que c'est joué"
	cont "sans arrêt à la"
	cont "RADIO."
	done

UnknownText_0x18a4a3: ; 0x18a4a3
	text "Tu as entendu par-"
	line "ler de la CHORALE"
	cont "de KANTO?"

	para "Ils se sont inspi-"
	line "rés de l'aventure"

	para "d'un dresseur"
	line "très célèbre."

	para "Mais personne ne"
	line "sait ce qu'il est"
	cont "advenu de lui."
	done
; 0x18a532

UnknownText_0x18a532: ; 0x18a532
	text "Comment sont les"
	line "CENTRES #MON"
	cont "de JOHTO?"

	para "<...>Je vois."
	line "Ils vous laissent"

	para "être reliés avec"
	line "des gens venant"
	cont "de loin?"

	para "Je vais demander à"
	line "mon ami de JOHTO"

	para "d'attraper un"
	line "MARILL et de me"
	cont "l'échanger!"
	done
; 0x18a5d3

UnknownText_0x18a5d3: ; 0x18a5d3
	text "Je viens de tra-"
	line "verser la GROTTE."

	para "Il y avait du gra-"
	line "buge à la CENTRALE"
	cont "on dirait<...>"
	done
; 0x18a62e

UnknownText_0x18a62e: ; 0x18a62e
	text "Les grottes sont"
	line "solides."

	para "J'ai cru que celle"
	line "d'AZURIA allait"
	cont "s'effondrer, mais"
	cont "elle est encore"
	cont "debout!"

	done
; 0x18a6c5

UnknownText_0x18a6c5: ; 0x18a6c5
	text "Les BUREAUX de la"
	line "SYLPHE SARL et la"

	para "STATION du TRAIN"
	line "MAGNET sont les"

	para "choses à voir à"
	line "SAFRANIA."
	done
; 0x18a722

SaffronOldCenter_LinkScript:
	jumpstd pokecenteroldlink
	
SaffronPokeCenter1F_MapEventHeader: ; 0x18a722
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $7, $5, 4, GROUP_SAFFRON_CITY, MAP_SAFFRON_CITY
	warp_def $7, $6, 4, GROUP_SAFFRON_CITY, MAP_SAFFRON_CITY
	warp_def $7, $2, 1, GROUP_POKECENTER_2F_KANTO, MAP_POKECENTER_2F_KANTO

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 6
	person_event SPRITE_NURSE, 5, 9, $6, 0, 0, -1, -1, 0, 0, 0, NurseScript_0x18a47d, -1
	person_event SPRITE_TEACHER, 8, 13, $2, 1, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, TeacherScript_0x18a480, -1
	person_event SPRITE_FISHER, 8, 6, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, FisherScript_0x18a48c, -1
	person_event SPRITE_YOUNGSTER, 10, 15, $3, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, YoungsterScript_0x18a4a0, -1
	person_event SPRITE_POKEFAN_M, 7, 10, $6, 0, 0, -1, -1 ,0, 0, 0, PokefanMScript_GiveFlute, -1
	person_event SPRITE_LINK_RECEPTIONIST, 6, 17, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, SaffronOldCenter_LinkScript, -1
; 0x18a76b

