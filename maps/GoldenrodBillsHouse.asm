GoldenrodBillsHouse_MapScriptHeader: ; 0x54be2
	; trigger count
	db 0

	; callback count
	db 0
; 0x54be4

BillScript_0x54be4: ; 0x54be4
	faceplayer
	loadfont
	checkevent EVENT_GOT_EEVEE
	iftrue UnknownScript_0x54c1f
	writetext UnknownText_0x54c74
	yesorno
	iffalse UnknownScript_0x54c19
	writetext UnknownText_0x54d3f
	buttonsound
	waitsfx
	checkcode VAR_PARTYCOUNT
	if_equal $6, BillEeveePC
	writetext UnknownText_0x54dae
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke EEVEE, 30, 0, 0
	setevent EVENT_GOT_EEVEE
	writetext UnknownText_0x54dc1
	waitbutton
	closetext
	end
; 0x54c13

BillEeveePC:
	checkcode VAR_BOXSPACE
	if_equal $0, UnknownScript_0x54c13
	writetext BillsEeveePCText
	buttonsound
	waitsfx
	writetext UnknownText_0x54dae
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke EEVEE, 30, GOLD_BERRY, 0
	setevent EVENT_GOT_EEVEE
	writetext UnknownText_0x54dc1
	waitbutton
	closetext
	end

UnknownScript_0x54c13: ; 0x54c13
	writetext UnknownText_0x54e02
	waitbutton
	closetext
	end
; 0x54c19

UnknownScript_0x54c19: ; 0x54c19
	writetext UnknownText_0x54e2d
	waitbutton
	closetext
	end
; 0x54c1f

UnknownScript_0x54c1f: ; 0x54c1f
	writetext UnknownText_0x54e42
	waitbutton
	closetext
	end
; 0x54c25

PokefanFScript_0x54c25: ; 0x54c25
	faceplayer
	loadfont
	checkevent EVENT_BILL_IN_GOLDENROD_BILLS_HOUSE
	iffalse UnknownScript_0x54c33
	writetext UnknownText_0x54ea8
	waitbutton
	closetext
	end
; 0x54c33

UnknownScript_0x54c33: ; 0x54c33
	writetext UnknownText_0x54f4e
	waitbutton
	closetext
	end
; 0x54c39

TwinScript_0x54c39: ; 0x54c39
	faceplayer
	loadfont
	checkcellnum $3
	iftrue UnknownScript_0x54c58
	writetext UnknownText_0x54f9e
	askforphonenumber $3
	if_equal $1, UnknownScript_0x54c64
	if_equal $2, UnknownScript_0x54c5e
	waitsfx
	addcellnum $3
	writetext UnknownText_0x54fd9
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	buttonsound
UnknownScript_0x54c58: ;0x54c58
	writetext UnknownText_0x55069
	waitbutton
	closetext
	end
; 0x54c5e

UnknownScript_0x54c5e: ; 0x54c5e
	writetext UnknownText_0x54ff3
	waitbutton
	closetext
	end
; 0x54c64

UnknownScript_0x54c64: ; 0x54c64
	writetext UnknownText_0x55046
	buttonsound
	jump UnknownScript_0x54c5e
; 0x54c6b

MapGoldenrodBillsHouseSignpost1Script: ; 0x54c6b
	jumpstd picturebookshelf
; 0x54c6e

MapGoldenrodBillsHouseSignpost0Script: ; 0x54c6e
	jumpstd magazinebookshelf
; 0x54c71

MapGoldenrodBillsHouseSignpost2Script: ; 0x54c71
	jumpstd radio2
; 0x54c74

UnknownText_0x54c74: ; 0x54c74
	text "LEO: Salut, <PLAYER>!"
	line "Tu pourrais t'"
	cont "occuper de cet"
	cont "EVOLI?"

	para "Il est arrivé"
	line "lorsque j'étais en"
	cont "train de régler le"
	cont "BLOC TEMPOREL."

	para "Quelqu'un doit"
	line "s'en occuper mais"

	para "moi je suis trop"
	line "pressé."

	para "Puis-je compter"
	line "sur toi pour jouer"
	cont "avec lui, <PLAYER>?"
	done
; 0x54d3f

UnknownText_0x54d3f: ; 0x54d3f
	text "LEO: Je le savais!"
	line "T'es trop top!"

	para "OK, je compte sur"
	line "toi. Prends-en"
	cont "bien soin."
	done
; 0x54dae

UnknownText_0x54dae: ; 0x54dae
	text "<PLAYER> reçoit"
	line "EVOLI!"
	done
; 0x54dc1

BillsEeveePCText: ; 0x54dae
	text "Ton équipe est"
	line "pleine?"

	para "Je te l'envoi dans"
	line "le PC alors."
	done

UnknownText_0x54dc1: ; 0x54dc1
	text "LEO : Le PROF.ORME"
	line "affirme que les"

	para "EVOLI pourraient"
	line "évoluer en des"
	cont "formes encore"
	cont "inconnues."
	done
; 0x54e02

UnknownText_0x54e02: ; 0x54e02
	text "Hé, attends, tu"
	line "ne peux plus"
	cont "transporter de"
	cont "#MON!"
	done
; 0x54e2d

UnknownText_0x54e2d: ; 0x54e2d
	text "Oh<...> Que devrais-je"
	line "faire?"
	done
; 0x54e42

UnknownText_0x54e42: ; 0x54e42
	text "LEO: Mon papa, il"
	line "ne travaille pas."

	para "Tout ce qu'il fait"
	line "c'est se prélasser"
	cont "toute la journée."

	para "Il devient un vrai"
	line "casse-tête<...>"
	done
; 0x54ea8

UnknownText_0x54ea8: ; 0x54ea8
	text "Tu collectionnes"
	line "les #MON? Mon"
	cont "fils LEO est un"
	cont "expert."

	para "Il est allé au"
	line "CENTRE #MON"
	cont "de ROSALIA."

	para "Mon mari en revan-"
	line "che est au CASINO<...>"

	para "Je ne cherche pas"
	line "à comprendre<...>"
	done
; 0x54f4e

UnknownText_0x54f4e: ; 0x54f4e
	text "Mon mari était"
	line "un #MANIAC"
	cont "autrefois."

	para "LEO doit tenir"
	line "de son père."
	done
; 0x54f9e

UnknownText_0x54f9e: ; 0x54f9e
	text "Es-tu dresseur?"

	para "J'ai un numéro de"
	line "téléphone utile"
	cont "pour toi."
	done
; 0x54fd9

UnknownText_0x54fd9: ; 0x54fd9
	text "<PLAYER> enregistre"
	line "le numéro de télé-"
	cont "phone de LEO."
	done
; 0x54ff3

UnknownText_0x54ff3: ; 0x54ff3
	text "Mon frère à crée"
	line "un système de"
	cont "stockage pour les"
	cont "#MON par PC."

	para "J'allais te donner"
	line "son numéro de"
	cont "téléphone<...>"
	done
; 0x55046

UnknownText_0x55046: ; 0x55046
	text "Tu ne peux plus"
	line "enregistrer de"
	cont "numéros."
	done
; 0x55069

UnknownText_0x55069: ; 0x55069
	text "Mon grand frère"
	line "LEO a fait un"

	para "super système de"
	line "stockage de #-"
	cont "MON."
	done
; 0x5509f

GoldenrodBillsHouse_MapEventHeader: ; 0x5509f
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 4, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY
	warp_def $7, $3, 4, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY

	; xy triggers
	db 0

	; signposts
	db 3
	signpost 1, 0, $0, MapGoldenrodBillsHouseSignpost0Script
	signpost 1, 1, $0, MapGoldenrodBillsHouseSignpost1Script
	signpost 1, 7, $0, MapGoldenrodBillsHouseSignpost2Script

	; people-events
	db 3
	person_event SPRITE_BILL, 7, 6, $9, 0, 0, -1, -1, 0, 0, 0, BillScript_0x54be4, EVENT_BILL_IN_GOLDENROD_BILLS_HOUSE
	person_event SPRITE_POKEFAN_F, 7, 9, $6, 0, 0, -1, -1, 0, 0, 0, PokefanFScript_0x54c25, -1
	person_event SPRITE_TWIN, 8, 9, $2, 1, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, TwinScript_0x54c39, -1
; 0x550e5

