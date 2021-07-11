PewterGym_MapScriptHeader: ; 0x1a2862
	; trigger count
	db 0

	; callback count
	db 0
; 0x1a2864

BrockScript_0x1a2864: ; 0x1a2864
	faceplayer
	loadfont
	checkevent EVENT_BEAT_ELM
	iftrue BrockPostgameRematchScript
	checkevent EVENT_BROCK_REMATCH
	iftrue BrockAfterRematch
	checkevent EVENT_SET_BY_OAK_AFTER_16_BADGES
	iftrue BrockRematchScript
	checkflag ENGINE_BOULDERBADGE
	iftrue UnknownScript_0x1a2892
	writetext UnknownText_0x1a28d0
	waitbutton
	closetext
	winlosstext UnknownText_0x1a29bb, $0000
	loadtrainer BROCK, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_BROCK
	setevent EVENT_BEAT_CAMPER_JERRY
	loadfont
	writetext UnknownText_0x1a2a3d
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_BOULDERBADGE
	writetext UnknownText_0x1a2a57
	waitbutton
	closetext
	end
; 0x1a2892

UnknownScript_0x1a2892: ; 0x1a2892
	writetext UnknownText_0x1a2ada
	waitbutton
	closetext
	end

BrockRematchScript:
	checkevent EVENT_ACTIVATED_MIGUEL_FOSSILS
	iffalse BrockReject
	writetext BrockBeforeRematchText
	waitbutton
	closetext
	winlosstext BrockRematchBeatenText, $0000
	loadtrainer BROCK, 2
	startbattle
	returnafterbattle
	setevent EVENT_BROCK_REMATCH
	loadfont ;fallthrough
; 0x188466

BrockAfterRematch:
	writetext BrockAfterRematchText
	waitbutton
	closetext
	end
; 0x1a2898

BrockReject:
	writetext BrockRejectText
	waitbutton
	closetext
	end

BrockRejectText:
	text "PIERRE: <PLAY_G>?"

	para "Tu es intéressé"
	line "par les FOSSILES"
	cont "#MON?"

	para "Tu devrais visiter"
	line "le MONT SELENITE."

	para "Un de mes amis ex-"
	line "trait des fossiles"
	cont "de là-bas."

	para "Il paraît qu'un"
	line "laboratoire à"

	para "JOHTO peut ramener"
	line "ces fossiles à la"
	cont "vie."
	done

BrockBeforeRematchText:
	text "PIERRE: Te voilà."

	para "Ca fait longtemps"
	line "que je ne me suis"
	para "pas donné à fond"
	line "comme ça."

	para "Quand il s'agit de"
	line "#MON ROCHE,"
	cont "je suis imbat-"
	cont "table!"

	para "Allez!"

	done

BrockRematchBeatenText:
	text "Ah! Quel dur"
	line "combat!"
	done

BrockAfterRematchText:
	text "PIERRE: J'ai"
	line "encore perdu<...>"

	para "On dirait que ton"
	line "aventure te fait"
	cont "bien grandir!"
	done

TrainerCamperJerry: ; 0x1a2898
	; bit/flag number
	dw $42b

	; trainer group && trainer id
	db CAMPER, JERRY

	; text when seen
	dw CamperJerrySeenText

	; text when trainer beaten
	dw CamperJerryBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CamperJerryScript
; 0x1a28a4

CamperJerryScript: ; 0x1a28a4
	talkaftercancel
	loadfont
	writetext UnknownText_0x1a2c0f
	waitbutton
	closetext
	end
; 0x1a28ac

PewterGymGuyScript: ; 0x1a28ac
	faceplayer
	loadfont
	checkevent EVENT_BEAT_BROCK
	iftrue .PewterGymGuyWinScript
	writetext PewterGymGuyText
	waitbutton
	closetext
	end

.PewterGymGuyWinScript
	writetext PewterGymGuyWinText
	waitbutton
	closetext
	end
; 0x1a28c0

MapPewterGymSignpost1Script: ; 0x1a28c0
	trainertotext BROCK, 1, $1
	checkflag ENGINE_BOULDERBADGE
	iftrue UnknownScript_0x1a28c9
	jumpstd gymstatue1
; 0x1a28c9

UnknownScript_0x1a28c9: ; 0x1a28c9
	jumpstd gymstatue2
; 0x1a28d0

UnknownText_0x1a28d0: ; 0x1a28d0
	text "PIERRE: Tiens?"
	line "Voilà un visage"
	cont "bien familier!"

	para "Que me vaut ta"
	line "visite, <PLAYER>?"

	para "<...>"
	
	para "Ah, on t'a volé"
	line "ton BADGE ROCHE<...>"

	para "Je pourrais faci-"
	line "lement te le rem-"
	cont "placer mais<...>"
	
	para "J'aimerais voir à"
	line "quel point tu as"
	
	para "grandi pour deve-"
	line "nir MAITRE de"
	cont "JOHTO."

	para "Allez!"
	done
; 0x1a29bb

UnknownText_0x1a29bb: ; 0x1a29bb
	text "PIERRE:"
	line "Incroyable!"

	para "Tu as mené ce com-"
	line "bat et percé mes"
	cont "défenses comme si"
	cont "de rien n'était!"

	para "Tu mérites bien ce"
	line "nouveau BADGE"
	cont "ROCHE!"
	done
; 0x1a2a3d

UnknownText_0x1a2a3d: ; 0x1a2a3d
	text "<PLAYER> reçoit"
	line "le BADGE ROCHE."
	done
; 0x1a2a57

UnknownText_0x1a2a57: ; 0x1a2a57
	text "PIERRE: <PLAY_G>,"
	line "merci. J'ai aimé"

	para "me rebattre contre"
	line "toi, même si je"
	cont "l'ai mauvaise."

	para "Ce BADGE ROCHE"
	line "renforcera tes"

	para "#MON, mais tu"
	line "le savais déjà,"
	cont "non?"
	done
; 0x1a2ada

UnknownText_0x1a2ada: ; 0x1a2ada
	text "PIERRE: Le monde"
	line "est grand. Il y a"

	para "sûrement plein de"
	line "dresseurs aussi"
	cont "forts que toi."

	para "Tu verras<...>"
	line "Je vais devenir"
	cont "encore pluis"
	cont "puissant!"
	done
; 0x1a2b62

CamperJerrySeenText: ; 0x1a2b62
	text "Les dresseurs de"
	line "cette ARENE utili-"
	cont "sent des #MON"
	cont "ROCHE."

	para "Cet élément a une"
	line "grande DEFENSE."

	para "Les combats ris-"
	line "quent de s'éter-"
	cont "niser, tu sais?"
	done
; 0x1a2bf1

CamperJerryBeatenText: ; 0x1a2bf1
	text "Il faut que je"
	line "gagne<...>"
	done
; 0x1a2c0f

UnknownText_0x1a2c0f: ; 0x1a2c0f
	text "Hé toi! PIERRE est"
	line "super fort! Il va"

	para "te punir si tu le"
	line "prends à la"
	cont "légère!"
	done
; 0x1a2c6e

PewterGymGuyText: ; 0x1a2c6e
	text "Salut, champion en"
	line "herbe!"

	para "Tu affrontes les"
	line "CHAMPIONS de"
	cont "KANTO?"

	para "Ils sont tout"
	line "aussi forts et"

	para "déterminés que"
	line "ceux de JOHTO."
	done
; 0x1a2d07

PewterGymGuyWinText: ; 0x1a2d07
	text "Hé, champion en"
	line "herbe!"

	para "Cette ARENE ne t'a"
	line "pas posé trop de"
	cont "problèmes."

	para "Tu m'as bluffé."
	line "Sérieusement."
	done
; 0x1a2d88

BrockPostgameRematchScript:
    writetext BrockPostgameRematchText
    yesorno
    iffalse .return
    closetext
    loadtrainer BROCK, 2
    winlosstext BrockPostgameBeatenText, 0
    startbattle
    returnafterbattle
    loadfont
    writetext BrockPostgameAfterText
    waitbutton
.return
    closetext
    end

BrockPostgameRematchText:
	text "PIERRE: <PLAY_G>!"
	
	para "Tu fais un tour"
	line "à KANTO?"
	
	para "Ah?"
	
	para "Tu veux un nouveau"
	line "combat?"
	done

BrockPostgameBeatenText:
	text "Non! Je n'ai pas"
	line "assez de défense!"
	done

BrockPostgameAfterText:
	text "PIERRE: J'imagine"
	line "que tu n'es pas"
	
	line "MAITRE de JOHTO"
	cont "pour rien."

	para "Tu as tout mon"
	line "respect!"
	done

PewterGym_MapEventHeader: ; 0x1a2d88
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $d, $4, 2, GROUP_PEWTER_CITY, MAP_PEWTER_CITY
	warp_def $d, $5, 2, GROUP_PEWTER_CITY, MAP_PEWTER_CITY

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 11, 2, $0, MapPewterGymSignpost1Script
	signpost 11, 7, $0, MapPewterGymSignpost1Script

	; people-events
	db 3
	person_event SPRITE_BROCK, 5, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, BrockScript_0x1a2864, -1
	person_event SPRITE_YOUNGSTER, 9, 6, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 3, TrainerCamperJerry, -1
	person_event SPRITE_GYM_GUY, 15, 10, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 1, PewterGymGuyScript, -1
; 0x1a2dc9

