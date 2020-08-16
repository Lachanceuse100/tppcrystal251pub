Route14_MapScriptHeader: ; 0x1ad47d
	; trigger count
	db 0

	; callback count
	db 0
; 0x1ad47f

TeacherScript_0x1ad47f: ; 0x1ad47f
	faceplayer
	loadfont
	trade $5
	waitbutton
	closetext
	end
; 0x1ad486

TrainerPokefanmCarter: ; 0x1ad486
	; bit/flag number
	dw $4d1

	; trainer group && trainer id
	db POKEFANM, CARTER

	; text when seen
	dw PokefanmCarterSeenText

	; text when trainer beaten
	dw PokefanmCarterBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PokefanmCarterScript
; 0x1ad492

PokefanmCarterScript: ; 0x1ad492
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ad508
	waitbutton
	closetext
	end
; 0x1ad49a

TrainerBird_keeperRoy: ; 0x1ad49a
	; bit/flag number
	dw $403

	; trainer group && trainer id
	db BIRD_KEEPER, ROY

	; text when seen
	dw Bird_keeperRoySeenText

	; text when trainer beaten
	dw Bird_keeperRoyBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bird_keeperRoyScript
; 0x1ad4a6

Bird_keeperRoyScript: ; 0x1ad4a6
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ad5a4
	waitbutton
	closetext
	end
; 0x1ad4ae

TrainerPokefanmTrevor: ; 0x1ad4ae
	; bit/flag number
	dw $4d2

	; trainer group && trainer id
	db POKEFANM, TREVOR

	; text when seen
	dw PokefanmTrevorSeenText

	; text when trainer beaten
	dw PokefanmTrevorBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PokefanmTrevorScript
; 0x1ad4ba

PokefanmTrevorScript: ; 0x1ad4ba
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ad660
	waitbutton
	closetext
	end
; 0x1ad4c2

PokefanmCarterSeenText: ; 0x1ad4c2
	text "Mon fils voulait"
	line "des nouveaux"
	cont "animaux."

	para "Nous en avons cap-"
	line "turé sur la route."
	done
; 0x1ad4ff

PokefanmCarterBeatenText: ; 0x1ad4ff
	text "FILS: Papa, on"
	line "peut les garder,"
	cont "dit?"
	done
; 0x1ad508

UnknownText_0x1ad508: ; 0x1ad508
	text "Chat, canard,"
	line "oiseau<...>"

	para "Je me demande si"
	line "ils s'entendront"
	cont "bien<...>"
	done
; 0x1ad552

Bird_keeperRoySeenText: ; 0x1ad552
	text "Je deviendrais le"
	line "roi des oiseaux!"
	done
; 0x1ad581

Bird_keeperRoyBeatenText: ; 0x1ad581
	text "J'ai perdu parce"
	line "que j'ai pas eu"
	cont "de chance."

	para "Je suis bien meil-"
	line "leur que toi!"
	done
; 0x1ad5a4

UnknownText_0x1ad5a4: ; 0x1ad5a4
	text "BLABLA DODO ne"
	line "marche pas avec"
	cont "des capacités"
	cont "comme VOL."

	para "Tous les grands"
	line "dresseurs le"
	cont "savent."
	done
; 0x1ad5e4

PokefanmTrevorSeenText: ; 0x1ad5e4
	text "Le savais-tu?"

	para "Les #MON sont"
	line "plus amicaux s'ils"

	para "sont entraînés"
	line "dans un endroit"
	cont "familier."
	done
; 0x1ad640

PokefanmTrevorBeatenText: ; 0x1ad640
	text "Ou ai-je rencontré"
	line "ce PAPILUSION?"
	done
; 0x1ad660

UnknownText_0x1ad660: ; 0x1ad660
	text "Y a-t-il un moyen"
	line "de savoir ou l'on"

	para "a trouvé nos"
	line "#MON?"
	done
; 0x1ad6a1

Route14_MapEventHeader: ; 0x1ad6a1
	; filler
	db 0, 0

	; warps
	db 0

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 4
	person_event SPRITE_POKEFAN_M, 19, 15, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerPokefanmCarter, -1
	person_event SPRITE_YOUNGSTER, 31, 15, $a, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerBird_keeperRoy, -1
	person_event SPRITE_POKEFAN_M, 15, 10, $a, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerPokefanmTrevor, -1
	person_event SPRITE_TEACHER, 9, 11, $5, 0, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 4, TeacherScript_0x1ad47f, -1
; 0x1ad6db

