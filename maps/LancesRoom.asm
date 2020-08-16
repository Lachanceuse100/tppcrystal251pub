LancesRoom_MapScriptHeader: ; 0x180e2c
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x180e39, $0000
	dw UnknownScript_0x180e3d, $0000

	; callback count
	db 1

	; callbacks

	dbw 1, UnknownScript_0x180e3e
; 0x180e39

UnknownScript_0x180e39: ; 0x180e39
	priorityjump UnknownScript_0x180e53
	end
; 0x180e3d

UnknownScript_0x180e3d: ; 0x180e3d
	end
; 0x180e3e

UnknownScript_0x180e3e: ; 0x180e3e
	checkevent EVENT_LANCES_ROOM_ENTRANCE_CLOSED
	iffalse UnknownScript_0x180e48
	changeblock $4, $16, $34
UnknownScript_0x180e48: ; 0x180e48
	checkevent EVENT_LANCES_ROOM_EXIT_OPEN
	iffalse UnknownScript_0x180e52
	changeblock $4, $0, $b
UnknownScript_0x180e52: ; 0x180e52
	return
; 0x180e53

UnknownScript_0x180e53: ; 0x180e53
	applymovement $0, MovementData_0x180f33
	refreshscreen $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock $4, $16, $34
	reloadmappart
	closetext
	dotrigger $1
	setevent EVENT_LANCES_ROOM_ENTRANCE_CLOSED
	end
; 0x180e6a

UnknownScript_0x180e6a: ; 0x180e6a
	special Functionc48f
	applymovement $0, MovementData_0x180f38
	jump LanceScript_0x180e7b
; 0x180e74

UnknownScript_0x180e74: ; 0x180e74
	special Functionc48f
	applymovement $0, MovementData_0x180f3c
LanceScript_0x180e7b: ; 0x180e7b
	spriteface $2, $2
	loadfont
	checkevent EVENT_OAK_DEFEATED
	iftrue LanceRematch
	writetext UnknownText_0x180f67
	waitbutton
	closetext
	winlosstext UnknownText_0x1810a4, $0000
	setlasttalked $2
	loadtrainer CHAMPION, 1
	startbattle
	reloadmapmusic
	returnafterbattle
	setevent EVENT_BEAT_CHAMPION_LANCE
	loadfont
	writetext UnknownText_0x181132
	buttonsound
	waitsfx
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .reveal_rust
	writetext LanceAzureTalk
	jump .LanceFinishesReveal
.reveal_rust
	writetext LanceRustTalk
.LanceFinishesReveal
	buttonsound
	waitsfx
	writetext LanceFinishReveal
	waitbutton
	closetext
AfterLanceFight:
	playsound SFX_ENTER_DOOR
	changeblock $4, $0, $b
	reloadmappart
	setevent EVENT_LANCES_ROOM_ENTRANCE_CLOSED
	waitsfx
	loadvar wMapMusic, MUSIC_INDIGO_PLATEAU
	special RestartMapMusic
	checkevent EVENT_OAK_DEFEATED
	iftrue .SkipLanceAskHeal
	loadfont
	writetext UnknownText_0x18137b
	loadmenudata LancesRoomNoYesBoxMenuDataHeader
	interpretmenu2
	writebackup
	iffalse .SkipLanceHeal
	if_equal 1, .SkipLanceHeal
	special HealParty
	playsound SFX_POTION
	waitsfx
	writetext LanceAfterHeal
	jump .AfterLanceHeal
.SkipLanceHeal
	writetext LanceRefusedHealText
.AfterLanceHeal
	waitbutton
	closetext
.SkipLanceAskHeal
	applymovement $0, MovementData_0x180f53
	warpcheck
	end

LancesRoomNoYesBoxMenuDataHeader:
	db $00 ; flags
	db 07, 14 ; start coords
	db 11, 19 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2
	db $c0 ; flags
	db 2 ; items
	db "NON@"
	db "OUI@"

LanceRematch:
	writetext LanceBeforeRematchText
	waitbutton
	closetext
	winlosstext UnknownText_0x1810a4, $0000
	setlasttalked $2
	loadtrainer CHAMPION, 2
	startbattle
	reloadmapmusic
	returnafterbattle
	setevent EVENT_BEAT_CHAMPION_LANCE
	setevent EVENT_BEAT_ELITE_REMATCH
	loadfont
	writetext LanceAfterRematch
	waitbutton
	closetext
	jump AfterLanceFight

LanceBeforeRematchText:
	text "Il n'y a plus"
	line "besoin de parler."

	para "On va se battre et"
	line "enfin savoir qui"

	para "de nous deux est"
	line "le plus fort."

	para "Moi, PETER,"
	line "l'expert des"
	cont "dragons, j'accepte"
	cont "de t'affronter!"
	done

LanceAfterRematch:
	text "Je le savais<...>"

	para "Tes #MON et toi"
	line "faites une sacrée"
	cont "équipe."

	para "Et vous ne cesse-"
	line "rez de devenir"
	para "encore plus forts"
	line "ensemble."
	done

MovementData_0x180f33: ; 0x180f33
	step_up
	step_up
	step_up
	step_up
	step_end
; 0x180f38

MovementData_0x180f38: ; 0x180f38
	step_up
	step_up
	turn_head_right
	step_end
; 0x180f3c

MovementData_0x180f3c: ; 0x180f3c
	step_up
	step_left
	step_up
	turn_head_right
	step_end


MovementData_0x180f53: ; 0x180f53
	step_up
	step_up
	step_end
; 0x180f55


UnknownText_0x180f67: ; 0x180f67
	text "PETER:"
	line "Je t'attendais<...>"

	para "<PLAY_G>!"

	para "Je savais que tu"
	line "allais finir par"
	cont "jusqu'ici."

	para "Il n'y a plus"
	line "besoin de parler."

	para "On va se battre et"
	line "enfin savoir qui"

	para "de nous deux est"
	line "le plus fort."

	para "Moi, PETER,"
	line "l'expert des"
	cont "dragons, j'accepte"
	cont "de t'affronter!"
	done
; 0x1810a4

UnknownText_0x1810a4: ; 0x1810a4
	text "<...>"

	para "C'est fini<...>"
	
	para "Je me sens<...>"
	line "Bizarre<...>"

	para "Je ne suis pas"
	line "fâché mais<...>"
	cont "Plutôt heureux."

	para "Heureux d'être le"
	line "témoin de la nais-"

	para "sance d'un nouveau"
	line "MAITRE!"
	done
; 0x181132


UnknownText_0x181132: ; 0x181132
	text "<...>Woah!"

	para "Tu es devenu in-"
	line "croyable, <PLAY_G>!"

	para "Toi et tes #MON"
	line "êtes en parfaite"
	cont "harmonie."

	para "Je suis sûr que tu"
	line "continueras à"
	cont "progresser avec"
	para "tes #MON."

	para "Tu es désormais"
	line "MAITRE de la LIGUE"
	cont "#MON!"

	para "<...>"

	para "<...>Ou au moins, tu"
	line "l'aurais été, mais"
	para "il te reste une"
	line "dernière épreuve."
	done

LanceFinishReveal:
    text "Vas-y. Ton dernier"
    line "combat t'attends!"
    done ; not sure if this is supposed to use below if gender

LanceAzureTalk:
	text "Son nom est<...>"
	para "<GREEN>!"
	para "Elle a vaincu le"
	line "CONSEIL des 4"
	cont "avant toi!"

	para "Elle est la vraie"
	line "MAITRE #MON!"
	done
LanceRustTalk:
	text "Son nom est<...>"
	para "<GREEN>!"
	para "Il a vaincu le"
	line "CONSEIL des 4"
	cont "avant toi!"

	para "Il est le vrai"
	line "MAITRE #MON!"
	done

; 0x1811dd

UnknownText_0x18137b: ; 0x18137b
	text "Ton dernier combat"
	line "t'attends, mais"
	cont "avant<...>"

	para "Tes #MON sont"
	line "fatigués."

	para "Veux-tu que je les"
	line "soignes avant de"
	cont "continuer?"
	done

LanceRefusedHealText:
	text "Très bien, fonce"
	line "alors!"
	done

LanceAfterHeal:
	text "Tes #MON sont"
	line "en pleine forme."

	para "Bats-toi à pleine"
	line "puissance!"
	done
; 0x1813c5

;UnknownText_0x1813c5: ; 0x1813c5
;	text "MARY: Oh, wait!"
;	line "We haven't done"
;	cont "the interview!"
;	done
; 0x1813f4

; Text_OakBeforeBattle:
	; text "PROF.OAK: Ah,"
	; line "<PLAY_G>!"

	; para "It's been a long"
	; line "while."

	; para "You certainly look"
	; line "more impressive."

	; para "Your conquest of"
	; line "the LEAGUE is just"
	; cont "fantastic!"

	; para "Your dedication,"
	; line "trust and love for"

	; para "your #MON made"
	; line "this happen."

	; para "Your #MON were"
	; line "outstanding too."

	; para "Because they be-"
	; line "lieved in you as a"

	; para "trainer, they per-"
	; line "severed."

	; para "Now, <PLAY_G>."

	; para "I want you to come"
	; line "at me with all"

	; para "the strength that"
	; line "got you this far."
	; done

; OakBeatenText:
	; text "Excellent!"

	; para "I have nothing"
	; line "left to say. You"

	; para "truly are a"
	; line "#MON MASTER!"
	; done

LancesRoom_MapEventHeader: ; 0x1813f4
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $17, $4, 3, GROUP_KARENS_ROOM, MAP_KARENS_ROOM
	warp_def $17, $5, 4, GROUP_KARENS_ROOM, MAP_KARENS_ROOM
	warp_def $1, $4, 1, GROUP_HALLWAY_OF_FAME, MAP_HALLWAY_OF_FAME
	warp_def $1, $5, 2, GROUP_HALLWAY_OF_FAME, MAP_HALLWAY_OF_FAME

	; xy triggers
	db 2
	xy_trigger 1, $5, $4, $0, UnknownScript_0x180e6a, $0, $0
	xy_trigger 1, $5, $5, $0, UnknownScript_0x180e74, $0, $0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_LANCE, 7, 9, $6, 0, 0, -1, -1, 0, 0, 0, LanceScript_0x180e7b, -1
; 0x181445

