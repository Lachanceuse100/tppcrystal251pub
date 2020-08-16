Route15_MapScriptHeader: ; 0x1aa567
	; trigger count
	db 0

	; callback count
	db 0
; 0x1aa569

TrainerTeacherColette: ; 0x1aa569
	; bit/flag number
	dw $5b5

	; trainer group && trainer id
	db TEACHER, COLETTE

	; text when seen
	dw TeacherColetteSeenText

	; text when trainer beaten
	dw TeacherColetteBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw TeacherColetteScript
; 0x1aa575

TeacherColetteScript: ; 0x1aa575
	talkaftercancel
	loadfont
	writetext UnknownText_0x1aa60d
	waitbutton
	closetext
	end
; 0x1aa57d

TrainerTeacherHillary: ; 0x1aa57d
	; bit/flag number
	dw $5b6

	; trainer group && trainer id
	db TEACHER, HILLARY

	; text when seen
	dw TeacherHillarySeenText

	; text when trainer beaten
	dw TeacherHillaryBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw TeacherHillaryScript
; 0x1aa589

TeacherHillaryScript: ; 0x1aa589
	talkaftercancel
	loadfont
	writetext UnknownText_0x1aa6ca
	waitbutton
	closetext
	end
; 0x1aa591

TrainerSchoolboyKipp: ; 0x1aa591
	; bit/flag number
	dw $46d

	; trainer group && trainer id
	db SCHOOLBOY, KIPP

	; text when seen
	dw SchoolboyKippSeenText

	; text when trainer beaten
	dw SchoolboyKippBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SchoolboyKippScript
; 0x1aa59d

SchoolboyKippScript: ; 0x1aa59d
	talkaftercancel
	loadfont
	writetext UnknownText_0x1aa740
	waitbutton
	closetext
	end
; 0x1aa5a5

TrainerSchoolboyTommy: ; 0x1aa5a5
	; bit/flag number
	dw $471

	; trainer group && trainer id
	db SCHOOLBOY, TOMMY

	; text when seen
	dw SchoolboyTommySeenText

	; text when trainer beaten
	dw SchoolboyTommyBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SchoolboyTommyScript
; 0x1aa5b1

SchoolboyTommyScript: ; 0x1aa5b1
	talkaftercancel
	loadfont
	writetext UnknownText_0x1aa7bc
	waitbutton
	closetext
	end
; 0x1aa5b9

TrainerSchoolboyJohnny: ; 0x1aa5b9
	; bit/flag number
	dw $46f

	; trainer group && trainer id
	db SCHOOLBOY, JOHNNY

	; text when seen
	dw SchoolboyJohnnySeenText

	; text when trainer beaten
	dw SchoolboyJohnnyBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SchoolboyJohnnyScript
; 0x1aa5c5

SchoolboyJohnnyScript: ; 0x1aa5c5
	talkaftercancel
	loadfont
	writetext UnknownText_0x1aa84a
	waitbutton
	closetext
	end
; 0x1aa5cd

TrainerSchoolboyBilly: ; 0x1aa5cd
	; bit/flag number
	dw $474

	; trainer group && trainer id
	db SCHOOLBOY, BILLY

	; text when seen
	dw SchoolboyBillySeenText

	; text when trainer beaten
	dw SchoolboyBillyBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SchoolboyBillyScript
; 0x1aa5d9

SchoolboyBillyScript: ; 0x1aa5d9
	talkaftercancel
	loadfont
	writetext UnknownText_0x1aa8b0
	waitbutton
	closetext
	end
; 0x1aa5e1

MapRoute15Signpost0Script: ; 0x1aa5e1
	jumptext UnknownText_0x1aa8e3
; 0x1aa5e4

ItemFragment_0x1aa5e4: ; 0x1aa5e4
	db PP_UP, 1
; 0x1aa5e6

TeacherColetteSeenText: ; 0x1aa5e6
	text "Tu n'as rien"
	line "oublié?"
	done
; 0x1aa604

TeacherColetteBeatenText: ; 0x1aa604
	text "Kiyaaah!"
	done
; 0x1aa60d

UnknownText_0x1aa60d: ; 0x1aa60d
	text "Avant de devenir"
	line "enseignante, j'ou-"
	cont "bliais beaucoup de"
	cont "choses."
	done
; 0x1aa64b

TeacherHillarySeenText: ; 0x1aa64b
	text "Quand il fait"
	line "beau, je pense que"

	para "les enfants pré-"
	line "fèrent jouer"
	cont "qu'étudier."
	done
; 0x1aa6b3

TeacherHillaryBeatenText: ; 0x1aa6b3
	text "Je ne voulais pas"
	line "perdre<...>"
	done
; 0x1aa6ca

UnknownText_0x1aa6ca: ; 0x1aa6ca
	text "Etudier est impor-"
	line "tant, mais jouer"
	cont "est tout aussi"
	cont "vital."
	done
; 0x1aa703

SchoolboyKippSeenText: ; 0x1aa703
	text "Attends, je dois"
	line "appeler ma maman."
	done
; 0x1aa725

SchoolboyKippBeatenText: ; 0x1aa725
	text "Désolé, maman"
	line "J'ai été battu."
	done
; 0x1aa740

UnknownText_0x1aa740: ; 0x1aa740
	text "Ma mère s'inquiète"
	line "tellement pour moi"

	para "que je dois tout"
	line "le temps lui"
	cont "téléphoner."
	done
; 0x1aa784

SchoolboyTommySeenText: ; 0x1aa784
	text "Battons-nous."
	line "Je vais gagner!"
	done
; 0x1aa79f

SchoolboyTommyBeatenText: ; 0x1aa79f
	text "J'ai oublié de"
	line "faire mes devoirs!"
	done
; 0x1aa7bc

UnknownText_0x1aa7bc: ; 0x1aa7bc
	text "Sayonara! J'ai"
	line "appris ça en cours"
	cont "de Japonais."
	done
; 0x1aa7f1

SchoolboyJohnnySeenText: ; 0x1aa7f1
	text "Nous faisons une"
	line "sortie à la TOUR"

	para "RADIO de LAVAN-"
	line "VILLE."
	done
; 0x1aa833

SchoolboyJohnnyBeatenText: ; 0x1aa833
	text "T'es pas super"
	line "sympa."
	done
; 0x1aa84a

UnknownText_0x1aa84a: ; 0x1aa84a
	text "C'est épuisant de"
	line "marcher. J'ai be-"
	cont "soin d'une pause<...>"
	done
; 0x1aa87a

SchoolboyBillySeenText: ; 0x1aa87a
	text "Moi j'aime le"
	line "sport!"
	done
; 0x1aa895

SchoolboyBillyBeatenText: ; 0x1aa895
	text "Oh, non! J'ai"
	line "perdu!"
	done
; 0x1aa8b0

UnknownText_0x1aa8b0: ; 0x1aa8b0
	text "Si il y avais un"
	line "cours de #MON"
	cont "à l'école, c'est"
	cont "moi qui donnerait"
	cont "le cours!"
	done
; 0x1aa8e3

UnknownText_0x1aa8e3: ; 0x1aa8e3
	text "ROUTE 15"

	para "PARMANIE -"
	line "LAVANVILLE"
	done
; 0x1aa90a

Route15_MapEventHeader: ; 0x1aa90a
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $4, $2, 3, GROUP_ROUTE_15_FUCHSIA_GATE, MAP_ROUTE_15_FUCHSIA_GATE
	warp_def $5, $2, 4, GROUP_ROUTE_15_FUCHSIA_GATE, MAP_ROUTE_15_FUCHSIA_GATE

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 9, 19, $0, MapRoute15Signpost0Script

	; people-events
	db 7
	person_event SPRITE_YOUNGSTER, 14, 14, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 4, TrainerSchoolboyKipp, -1
	person_event SPRITE_YOUNGSTER, 17, 19, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerSchoolboyTommy, -1
	person_event SPRITE_YOUNGSTER, 14, 37, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerSchoolboyJohnny, -1
	person_event SPRITE_YOUNGSTER, 14, 31, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerSchoolboyBilly, -1
	person_event SPRITE_TEACHER, 16, 34, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 4, TrainerTeacherColette, -1
	person_event SPRITE_TEACHER, 14, 24, $a, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerTeacherHillary, -1
	person_event SPRITE_POKE_BALL, 9, 16, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x1aa5e4, EVENT_ITEM_ROUTE_15_PP_UP
; 0x1aa97a

