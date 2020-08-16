VermilionGym_MapScriptHeader: ; 0x1920a3
	; trigger count
	db 0

	; callback count
	db 1
	dbw 1, VermilionGymDoorsScript
; 0x1920a5

VermilionGymDoorsScript:
	checkevent EVENT_VERMILION_DOOR_2
	iffalse .closed
	changeblock 4, 4, 1
	return

.closed
	checkevent EVENT_VERMILION_DOOR_1
	iffalse .resample
	clearevent EVENT_VERMILION_DOOR_1
.resample
	callasm SampleVermilionTrashCan
	return

SurgeScript_0x1920a5: ; 0x1920a5
	faceplayer
	loadfont
	checkflag ENGINE_THUNDERBADGE
	iftrue UnknownScript_0x1920d9
	writetext UnknownText_0x192142
	waitbutton
	closetext
	winlosstext UnknownText_0x192238, $0000
	loadtrainer LT_SURGE, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_LTSURGE
	setevent EVENT_BEAT_GENTLEMAN_GREGORY
	setevent EVENT_BEAT_GUITARIST_VINCENT
	setevent EVENT_BEAT_JUGGLER_HORTON
	loadfont
	writetext UnknownText_0x192277
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_THUNDERBADGE
	writetext UnknownText_0x192291
	waitbutton
	verbosegiveitem TM_WILD_CHARGE, 1
	writetext SurgeLastText
	waitbutton
	closetext
	end
; 0x1920d9

UnknownScript_0x1920d9: ; 0x1920d9
	writetext UnknownText_0x192303
	waitbutton
	closetext
	end
; 0x1920df

TrainerGentlemanGregory: ; 0x1920df
	; bit/flag number
	dw $49c

	; trainer group && trainer id
	db GENTLEMAN, GREGORY

	; text when seen
	dw GentlemanGregorySeenText

	; text when trainer beaten
	dw GentlemanGregoryBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GentlemanGregoryScript
; 0x1920eb

GentlemanGregoryScript: ; 0x1920eb
	talkaftercancel
	loadfont
	writetext UnknownText_0x1923b0
	waitbutton
	closetext
	end
; 0x1920f3

TrainerGuitaristVincent: ; 0x1920f3
	; bit/flag number
	dw $494

	; trainer group && trainer id
	db GUITARIST, VINCENT

	; text when seen
	dw GuitaristVincentSeenText

	; text when trainer beaten
	dw GuitaristVincentBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GuitaristVincentScript
; 0x1920ff

GuitaristVincentScript: ; 0x1920ff
	talkaftercancel
	loadfont
	writetext UnknownText_0x19244b
	waitbutton
	closetext
	end
; 0x192107

TrainerJugglerHorton: ; 0x192107
	; bit/flag number
	dw $497

	; trainer group && trainer id
	db JUGGLER, HORTON

	; text when seen
	dw JugglerHortonSeenText

	; text when trainer beaten
	dw JugglerHortonBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw JugglerHortonScript
; 0x192113

JugglerHortonScript: ; 0x192113
	talkaftercancel
	loadfont
	writetext UnknownText_0x1924d6
	waitbutton
	closetext
	end
; 0x19211b

VermilionGymGuyScript: ; 0x19211b
	faceplayer
	loadfont
	checkevent EVENT_BEAT_LTSURGE
	iftrue .VermilionGymGuyWinScript
	writetext VermilionGymGuyText
	waitbutton
	closetext
	end

.VermilionGymGuyWinScript
	writetext VermilionGymGuyWinText
	waitbutton
	closetext
	end
; 0x19212f

MapVermilionGymTrashcanScript:
	checkevent EVENT_VERMILION_DOOR_2
	iftrue .trashcan
	callasm CheckVermilionTrashCan
	iftrue .open_lock
	checkevent EVENT_VERMILION_DOOR_1
	iftrue .reset_switches
.trashcan
	jumpstd trashcan

.open_lock
	loadfont
	writetext Text_FoundSwitch
	playsound SFX_PUSH_BUTTON
	buttonsound
	checkevent EVENT_VERMILION_DOOR_1
	iftrue .second_switch
	setevent EVENT_VERMILION_DOOR_1
	writetext Text_FoundFirstSwitch
	waitbutton
	closetext
	end

.second_switch
	setevent EVENT_VERMILION_DOOR_2
	writetext Text_FoundSecondSwitch
	playsound SFX_ENTER_DOOR
	changeblock 4, 4, 1
	waitbutton
	closetext
	end

.reset_switches
	loadfont
	writetext UnknownText_0x19261e
	buttonsound
	writetext Text_ResetSwitches
	playsound SFX_WRONG
	waitbutton
	closetext
	callasm SampleVermilionTrashCan
	clearevent EVENT_VERMILION_DOOR_1
	end

MapVermilionGymSignpost16Script: ; 0x192132
	trainertotext LT_SURGE, 1, $1
	checkflag ENGINE_THUNDERBADGE
	iftrue UnknownScript_0x19213b
	jumpstd gymstatue1
; 0x19213b

UnknownScript_0x19213b: ; 0x19213b
	jumpstd gymstatue2
; 0x192142

Text_FoundSwitch:
	text "Un interrupteur en"
	line "dessous de la"
	cont "poubelle?"

	para "Appuyons!"
	done

Text_FoundFirstSwitch:
	text "La première bar-"
	line "rière électrique"
	cont "s'ouvre!"
	done

Text_FoundSecondSwitch:
	text "La seconde bar-"
	line "rière électrique"
	cont "s'ouvre!"
	done

Text_ResetSwitches:
	text "Oh non! Les bar-"
	line "rières se reme"
	done

UnknownText_0x192142: ; 0x192142
	text "BOB: Hé! P'tite"
	line "tête!"

	para "C'est pas malin de"
	line "me défier, mais ça"

	para "demande du cran,"
	line "je te l'accorde!"

	para "Moi j'suis le boss"
	line "des #MON"
	cont "électriques!"

	para "Je n'ai jamais"
	line "perdu sur le champ"
	cont "de bataille."

	para "Je vais t'électro-"
	line "cuter comme à la"
	cont "guerre!"
	done
; 0x192238

UnknownText_0x192238: ; 0x192238
	text "BOB: Arrrgh!"
	line "T'es trop fort!"

	para "OK. Voilà ton"
	line "BADGE FOUDRE!"
	done
; 0x192277

UnknownText_0x192277: ; 0x192277
	text "<PLAYER> reçoit"
	line "le BADGE FOUDRE."
	done
; 0x192291

UnknownText_0x192291: ; 0x192291
	text "BOB: Le BADGE FOU-"
	line "DRE augmente la"
	cont "VITESSE de tes"
	cont "#MON."

	para "Tiens, prends ça"
	line "aussi!"
	done

SurgeLastText:
	text "BOB: C'est ECLAIR"
	line "FOU."

	para "Une bonne châtai-"
	line "gne pour les #-"
	cont "MON électrique!"

	para "C'est bien pour"
	line "les startégies de"
	cont "choc!"

	para "Considère ça comme"
	line "la preuve de ta"
	cont "victoire."

	para "Porte-le fière-"
	line "ment, compris?!"

	done
; 0x192303

UnknownText_0x192303: ; 0x192303
	text "BOB: Hé! P'tite"
	line "tête! Tu tiens le"
	cont "coup?"

	para "Moi et mes #MON"
	line "on a la pêche!"
	done
; 0x192356

GentlemanGregorySeenText: ; 0x192356
	text "Tu viens défier le"
	line "MAJOR BOB?"

	para "C'est ce qu'on va"
	line "voir!"
	done
; 0x19238c

GentlemanGregoryBeatenText: ; 0x19238c
	text "Pardon, MAJOR BOB!"
	done
; 0x1923b0

UnknownText_0x1923b0: ; 0x1923b0
	text "A l'armée, le"
	line "MAJOR BOB m'a"
	cont "sauvé la vie."
	done
; 0x1923e8

GuitaristVincentSeenText: ; 0x1923e8
	text "Le MAJOR BOB a foi"
	line "en mes talents de"

	para "dresseur de #-"
	line "MON électriques."

	para "Tu crois pouvoir"
	line "me battre?"
	done
; 0x192437

GuitaristVincentBeatenText: ; 0x192437
	text "Ooh, quel choc!"
	done
; 0x19244b

UnknownText_0x19244b: ; 0x19244b
	text "Les pièges de"
	line "l'ARENE t'arrête-"
	cont "ront!"
	done
; 0x192487

JugglerHortonSeenText: ; 0x192487
	text "J'suis le meilleur"
	line "jongleur de KANTO!"
	done
; 0x1924ba

JugglerHortonBeatenText: ; 0x1924ba
	text "Oups!"
	done
; 0x1924d6

UnknownText_0x1924d6: ; 0x1924d6
	text "Je ne peux en"
	line "jongler que trois"
	cont "en même succube."
	done
; 0x192517

VermilionGymGuyText: ; 0x192517
	text "Salut, champion en"
	line "herbe!"

	para "T'as pas de"
	line "chance."

	para "Le MAJOR BOMB est"
	line "très prudent."

	para "Il a posé des piè-"
	line "ges dans l'ARENE."

	para "Tu peux les désac-"
	line "tiver grâce aux"
	cont "interrupteurs dans"
	cont "les poubelles."

	para "Mais si tu te"
	line "trompes, tu repars"
	cont "à zéro."

	para "Bonne chance!"

	done
; 0x1925df

VermilionGymGuyWinText: ; 0x1925df
	text "Pfoui! Quel combat"
	line "sous tension!"

	para "Ca m'a rendu"
	line "nerveux."
	done
; 0x19261e

UnknownText_0x19261e: ; 0x19261e
	text "Non, rien que des"
	line "déchets."
	done
; 0x19263d

VermilionGym_MapEventHeader: ; 0x19263d
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $11, $4, 7, GROUP_VERMILION_CITY, MAP_VERMILION_CITY
	warp_def $11, $5, 7, GROUP_VERMILION_CITY, MAP_VERMILION_CITY

	; xy triggers
	db 0

	; signposts
	db 17
	signpost  7, 1, $0, MapVermilionGymTrashcanScript
	signpost  7, 3, $0, MapVermilionGymTrashcanScript
	signpost  7, 5, $0, MapVermilionGymTrashcanScript
	signpost  7, 7, $0, MapVermilionGymTrashcanScript
	signpost  7, 9, $0, MapVermilionGymTrashcanScript
	signpost  9, 1, $0, MapVermilionGymTrashcanScript
	signpost  9, 3, $0, MapVermilionGymTrashcanScript
	signpost  9, 5, $0, MapVermilionGymTrashcanScript
	signpost  9, 7, $0, MapVermilionGymTrashcanScript
	signpost  9, 9, $0, MapVermilionGymTrashcanScript
	signpost 11, 1, $0, MapVermilionGymTrashcanScript
	signpost 11, 3, $0, MapVermilionGymTrashcanScript
	signpost 11, 5, $0, MapVermilionGymTrashcanScript
	signpost 11, 7, $0, MapVermilionGymTrashcanScript
	signpost 11, 9, $0, MapVermilionGymTrashcanScript
	signpost 15, 3, $0, MapVermilionGymSignpost16Script
	signpost 15, 6, $0, MapVermilionGymSignpost16Script

	; people-events
	db 5
	person_event SPRITE_SURGE, 6, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, SurgeScript_0x1920a5, -1
	person_event SPRITE_GENTLEMAN, 12, 12, $8, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 4, TrainerGentlemanGregory, -1
	person_event SPRITE_ROCKER, 11, 8, $6, 0, 3, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerGuitaristVincent, -1
	person_event SPRITE_SUPER_NERD, 14, 4, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 4, TrainerJugglerHorton, -1
	person_event SPRITE_GYM_GUY, 19, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 1, VermilionGymGuyScript, -1
; 0x1926e3

SampleVermilionTrashCan:
	ld a, [rSVBK]
	push af
	ld a, 3
	ld [rSVBK], a
.loop
	call Random
	and $3f
	cp 38
	jr nc, .loop
	ld [w3_d800], a
	xor a
	ld [w3_d801], a
	pop af
	ld [rSVBK], a
	ret

CheckVermilionTrashCan:
	call GetFacingTileCoord
	ld hl, .CoordTable
	ld a, d
	swap a
	or e
	push af
	ld de, 3
	call IsInArray
	pop bc
	jr nc, .nope_no_pop
	ld a, [rSVBK]
	push af
	ld a, 3
	ld [rSVBK], a
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [w3_d800]
	ld de, 1
	push bc
	call IsInArray
	pop bc
	jr nc, .nope
	ld a, [w3_d801]
	and a
	jr z, .set
	cp b
	jr z, .nope
	pop af
	ld [rSVBK], a
	ld a, 2
	jr .done

.set
	ld a, b
	ld [w3_d801], a
	pop af
	ld [rSVBK], a
	ld a, 1
	jr .done
.nope
	pop af
	ld [rSVBK], a
.nope_no_pop
	xor a
.done
	ld [ScriptVar], a
	ret

.CoordTable
vermtrashcan: MACRO
	dn \1 + 4, \2 + 4
	dw \3
endm
	vermtrashcan  1,  7, .Set1_1
	vermtrashcan  3,  7, .Set2_1
	vermtrashcan  5,  7, .Set3_1
	vermtrashcan  7,  7, .Set4_1
	vermtrashcan  9,  7, .Set5_1
	vermtrashcan  1,  9, .Set1_2
	vermtrashcan  3,  9, .Set2_2
	vermtrashcan  5,  9, .Set3_2
	vermtrashcan  7,  9, .Set4_2
	vermtrashcan  9,  9, .Set5_2
	vermtrashcan  1, 11, .Set1_3
	vermtrashcan  3, 11, .Set2_3
	vermtrashcan  5, 11, .Set3_3
	vermtrashcan  7, 11, .Set4_3
	vermtrashcan  9, 11, .Set5_3
	db $ff

.Set1_1
	db 0, 12, 22, -1
.Set2_1
	db 0, 1, 14, 23, 26, -1
.Set3_1
	db 1, 2, 16, 27, 30, -1
.Set4_1
	db 2, 3, 18, 31, 34, -1
.Set5_1
	db 3, 20, 35, -1
.Set1_2
	db 4, 12, 13, 23, 24, -1
.Set2_2
	db 4, 5, 14, 15, 22, 25, 27, 28, -1
.Set3_2
	db 5, 6, 16, 17, 26, 29, 31, 32, -1
.Set4_2
	db 6, 7, 18, 19, 30, 33, 35, 36, -1
.Set5_2
	db 7, 20, 21, 35, 37, -1
.Set1_3
	db 8, 13, 25, -1
.Set2_3
	db 8, 9, 15, 24, 29, -1
.Set3_3
	db 9, 10, 17, 28, 33, -1
.Set4_3
	db 10, 11, 19, 32, 37, -1
.Set5_3
	db 11, 21, 36, -1
