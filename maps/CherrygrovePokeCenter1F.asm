CherrygrovePokeCenter1F_MapScriptHeader: ; 0x19696b
	; trigger count
	db 0

	; callback count
	db 0
; 0x19696d

NurseScript_0x19696d: ; 0x19696d
	checkmaptriggers GROUP_CHERRYGROVE_CITY, MAP_CHERRYGROVE_CITY
	if_equal 3, .special_heal
	jumpstd pokecenternurse

.special_heal
	loadfont
	checkcode VAR_PARTYCOUNT
	iffalse .no_pokemon
	if_greater_than 6, .too_many_pokemon
	callasm CheckNotAllEggs ; farcall
	iffalse .no_pokemon
	checkmorn
	iftrue .morn
	checkday
	iftrue .day
	checknite
	iftrue .nite
	jump .ok

.morn
	farwritetext UnknownText_0x1b0000
	jump .ok

.day
	farwritetext UnknownText_0x1b002b
	jump .ok

.nite
	farwritetext UnknownText_0x1b004f
.ok
	buttonsound
	writetext CherrygrovePokeCenter1F_HealText
	pause 20
	special Function1060a2
	spriteface $fe, LEFT
	pause 10
	special HealParty
	setevent EVENT_HEALED_IN_CHERRYGROVE
	special SaveMusic
	playmusic MUSIC_NONE
	writebyte 0
	special HealMachineAnim
	pause 30
	special RestoreMusic
	spriteface $fe, DOWN
	pause 10

	checkphonecall ; elm already called about pokerus
	iftrue .no
	checkflag ENGINE_POKERUS ; nurse already talked about pokerus
	iftrue .no
	special SpecialCheckPokerus
	iftrue .pokerus
.no

	farwritetext UnknownText_0x1b01d7
	pause 20

.done
	farwritetext UnknownText_0x1b020b

	spriteface $fe, UP
	pause 10
	spriteface $fe, DOWN
	pause 10

	waitbutton
	closetext
	end

.pokerus
	farwritetext UnknownText_0x1b0241
	waitbutton
	closetext
	end

.no_pokemon
	farwritetext NoPokemonHealText
	pause 20
	jump .done

.too_many_pokemon
	farwritetext TooManyPokemonHealText
	pause 20
	jump .done

FisherScript_0x196970: ; 0x196970
	jumptextfaceplayer UnknownText_0x19698a
; 0x196973

GentlemanScript_0x196973: ; 0x196973
	jumptextfaceplayer UnknownText_0x1969c8
; 0x196976

CherrygrovePCScript:
	special _CheckAlivePartyMon
	iffalse .pleasehealpkmn
	jumpstd pcscript
.pleasehealpkmn
	jumptext Text_CherrygrovePC_PleaseHealPkmn

TeacherScript_0x196976: ; 0x196976
	faceplayer
	loadfont
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue UnknownScript_0x196984
	writetext UnknownText_0x1969f1
	waitbutton
	closetext
	end
; 0x196984

UnknownScript_0x196984: ; 0x196984
	writetext UnknownText_0x196a46
	waitbutton
	closetext
	end
; 0x19698a

UnknownText_0x19698a: ; 0x19698a
	text "C'est génial! Je"
	line "peux stocker gra-"
	cont "tuitement autant"
	cont "de #MON que je"
	cont "veux."
	done
; 0x1969c8

UnknownText_0x1969c8: ; 0x1969c8
	text "Ce PC est libre"
	line "pour tous les"
	cont "dresseurs."
	done
; 0x1969f1

UnknownText_0x1969f1: ; 0x1969f1
	text "Le CENTRE DE"
	line "COMMUNICATIONS a"
	cont "été construit au"
	cont "premier étage."

	para "Mais ils en sont"
	line "encore aux"
	cont "finitions."
	done
; 0x196a46

UnknownText_0x196a46: ; 0x196a46
	text "Le CENTRE DE"
	line "COMMUNICATIONS a"
	cont "été construit au"
	cont "premier étage."

	para "J'ai déjà échangé"
	line "des #MON!"
	done
; 0x196a96

Text_CherrygrovePC_PleaseHealPkmn:
	text "BZZT! Tu n'as"
	line "pas de #MON"
	cont "en forme!"
	done

CherrygrovePokeCenter1F_HealText:
	text "Oh<...> Tous vos"
	line "#MON sont K.O!"

	para "Laissez moi les"
	line "remettre en état."

	para "Puis-je voir vos"
	line "#MON?"
	done

CherrygrovePokeCenter1F_MapEventHeader: ; 0x196a96
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $7, $3, 2, GROUP_CHERRYGROVE_CITY, MAP_CHERRYGROVE_CITY
	warp_def $7, $4, 2, GROUP_CHERRYGROVE_CITY, MAP_CHERRYGROVE_CITY
	warp_def $7, $0, 1, GROUP_POKECENTER_2F, MAP_POKECENTER_2F

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 1, 9, $0, CherrygrovePCScript

	; people-events
	db 4
	person_event SPRITE_NURSE, 5, 7, $6, 0, 0, -1, -1, 0, 0, 0, NurseScript_0x19696d, -1
	person_event SPRITE_FISHER, 7, 6, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, FisherScript_0x196970, -1
	person_event SPRITE_GENTLEMAN, 10, 12, $7, 0, 0, -1, -1, 0, 0, 0, GentlemanScript_0x196973, -1
	person_event SPRITE_TEACHER, 10, 5, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, TeacherScript_0x196976, -1
; 0x196adf

