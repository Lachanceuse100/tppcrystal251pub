PewterPokeCenter1FRB_MapScriptHeader: ; 0x1a2ee5
	; trigger count
	db 0

	; callback count
	db 0
; 0x1a2ee7

PewterPokecenter1FRBNurseScript: ; 0x1a2ee7
	jumpstd pokecenternurse
; 0x1a2eea

PewterPokecenter1FRBTeacherScript: ; 0x1a2eea
	jumptextfaceplayer _PewterPokecenterText1
; 0x1a2eed

PewterPokecenter1FRBJigglypuffScript: ; 0x1a2eed
	loadfont
	writetext _PewterPokecenterText5
	cry JIGGLYPUFF
	waitbutton
	closetext
	end
; 0x1a2ef7

PewterPokecenter1FRBBugCatcherScript: ; 0x1a2ef7
	jumptextfaceplayer _PewterCityPokecenterGuyText
; 0x1a2efa

PewterPokecenterLUASerialScript: ; debug script
    loadfont
    writetext _PewterPokeCenterDebugLUAText
    yesorno
    iffalse .no
IF DEF(BEESAFREE)
    writetext _PewterPokeCenterDebugLUAText2
    callasm .serial
ELSE
    writetext _PewterPokeCenterDebugLUAText3
    waitbutton
ENDC
.no
    closetext
    end
.serial
    ld a, 1
    IF DEF(BEESAFREE) ; just enables this to build
    rst LUASerial
    ENDC
    ret

PewterPokecenterTrueCreditsScript:
    loadfont
    writetext _PewterPokeCenterDebugTrueCredits
    yesorno
    iffalse .no
.yes
    setevent EVENT_BEAT_ELM
    pause 30
    special HealParty
    refreshscreen $0
    credits
    end
.no
    closetext
    end

_PewterPokecenterText1: ; 0x1a2f01
	text "Quoi!?"

	para "La TEAM ROCKET est"
	line "au MONT SELENITE?"

	para "Hein? Je suis au"
	line "téléphone!"

	para "Oust!"
	done

; 0x1a2f5d

_PewterPokecenterText5: ; 0x1a2f5d
	text "RONDOUDOU: Dou"
	line "doudouuu!"
	done
; 0x1a2f75

_PewterCityPokecenterGuyText: ; 0x1a2f75
	text "(baille)!"

	para "Quand RONDOUDOU"
	line "chante, tous les"
	cont "#MON piquent"
	cont "du nez<...>"

	para "<...>Moi aussi<...>"
	line "Zzz<...>"
	done
; 0x1a2ff4

_PewterPokeCenterDebugLUAText:
    text "LUA serial?"
    done

_PewterPokeCenterDebugLUAText2:
    text "Attente<...>"
    done

_PewterPokeCenterDebugLUAText3:
    text "Soldat, ce n'est"
    line "pas un mode de jeu"
    cont "MILITAIRE?"

    para "Je te ferais"
    line "savoir que j'étais"
    cont "au front! Le MAJOR"
    cont "BOB était mon"
	cont "commandant!"
    done

_PewterPokeCenterDebugTrueCredits:
    text "Lancer les"
    line "vrais crédits?"
    done

PewterPokeCenter1FRB_LinkScript:
	jumpstd pokecenterlinkegk

PewterPokeCenter1FRB_MapEventHeader: ; 0x1a2ff4
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $5, 4, GROUP_PEWTER_CITY_RB, MAP_PEWTER_CITY_RB
	warp_def $7, $6, 4, GROUP_PEWTER_CITY_RB, MAP_PEWTER_CITY_RB

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 5
	person_event SPRITE_NURSE, 5, 9, $6, 0, 0, -1, -1, 0, 0, 0, PewterPokecenter1FRBNurseScript, -1
	person_event SPRITE_GENTLEMAN, 11, 17, $8, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, PewterPokecenter1FRBTeacherScript, -1
	person_event SPRITE_JIGGLYPUFF, 7, 7, $16, 0, 0, -1, -1, 0, 0, 0, PewterPokecenter1FRBJigglypuffScript, -1
	person_event SPRITE_BUG_CATCHER, 8, 6, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, PewterPokecenter1FRBBugCatcherScript, -1
	person_event SPRITE_LINK_RECEPTIONIST, 6, 17, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, PewterPokeCenter1FRB_LinkScript, -1
    ;person_event SPRITE_GENTLEMAN, 5, 11, $6, 0, 0, -1, -1, 0, 0, 0, PewterPokecenterLUASerialScript, -1 ; DELIST THIS BEFORE TWITCH BUILD!
    ;person_event SPRITE_BUG_CATCHER, 5, 12, $6, 0, 0, -1, -1, 0, 0, 0, PewterPokecenterTrueCreditsScript, -1 ; DELIST THIS BEFORE TWITCH BUILD!
; 0x1a304a

