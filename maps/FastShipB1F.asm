FastShipB1F_MapScriptHeader: ; 0x76730
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x7673a, $0000
	dw UnknownScript_0x7673b, $0000

	; callback count
	db 0
; 0x7673a

UnknownScript_0x7673a: ; 0x7673a
	end
; 0x7673b

UnknownScript_0x7673b: ; 0x7673b
	end
; 0x7673c

UnknownScript_0x7673c: ; 0x7673c
	checkevent EVENT_FAST_SHIP_B1F_SAILOR_2
	iftrue UnknownScript_0x76766
	applymovement $3, MovementData_0x76876
	moveperson $2, $1e, $6
	appear $2
	pause 5
	disappear $3
	end
; 0x76751

UnknownScript_0x76751: ; 0x76751
	checkevent EVENT_FAST_SHIP_B1F_SAILOR_1
	iftrue UnknownScript_0x76766
	applymovement $2, MovementData_0x76871
	moveperson $3, $1f, $6
	appear $3
	pause 5
	disappear $2
	end
; 0x76766

UnknownScript_0x76766: ; 0x76766
	end
; 0x76767

SailorScript_0x76767: ; 0x76767
	faceplayer
	loadfont
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iftrue UnknownScript_0x767a0
	checkevent EVENT_FAST_SHIP_033
	iftrue UnknownScript_0x7678d
	checkevent EVENT_FAST_SHIP_034
	iftrue UnknownScript_0x76787
	writetext UnknownText_0x7687b
	waitbutton
	closetext
	setevent EVENT_FAST_SHIP_034
	clearevent EVENT_FAST_SHIP_GOOD_FOR_NOTHING_SAILOR
	end
; 0x76787

UnknownScript_0x76787: ; 0x76787
	writetext UnknownText_0x76907
	waitbutton
	closetext
	end
; 0x7678d

UnknownScript_0x7678d: ; 0x7678d
	writetext UnknownText_0x7692e
	checkevent EVENT_FAST_SHIP_032
	iffalse UnknownScript_0x76799
	waitbutton
	closetext
	end
; 0x76799

UnknownScript_0x76799: ; 0x76799
	buttonsound
	writetext UnknownText_0x7696d
	waitbutton
	closetext
	end
; 0x767a0

UnknownScript_0x767a0: ; 0x767a0
	writetext UnknownText_0x7699d
	waitbutton
	closetext
	end
; 0x767a6

TrainerSailorJeff: ; 0x767a6
	; bit/flag number
	dw $57a

	; trainer group && trainer id
	db SAILOR, JEFF

	; text when seen
	dw SailorJeffSeenText

	; text when trainer beaten
	dw SailorJeffBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SailorJeffScript
; 0x767b2

SailorJeffScript: ; 0x767b2
	talkaftercancel
	loadfont
	writetext UnknownText_0x76a38
	waitbutton
	closetext
	end
; 0x767ba

TrainerPicnickerDebra: ; 0x767ba
	; bit/flag number
	dw $485

	; trainer group && trainer id
	db PICNICKER, DEBRA

	; text when seen
	dw PicnickerDebraSeenText

	; text when trainer beaten
	dw PicnickerDebraBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PicnickerDebraScript
; 0x767c6

PicnickerDebraScript: ; 0x767c6
	talkaftercancel
	loadfont
	writetext UnknownText_0x76a99
	waitbutton
	closetext
	end
; 0x767ce

TrainerJugglerFritz: ; 0x767ce
	; bit/flag number
	dw $496

	; trainer group && trainer id
	db JUGGLER, FRITZ

	; text when seen
	dw JugglerFritzSeenText

	; text when trainer beaten
	dw JugglerFritzBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw JugglerFritzScript
; 0x767da

JugglerFritzScript: ; 0x767da
	talkaftercancel
	loadfont
	writetext UnknownText_0x76b02
	waitbutton
	closetext
	end
; 0x767e2

TrainerSailorGarrett: ; 0x767e2
	; bit/flag number
	dw $57b

	; trainer group && trainer id
	db SAILOR, GARRETT

	; text when seen
	dw SailorGarrettSeenText

	; text when trainer beaten
	dw SailorGarrettBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SailorGarrettScript
; 0x767ee

SailorGarrettScript: ; 0x767ee
	talkaftercancel
	loadfont
	writetext UnknownText_0x76b7a
	waitbutton
	closetext
	end
; 0x767f6

TrainerFisherJonah: ; 0x767f6
	; bit/flag number
	dw $459

	; trainer group && trainer id
	db FISHER, JONAH

	; text when seen
	dw FisherJonahSeenText

	; text when trainer beaten
	dw FisherJonahBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw FisherJonahScript
; 0x76802

FisherJonahScript: ; 0x76802
	talkaftercancel
	loadfont
	writetext UnknownText_0x76c22
	waitbutton
	closetext
	end
; 0x7680a

TrainerBlackbeltWai: ; 0x7680a
	; bit/flag number
	dw $4ac

	; trainer group && trainer id
	db BLACKBELT_T, WAI

	; text when seen
	dw BlackbeltWaiSeenText

	; text when trainer beaten
	dw BlackbeltWaiBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw BlackbeltWaiScript
; 0x76816

BlackbeltWaiScript: ; 0x76816
	talkaftercancel
	loadfont
	writetext UnknownText_0x76c9e
	waitbutton
	closetext
	end
; 0x7681e

TrainerSailorKenneth: ; 0x7681e
	; bit/flag number
	dw $57c

	; trainer group && trainer id
	db SAILOR, KENNETH

	; text when seen
	dw SailorKennethSeenText

	; text when trainer beaten
	dw SailorKennethBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SailorKennethScript
; 0x7682a

SailorKennethScript: ; 0x7682a
	talkaftercancel
	loadfont
	writetext UnknownText_0x76d5f
	waitbutton
	closetext
	end
; 0x76832

TrainerTeacherShirley: ; 0x76832
	; bit/flag number
	dw $5b7

	; trainer group && trainer id
	db TEACHER, SHIRLEY

	; text when seen
	dw TeacherShirleySeenText

	; text when trainer beaten
	dw TeacherShirleyBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw TeacherShirleyScript
; 0x7683e

TeacherShirleyScript: ; 0x7683e
	talkaftercancel
	loadfont
	writetext UnknownText_0x76de1
	waitbutton
	closetext
	end
; 0x76846

TrainerSchoolboyNate: ; 0x76846
	; bit/flag number
	dw $476

	; trainer group && trainer id
	db SCHOOLBOY, NATE

	; text when seen
	dw SchoolboyNateSeenText

	; text when trainer beaten
	dw SchoolboyNateBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SchoolboyNateScript
; 0x76852

SchoolboyNateScript: ; 0x76852
	talkaftercancel
	loadfont
	writetext UnknownText_0x76e3d
	waitbutton
	closetext
	end
; 0x7685a

TrainerSchoolboyRicky: ; 0x7685a
	; bit/flag number
	dw $477

	; trainer group && trainer id
	db SCHOOLBOY, RICKY

	; text when seen
	dw SchoolboyRickySeenText

	; text when trainer beaten
	dw SchoolboyRickyBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SchoolboyRickyScript
; 0x76866

SchoolboyRickyScript: ; 0x76866
	talkaftercancel
	loadfont
	writetext UnknownText_0x76eb6
	waitbutton
	closetext
	end
; 0x7686e

MapFastShipB1FSignpost0Script: ; 0x7686e
	jumpstd trashcan
; 0x76871

MovementData_0x76871: ; 0x76871
	fix_facing
	big_step_right
	remove_fixed_facing
	turn_head_down
	step_end
; 0x76876

MovementData_0x76876: ; 0x76876
	fix_facing
	big_step_left
	remove_fixed_facing
	turn_head_down
	step_end
; 0x7687b

UnknownText_0x7687b: ; 0x7687b
	text "Hé toi. Tu peux"
	line "chercher mon pote"
	cont "pour moi?"

	para "Il se balade dans"
	line "le coin, ce"
	cont "paresseux!"

	para "J'aimerais le"
	line "trouver mais moi"
	cont "j'ai du taf."
	done
; 0x76907

UnknownText_0x76907: ; 0x76907
	text "Oh, zut<...>"

	para "Le CAPITAINE va"
	line "être furieux<...>"
	done
; 0x7692e

UnknownText_0x7692e: ; 0x7692e
	text "Merci bien!"
	line "J'lui ai passé un"

	para "savon des familles"
	line "et il va bosser"
	cont "maintenant."
	done
; 0x7696d

UnknownText_0x7696d: ; 0x7696d
	text "Une p'tite fille?"

	para "Je crois l'avoir"
	line "vue passer."
	done
; 0x7699d

UnknownText_0x7699d: ; 0x7699d
	text "La salle à manger"
	line "est tout droit."

	para "Les escaliers au"
	line "bout mènent à la"
	cont "cabine du"
	cont "CAPITAINE."
	done
; 0x769ed

SailorJeffSeenText: ; 0x769ed
	text "Rien de tel qu'un"
	line "combat pendant la"
	cont "pause."
	done
; 0x76a1a

SailorJeffBeatenText: ; 0x76a1a
	text "Bon, au boulot!"
	done
; 0x76a38

UnknownText_0x76a38: ; 0x76a38
	text "Faut que je m'en-"
	line "traîne sérieux"
	cont "pour progresser."
	done
; 0x76a63

PicnickerDebraSeenText: ; 0x76a63
	text "Je m'ennuie<...>"
	line "Un combat?"
	done
; 0x76a81

PicnickerDebraBeatenText: ; 0x76a81
	text "Woah. Cool!"
	done
; 0x76a99

UnknownText_0x76a99: ; 0x76a99
	text "SAFRANIA, CELADO-"
	line "POLE<...> On dit"

	para "qu'il y a plein de"
	line "grandes villes à"
	cont "KANTO."
	done
; 0x76ad7

JugglerFritzSeenText: ; 0x76ad7
	text "Beuh<...> J'ai le mal"
	line "de mer!"
	done
; 0x76aea

JugglerFritzBeatenText: ; 0x76aea
	text "Je peux plus"
	line "bouger<...>"
	done
; 0x76b02

UnknownText_0x76b02: ; 0x76b02
	text "La prochaine fois,"
	line "je prendrais le"
	cont "TRAIN MAGNET<...>"
	done
; 0x76b40

SailorGarrettSeenText: ; 0x76b40
	text "C'est ici que les"
	line "marins bossent!"
	done
; 0x76b60

SailorGarrettBeatenText: ; 0x76b60
	text "Perdu sur mon"
	line "terrain natal<...>"
	done
; 0x76b7a

UnknownText_0x76b7a: ; 0x76b7a
	text "Les passagers sont"
	line "de CARMIN SUR MER"
	cont "et d'OLIVILLE."
	done
; 0x76bbc

FisherJonahSeenText: ; 0x76bbc
	text "On est en mer mais"
	line "on peut pas"
	cont "pêcher!"

	para "C'est nul!"
	line "Combat!"
	done
; 0x76c08

FisherJonahBeatenText: ; 0x76c08
	text "Pfff. T'es naze<...>"
	done
; 0x76c22

UnknownText_0x76c22: ; 0x76c22
	text "Je vais pêcher au"
	line "port de CARMIN SUR"
	cont "MER."
	done
; 0x76c47

BlackbeltWaiSeenText: ; 0x76c47
	text "Je muscle mes"
	line "jambes avec le"
	cont "tangage du bateau!"
	done
; 0x76c85

BlackbeltWaiBeatenText: ; 0x76c85
	text "Je me suis tout"
	line "planté!"
	done
; 0x76c9e

UnknownText_0x76c9e: ; 0x76c9e
	text "Je n'ai pas trouvé"
	line "le ROI du KARATE à"
	cont "JOHTO."

	para "On dit qu'il s'en-"
	line "traîne dans une"
	cont "caverne quelque"
	cont "part."
	done
; 0x76cf9

SailorKennethSeenText: ; 0x76cf9
	text "J'suis un marin!"

	para "J'entraîne aussi"
	line "mes #MON pour"
	cont "devenir un MAITRE!"
	done
; 0x76d3c

SailorKennethBeatenText: ; 0x76d3c
	text "Je manque"
	line "d'entraînement<...>"
	done
; 0x76d5f

UnknownText_0x76d5f: ; 0x76d5f
	text "Huit BADGES!"
	line "Tu as donc battu"

	para "les CHAMPIONS des"
	line "ARENES<...>"

	para "Normal que tu sois"
	line "balèze?"
	done
; 0x76db6

TeacherShirleySeenText: ; 0x76db6
	text "Touche pas à mes"
	line "elèves!"
	done
; 0x76dd9

TeacherShirleyBeatenText: ; 0x76dd9
	text "Aaack!"
	done
; 0x76de1

UnknownText_0x76de1: ; 0x76de1
	text "On va tous aux"
	line "RUINES près de"
	cont "MAUVILLE."
	done
; 0x76e14

SchoolboyNateSeenText: ; 0x76e14
	text "Tu connais les"
	line "RUINES d'ALPHA?"
	done
; 0x76e34

SchoolboyNateBeatenText: ; 0x76e34
	text "Yaargh!"
	done
; 0x76e3d

UnknownText_0x76e3d: ; 0x76e3d
	text "Les radios captent"
	line "d'étranges signaux"
	cont "dans les RUINES."
	done
; 0x76e6f

SchoolboyRickySeenText: ; 0x76e6f
	text "Il y a d'étranges"
	line "panneaux dans les"
	cont "RUINES d'ALPHA."
	done
; 0x76ea6

SchoolboyRickyBeatenText: ; 0x76ea6
	text "Mince!"
	done
; 0x76eb6

UnknownText_0x76eb6: ; 0x76eb6
	text "J'ai lu qu'il y a"
	line "quatre panneaux"
	cont "de pierre."
	done
; 0x76ee9

FastShipB1F_MapEventHeader: ; 0x76ee9
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $b, $5, 11, GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F
	warp_def $d, $1f, 12, GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F

	; xy triggers
	db 2
	xy_trigger 0, $7, $1e, $0, UnknownScript_0x7673c, $0, $0
	xy_trigger 0, $7, $1f, $0, UnknownScript_0x76751, $0, $0

	; signposts
	db 1
	signpost 9, 27, $0, MapFastShipB1FSignpost0Script

	; people-events
	db 12
	person_event SPRITE_SAILOR, 10, 34, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, SailorScript_0x76767, EVENT_FAST_SHIP_B1F_SAILOR_1
	person_event SPRITE_SAILOR, 10, 35, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, SailorScript_0x76767, EVENT_FAST_SHIP_B1F_SAILOR_2
	person_event SPRITE_SAILOR, 15, 13, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerSailorJeff, EVENT_FAST_SHIP_POPULATION_1
	person_event SPRITE_LASS, 8, 10, $7, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 1, TrainerPicnickerDebra, EVENT_FAST_SHIP_POPULATION_1
	person_event SPRITE_SUPER_NERD, 13, 30, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 1, TrainerJugglerFritz, EVENT_FAST_SHIP_POPULATION_1
	person_event SPRITE_SAILOR, 8, 21, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 4, TrainerSailorGarrett, EVENT_FAST_SHIP_POPULATION_2
	person_event SPRITE_FISHER, 12, 29, $7, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 3, TrainerFisherJonah, EVENT_FAST_SHIP_POPULATION_2
	person_event SPRITE_BLACK_BELT, 15, 19, $1f, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 3, TrainerBlackbeltWai, EVENT_FAST_SHIP_POPULATION_2
	person_event SPRITE_SAILOR, 8, 27, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 4, TrainerSailorKenneth, EVENT_FAST_SHIP_POPULATION_3
	person_event SPRITE_TEACHER, 15, 13, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerTeacherShirley, EVENT_FAST_SHIP_POPULATION_3
	person_event SPRITE_YOUNGSTER, 13, 18, $3, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 1, TrainerSchoolboyNate, EVENT_FAST_SHIP_POPULATION_3
	person_event SPRITE_YOUNGSTER, 15, 18, $a, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 1, TrainerSchoolboyRicky, EVENT_FAST_SHIP_POPULATION_3
; 0x76faa

