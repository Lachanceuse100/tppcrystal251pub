RadioTower1F_MapScriptHeader: ; 0x5cd27
	; trigger count
	db 0

	; callback count
	db 0
; 0x5cd29

ReceptionistScript_0x5cd29: ; 0x5cd29
	faceplayer
	loadfont
	checkflag ENGINE_BIKE_SHOP_CALL_ENABLED
	iftrue UnknownScript_0x5cd37
	writetext UnknownText_0x5ce77
	waitbutton
	closetext
	end
; 0x5cd37

UnknownScript_0x5cd37: ; 0x5cd37
	writetext UnknownText_0x5ce81
	waitbutton
	closetext
	end
; 0x5cd3d

GentlemanScript_0x5cd3d: ; 0x5cd3d
	faceplayer
	loadfont
	writetext UnknownText_0x5ceba
	buttonsound
	special Functionc434
	iffalse UnknownScript_0x5cd4c
	special Functionc422
UnknownScript_0x5cd4c: ; 0x5cd4c
	special Function4d9d3
	checkflag ENGINE_LUCKY_NUMBER_SHOW
	iftrue UnknownScript_0x5cd84
	writetext UnknownText_0x5cf3a
	buttonsound
	closetext
	applymovement $6, MovementData_0x5ce71
	loadfont
	writetext UnknownText_0x5cf5a
	buttonsound
	waitsfx
	writetext UnknownText_0x5cf79
	playsound SFX_DEX_FANFARE_20_49
	waitsfx
	buttonsound
	special Function4d87a
	closetext
	applymovement $6, MovementData_0x5ce74
	loadfont
	if_equal $1, UnknownScript_0x5cd8a
	if_equal $2, UnknownScript_0x5cd9f
	if_equal $3, UnknownScript_0x5cdb4
	jump UnknownScript_0x5cdc9
; 0x5cd84

UnknownScript_0x5cd84: ; 0x5cd84
	writetext UnknownText_0x5cf7e
	waitbutton
	closetext
	end
; 0x5cd8a

UnknownScript_0x5cd8a: ; 0x5cd8a
	writetext UnknownText_0x5cfb5
	playsound SFX_1ST_PLACE
	waitsfx
	buttonsound
	giveitem MASTER_BALL, $1
	iffalse UnknownScript_0x5cdcf
	itemnotify
	setflag ENGINE_LUCKY_NUMBER_SHOW
	jump UnknownScript_0x5cd84
; 0x5cd9f

UnknownScript_0x5cd9f: ; 0x5cd9f
	writetext UnknownText_0x5d023
	playsound SFX_2ND_PLACE
	waitsfx
	buttonsound
	giveitem EXP_SHARE, $1
	iffalse UnknownScript_0x5cdcf
	itemnotify
	setflag ENGINE_LUCKY_NUMBER_SHOW
	jump UnknownScript_0x5cd84
; 0x5cdb4

UnknownScript_0x5cdb4: ; 0x5cdb4
	writetext UnknownText_0x5d076
	playsound SFX_3RD_PLACE
	waitsfx
	buttonsound
	giveitem PP_UP, $1
	iffalse UnknownScript_0x5cdcf
	itemnotify
	setflag ENGINE_LUCKY_NUMBER_SHOW
	jump UnknownScript_0x5cd84
; 0x5cdc9

UnknownScript_0x5cdc9: ; 0x5cdc9
	writetext UnknownText_0x5d0c0
	waitbutton
	closetext
	end
; 0x5cdcf

UnknownScript_0x5cdcf: ; 0x5cdcf
	writetext UnknownText_0x5d0e6
	waitbutton
	closetext
	end
; 0x5cdd5

CooltrainerFScript_0x5cdd5: ; 0x5cdd5
	faceplayer
	loadfont
	checkflag ENGINE_RADIO_CARD
	iftrue UnknownScript_0x5ce2d
	writetext UnknownText_0x5d12d
	yesorno
	iffalse UnknownScript_0x5ce4b
	writetext UnknownText_0x5d1f2
	yesorno
	iffalse UnknownScript_0x5ce42
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext UnknownText_0x5d231
	yesorno
	iffalse UnknownScript_0x5ce42
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext UnknownText_0x5d282
	yesorno
	iftrue UnknownScript_0x5ce42
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext UnknownText_0x5d2bc
	yesorno
	iffalse UnknownScript_0x5ce42
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext UnknownText_0x5d30e
	yesorno
	iftrue UnknownScript_0x5ce42
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext UnknownText_0x5d37b
	buttonsound
	stringtotext RadioCardText, $1
	scall UnknownScript_0x5ce3e
	writetext UnknownText_0x5d3c0
	buttonsound
	setflag ENGINE_RADIO_CARD
UnknownScript_0x5ce2d: ; 0x5ce2d
	writetext UnknownText_0x5d3e5
	waitbutton
	closetext
	end
; 0x5ce33

RadioCardText: ; 0x5ce33
	db "RADIO CARD@"
; 0x5ce3d

UnknownScript_0x5ce3e: ; 0x5ce3e
	jumpstd receiveitem
	end
; 0x5ce42

UnknownScript_0x5ce42: ; 0x5ce42
	playsound SFX_WRONG
	writetext UnknownText_0x5d409
	waitbutton
	closetext
	end
; 0x5ce4b

UnknownScript_0x5ce4b: ; 0x5ce4b
	writetext UnknownText_0x5d443
	waitbutton
	closetext
	end
; 0x5ce51

LassScript_0x5ce51: ; 0x5ce51
	jumptextfaceplayer UnknownText_0x5d476
; 0x5ce54

YoungsterScript_0x5ce54: ; 0x5ce54
	jumptextfaceplayer UnknownText_0x5d4ac
; 0x5ce57

TrainerGruntM3: ; 0x5ce57
	; bit/flag number
	dw $4f3

	; trainer group && trainer id
	db GRUNTM, 3

	; text when seen
	dw GruntM3SeenText

	; text when trainer beaten
	dw GruntM3BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntM3Script
; 0x5ce63

GruntM3Script: ; 0x5ce63
	talkaftercancel
	loadfont
	writetext UnknownText_0x5d5a2
	waitbutton
	closetext
	end
; 0x5ce6b

MapRadioTower1FSignpost0Script: ; 0x5ce6b
	jumptext UnknownText_0x5d5e7
; 0x5ce6e

MapRadioTower1FSignpost1Script: ; 0x5ce6e
	jumptext UnknownText_0x5d631
; 0x5ce71

MovementData_0x5ce71: ; 0x5ce71
	step_right
	turn_head_up
	step_end
; 0x5ce74

MovementData_0x5ce74: ; 0x5ce74
	step_left
	turn_head_up
	step_end
; 0x5ce77

UnknownText_0x5ce77: ; 0x5ce77
	text "Bienvenue!"
	done
; 0x5ce81

UnknownText_0x5ce81: ; 0x5ce81
	text "Bonjour. Désolée,"
	line "mais les visites"
	cont "d'aujourd'hui sont"
	cont "annulés."
	done
; 0x5ceba

UnknownText_0x5ceba: ; 0x5ceba
	text "Salut, tu es là"
	line "pour l'émission du"
	cont "BON NUMERO?"

	para "Veux-tu que je re-"
	line "garde le No. ID de"
	cont "tes #MON?"

	para "Si c'est ton jour"
	line "de chance, tu"
	cont "gagneras un prix!"
	done
; 0x5cf3a

UnknownText_0x5cf3a: ; 0x5cf3a
	text "Le No. ID de cette"
	line "semaine est @"
	text_from_ram StringBuffer3
	text "."
	done
; 0x5cf5a

UnknownText_0x5cf5a: ; 0x5cf5a
	text "Voyons si un de"
	line "vos #MON"
	cont "correspond."
	done
; 0x5cf79

UnknownText_0x5cf79: ; 0x5cf79
	db $0, $56, $4f
	db $56, $57
; 0x5cf7e

UnknownText_0x5cf7e: ; 0x5cf7e
	text "Revenez la semaine"
	line "prochaine pour un"
	cont "nouveau BON"
	cont "NUMERO!"
	done
; 0x5cfb5

UnknownText_0x5cfb5: ; 0x5cfb5
	text "Incroyable! Tous"
	line "les chiffres sont"
	cont "bons!"

	para "Vous avez gagné"
	line "notre grand prix!"

	para "Une MASTER BALL!"
	done
; 0x5d023

UnknownText_0x5d023: ; 0x5d023
	text "Oh! Vous avez une"
	line "correspondance sur"
	cont "les trois derniers"
	cont "numéros!"

	para "Vous avez gagné"
	line "ce superbe"
	cont "MULTI EXP.!"
	done
; 0x5d076

UnknownText_0x5d076: ; 0x5d076
	text "Ah, il y a une"
	line "correspondance sur"
	cont "les deux derniers"
	cont "numéros."

	para "Vous avez gagné"
	line "un PP PLUS"
	done
; 0x5d0c0

UnknownText_0x5d0c0: ; 0x5d0c0
	text "Non! Aucun de tes"
	line "numéros ID ne"
	cont "correspond."
	done
; 0x5d0e6

UnknownText_0x5d0e6: ; 0x5d0e6
	text "Vous n'avez pas de"
	line "place pour votre"
	cont "prix."

	para "Revenez le cher-"
	line "cher plus tard."
	done
; 0x5d12d

UnknownText_0x5d12d: ; 0x5d12d
	text "Nous avons un quiz"
	line "disponible en ce"
	cont "moment."

	para "Réponds à 5 ques-"
	line "tions correctement"
	cont "pour gagner un"
	cont "COUPON RADIO."

	para "Glisse-le dans ton"
	line "#MATOS pour"

	para "écouter la radio"
	line "quand tu veux et"
	cont "ou tu veux."

	para "Veux-tu jouer au"
	line "quiz?"
	done
; 0x5d1f2

UnknownText_0x5d1f2: ; 0x5d1f2
	text "Question 1:"

	para "Y a-t-il un #-"
	line "MON apparaissant"
	cont "uniquement le"
	cont "matin?"
	done
; 0x5d231

UnknownText_0x5d231: ; 0x5d231
	text "C'est exact!"
	line "Question 2:"

	para "Cette proposition"
	line "est-elle correcte?"

	para "On ne peut pas"
	line "acheter de BAIE à"
	cont "à la BOUTIQUE."
	done
; 0x5d282

UnknownText_0x5d282: ; 0x5d282
	text "Bravo!"
	line "Question 3:"

	para "La CS01 contient-"
	line "elle FLASH?"
	done
; 0x5d2bc

UnknownText_0x5d2bc: ; 0x5d2bc
	text "Tout va bien!"
	line "Question 4:"

	para "ALBERT est-il le"
	line "CHAMPION de MAU-"

	para "VILLE utilisant"
	line "des #MON"
	cont "oiseaux?"
	done
; 0x5d30e

UnknownText_0x5d30e: ; 0x5d30e
	text "Encore gagné!"
	line "Voici la dernière"
	cont "question:"

	para "SALAMECHE appa-"
	line "raît-il sur les"

	para "machines à sous au"
	line "CASINO de DOUBLON-"
	cont "VILLE?"
	done
; 0x5d37b

UnknownText_0x5d37b: ; 0x5d37b
	text "Bingo! Gagné!"
	line "Félicitations!"

	para "Voici ton prix: un"
	line "COUPON RADIO!"
	done
; 0x5d3c0

UnknownText_0x5d3c0: ; 0x5d3c0
	text "Le #MATOS de"
	line "<PLAYER> peut main-"
	cont "tenant servir de"
	cont "radio!"
	done
; 0x5d3e5

UnknownText_0x5d3e5: ; 0x5d3e5
	text "Branchez-vous donc"
	line "sur nos émissions!"
	done
; 0x5d409

UnknownText_0x5d409: ; 0x5d409
	text "Ah, je suis navrée"
	line "mais ce n'est pas"
	cont "la bonne réponse!"

	text "Essayez une autre"
	line "fois!"
	done
; 0x5d443

UnknownText_0x5d443: ; 0x5d443
	text "Oh. Je vois."
	line "N'hésite pas si tu"
	cont "changes d'avis."
	done
; 0x5d476

UnknownText_0x5d476: ; 0x5d476
	text "BEN est un super"
	line "DJ!"

	para "Sa voix me fait"
	line "fondre!"
	done
; 0x5d4ac

UnknownText_0x5d4ac: ; 0x5d4ac
	text "J'adore LULA de la"
	line "CHRONIQUE #MON."

	para "En tout cas j'ado-"
	line "re sa voix<...>"
	cont "C'est déjà ça."
	done
; 0x5d4f4

GruntM3SeenText: ; 0x5d4f4
	text "Nous avons enfin"
	line "envahi la TOUR"
	cont "RADIO!"

	para "Tout le monde"
	line "tremblera devant"

	para "la puissance de la"
	line "TEAM ROCKET!"

	para "Vous allez voir à"
	line "quel point on fait"
	cont "peur!"
	done
; 0x5d582

GruntM3BeatenText: ; 0x5d582
	text "Impossible! On va"
	line "te tenir à l'oeil<...>"
	done
; 0x5d5a2

UnknownText_0x5d5a2: ; 0x5d5a2
	text "Tu es beaucoup"
	line "trop fort."

	para "Je dois prévenir"
	line "les autres. Tu es"
	cont "une menace<...>"
	done
; 0x5d5e7

UnknownText_0x5d5e7: ; 0x5d5e7
	text "RDC  RECEPTION"
	line "1ER  VENTES"

	para "2EME PERSONNEL"
	line "3EME PRODUCTION"

	para "4EME BUREAU"
	line "     DIRECTION"
	done
; 0x5d631

UnknownText_0x5d631: ; 0x5d631
	text "Antenne Chance!"

	para "Gagnez grâce aux"
	line "No. ID de vos"
	cont "#MON!"

	para "Echangez vos #-"
	line "MON pour avoir"
	cont "plus de No. ID!"
	done
; 0x5d68e

RadioTower1F_MapEventHeader: ; 0x5d68e
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $7, $2, 11, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY
	warp_def $7, $3, 11, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY
	warp_def $0, $f, 2, GROUP_RADIO_TOWER_2F, MAP_RADIO_TOWER_2F

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 0, 3, $0, MapRadioTower1FSignpost0Script
	signpost 0, 13, $0, MapRadioTower1FSignpost1Script

	; people-events
	db 6
	person_event SPRITE_RECEPTIONIST, 10, 9, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, ReceptionistScript_0x5cd29, -1
	person_event SPRITE_LASS, 8, 20, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, LassScript_0x5ce51, EVENT_CIVILIANS_EVACUATED_GOLDENROD
	person_event SPRITE_YOUNGSTER, 8, 19, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, YoungsterScript_0x5ce54, EVENT_CIVILIANS_EVACUATED_GOLDENROD
	person_event SPRITE_ROCKET, 5, 18, $6, 0, 0, -1, -1, 0, 2, 3, TrainerGruntM3, EVENT_ROCKET_TAKEOVER_OF_GOLDENROD
	person_event SPRITE_GENTLEMAN, 10, 12, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, GentlemanScript_0x5cd3d, EVENT_CIVILIANS_EVACUATED_GOLDENROD
	person_event SPRITE_COOLTRAINER_F, 10, 16, $7, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, CooltrainerFScript_0x5cdd5, EVENT_CIVILIANS_EVACUATED_GOLDENROD
; 0x5d6fb

