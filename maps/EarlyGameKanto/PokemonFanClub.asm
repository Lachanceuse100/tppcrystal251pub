PokemonFanClubRB_MapScriptHeader: ; 0x1917e7
	; trigger count
	db 0

	; callback count
	db 0
; 0x1917e9

FanClubChairmanScriptRB: ; 0x1917e9
	faceplayer
	loadfont
	checkevent EVENT_TALKED_TO_CHAIRMAN_RB
	iftrue .talk_after
	checkevent EVENT_002_STD
	iftrue .try_again_item
	writetext FanClubMeetChairText
	yesorno
	iffalse .refused
	writetext FanClubChairStoryText
	setevent EVENT_002_STD
.show_choices
	loadmenudata .MenuDataHeader
	interpretmenu2
	writebackup
	if_equal 1, .FireStone
	if_equal 2, .WaterStone
	verbosegiveitem THUNDERSTONE, 1
	iffalse .bag_full
	jump .return_from_item
.FireStone
	verbosegiveitem FIRE_STONE, 1
	iffalse .bag_full
	jump .return_from_item
.WaterStone
	verbosegiveitem WATER_STONE
	iffalse .bag_full
.return_from_item
	writetext ExplainStoneText
	setevent EVENT_TALKED_TO_CHAIRMAN_RB
.bag_full
	waitbutton
	closetext
	end

.try_again_item
	writetext FanClubChairTryAgainItemText
	jump .show_choices

.talk_after
	writetext FanClubChairFinalText
	waitbutton
	closetext
	end

.refused
	writetext FanClubNoStoryText
	waitbutton
	closetext
	end

.MenuDataHeader: ; 0xbce54
	db $40 ; flags
	db 04, 00 ; start coords
	db 11, 15 ; end coords
	dw .MenuData2
	db 1 ; default option
; 0xbce5c

.MenuData2: ; 0xbce5c
	db $81 ; flags
	db 3 ; items
	db "PIERRE FEU@"
	db "PIERRE EAU@"
	db "PIERREFOUDRE@"
; 0xbce7f


PokemonFanClubRB_ReceptionistScript: ; 0x191821
	jumptextfaceplayer _FanClubText6
; 0x191824

PokemonFanClubRB_FisherScript: ; 0x191824
	faceplayer
	loadfont
	checkevent EVENT_000_STD
	iftrue .hmmph
	writetext PikachuFanText
	waitbutton
	closetext
	setevent EVENT_001_STD
	end
.hmmph
	writetext PikachuFanBetterText
	waitbutton
	closetext
	clearevent EVENT_000_STD
	end

PokemonFanClubRB_TeacherScript: ; 0x19186b
	faceplayer
	loadfont
	checkevent EVENT_001_STD
	iftrue .hmmph
	writetext SeelFanText
	waitbutton
	closetext
	setevent EVENT_000_STD
	end
.hmmph
	writetext SeelFanBetterText
	waitbutton
	closetext
	clearevent EVENT_001_STD
	end
; 0x19186e

PokemonFanClubRB_PikachuScript: ; 0x19186e
	loadfont
	writetext FanClubPikachuText
	cry PIKACHU
	waitbutton
	closetext
	end
; 0x191871

PokemonFanClubRB_SeelScript: ; 0x191871
	loadfont
	writetext FanClubSeelText
	cry SEEL
	waitbutton
	closetext
	end
; 0x19187b

MapPokemonFanClubRBSignpost0Script: ; 0x19187b
	jumptext _FanClubText7
; 0x19187e

MapPokemonFanClubRBSignpost1Script: ; 0x19187e
	jumptext _FanClubText8
; 0x191881

PikachuFanText:
	text "Admire donc la"
	line "queue de mon"
	cont "PIKACHU."
	done

PikachuFanBetterText:
	text "Humph! Mon PIKACHU"
	line "est deux fois"
	cont "plus mignon!"
	done

SeelFanText:
	text "J'adore mon"
	line "OTARIA!"

	para "Il couine quand je"
	line "le câline!"
	done

SeelFanBetterText:
	text "Oh, mon cher!"

	para "Mon OTARIA est"
	line "bien plus"
	cont "attractif!"
	done

FanClubPikachuText:
	text "PIKACHU: Chu!"
	line "Pikachu!"
	done

FanClubSeelText:
	text "OTARIA: Riaaa!"
	done

FanClubMeetChairText:
	text "Je suis le prési-"
	line "dent du fan club"
	cont "#MON."

	para "J'ai collectionné"
	line "plus de 100"
	cont "#MON."

	para "Je suis très"
	line "tatillon quand"
	cont "il s'agit de"
	cont "#MON."

	para "Alors<...>"

	para "Es-tu venu m'écou-"
	line "ter parler de"
	cont "#MON?"
	done

FanClubChairStoryText:
	text "Bien!"
	line "Alors écoute!"

	para "Mon favori,"
	line "GALOPA<...>"

	para "Il est mignon<...>"
	line "beau<...> rapide<...>"
	cont "élégant<...> en feu<...>"
	cont "Il fait pataclop,"
	cont "pataclop<...> quand"
	cont "il court<...> c'est"
	cont "super non?"
	cont "Je l'aime!"

	para "Je lui fais<...> des"
	line "câlins<...> des"
	cont "bisous<...> des"
	cont "gnangnans<...> des"
	cont "zigouzigoux<...>"

	para "<...> Oups! Regarde"
	line "l'heure! Je t'ai"
	cont "trop retenu!"

	para "Merci de m'avoir"
	line "écouté. Tiens,"
	cont "tu peux avoir ça!"

	para "En fait, il faut"
	line "en choisir un"
	cont "parmi les trois."

	para "Choisis donc!"
	done

ExplainStoneText:
	text "Cette pierre à de"
	line "sacré pouvoirs!"

	para "Certains #MON"
	line "évolueront si ils"
	cont "y sont exposés."

	para "C'est un atout"
	line "pour un collec-"
	cont "tionneur!"
	done

FanClubNoStoryText:
	text "Oh<...> Reviens si tu"
	line "veux entendre d'"
	cont "autres histoires!"
	done

FanClubChairFinalText:
	text "Bonjour, <PLAYER>!"

	para "Tu reviens"
	line "m'entendre parler"
	cont "de #MON?"

	para "Non? Dommage!"
	done

FanClubChairTryAgainItemText:
	text "Ah, <PLAYER>!"

	para "As-tu de la place"
	line "pour mon cadeau?"

	para "Allez, choisis!"
	done

_FanClubText6:
	text "Notre président"
	line "adore parler de"
	cont "#MON."
	done

_FanClubText7:
	text "Ecoutons poliment"
	line "les autres"
	cont "dresseurs!"
	done

_FanClubText8:
	text "Si quelqu'un se"
	line "vante, vante toi"
	cont "en retour!"
	done


PokemonFanClubRB_MapEventHeader: ; 0x191e4d
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 3, GROUP_VERMILION_CITY_RB, MAP_VERMILION_CITY_RB
	warp_def $7, $3, 3, GROUP_VERMILION_CITY_RB, MAP_VERMILION_CITY_RB

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 0, 7, $0, MapPokemonFanClubRBSignpost0Script
	signpost 0, 9, $0, MapPokemonFanClubRBSignpost1Script

	; people-events
	db 6
	person_event SPRITE_GENTLEMAN, 5, 7, $6, 0, 0, -1, -1, 0, 0, 0, FanClubChairmanScriptRB, -1
	person_event SPRITE_RECEPTIONIST, 5, 8, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, PokemonFanClubRB_ReceptionistScript, -1
	person_event SPRITE_FISHER, 7, 6, $9, 0, 0, -1, -1, 0, 0, 0, PokemonFanClubRB_FisherScript, -1
	person_event SPRITE_TEACHER, 6, 11, $8, 0, 0, -1, -1, 0, 0, 0, PokemonFanClubRB_TeacherScript, -1
	person_event SPRITE_PIKACHU, 8, 6, $16, 0, 0, -1, -1, 0, 0, 0, PokemonFanClubRB_PikachuScript, -1
	person_event SPRITE_LAPRAS, 7, 11, $16, 0, 0, -1, -1, 0, 0, 0, PokemonFanClubRB_SeelScript, -1
; 0x191eb5

