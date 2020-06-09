elitefloorblock: MACRO
IF \1 == 0
	warp_def \2, \3, 3, GROUP_ECRUTEAK_ELITE_FLOOR, MAP_ECRUTEAK_ELITE_FLOOR
	warp_def \2, \3+1, 3, GROUP_ECRUTEAK_ELITE_FLOOR, MAP_ECRUTEAK_ELITE_FLOOR
ELSE
IF \1 == 1
	warp_def \2, \3+1, 3, GROUP_ECRUTEAK_ELITE_FLOOR, MAP_ECRUTEAK_ELITE_FLOOR
	warp_def \2+1, \3+1, 3, GROUP_ECRUTEAK_ELITE_FLOOR, MAP_ECRUTEAK_ELITE_FLOOR
ELSE
IF \1 == 2
	warp_def \2, \3, 3, GROUP_ECRUTEAK_ELITE_FLOOR, MAP_ECRUTEAK_ELITE_FLOOR
	warp_def \2+1, \3, 3, GROUP_ECRUTEAK_ELITE_FLOOR, MAP_ECRUTEAK_ELITE_FLOOR
ELSE
	warp_def \2+1, \3, 3, GROUP_ECRUTEAK_ELITE_FLOOR, MAP_ECRUTEAK_ELITE_FLOOR
	warp_def \2+1, \3+1, 3, GROUP_ECRUTEAK_ELITE_FLOOR, MAP_ECRUTEAK_ELITE_FLOOR
ENDC
ENDC
ENDC
ENDM

elitefloor: MACRO
	elitefloorblock \1, efloorrow, 2
	elitefloorblock \2, efloorrow, 4
	elitefloorblock \3, efloorrow, 6
	elitefloorblock \4, efloorrow, 8
	elitefloorblock \5, efloorrow, 10
	elitefloorblock \6, efloorrow, 12
	elitefloorblock \7, efloorrow, 14
	elitefloorblock \8, efloorrow, 16
	elitefloorblock \9, efloorrow, 18
efloorrow = efloorrow + 2
ENDM

revealefloor: MACRO
	changeblock 2, efloorrow, $40 + \1
	changeblock 4, efloorrow, $40 + \2
	changeblock 6, efloorrow, $40 + \3
	changeblock 8, efloorrow, $40 + \4
	changeblock 10, efloorrow, $40 + \5
	changeblock 12, efloorrow, $40 + \6
	changeblock 14, efloorrow, $40 + \7
	changeblock 16, efloorrow, $40 + \8
	changeblock 18, efloorrow, $40 + \9
efloorrow = efloorrow + 2
ENDM

EcruteakEliteFloor_MapScriptHeader:
	; triggers
	db 0

	; callbacks
	db 0

	dbw 1, EcruteakEliteFloorCallback

EcruteakEliteFloorCallback:
	checkevent EVENT_MORTY_REMATCH
	iffalse .no_reveal
	scall RevealWholeFloor
.no_reveal
	return

RevealWholeFloor:
efloorrow = 4
	revealefloor 0,0,3,3,2,0,0,3,1
	revealefloor 2,2,0,0,1,3,2,2,3
	revealefloor 2,0,3,0,3,3,3,2,0
	revealefloor 3,3,3,3,3,3,3,1,1
	revealefloor 2,3,3,3,3,3,3,1,1
	revealefloor 2,0,2,0,0,2,2,0,1
	revealefloor 0,2,0,1,2,2,3,2,0
	revealefloor 2,0,0,2,3,2,2,1,1
	revealefloor 2,0,0,2,0,2,2,0,1
	setevent 0
	setevent 1
	setevent 2
	setevent 3
	setevent 4
	end

MortyRematchScript2:
	faceplayer
	loadfont
	checkevent EVENT_BEAT_ELM
	iftrue MortyPostgameRematchScript
	checkevent EVENT_MORTY_REMATCH
	iftrue MortyAfterRematch2
	writetext MortyRematchTextBefore2
	waitbutton
	closetext
	winlosstext MortyRematchBeatenText2, $0000
	loadtrainer MORTY, 2
	startbattle
	returnafterbattle
	setevent EVENT_MORTY_REMATCH
	refreshscreen 0
	special Function8c084
	scall RevealWholeFloor
	reloadmappart
	special Function8c079
	loadfont
MortyAfterRematch2:
	writetext MortyAfterRematchText2
	waitbutton
	closetext
	end

Trainer_SageZeke:
	trainer EVENT_ELITE_FLOOR_ZEKE, SAGE, ZEKE_SAGE, SageZekeBeforeText, SageZekeWinText, 0, .Script
.Script
	loadfont
	writetext SageZekeText
	waitbutton
	closetext
	checkevent 0
	iftrue .finish
	playsound SFX_FLASH
	refreshscreen 0
	special Function8c084
	changeblock 2, 10, $43
	changeblock 4, 10, $43
	changeblock 6, 10, $43
	changeblock 8, 10, $43
	changeblock 10, 10, $43
	changeblock 12, 10, $43
	changeblock 2, 12, $42
	changeblock 4, 12, $43
	changeblock 6, 12, $43
	changeblock 8, 12, $43
	changeblock 10, 12, $43
	changeblock 12, 12, $43
	changeblock 2, 14, $42
	changeblock 4, 14, $40
	changeblock 6, 14, $42
	reloadmappart
	special Function8c079
.finish
	end

Trainer_MediumMartha2:
	trainer EVENT_ELITE_FLOOR_MARTHA, MEDIUM, MARTHA2, MediumMartha2BeforeText, MediumMartha2WinText, 0, .Script
.Script
	loadfont
	writetext MediumMartha2Text
	waitbutton
	closetext
	checkevent 1
	iftrue .finish
	playsound SFX_FLASH
	refreshscreen 0
	special Function8c084
	changeblock 2, 4, $40
	changeblock 4, 4, $40
	changeblock 2, 6, $42
	changeblock 4, 6, $42
	changeblock 6, 6, $40
	changeblock 8, 6, $40
	changeblock 10, 6, $41
	changeblock 2, 8, $42
	changeblock 4, 8, $40
	changeblock 6, 8, $43
	changeblock 8, 8, $40
	reloadmappart
	special Function8c079
.finish
	end

Trainer_MediumGrace2:
	trainer EVENT_ELITE_FLOOR_GRACE, MEDIUM, GRACE2, MediumGrace2BeforeText, MediumGrace2WinText, 0, .Script
.Script
	loadfont
	writetext MediumGrace2Text
	waitbutton
	closetext
	checkevent 2
	iftrue .finish
	playsound SFX_FLASH
	refreshscreen 0
	special Function8c084
	changeblock 8, 14, $40
	changeblock 10, 14, $40
	changeblock 12, 14, $42
	changeblock 14, 14, $42
	changeblock 8, 16, $41
	changeblock 10, 16, $42
	changeblock 12, 16, $42
	changeblock 14, 16, $43
	changeblock 16, 16, $42
	changeblock 18, 16, $40
	changeblock 8, 18, $42
	changeblock 10, 18, $43
	changeblock 12, 18, $42
	changeblock 14, 18, $42
	changeblock 16, 18, $41
	changeblock 18, 18, $41
	reloadmappart
	special Function8c079
.finish
	end

Trainer_SageJeffrey2:
	trainer EVENT_ELITE_FLOOR_JEFFREY, SAGE, JEFFREY2, SageJeffrey2BeforeText, SageJeffrey2WinText, 0, .Script
.Script
	loadfont
	writetext SageJeffrey2Text
	waitbutton
	closetext
	checkevent 3
	iftrue .finish
	playsound SFX_FLASH
	refreshscreen 0
	special Function8c084
	changeblock 16, 4, $43
	changeblock 18, 4, $41
	changeblock 16, 6, $42
	changeblock 18, 6, $43
	changeblock 16, 8, $42
	changeblock 18, 8, $40
	changeblock 14, 10, $43
	changeblock 16, 10, $41
	changeblock 18, 10, $41
	changeblock 14, 12, $43
	changeblock 16, 12, $41
	changeblock 18, 12, $41
	changeblock 16, 14, $40
	changeblock 18, 14, $41
	reloadmappart
	special Function8c079
	setevent 4
.finish
	end

Trainer_SagePing2:
	trainer EVENT_ELITE_FLOOR_PING, SAGE, PING2, SagePing2BeforeText, SagePing2WinText, 0, .Script
.Script
	loadfont
	writetext SagePing2Text
	waitbutton
	closetext
	checkevent 4
	iftrue .finish
	playsound SFX_FLASH
	refreshscreen 0
	special Function8c084
	changeblock 2, 16, $40
	changeblock 4, 16, $42
	changeblock 6, 16, $40
	changeblock 2, 18, $42
	changeblock 4, 18, $40
	changeblock 6, 18, $40
	changeblock 2, 20, $42
	changeblock 4, 20, $40
	changeblock 6, 20, $40
	changeblock 8, 20, $42
	changeblock 10, 20, $40
	changeblock 12, 20, $42
	changeblock 14, 20, $42
	changeblock 16, 20, $40
	changeblock 18, 20, $41
	reloadmappart
	special Function8c079
.finish
	end

EcruteakGymGuy2Script: ; 0x99e39
	faceplayer
	loadfont
	checkevent EVENT_MORTY_REMATCH
	iftrue .EcruteakGymGuyWinScript
	writetext EcruteakGymGuy2Text
	waitbutton
	closetext
	end

.EcruteakGymGuyWinScript
	writetext EcruteakGymGuy2WinText
	waitbutton
	closetext
	end

MapEcruteakGym2Signpost1Script:
	trainertotext MORTY, 1, $1
	jumpstd gymstatue2

MortyRematchTextBefore2:
	text "Bienvenue,"
	line "<PLAY_G>."

	para "Je vois que tu as"
	line "battu le REBORD"
	cont "MORTEL."

	para "Haha!"

	para "<...>La légende était"
	line "donc vraie, HO-OH"
	cont "t'a choisi<...>"

	para "Mais je n'ai pas"
	line "perdu de vue mon"
	cont "futur."

	para "Montre moi la pui-"
	line "ssance que je"
	cont "souhaitais défier!"
	done

MortyRematchBeatenText2:
	text "Comment est-ce"
	line "possible<...>?"
	done

MortyAfterRematchText2:
	text "Nos potentiels"
	line "ne sont pas si"
	cont "differents."

	para "Mais tu as quelque"
	line "chose<...>"

	para "Quelque chose de"
	line "plus<...>"
	done

SageZekeBeforeText:
	text "J'aime bien les"
	cont "pique-nique."

	para "Ca me fait sentir"
	line "bien."
	done

SageZekeWinText:
	text "Ca ne marche pas?"
	done

SageZekeText:
	text "Il y a longtemps,"
	line "j'écoutais une"

	para "chanson qui"
	line "m'inspirais."

	para "Je n'ai pas com-"
	line "pris toutes les"

	para "paroles elle me"
	line "motivait a faire"
	cont "de mon mieux<...>"

	para "<...>Je ne me rappelle"
	line "pas du nom de"
	cont "cette mélodie."

	para "<...>Est-ce que ça"
	line "faisait partie"
	cont "d'une compilation?"
	done

MediumMartha2BeforeText:
	text "Comment je sors"
	line "d'ici?"
	done

MediumMartha2WinText:
	text "Aiiiiiie"
	done

MediumMartha2Text:
	text "Mais pourquoi"
	line "MORTIMER à recon-"

	para "struit son puzzle"
	line "pour qu'il soit"
	cont "si dur<...>"

	para "Il a entendu"
	line "l'histoire d'un"

	para "DRESSEUR qui sau-"
	line "tait toujours du"
	cont "rebord de la"
	cont "ROUTE 22."

	para "Est-ce que ce"
	line "serait pour ça?"
	done

MediumGrace2BeforeText:
	text "Respire"
	line "profondément."

	para "Laisse les esprits"
	line "des défunts guider"
	cont "tes pensées."
	done

MediumGrace2WinText:
	text "Les voix dans ta"
	line "tête sont"
	cont "puissantes."
	done

MediumGrace2Text:
	text "Peu importe les"
	line "difficultés que tu"
	cont "rencontres<...>"

	para "Tu peux toujours"
	line "les surmonter!"

	para "Reste déterminé!"
	done

SageJeffrey2BeforeText:
	text "Bonjour!"

	para "Je suis désolé,"
	line "mais tu es sur la"
	cont "mauvaise voie<...>"

	para "Il n'y a qu'une"
	line "impasse derrière"
	cont "moi"
	done

SageJeffrey2WinText:
	text "Ton entraînement"
	line "est sur la bonne"
	cont "voie."
	done

SageJeffrey2Text:
	text "Lorsque tu prends"
	line "un mauvais chemin,"

	para "tu peux toujours"
	line "reculer et"
	cont "réessayer."
	done

SagePing2BeforeText:
	text "Ah-ha!"

	para "Tu es tombé dans"
	line "mon piège!"
	done

SagePing2WinText:
	text "Tu as déjoué mon"
	line "piège?!"
	done

SagePing2Text:
	text "Essaye l'autre"
	line "entrée et espère"

	para "que MORTIMER ne se"
	line "joue plus de toi."
	done

EcruteakGymGuy2Text:
	text "Salut, CHAMPION!"

	para "MORTIMER a amélio-"
	line "rer son sol à un"
	cont "tout autre niveau!"

	para "Il l'a baptisé:"
	line "Le REBORD MORTEL<...>"

	para "Parfois je ne le"
	line "comprends pas<...>"
	done

EcruteakGymGuy2WinText:
	text "Waouh, <PLAYER>."
	line "Tu as été génial!"

	para "J'étais terrorisé,"
	line "je me suis caché"
	cont "dans un coin!"
	done
	
MortyPostgameRematchScript:
    writetext MortyPostgameRematchText
    yesorno
    iffalse .return
    closetext
    loadtrainer MORTY, 2
    winlosstext MortyPostgameBeatenText, 0
    startbattle
    returnafterbattle
    loadfont
    writetext MortyPostgameAfterText
    waitbutton
.return
    closetext
    end
	
MortyPostgameRematchText:
	text "Ah-ha! Bon"
	line "retour!"

	para "Tu voulais encore"
	line "un puzzle?"

	para "Ah? Tu veux un"
	line "nouveau combat!"

	done
	
MortyPostgameBeatenText:
	text "Bah!"
	
	para "J'admet une nou-"
	line "velle fois ma"
	cont "défaite!"
	done
	
MortyPostgameAfterText:
	text "Tu es vraiment un"
	line "sacré dresseur."
	
	para "Merci pour ce"
	line "combat génial!"

	done

EcruteakEliteFloor_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 9 * 9 * 2 + 3
	warp_def $19, $a, 10, GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY
	warp_def $19, $b, 10, GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY
	warp_def $16, $a, 4, GROUP_ECRUTEAK_ELITE_FLOOR, MAP_ECRUTEAK_ELITE_FLOOR
efloorrow = 4
	elitefloor 0,0,3,3,2,0,0,3,1
	elitefloor 2,2,0,0,1,3,2,2,3
	elitefloor 2,0,3,0,3,3,3,2,0
	elitefloor 3,3,3,3,3,3,3,1,1
	elitefloor 2,3,3,3,3,3,3,1,1
	elitefloor 2,0,2,0,0,2,2,0,1
	elitefloor 0,2,0,1,2,2,3,2,0
	elitefloor 2,0,0,2,3,2,2,1,1
	elitefloor 2,0,0,2,0,2,2,0,1

	; coord events
	db 0

	; bg events
	db 2
	signpost $17, $9, $0, MapEcruteakGym2Signpost1Script
	signpost $17, $c, $0, MapEcruteakGym2Signpost1Script

	; object events
	db 7
	person_event SPRITE_MORTY, 5, 15, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, MortyRematchScript2, -1
	person_event SPRITE_GYM_GUY, 27, 17, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, EcruteakGymGuy2Script, -1
	person_event SPRITE_SAGE, 12, 22, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 1, Trainer_SageJeffrey2, -1
	person_event SPRITE_SAGE, 21, 6, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 1, Trainer_SagePing2, -1
	person_event SPRITE_GRANNY, 11, 15, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 1, Trainer_MediumMartha2, -1
	person_event SPRITE_GRANNY, 19, 18, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 1, Trainer_MediumGrace2, -1
	person_event SPRITE_GRAMPS, 15, 7, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 1, Trainer_SageZeke, -1
