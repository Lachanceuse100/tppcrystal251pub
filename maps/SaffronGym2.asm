sabrinawarp: MACRO
	warp_def \1, \2, 1, GROUP_SAFFRON_GYM_2, MAP_SAFFRON_GYM_2 ; center
IF \3 == -1
	warp_def \1-1, \2, 4, GROUP_SAFFRON_GYM_2, MAP_SAFFRON_GYM_2 ; top
ELSE
	warp_def \1-1, \2, (\3*5)+1, GROUP_SAFFRON_GYM_2, MAP_SAFFRON_GYM_2
ENDC
IF \4 == -1
	warp_def \1, \2-1, 4, GROUP_SAFFRON_GYM_2, MAP_SAFFRON_GYM_2 ; left
ELSE
	warp_def \1, \2-1, (\4*5)+1, GROUP_SAFFRON_GYM_2, MAP_SAFFRON_GYM_2
ENDC
IF \5 == -1
	warp_def \1, \2+1, 4, GROUP_SAFFRON_GYM_2, MAP_SAFFRON_GYM_2 ; right
ELSE
	warp_def \1, \2+1, (\5*5)+1, GROUP_SAFFRON_GYM_2, MAP_SAFFRON_GYM_2
ENDC
IF \6 == -1
	warp_def \1+1, \2, 4, GROUP_SAFFRON_GYM_2, MAP_SAFFRON_GYM_2 ; bottom
ELSE
	warp_def \1+1, \2, (\6*5)+1, GROUP_SAFFRON_GYM_2, MAP_SAFFRON_GYM_2
ENDC
ENDM

SaffronGym2_MapScriptHeader:
	; triggers
	db 0

	; callbacks
	db 0

SabrinaRematchScript:
	faceplayer
	loadfont
	checkevent EVENT_BEAT_ELM
	iftrue SabrinaPostgameRematchScript
	checkevent EVENT_SABRINA_REMATCH
	iftrue SabrinaAfterRematch
	writetext SabrinaBeforeRematchText
	waitbutton
	closetext
	winlosstext SabrinaRematchBeatenText, $0000
	loadtrainer SABRINA, 2
	startbattle
	returnafterbattle
	setevent EVENT_SABRINA_REMATCH
	loadfont

SabrinaAfterRematch:
	writetext SabrinaAfterRematchText
	waitbutton
	closetext
	end

SaffronGym2GuyScript:
	faceplayer
	loadfont
	checkevent EVENT_SABRINA_REMATCH
	iftrue .SaffronGymGuyWinScript
	writetext SaffronGym2GuyText
	waitbutton
	closetext
	end

.SaffronGymGuyWinScript
	writetext SaffronGym2GuyWinText
	waitbutton
	closetext
	end

MapSaffronGym2Signpost0Script: ; 0x189ccf
	trainertotext SABRINA, 1, $1
	jumpstd gymstatue2

SabrinaBeforeRematchText:
	text "MORGANE: Je sens"
	line "une grande ambi-"
	cont "tion en toi."

	para "Je le sais car"
	line "j'entraîne des"
	cont "#MON PSY."

	para "Si je donne tout,"
	line "je te battrais"
	cont "facilement."

	para "Je te propose de"
	line "mettre ma prédic-"
	cont "tion à l'épreuve."

	done

SabrinaRematchBeatenText:
	text "Ma prédiction<...>"
	line "était fausse?"
	done

SabrinaAfterRematchText:
	text "MORGANE: <...>"
	line "Ta victoire<...>"

	para "C'est bien ce que"
	line "j'avais prédis."

	para "Mais je voulais"
	line "savoir si j'étais"

	para "assez forte pour"
	line "changer le futur."

	done

SaffronGym2GuyText:
	text "Salut, MAITRE!"

	para "Un dresseur aussi"
	line "balèze que toi n'a"

	para "pas besoin qu'on"
	line "lui dise comment"

	para "s'occuper de ce"
	line "labyrinthe, pas"
	cont "vrai?"

	para "J'espère que ce"
	line "n'est pas trop"
	cont "t'en demander."

	para "Bonne chance!"
	done

SaffronGym2GuyWinText:
	text "Encore un combat"
	line "fantastique!"
	done

SabrinaPostgameRematchScript:
    writetext SabrinaPostgameRematchText
    yesorno
    iffalse .return
    closetext
    loadtrainer SABRINA, 2
    winlosstext SabrinaPostgameBeatenText, 0
    startbattle
    returnafterbattle
    loadfont
    writetext SabrinaPostgameAfterText
    waitbutton
.return
    closetext
    end
	
SabrinaPostgameRematchText:
	text "MORGANE: <PLAYER>."

	para "Je savais que tu"
	line "reviendrais."

	para "Pour un autre"
	line "combat, je pré-"
	cont "sume?"
	done
	
SabrinaPostgameBeatenText:
	text "<...>"
	
	para "Tu es toujours si"
	line "illisible<...>"
	done
	
SabrinaPostgameAfterText:

	text "MORGANE: <...>J'avais"
	line "prédis l'issue de"
	cont "ce combat"

	para "Je souhatais seu-"
	line "lement tester mes"
	cont "talents de"
	cont "dresseur."
	
	para "Merci. J'espère"
	line "que tu reviendras."
	done
	
SaffronGym2_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 5 + 12 * 5 + 1 ; 66
	warp_def $13, $6, 1, GROUP_SAFFRON_GYM_2, MAP_SAFFRON_GYM_2 ; not teh urn
	warp_def $15, $6, 2, GROUP_SAFFRON_CITY, MAP_SAFFRON_CITY ; door
	warp_def $15, $7, 2, GROUP_SAFFRON_CITY, MAP_SAFFRON_CITY ; door
	warp_def $3, $6, 1, GROUP_SAFFRON_GYM_2, MAP_SAFFRON_GYM_2 ; teh urn
	warp_def $3, $7, 1, GROUP_SAFFRON_GYM_2, MAP_SAFFRON_GYM_2 ; teh return
	; center y, x, up, left, right, down
	; -1 is teh urn
	sabrinawarp  7,  2,  8,  0,  5, -1 ;  1
	sabrinawarp  8,  5,  0,  9,  3, 11 ;  2
	sabrinawarp  7,  8, 11,  5,  0, 10 ;  3
	sabrinawarp  8, 11,  3,  5,  0,  7 ;  4
	sabrinawarp 10,  3,  0,  9, 11,  8 ;  5
	sabrinawarp 11,  6,  0, 12,  3, 10 ;  6
	sabrinawarp 10,  9,  0,  1, 10,  2 ;  7
	sabrinawarp 11, 12,  9,  0,  2, 10 ;  8
	sabrinawarp 13,  2,  2, 10,  5,  0 ;  9
	sabrinawarp 14,  5,  2,  0, 11,  8 ; 10
	sabrinawarp 13,  8,  9,  3,  0,  8 ; 11
	sabrinawarp 14, 11,  3,  5,  4,  0 ; 12
	warp_def $12, $6, 5 * 6 + 1, GROUP_SAFFRON_GYM_2, MAP_SAFFRON_GYM_2 ; teh start

	; coord events
	db 0

	; bg events
	db 2
	signpost 19, 5, $0, MapSaffronGym2Signpost0Script
	signpost 19, 8, $0, MapSaffronGym2Signpost0Script

	; object events
	db 2
	person_event SPRITE_SABRINA,  5, 10, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SabrinaRematchScript, -1
	person_event SPRITE_GYM_GUY, 23, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, SaffronGym2GuyScript, -1
