FuchsiaGym_MapScriptHeader: ; 0x195db7
	; trigger count
	db 0

	; callback count
	db 0
; 0x195db9

JanineScript_0x195db9: ; 0x195db9
	checkflag ENGINE_SOULBADGE
	iftrue UnknownScript_0x195e00
	applymovement $2, MovementData_0x195f27
	faceplayer
	loadfont
	writetext UnknownText_0x195f35
	waitbutton
	closetext
	winlosstext UnknownText_0x195fa1, $0000
	loadtrainer JANINE, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_JANINE
	setevent EVENT_BAT_LASS_ALICE
	setevent EVENT_BEAT_LASS_LINDA
	setevent EVENT_BEAT_PICNICKER_CINDY
	setevent EVENT_BEAT_CAMPER_BARRY
	variablesprite $7, $28
	variablesprite $8, $28
	variablesprite $9, $28
	variablesprite $a, $27
	special Function14209
	loadfont
	writetext UnknownText_0x195feb
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_SOULBADGE
	jump UnknownScript_0x195e02
; 0x195e00

UnknownScript_0x195e00: ; 0x195e00
	faceplayer
	loadfont
UnknownScript_0x195e02: ; 0x195e02
	checkevent EVENT_GOT_TM06_TOXIC
	iftrue UnknownScript_0x195e15
	writetext UnknownText_0x196002
	buttonsound
	verbosegiveitem TM_TOXIC, 1
	iffalse UnknownScript_0x195e15
	setevent EVENT_GOT_TM06_TOXIC
UnknownScript_0x195e15: ; 0x195e15
	writetext UnknownText_0x196074
	waitbutton
	closetext
	end
; 0x195e1b

FuschiaGym1Script_0x195e1b: ; 0x195e1b
	checkevent EVENT_BAT_LASS_ALICE
	iftrue UnknownScript_0x195e2c
	applymovement $3, MovementData_0x195f27
	faceplayer
	variablesprite $7, $28
	special Function14209
UnknownScript_0x195e2c: ; 0x195e2c
	faceplayer
	loadfont
	checkevent EVENT_BAT_LASS_ALICE
	iftrue UnknownScript_0x195e4f
	writetext UnknownText_0x1960e6
	waitbutton
	closetext
	winlosstext UnknownText_0x196126, $0000
	loadtrainer LASS, ALICE
	startbattle
	iftrue UnknownScript_0x195e4a
	returnafterbattle
	setevent EVENT_BAT_LASS_ALICE
	end
; 0x195e4a

UnknownScript_0x195e4a: ; 0x195e4a
	variablesprite $7, $a
	returnafterbattle
	end
; 0x195e4f

UnknownScript_0x195e4f: ; 0x195e4f
	writetext UnknownText_0x196139
	waitbutton
	closetext
	end
; 0x195e55

FuschiaGym2Script_0x195e55: ; 0x195e55
	checkevent EVENT_BEAT_LASS_LINDA
	iftrue UnknownScript_0x195e66
	applymovement $4, MovementData_0x195f27
	faceplayer
	variablesprite $8, $28
	special Function14209
UnknownScript_0x195e66: ; 0x195e66
	faceplayer
	loadfont
	checkevent EVENT_BEAT_LASS_LINDA
	iftrue UnknownScript_0x195e89
	writetext UnknownText_0x196166
	waitbutton
	closetext
	winlosstext UnknownText_0x19617b, $0000
	loadtrainer LASS, LINDA
	startbattle
	iftrue UnknownScript_0x195e84
	returnafterbattle
	setevent EVENT_BEAT_LASS_LINDA
	end
; 0x195e84

UnknownScript_0x195e84: ; 0x195e84
	variablesprite $8, $a
	returnafterbattle
	end
; 0x195e89

UnknownScript_0x195e89: ; 0x195e89
	writetext UnknownText_0x196199
	waitbutton
	closetext
	end
; 0x195e8f

FuschiaGym3Script_0x195e8f: ; 0x195e8f
	checkevent EVENT_BEAT_PICNICKER_CINDY
	iftrue UnknownScript_0x195ea0
	applymovement $5, MovementData_0x195f27
	faceplayer
	variablesprite $9, $28
	special Function14209
UnknownScript_0x195ea0: ; 0x195ea0
	faceplayer
	loadfont
	checkevent EVENT_BEAT_PICNICKER_CINDY
	iftrue UnknownScript_0x195ec3
	writetext UnknownText_0x1961bb
	waitbutton
	closetext
	winlosstext UnknownText_0x1961f1, $0000
	loadtrainer PICNICKER, CINDY
	startbattle
	iftrue UnknownScript_0x195ebe
	returnafterbattle
	setevent EVENT_BEAT_PICNICKER_CINDY
	end
; 0x195ebe

UnknownScript_0x195ebe: ; 0x195ebe
	variablesprite $9, $a
	returnafterbattle
	end
; 0x195ec3

UnknownScript_0x195ec3: ; 0x195ec3
	writetext UnknownText_0x19620c
	waitbutton
	closetext
	end
; 0x195ec9

FuschiaGym4Script_0x195ec9: ; 0x195ec9
	checkevent EVENT_BEAT_CAMPER_BARRY
	iftrue UnknownScript_0x195eda
	applymovement $6, MovementData_0x195f27
	faceplayer
	variablesprite $a, $27
	special Function14209
UnknownScript_0x195eda: ; 0x195eda
	faceplayer
	loadfont
	checkevent EVENT_BEAT_CAMPER_BARRY
	iftrue UnknownScript_0x195efd
	writetext UnknownText_0x196228
	waitbutton
	closetext
	winlosstext UnknownText_0x19624a, $0000
	loadtrainer CAMPER, BARRY
	startbattle
	iftrue UnknownScript_0x195ef8
	returnafterbattle
	setevent EVENT_BEAT_CAMPER_BARRY
	end
; 0x195ef8

UnknownScript_0x195ef8: ; 0x195ef8
	variablesprite $a, $a
	returnafterbattle
	end
; 0x195efd

UnknownScript_0x195efd: ; 0x195efd
	writetext UnknownText_0x19626b
	waitbutton
	closetext
	end
; 0x195f03

FuchsiaGymGuyScript: ; 0x195f03
	faceplayer
	loadfont
	checkevent EVENT_BEAT_JANINE
	iftrue .FuchsiaGymGuyWinScript
	writetext FuchsiaGymGuyText
	waitbutton
	closetext
	end

.FuchsiaGymGuyWinScript
	writetext FuchsiaGymGuyWinText
	waitbutton
	closetext
	end
; 0x195f17

MapFuchsiaGymSignpost1Script: ; 0x195f17
	trainertotext JANINE, 1, $1
	checkflag ENGINE_SOULBADGE
	iftrue UnknownScript_0x195f20
	jumpstd gymstatue1
; 0x195f20

UnknownScript_0x195f20: ; 0x195f20
	jumpstd gymstatue2
; 0x195f27

MovementData_0x195f27: ; 0x195f27
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	step_end
; 0x195f35

UnknownText_0x195f35: ; 0x195f35
	text "Gnah ha ha ha!"

	para "Désolée de te dé-"
	line "cevoir mais<...>"

	para "Non, je plaisante!"

	para "C'est bien moi la"
	line "vraie!"

	para "JEANNINE de l'ARE-"
	line "NE de PARMANIE, la"
	cont "seule, l'unique!"
	done
; 0x195fa1

UnknownText_0x195fa1: ; 0x195fa1
	text "JEANNINE: T'as du"
	line "talent, toi. Ce"

	para "n'était certaine-"
	line "ment pas de la"

	para "chance, ta"
	line "victoire."

	para "Prends ce BADGE"
	line "AME."
	done
; 0x195feb

UnknownText_0x195feb: ; 0x195feb
	text "<PLAYER> reçoit"
	line "le BADGE AME."
	done
; 0x196002

UnknownText_0x196002: ; 0x196002
	text "JEANNINE: J'ai un"
	line "cadeau pour toi!"

	para "C'est TOXIK, un"
	line "puissant poison"

	para "qui vide les PV"
	line "de la victime."
	done
; 0x196074

UnknownText_0x196074: ; 0x196074
	text "JEANNINE: Je vais"
	line "encore m'entraîner"
	cont "et m'améliorer."

	para "Je serais plus"
	line "forte que toi et"
	cont "mon papa!"
	done

UnknownText_0x1960e6: ; 0x1960e6
	text "Gnahaha!"

	para "Je suis JEANNINE,"
	line "la CHAMPIONNE de"
	cont "l'ARENE!"

	para "Non, je plaisante!"
	line "Je t'ai bien eu!"
	done
; 0x196126

UnknownText_0x196126: ; 0x196126
	text "M'en fiche, je"
	line "t'ai eu!"
	done
; 0x196139

UnknownText_0x196139: ; 0x196139
	text "Comment vas-tu"
	line "reconnaître la"
	cont "vraie CHAMPIONNE?"
	done
; 0x196166

UnknownText_0x196166: ; 0x196166
	text "Tu m'as crue!"
	line "Hahaha! Débile!"
	done
; 0x19617b

UnknownText_0x19617b: ; 0x19617b
	text "Comme quoi, il ne"
	line "faut pas se fier"
	cont "aux apparences!"
	done
; 0x196199

UnknownText_0x196199: ; 0x196199
	text "Alors? Il était"
	line "comment mon"
	cont "déguisement?"
	done
; 0x1961bb

UnknownText_0x1961bb: ; 0x1961bb
	text "Je suis JEANNINE!"

	para "<...> Tu me crois,"
	line "pas vrai?"

	para "COMBAT!"
	done
; 0x1961f1

UnknownText_0x1961f1: ; 0x1961f1
	text "Zut! Je voulais"
	line "gagner!"
	done
; 0x19620c

UnknownText_0x19620c: ; 0x19620c
	text "Alors?"
	line "Tu fatigues?"
	done
; 0x196228

UnknownText_0x196228: ; 0x196228
	text "Wahahaha!"

	para "Je suis JEANNINE!"
	line "Je te jure!"
	done
; 0x19624a

UnknownText_0x19624a: ; 0x19624a
	text "C'est trop bien de"
	line "se déguiser!"
	done
; 0x19626b

UnknownText_0x19626b: ; 0x19626b
	text "Alors, je suis"
	line "mimi en fille?"
	done
; 0x196299

FuchsiaGymGuyText: ; 0x196299
	text "Salut, champion en"
	line "herbe!"

	para "Regarde autour de"
	line "toi: tous les"

	para "dresseurs ressem-"
	line "blent à JEANNINE."

	para "Sauras-tu trouver"
	line "la vraie?"
	done
; 0x196325

FuchsiaGymGuyWinText: ; 0x196325
	text "C'était un beau"
	line "combat, dresseur!"
	done
; 0x196353

FuchsiaGym_MapEventHeader: ; 0x196353
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $11, $4, 3, GROUP_FUCHSIA_CITY, MAP_FUCHSIA_CITY
	warp_def $11, $5, 3, GROUP_FUCHSIA_CITY, MAP_FUCHSIA_CITY

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 15, 3, $0, MapFuchsiaGymSignpost1Script
	signpost 15, 6, $0, MapFuchsiaGymSignpost1Script

	; people-events
	db 6
	person_event SPRITE_JANINE, 14, 5, $3, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, JanineScript_0x195db9, -1
	person_event SPRITE_FUCHSIA_GYM_1, 11, 9, $a, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, FuschiaGym1Script_0x195e1b, -1
	person_event SPRITE_FUCHSIA_GYM_2, 15, 9, $a, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, FuschiaGym2Script_0x195e55, -1
	person_event SPRITE_FUCHSIA_GYM_3, 8, 13, $a, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, FuschiaGym3Script_0x195e8f, -1
	person_event SPRITE_FUCHSIA_GYM_4, 6, 8, $a, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, FuschiaGym4Script_0x195ec9, -1
	person_event SPRITE_GYM_GUY, 19, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, FuchsiaGymGuyScript, -1
; 0x1963bb

