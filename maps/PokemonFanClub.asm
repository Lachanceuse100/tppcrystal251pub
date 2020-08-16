PokemonFanClub_MapScriptHeader: ; 0x1917e7
	; trigger count
	db 0

	; callback count
	db 0
; 0x1917e9

GentlemanScript_0x1917e9: ; 0x1917e9
	faceplayer
	loadfont
	checkevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT
	iftrue UnknownScript_0x191815
	checkevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT_BUT_BAG_WAS_FULL
	iftrue UnknownScript_0x191802
	writetext UnknownText_0x191881
	yesorno
	iffalse UnknownScript_0x19181b
	writetext UnknownText_0x191911
	buttonsound
UnknownScript_0x191802: ; 0x191802
	writetext UnknownText_0x191a3d
	buttonsound
	verbosegiveitem RARE_CANDY, 1
	iffalse UnknownScript_0x19181f
	setevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT
	writetext UnknownText_0x191a72
	waitbutton
	closetext
	end
; 0x191815

UnknownScript_0x191815: ; 0x191815
	writetext UnknownText_0x191ae0
	waitbutton
	closetext
	end
; 0x19181b

UnknownScript_0x19181b: ; 0x19181b
	writetext UnknownText_0x191b38
	waitbutton
UnknownScript_0x19181f: ; 0x19181f
	closetext
	end
; 0x191821

ReceptionistScript_0x191821: ; 0x191821
	jumptextfaceplayer UnknownText_0x191b6d
; 0x191824

FisherScript_0x191824: ; 0x191824
	faceplayer
	loadfont
	checkevent EVENT_GOT_LOST_ITEM_FROM_FAN_CLUB
	iftrue UnknownScript_0x19185f
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x191838
	writetext UnknownText_0x191ba0
	waitbutton
	closetext
	end
; 0x191838

UnknownScript_0x191838: ; 0x191838
	writetext UnknownText_0x191bff
	checkevent EVENT_MET_COPYCAT_FOUND_OUT_ABOUT_LOST_ITEM
	iftrue UnknownScript_0x191844
	waitbutton
	closetext
	end
; 0x191844

UnknownScript_0x191844: ; 0x191844
	buttonsound
	writetext UnknownText_0x191c5a
	buttonsound
	waitsfx
	giveitem LOST_ITEM, $1
	iffalse UnknownScript_0x191865
	disappear $6
	writetext UnknownText_0x191d0a
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_LOST_ITEM_FROM_FAN_CLUB
	closetext
	end
; 0x19185f

UnknownScript_0x19185f: ; 0x19185f
	writetext UnknownText_0x191d1e
	waitbutton
	closetext
	end
; 0x191865

UnknownScript_0x191865: ; 0x191865
	writetext UnknownText_0x191d58
	waitbutton
	closetext
	end
; 0x19186b

TeacherScript_0x19186b: ; 0x19186b
	jumptextfaceplayer UnknownText_0x191d73
; 0x19186e

FairyScript_0x19186e: ; 0x19186e
	jumptext UnknownText_0x191db1
; 0x191871

OddishScript_0x191871: ; 0x191871
	loadfont
	writetext UnknownText_0x191de9
	cry BAYLEEF
	waitbutton
	closetext
	end
; 0x19187b

MapPokemonFanClubSignpost0Script: ; 0x19187b
	jumptext UnknownText_0x191dfc
; 0x19187e

MapPokemonFanClubSignpost1Script: ; 0x19187e
	jumptext UnknownText_0x191e29
; 0x191881

UnknownText_0x191881: ; 0x191881
	text "Je suis le prési-"
	line "dent du fan club"
	cont "#MON."

	para "J'ai collectionné"
	line "plus de 150"
	cont "#MON."

	para "Je suis très"
	line "tatillon quand"
	cont "il s'agit de"
	cont "#MON."

	para "Alors<...>"

	para "Es-tu venu m'écou-"
	line "ter parler de"
	cont "#MON?"
	done
; 0x191911

UnknownText_0x191911: ; 0x191911
	text "Bien!"
	line "Alors écoute!"

	para "Mon favori,"
	line "GALOPA<...>"

	para "Il est mignon<...>"
	line "beau<...> rapide<...>"
	cont "élégant<...> en feu<...>"
	cont "Il fait pataclop,"
	cont "pataclop<...> quand"
	cont "il court<...> c'est"
	cont "super non?"
	cont "Je l'aime!"

	para "Je lui fais<...> des"
	line "câlins<...> des"
	cont "bisous<...> des"
	cont "gnangnans<...> des"
	cont "zigouzigoux<...>"

	para "<...> Oups! Regarde"
	line "l'heure! Je t'ai"
	cont "trop retenu!"
	done
; 0x191a3d

UnknownText_0x191a3d: ; 0x191a3d
	text "Merci de m'avoir"
	line "écouté. Tiens,"
	cont "tu peux avoir ça!"
	done
; 0x191a72

UnknownText_0x191a72: ; 0x191a72
	text "C'est un SUPER"
	line "BONBON qui rend"
	cont "les #MON plus"
	cont "forts."

	para "Moi je préfère les"
	line "renforcer en fai-"

	para "sant des combats?"
	line "Il est pour toi."
	done
; 0x191ae0

UnknownText_0x191ae0: ; 0x191ae0
	text "Bonjour, <PLAYER>!"

	para "Tu reviens"
	line "m'entendre parler"
	cont "de #MON?"

	para "Non? Dommage!"
	done
; 0x191b38

UnknownText_0x191b38: ; 0x191b38
	text "Oh<...> Reviens si tu"
	line "veux entendre d'"
	cont "autres histoires!"
	done
; 0x191b6d

UnknownText_0x191b6d: ; 0x191b6d
	text "Notre président"
	line "adore parler de"
	cont "#MON."
	done
; 0x191ba0

UnknownText_0x191ba0: ; 0x191ba0
	text "J'aime quand"
	line "MELOFEE agite son"

	para "doigt quand il"
	line "utilise son"

	para "METRONOME."
	line "C'est adorable!"
	done
; 0x191bff

UnknownText_0x191bff: ; 0x191bff
	text "J'adore MELOFEE,"
	line "mais je pourrais"
	cont "jamais en avoir<...>"

	para "Alors je compense"
	line "avec la #"
	cont "POUPEE que j'ai"
	cont "trouvé."
	done
; 0x191c5a

UnknownText_0x191c5a: ; 0x191c5a
	text "Oh, je vois. La"
	line "fille qui a perdu"

	para "sa # POUPEE est"
	line "triste<...>"

	para "OK. Peux-tu porter"
	line "cette # POUPEE"

	para "à la pauvre petite"
	line "fille triste?"

	para "Je trouverai un"
	line "vrai MELOFEE un"
	cont "jour!"
	done
; 0x191d0a

UnknownText_0x191d0a: ; 0x191d0a
	text "<PLAYER> reçoit"
	line "# POUPEE."
	done
; 0x191d1e

UnknownText_0x191d1e: ; 0x191d1e
	text "J'attraperai un"
	line "MELOFEE et il sera"

	para "mon meilleur ami,"
	line "tu verras!"
	done
; 0x191d58

UnknownText_0x191d58: ; 0x191d58
	text "Ton sac est plein."
	done
; 0x191d73

UnknownText_0x191d73: ; 0x191d73
	text "Regarde mon beau"
	line "MACRONIUM!"

	para "La feuille sur sa"
	line "tête est mignonne!"
	done
; 0x191db1

UnknownText_0x191db1: ; 0x191db1
	text "C'est un MELOFEE!"
	line "Hein?"

	para "Ah, d'accord."
	line "C'est une #"
	cont "POUPEE d'un"
	cont "MELOFEE."
	done
; 0x191de9

UnknownText_0x191de9: ; 0x191de9
	text "MACRONIUM: Niuuu!"
	done
; 0x191dfc

UnknownText_0x191dfc: ; 0x191dfc
	text "Ecoutons poliment"
	line "les autres"
	cont "dresseurs!"
	done
; 0x191e29

UnknownText_0x191e29: ; 0x191e29
	text "Si quelqu'un se"
	line "vante, vante toi"
	cont "en retour!"
	done
; 0x191e4d

PokemonFanClub_MapEventHeader: ; 0x191e4d
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 3, GROUP_VERMILION_CITY, MAP_VERMILION_CITY
	warp_def $7, $3, 3, GROUP_VERMILION_CITY, MAP_VERMILION_CITY

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 0, 7, $0, MapPokemonFanClubSignpost0Script
	signpost 0, 9, $0, MapPokemonFanClubSignpost1Script

	; people-events
	db 6
	person_event SPRITE_GENTLEMAN, 5, 7, $6, 0, 0, -1, -1, 0, 0, 0, GentlemanScript_0x1917e9, -1
	person_event SPRITE_RECEPTIONIST, 5, 8, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ReceptionistScript_0x191821, -1
	person_event SPRITE_FISHER, 7, 6, $9, 0, 0, -1, -1, 0, 0, 0, FisherScript_0x191824, -1
	person_event SPRITE_TEACHER, 6, 11, $8, 0, 0, -1, -1, 0, 0, 0, TeacherScript_0x19186b, -1
	person_event SPRITE_FAIRY, 8, 6, $6, 0, 0, -1, -1, 0, 0, 0, FairyScript_0x19186e, EVENT_COPYCATS_DOLL_IN_FAN_CLUB
	person_event SPRITE_ODDISH, 7, 11, $16, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, OddishScript_0x191871, -1
; 0x191eb5

