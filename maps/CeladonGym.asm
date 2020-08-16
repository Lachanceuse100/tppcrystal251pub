CeladonGym_MapScriptHeader: ; 0x72a68
	; trigger count
	db 0

	; callback count
	db 0
; 0x72a6a

ErikaScript_0x72a6a: ; 0x72a6a
	faceplayer
	loadfont
	checkevent EVENT_BEAT_ELM
	iftrue ErikaPostgameRematchScript
	checkevent EVENT_ERIKA_REMATCH
	iftrue ErikaAfterRematch
	checkevent EVENT_SET_BY_OAK_AFTER_16_BADGES
	iftrue ErikaRematchScript
	checkflag ENGINE_RAINBOWBADGE
	iftrue UnknownScript_0x72a9b
	writetext UnknownText_0x72b28
	waitbutton
	closetext
	winlosstext UnknownText_0x72c3e, $0000
	loadtrainer ERIKA, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_ERIKA
	setevent EVENT_BEAT_LASS_MICHELLE
	setevent EVENT_BEAT_PICNICKER_TANYA
	setevent EVENT_BEAT_BEAUTY_JULIA
	setevent EVENT_BEAT_TWINS_JO_AND_ZOE
	loadfont
	writetext UnknownText_0x72c96
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_RAINBOWBADGE
UnknownScript_0x72a9b: ; 0x72a9b
	checkevent EVENT_GOT_TM19_GIGA_DRAIN
	iftrue UnknownScript_0x72aae
	writetext UnknownText_0x72cb0
	buttonsound
	verbosegiveitem TM_GIGA_DRAIN, 1
	iffalse UnknownScript_0x72aae
	setevent EVENT_GOT_TM19_GIGA_DRAIN
UnknownScript_0x72aae: ; 0x72aae
	writetext UnknownText_0x72d8f
	waitbutton
	closetext
	end
; 0x72ab4

ErikaRematchScript:
	checkevent EVENT_FOUGHT_CELEBI
	iffalse ErikaReject
	writetext ErikaRematchTextBefore
	waitbutton
	closetext
	winlosstext ErikaRematchBeatenText, $0000
	loadtrainer ERIKA, 2
	startbattle
	returnafterbattle
	setevent EVENT_ERIKA_REMATCH
	loadfont
	jump ErikaAfterRematch

ErikaAfterRematch:
	writetext ErikaAfterRematchText
	waitbutton
	closetext
	end

ErikaReject:
	checkevent EVENT_BEAT_SIMON_5 ;if haven't beat simon
	iffalse ErikaRejectNoGSBall
	writetext ErikaRejectGSBall
	waitbutton
	closetext
	end


ErikaRejectNoGSBall:
	writetext ErikaRejectNoGSBallText
	waitbutton
	closetext
	end

ErikaRejectNoGSBallText:
	text "ERIKA: Oh, re-"
	line "bonjour."

	para "As-tu entendu"
	line "parler de LEO?"

	para "C'est un #-"
	line "MANIAC."

	para "Il a développé le"
	line "SYSTEME de STOCKA-"
	cont "GE de #MON!"

	para "Il est passé tout"
	line "à l'heure à la"

	para "vieille TENTE de"
	line "COMBAT."

	para "Il disait devoir"
	line "réparer quelque"
	cont "chose."

	para "C'était il y a"
	line "quelques jours<...>"

	para "Il y a plein de"
	line "rumeurs sur cet"
	cont "endroit."

	para "J'ai peur que"
	line "quelque chose lui"
	cont "soit arrivé."

	para "Pourrais-tu aller"
	line "voir pour moi?"
	done

ErikaRejectGSBall:
	text "ERIKA: Oh, quel"
	line "étrange objet tu"
	cont "as là."

	para "Une # BALL"
	line "d'or et d'argent<...>"

	para "Les légendes par-"
	line "lent d'un #MON"

	para "de type plante my-"
	line "thique lié a cette"
	cont "# BALL."

	para "Mon ami FARGAS à"
	line "ECORCIA en saurait"
	cont "plus."
	done

ErikaRematchTextBefore:
	text "ERIKA: Quel mer-"
	line "veilleux timing!"

	para "Ce #MON inhabi-"
	line "tuel est apparu."

	para "Il semble ravi de"
	line "te voir. Vous vous"
	cont "conaissez?"

	para "Il semble vouloir"
	line "se battre, vou-"
	cont "drais-tu bien?"

	para "Ne te retiens pas."

	done

ErikaRematchBeatenText:
	text "Nous admettons"
	line "notre défaite."
	done

ErikaAfterRematchText:
	text "ERIKA: Tu es deve-"
	line "nu si fort<...>"

	para "Ce serait un hon-"
	line "neur de me battre"

	para "encore contre toi,"
	line "un jour."
	done


TrainerLassMichelle: ; 0x72ab4
	; bit/flag number
	dw $51d

	; trainer group && trainer id
	db LASS, MICHELLE

	; text when seen
	dw LassMichelleSeenText

	; text when trainer beaten
	dw LassMichelleBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw LassMichelleScript
; 0x72ac0

LassMichelleScript: ; 0x72ac0
	talkaftercancel
	loadfont
	writetext UnknownText_0x72e30
	waitbutton
	closetext
	end
; 0x72ac8

TrainerPicnickerTanya: ; 0x72ac8
	; bit/flag number
	dw $490

	; trainer group && trainer id
	db PICNICKER, TANYA

	; text when seen
	dw PicnickerTanyaSeenText

	; text when trainer beaten
	dw PicnickerTanyaBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PicnickerTanyaScript
; 0x72ad4

PicnickerTanyaScript: ; 0x72ad4
	talkaftercancel
	loadfont
	writetext UnknownText_0x72e8e
	waitbutton
	closetext
	end
; 0x72adc

TrainerBeautyJulia: ; 0x72adc
	; bit/flag number
	dw $4ba

	; trainer group && trainer id
	db BEAUTY, JULIA

	; text when seen
	dw BeautyJuliaSeenText

	; text when trainer beaten
	dw BeautyJuliaBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw BeautyJuliaScript
; 0x72ae8

BeautyJuliaScript: ; 0x72ae8
	talkaftercancel
	loadfont
	writetext UnknownText_0x72f01
	waitbutton
	closetext
	end
; 0x72af0

TrainerTwinsJoandzoe1: ; 0x72af0
	; bit/flag number
	dw $468

	; trainer group && trainer id
	db TWINS, JOANDZOE1

	; text when seen
	dw TwinsJoandzoe1SeenText

	; text when trainer beaten
	dw TwinsJoandzoe1BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw TwinsJoandzoe1Script
; 0x72afc

TwinsJoandzoe1Script: ; 0x72afc
	talkaftercancel
	loadfont
	writetext UnknownText_0x72f70
	waitbutton
	closetext
	end
; 0x72b04

TrainerTwinsJoandzoe2: ; 0x72b04
	; bit/flag number
	dw $468

	; trainer group && trainer id
	db TWINS, JOANDZOE2

	; text when seen
	dw TwinsJoandzoe2SeenText

	; text when trainer beaten
	dw TwinsJoandzoe2BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw TwinsJoandzoe2Script
; 0x72b10

TwinsJoandzoe2Script: ; 0x72b10
	talkaftercancel
	loadfont
	writetext UnknownText_0x72fc0
	waitbutton
	closetext
	end
; 0x72b18

MapCeladonGymSignpost1Script: ; 0x72b18
	trainertotext ERIKA, 1, $1
	checkflag ENGINE_RAINBOWBADGE
	iftrue UnknownScript_0x72b21
	jumpstd gymstatue1
; 0x72b21

UnknownScript_0x72b21: ; 0x72b21
	jumpstd gymstatue2
; 0x72b28

UnknownText_0x72b28: ; 0x72b28
	text "ERIKA: Bonjour<...>"
	line "Belle journée,"
	cont "non?"

	para "C'est si plaisant<...>"

	para "<...>Je pourrais"
	line "m'endormir<...>"

	para "Moi je suis ERIKA,"
	line "CHAMPIONNE de"
	cont "l'ARENE de CELADO-"
	cont "POLE."

	para "<...>Oh? Tu es d'ici?"
	line "C'est bien<...>"

	para "<...>Pardon, je n'ai"
	line "pas réalisé que tu"

	para "m'as lancé un"
	line "défi."

	para "Très bien, mais je"
	line "ne perdrais pas!"
	done
; 0x72c3e

UnknownText_0x72c3e: ; 0x72c3e
	text "ERIKA: Oh!"
	line "J'admets ma"
	cont "défaite."

	para "Tu as une grande"
	line "force<...>"

	para "Je te confie ce"
	line "BADGE PRISME<...>"
	done
; 0x72c96

UnknownText_0x72c96: ; 0x72c96
	text "<PLAYER> reçoit le"
	line "BADGE PRISME."
	done
; 0x72cb0

UnknownText_0x72cb0: ; 0x72cb0
	text "ERIKA: C'était un"
	line "beau match."

	para "Je tiens à ce que"
	line "tu acceptes cette"
	cont "belle CT."

	para "C'est"
	line "GIGA-SANGSUE."

	para "Cette capacité"
	line "draine la moitié"

	para "des dégâts infli-"
	line "gés pour soigner"
	cont "ton #MON."

	para "Utilise-là si elle"
	line "te plaît<...>"
	done
; 0x72d8f

UnknownText_0x72d8f: ; 0x72d8f
	text "ERIKA: Perdre fait"
	line "toujours un peu"
	cont "mal, mais<...>"

	para "Combattre un bon"
	line "adversaire est"
	cont "stimulant<...>"
	done
; 0x72dfc

LassMichelleSeenText: ; 0x72dfc
	text "Ca t'étonne une"
	line "ARENE remplie"
	cont "de filles?"
	done
; 0x72e24

LassMichelleBeatenText: ; 0x72e24
	text "Oh!"
	done
; 0x72e30

UnknownText_0x72e30: ; 0x72e30
	text "Je ne faisais pas"
	line "attention, c'est"
	cont "tout!"
	done
; 0x72e53

PicnickerTanyaSeenText: ; 0x72e53
	text "Je m'entraînais"
	line "avec MORGANE, la"
	cont "CHAMPIONNE de l'"
	cont "ARENE de SAFRANIA"
	cont "autrefois."

	para "On a les mêmes"
	line "#MON!"
	done
; 0x72e7f

PicnickerTanyaBeatenText: ; 0x72e7f
	text "NOADKOKO, non<...>"
	done
; 0x72e8e

UnknownText_0x72e8e: ; 0x72e8e
	text "ERIKA, la cham-"
	line "pionne de cette"
	cont "arène, ne"
	cont "l'utilise pas."
	done
; 0x72ec5

BeautyJuliaSeenText: ; 0x72ec5
	text "C'est moi que tu"
	line "mates ou c'est les"
	cont "fleurs?"
	done
; 0x72ef2

BeautyJuliaBeatenText: ; 0x72ef2
	text "C'est pas bien!"
	done
; 0x72f01

UnknownText_0x72f01: ; 0x72f01
	text "Comment devenir"
	line "aussi jolie fille"
	cont "qu'ERIKA?"
	done
; 0x72f32

TwinsJoandzoe1SeenText: ; 0x72f32
	text "ERIKA nous a ap-"
	line "pris plein de"
	cont "nouveaux tours!"
	done
; 0x72f62

TwinsJoandzoe1BeatenText: ; 0x72f62
	text "Oh<...> On a perdu<...>"
	done
; 0x72f70

UnknownText_0x72f70: ; 0x72f70
	text "ERIKA!"
	line "Venge-nous!"
	done
; 0x72f91

TwinsJoandzoe2SeenText: ; 0x72f91
	text "On protègera"
	line "ERIKA!"
	done
; 0x72faf

TwinsJoandzoe2BeatenText: ; 0x72faf
	text "On a pas réussi<...>"
	done
; 0x72fc0

UnknownText_0x72fc0: ; 0x72fc0
	text "ERIKA est plus"
	line "forte que toi!"
	done
; 0x72fdf

ErikaPostgameRematchScript:
    writetext ErikaPostgameRematchText
    yesorno
    iffalse .return
    closetext
    loadtrainer ERIKA, 2
    winlosstext ErikaPostgameBeatenText, 0
    startbattle
    returnafterbattle
    loadfont
    writetext ErikaPostgameAfterText
    waitbutton
.return
    closetext
    end
	
ErikaPostgameRematchText:
	text "<...>"

	para "ERIKA: <...>Baille<...>"
	
	para "Oh! <PLAYER>!"
	
	para "Pardonne-moi! J'ai"
	line "failli m'endormir!"

	para "Qu'est-ce qu'il y"
	line "a? Tu veux com-"
	cont "battre?"
	done
	
ErikaPostgameBeatenText:
	text "Quel combat!"
	
	para "Je crois que je ne"
	line "suis pas complète-"
	cont "ment réveillée<...>"
	done
	
ErikaPostgameAfterText:
	text "ERIKA: <...>Baille<...>"

	para "Encore mes félici-"
	line "tations, <PLAYER>!"
	
	para "Tu n'en finis pas"
	line "de montrer ta"
	cont "force!"
	
	para "Maintenant, si tu"
	line "veux bien m'excu-"
	
	para "ser, je vais faire"
	line "une petite sieste<...>"
	done
	
CeladonGym_MapEventHeader: ; 0x72fdf
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $11, $4, 8, GROUP_CELADON_CITY, MAP_CELADON_CITY
	warp_def $11, $5, 8, GROUP_CELADON_CITY, MAP_CELADON_CITY

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 15, 3, $0, MapCeladonGymSignpost1Script
	signpost 15, 6, $0, MapCeladonGymSignpost1Script

	; people-events
	db 6
	person_event SPRITE_ERIKA, 7, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ErikaScript_0x72a6a, -1
	person_event SPRITE_LASS, 12, 11, $8, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 2, TrainerLassMichelle, -1
	person_event SPRITE_LASS, 12, 6, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 2, TrainerPicnickerTanya, -1
	person_event SPRITE_BUENA, 9, 7, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 2, TrainerBeautyJulia, -1
	person_event SPRITE_TWIN, 14, 8, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, TrainerTwinsJoandzoe1, -1
	person_event SPRITE_TWIN, 14, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, TrainerTwinsJoandzoe2, -1
; 0x73047

