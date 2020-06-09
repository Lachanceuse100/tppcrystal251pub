OlivineGym_MapScriptHeader: ; 0x9c12d
	; trigger count
	db 0

	; callback count
	db 0
; 0x9c12f

JasmineScript_0x9c12f: ; 0x9c12f
	faceplayer
	loadfont
	checkevent EVENT_BEAT_ELM
	iftrue JasminePostgameRematchScript
	checkevent EVENT_JASMINE_REMATCH
	iftrue JasmineAfterRematch
	checkevent EVENT_SET_BY_OAK_AFTER_16_BADGES
	iftrue JasmineRematchScript
	checkevent EVENT_BEAT_JASMINE
	iftrue UnknownScript_0x9c159
	writetext UnknownText_0x9c1b9
	waitbutton
	closetext
	winlosstext UnknownText_0x9c2bb, $0000
	loadtrainer JASMINE, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_JASMINE
	loadfont
	writetext UnknownText_0x9c33a
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_MINERALBADGE
	checkcode VAR_BADGES
	scall UnknownScript_0x9c178
UnknownScript_0x9c159: ; 0x9c159
	checkevent EVENT_GOT_TM23_IRON_TAIL
	iftrue UnknownScript_0x9c172
	writetext UnknownText_0x9c354
	buttonsound
	verbosegiveitem TM_FLASH_CANNON, 1
	iffalse UnknownScript_0x9c176
	setevent EVENT_GOT_TM23_IRON_TAIL
	writetext UnknownText_0x9c3a5
	waitbutton
	closetext
	end
; 0x9c172

JasmineRematchScript:
	writetext JasmineRematchTextBefore
	waitbutton
	closetext
	winlosstext JasmineRematchBeatenText, $0000
	loadtrainer JASMINE, 2
	startbattle
	returnafterbattle
	setevent EVENT_JASMINE_REMATCH
	loadfont

JasmineAfterRematch:
	writetext JasmineAfterRematchText
	waitbutton
	closetext
	end

UnknownScript_0x9c172: ; 0x9c172
	writetext UnknownText_0x9c3d1
	waitbutton
UnknownScript_0x9c176: ; 0x9c176
	closetext
	end
; 0x9c178

UnknownScript_0x9c178: ; 0x9c178
	if_equal $7, UnknownScript_0x9c184
	if_equal $6, UnknownScript_0x9c181
	end
; 0x9c181

UnknownScript_0x9c181: ; 0x9c181
	jumpstd goldenrodrockets
; 0x9c184

UnknownScript_0x9c184: ; 0x9c184
	jumpstd radiotowerrockets
; 0x9c187

OlivineGymGuyScript: ; 0x9c187
	faceplayer
	checkevent EVENT_BEAT_JASMINE
	iftrue .OlivineGymGuyWinScript
	checkevent EVENT_JASMINE_RETURNED_TO_GYM
	iffalse .OlivineGymGuyPreScript
	loadfont
	writetext OlivineGymGuyText
	waitbutton
	closetext
	end
; 0x9c19b

.OlivineGymGuyWinScript
	loadfont
	writetext OlivineGymGuyWinText
	waitbutton
	closetext
	end
; 0x9c1a2

.OlivineGymGuyPreScript
	loadfont
	writetext OlivineGymGuyPreText
	waitbutton
	closetext
	end
; 0x9c1a9

MapOlivineGymSignpost1Script: ; 0x9c1a9
	checkflag ENGINE_MINERALBADGE
	iftrue UnknownScript_0x9c1b2
	jumpstd gymstatue1
; 0x9c1b2

UnknownScript_0x9c1b2: ; 0x9c1b2
	trainertotext JASMINE, 1, $1
	jumpstd gymstatue2
; 0x9c1b9

UnknownText_0x9c1b9: ; 0x9c1b9
	text "<...>Merci pour ton"
	line "aide au PHARE<...>"

	para "Mais c'est un peu"
	line "différent."

	para "Permets-moi de me"
	line "présenter."

	para "Je suis JASMINE,"
	line "CHAMPIONNE d'ARENE"
	cont "et j'utilise les"
	cont "#MON de type"
	cont "ACIER."

	para "<...>Est-ce que ça te"
	line "dit quelque chose?"

	para "C'est un tout"
	line "nouveau type de"
	cont "#MON."

	para "<...>Hum<...> Je peux"
	line "commencer?"
	done
; 0x9c2bb

JasmineRematchTextBefore:
	text "<...>Bonjour, <PLAYER>."

	para "<...>Oh<...> Tu veux un"
	line "nouveau match?"
	done

JasmineRematchBeatenText:
	text "Fidèle à ta"
	line "réputation<...>"
	done


JasmineAfterRematchText:
	text "<...>Tu es meilleur"
	line "que moi."

	para "C'est dur à dire<...>"

	para "Mais<...>"

	para "Bonne chance."
	done

UnknownText_0x9c2bb: ; 0x9c2bb
	text "<...>Tu es meilleur"
	line "dresseur que moi,"

	para "en compétence et"
	line "en gentillesse."

	para "En accord avec les"
	line "règles de la"

	para "LIGUE, je te"
	line "confie ce BADGE."
	done
; 0x9c33a

UnknownText_0x9c33a: ; 0x9c33a
	text "<PLAYER> reçoit"
	line "le BADGEMINERAL."
	done
; 0x9c354

UnknownText_0x9c354: ; 0x9c354
	text "Le BADGEMINERAL"
	line "augmente la"
	cont "DEFENSE de tes"
	cont "#MON."

	para "<...>Hum<...> Prends"
	line "ceci aussi<...>"
	done
; 0x9c393

UnknownText_0x9c393: ; 0x9c393
	text "<PLAYER> reçoit"
	line "CT09!"
	done
; 0x9c3a5

UnknownText_0x9c3a5: ; 0x9c3a5
	text "<...>Tu peux utiliser"
	line "cette CT pour"
	cont "apprendre"
	cont "LUMINOCANON à un"
	cont "#MON."
	done
; 0x9c3d1

UnknownText_0x9c3d1: ; 0x9c3d1
	text "Hum<...> Je ne sais"
	line "comment le dire<...>"
	cont "Mais bonne chance!"
	done
; 0x9c402

OlivineGymGuyText: ; 0x9c402
	text "JASMINE utilise"
	line "le nouveau type"
	cont "ACIER."

	para "Je ne sais pas"
	line "grand chose"
	cont "dessus."
	done
; 0x9c451

OlivineGymGuyWinText: ; 0x9c451
	text "C'est étrange le"
	line "type ACIER, hein?"

	para "C'est la rencon-"
	line "tre d'un nouveau"
	cont "genre!"
	done
; 0x9c4a8

OlivineGymGuyPreText: ; 0x9c4a8
	text "JASMINE, la"
	line "CHAMPIONNE d'ARENE"
	cont "est au PHARE."

	para "Elle s'occupe du"
	line "#MON malade."

	para "Un dresseur puis-"
	line "sant doit avoir un"
	cont "coeur charitable"
	cont "et être"
	cont "bienveillant."
	done
; 0x9c526

JasminePostgameRematchScript:
    writetext JasminePostgameRematchText
    yesorno
    iffalse .return
    closetext
    loadtrainer JASMINE, 2
    winlosstext JasminePostgameBeatenText, 0
    startbattle
    returnafterbattle
    loadfont
    writetext JasminePostgameAfterText
    waitbutton
.return
    closetext
    end
	
JasminePostgameRematchText:
	text "<...>Oh! Salut!"

	para "<...>Tu veux"
	line "recombattre?"

	done
	
JasminePostgameBeatenText:
	text "<...>Oh<...>"
	
	para "Tu as toujours"
	line "autant de talent<...>"
	done
	
JasminePostgameAfterText:

	text "<...>Hum<...>"

	para "Merci pour d'avoir"
	line "combattu contre"
	cont "moi<...>"
	
	para "<...>J'ai beaucoup"
	line "apprécié!"
	done

OlivineGym_MapEventHeader: ; 0x9c526
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $f, $4, 2, GROUP_OLIVINE_CITY, MAP_OLIVINE_CITY
	warp_def $f, $5, 2, GROUP_OLIVINE_CITY, MAP_OLIVINE_CITY

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 13, 3, $0, MapOlivineGymSignpost1Script
	signpost 13, 6, $0, MapOlivineGymSignpost1Script

	; people-events
	db 2
	person_event SPRITE_JASMINE, 7, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, JasmineScript_0x9c12f, EVENT_JASMINE_IN_OLIVINE_GYM
	person_event SPRITE_GYM_GUY, 17, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, OlivineGymGuyScript, -1
; 0x9c55a

