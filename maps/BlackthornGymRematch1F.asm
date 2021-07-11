BlackthornGymRematch1F_MapScriptHeader:
	; trigger
	db 0

	; callback count
	db 1

	; callback
	dbw 1, BoulderTiles

; <scripts go here>
BoulderTiles: ; 0x194e05
	checkevent EVENT_BLACKTHORN_REMATCH_BOULDER_1
	iffalse .check2
	changeblock 12, 12, $3B
.check2
	checkevent EVENT_BLACKTHORN_REMATCH_BOULDER_2
	iffalse .check3
	changeblock 6, 16, $3B
.check3
	checkevent EVENT_BLACKTHORN_REMATCH_BOULDER_3
	iffalse .check4
	changeblock 2, 12, $3B
.check4
	checkevent EVENT_BLACKTHORN_REMATCH_BOULDER_4
	iffalse .nope
	changeblock 8, 2, $3B
.nope
	return

ClairTextScript:
	faceplayer
	loadfont
	checkevent EVENT_BEAT_ELM
	iftrue ClairPostgameRematchScript
	checkevent EVENT_CLAIR_REMATCH
	iffalse ClairMeetMeInDragonsDenScript
	writetext ClairFullyDefeatedText
	waitbutton
	closetext
	end

ClairMeetMeInDragonsDenScript:
	checkevent EVENT_BEAT_RIVAL_IN_MT_MOON
	iffalse ClairRejectNoMtMoon
	checkevent EVENT_BEAT_INDIGO_RIVAL_AT_LEAST_ONCE
	iffalse ClairReject
	writetext ClairMeetMeInDragonsDenText
	waitbutton
	closetext
	domaptrigger GROUP_DRAGONS_DEN_B1F, MAP_DRAGONS_DEN_B1F, $1
	end

ClairRejectNoMtMoon:
	writetext ClairRejectNoMtMoonText
	waitbutton
	closetext
	end

ClairReject:
	writetext ClairRejectText
	waitbutton
	closetext
	end

BlackthornGym2GuyScript:
	faceplayer
	loadfont
	checkevent EVENT_CLAIR_REMATCH
	iftrue .BlackthornGymGuyWinScript
	writetext BlackthornGym2GuyText
	waitbutton
	closetext
	end

.BlackthornGymGuyWinScript
	writetext BlackthornGym2GuyWinText
	waitbutton
	closetext
	end

BlackthornGymRematchStatue: ; 0x194eea
	checkflag ENGINE_RISINGBADGE
	iftrue BlackthornGymRematchStatue2
	jumpstd gymstatue1

BlackthornGymRematchStatue2: ; 0x194ef3
	trainertotext CLAIR, 1, $1
	jumpstd gymstatue2


TrainerCooltrainermPaulRematch: ; 0x194e9a
	; bit/flag number
	dw $346

	; trainer group && trainer id
	db COOLTRAINERM, PAUL2

	; text when seen
	dw CooltrainermPaulSeenRematchText

	; text when trainer beaten
	dw CooltrainermPaulBeatenRematchText

	; script when lost
	dw $0000

	; script when talk again
	dw CooltrainermPaulRematchScript
; 0x194ea6

CooltrainermPaulRematchScript: ; 0x194ea6
	talkaftercancel
	loadfont
	writetext CooltrainerPaulAfterRematch
	waitbutton
	closetext
	end
; 0x194eae

TrainerCooltrainermMikeRematch: ; 0x194eae
	; bit/flag number
	dw $347

	; trainer group && trainer id
	db COOLTRAINERM, MIKE2

	; text when seen
	dw CooltrainermMikeSeenRematchText

	; text when trainer beaten
	dw CooltrainermMikeBeatenRematchText

	; script when lost
	dw $0000

	; script when talk again
	dw CooltrainermMikeRematchScript
; 0x194eba

CooltrainermMikeRematchScript: ; 0x194eba
	talkaftercancel
	loadfont
	writetext CooltrainerMikeAfterRematch
	waitbutton
	closetext
	end
; 0x194ec2

TrainerCooltrainerfLolaRematch: ; 0x194ec2
	; bit/flag number
	dw $348

	; trainer group && trainer id
	db COOLTRAINERF, LOLA2

	; text when seen
	dw CooltrainerfLolaSeenRematchText

	; text when trainer beaten
	dw CooltrainerfLolaBeatenRematchText

	; script when lost
	dw $0000

	; script when talk again
	dw CooltrainerfLolaRematchScript
; 0x194ece

CooltrainerfLolaRematchScript: ; 0x194ece
	talkaftercancel
	loadfont
	writetext CooltrainerLolaAfterRematch
	waitbutton
	closetext
	end
; 0x194ed6


CooltrainermPaulSeenRematchText: ; 0x195396
	text "Tu as déjà combat-"
	line "tu des dragons<...>"

	para "Mais je vais te"
	line "montrer leur"
	cont "véritable force!"
	done
; 0x1953db

CooltrainermPaulBeatenRematchText: ; 0x1953db
	text "Mon #MON DRAGON"
	line "a encore perdu?"
	done
; 0x1953f1

CooltrainerPaulAfterRematch: ; 0x1953f1
	text "Bon courage pour"
	line "battre SANDRA a"
	cont "son meilleur"
	cont "niveau!"
	done
; 0x19542f

CooltrainermMikeSeenRematchText: ; 0x19542f
	text "Mes chances de"
	line "perdre? Même pas"
	para "une fraction d'un"
	line "pour cent!"
	done
; 0x19545b

CooltrainermMikeBeatenRematchText: ; 0x19545b
	text "Etrange<...> Qu'"
	line "est-ce que ça peut"
	cont "bien être?"
	done
; 0x195467

CooltrainerMikeAfterRematch: ; 0x195467
	text "Je n'ai pas assez"
	line "comblé mes"
	cont "lacunes!"
	done
; 0x19549d

CooltrainerfLolaSeenRematchText: ; 0x19549d
	text "Les dragons seront"
	line "toujours sacrés."

	para "Leur énergie vi-"
	line "tale s'écoule en"
	cont "nous tous!"
	done
; 0x19550a

CooltrainerfLolaBeatenRematchText: ; 0x19550a
	text "Arg! Encore!"
	done
; 0x195516

CooltrainerLolaAfterRematch: ; 0x195516
	text "Les dragons sont"
	line "peut-être faibles"
	cont "face aux attaques"
	cont "de types DRAGON."

	para "Mais ils savent"
	line "se battre!"
	done
; 0x195544

ClairMeetMeInDragonsDenText:
	text "Laisse-moi"
	line "deviner<...>"

	para "Tu veux une"
	line "revanche?"

	para "Très bien. Rendez-"
	line "vous a l'AUTEL DU"
	cont "DRAGON."

	para "Tu te souviens où"
	line "c'est?"

	para "Je t'attends là-"
	line "bas."
	done

ClairRejectNoMtMoonText:
	text "Laisse-moi"
	line "deviner<...>"

	para "Tu veux une"
	line "revanche?"

	para "Ce sera plus tard."

	para "Je m'entraîne avec"
	line "les aînés aujourd'"
	cont "hui?"

	done

ClairRejectText:
	text "Laisse-moi"
	line "deviner<...>"

	para "Tu veux une"
	line "revanche?"

	para "Ce n'est pas"
	line "l'envie qui me"
	cont "manque<...>"

	para "Il y a ce garçon"
	line "au cheveux rouge"

	para "qui s'entraîne à"
	line "l'ANTRE du DRAGON."

	para "Il fait une fixa-"
	line "tion sur son"

	para "besoin d'être plus"
	line "fort pour se mesu-"
	cont "rer à toi."

	para "Je l'ai vu tourner"
	line "autour du PLATEAU"
	cont "INDIGO certains"
	cont "jours de la"
	cont "semaine."

	para "Je me prépare pen-"
	line "dant que tu règles"
	cont "cette histoire."

	done

ClairFullyDefeatedText:
	text "Merci pour cette"
	line "revanche."

	para "Etre un dresseur"
	line "aussi fort que toi"
	para "a toujours été mon"
	line "rêve, <PLAY_G>"

	para "Je n'aurais pas pu"
	line "imaginer un meil-"
	
	para "leur endroit que"
	line "l'AUTEL du DRAGON"
	
	para "pour affronter un"
	line "adversaire comme"
	cont "toi."

	para "Bonne chance pour"
	line "la suite!"

	done

BlackthornGym2GuyText:
	text "Salut, CHAMPION!"

	para "SANDRA a remodelé"
	line "son arène pendant"
	cont "ton absence!"

	para "<...>Je ne sais pas"
	line "quand elle a trou-"
	cont "vé le temps de"
	cont "faire ça<...>"
	done

BlackthornGym2GuyWinText:
	text "J'ai appris la"
	line "nouvelle!"

	para "J'aurais aimé voir"
	line "le combat!"

	para "Félicitations,"
	line "CHAMPION!"
	done
	
ClairPostgameRematchScript:
    writetext ClairPostgameRematchText
    yesorno
    iffalse .return
    closetext
    loadtrainer CLAIR, 2
    winlosstext ClairPostgameBeatenText, 0
    startbattle
    returnafterbattle
    loadfont
    writetext ClairPostgameAfterText
    waitbutton
.return
    closetext
    end
	
ClairPostgameRematchText:
	text "Bienvenue, <PLAY_G>."

	para "Ce n'est peut-être"
	line "pas l'AUTEL du"
	cont "DRAGON<...>"

	para "Mais veux-tu com-"
	line "battre ici?"

	done
	
ClairPostgameBeatenText:
	text "<...>"
	
	para "Encore une fois,"
	line "je suis battue."
	done
	
ClairPostgameAfterText:
	text "Tu es un dresseur"
	line "unique en ton"
	cont "genre."

	para "Je dois continuer"
	line "mon entraînement."
	
	para "Bon courage,"
	line "<PLAY_G>."
	done

BlackthornGymRematch1F_MapEventHeader:
	; filler
	db 0, 0

	; warp
	db 12
	warp_def $17, $4, 1, GROUP_BLACKTHORN_CITY, MAP_BLACKTHORN_CITY
	warp_def $17, $5, 1, GROUP_BLACKTHORN_CITY, MAP_BLACKTHORN_CITY
	warp_def $15, $d, 1, GROUP_BLACKTHORNGYMREMATCH2F, MAP_BLACKTHORNGYMREMATCH2F
	warp_def $d, $5, 2, GROUP_BLACKTHORNGYMREMATCH2F, MAP_BLACKTHORNGYMREMATCH2F
	warp_def $9, $9, 3, GROUP_BLACKTHORNGYMREMATCH2F, MAP_BLACKTHORNGYMREMATCH2F
	warp_def $9, $3, 4, GROUP_BLACKTHORNGYMREMATCH2F, MAP_BLACKTHORNGYMREMATCH2F
	warp_def $3, $d, 5, GROUP_BLACKTHORNGYMREMATCH2F, MAP_BLACKTHORNGYMREMATCH2F
	warp_def $9, $f, 6, GROUP_BLACKTHORNGYMREMATCH2F, MAP_BLACKTHORNGYMREMATCH2F

	warp_def $d, $d, 9, GROUP_BLACKTHORNGYMREMATCH1F, MAP_BLACKTHORNGYMREMATCH1F
	warp_def $11, $7, 10, GROUP_BLACKTHORNGYMREMATCH1F, MAP_BLACKTHORNGYMREMATCH1F
	warp_def $d, $3, 11, GROUP_BLACKTHORNGYMREMATCH1F, MAP_BLACKTHORNGYMREMATCH1F
	warp_def $3, $9, 12, GROUP_BLACKTHORNGYMREMATCH1F, MAP_BLACKTHORNGYMREMATCH1F

	; coord event
	db 0

	; bg event
	db 2
	signpost 21, 3, $0, BlackthornGymRematchStatue
	signpost 21, 6, $0, BlackthornGymRematchStatue

	; object event
	db 5
	person_event SPRITE_CLAIR, 7, 8, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ClairTextScript, -1
	person_event SPRITE_GYM_GUY, 25, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, BlackthornGym2GuyScript, -1
	person_event SPRITE_COOLTRAINER_M, 10, 6, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerCooltrainermMikeRematch, -1
	person_event SPRITE_COOLTRAINER_M, 19, 14, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerCooltrainermPaulRematch, -1
	person_event SPRITE_COOLTRAINER_F, 6, 13, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, TrainerCooltrainerfLolaRematch, -1

