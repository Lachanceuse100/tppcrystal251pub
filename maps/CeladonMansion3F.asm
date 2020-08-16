CeladonMansion3F_MapScriptHeader: ; 0x7166e
	; trigger count
	db 0

	; callback count
	db 0
; 0x71670

CooltrainerMScript_0x71670: ; 0x71670
	faceplayer
	loadfont
	writetext UnknownText_0x716ce
	checkcode VAR_DEXCAUGHT
	if_equal NUM_POKEMON, .GiveDiploma
	waitbutton
	closetext
	end
; 0x7167e

.GiveDiploma
	buttonsound
	writetext UnknownText_0x71725
	playsound SFX_DEX_FANFARE_230_PLUS
	waitsfx
	writetext UnknownText_0x71760
	buttonsound
	special Functionc49f
	writetext UnknownText_0x71763
	checkevent EVENT_ENABLE_DIPLOMA_PRINTING
	iftrue .skip_money
	buttonsound
	writetext Text_GiveMoneyMansion3F
	givemoney 0, 300000
	playsound SFX_TRANSACTION
	waitsfx
	setevent EVENT_ENABLE_DIPLOMA_PRINTING
.skip_money:
	waitbutton
	closetext
	end
; 0x71696

GymGuyScript_0x71696: ; 0x71696
	faceplayer
	loadfont
	checkevent EVENT_ENABLE_DIPLOMA_PRINTING
	iftrue UnknownScript_0x716a4
	writetext UnknownText_0x717b4
	waitbutton
	closetext
	end
; 0x716a4

UnknownScript_0x716a4: ; 0x716a4
	writetext UnknownText_0x717d8
	yesorno
	iffalse UnknownScript_0x716b0
	special Functionc4ac
	closetext
	end
; 0x716b0

UnknownScript_0x716b0: ; 0x716b0
	writetext UnknownText_0x71830
	waitbutton
	closetext
	end
; 0x716b6

UnknownScript_0x716b6: ; 0x716b6
	writetext UnknownText_0x71863
	waitbutton
	closetext
	end
; 0x716bc

SuperNerdScript_0x716bc: ; 0x716bc
	jumptextfaceplayer UnknownText_0x71895

FisherScript_0x716bf: ; 0x716bf
	jumptextfaceplayer UnknownText_0x718ca
; 0x716c2

MapCeladonMansion3FSignpost0Script: ; 0x716c2
	jumptext UnknownText_0x7190b
; 0x716c5

MapCeladonMansion3FSignpost1Script: ; 0x716c5
	jumptext UnknownText_0x71928
; 0x716c8

MapCeladonMansion3FSignpost2Script: ; 0x716c8
	jumptext UnknownText_0x71952
; 0x716cb

MapCeladonMansion3FSignpost3Script: ; 0x716cb
	jumptext UnknownText_0x71996
; 0x716ce

UnknownText_0x716ce: ; 0x716ce
	text "Mmmmoui?"

	para "Je suis le"
	line "DESIGNER du JEU!"

	para "C'est dur de rem-"
	line "plir le #DEX,"
	cont "mais accroche-toi!"
	done
; 0x71725

UnknownText_0x71725: ; 0x71725
	text "Whoa! Mais il est"
	line "complet dis-donc!"

	para "Félicitations!"
	done
; 0x71760

UnknownText_0x71760: ; 0x71760
	text "<...>"
	done
; 0x71763

UnknownText_0x71763: ; 0x71763
	text "L'ARTISTE GRAPHI-"
	line "QUE va imprimer un"
	cont "DIPLOME pour toi."

	para "Va te vanter,"
	line "c'est mérité."
	done

Text_GiveMoneyMansion3F:
	text "Et ça c'est de ma"
	line "part, ¥300,000."
	cont "Tu l'as mérité."
	done
; 0x717b4

UnknownText_0x717b4: ; 0x717b4
	text "Je suis l'ARTISTE"
	line "GRAPHIQUE."

	para "Je t'ai dessiné!"
	done
; 0x717d8

UnknownText_0x717d8: ; 0x717d8
	text "Je suis l'ARTISTE"
	line "GRAPHIQUE."

	para "Tu as complété"
	line "ton #DEX?"

	para "Tu veux que j'im-"
	line "prime ton DIPLOME?"
	done
; 0x71830

UnknownText_0x71830: ; 0x71830
	text "Appelle-moi si tu"
	line "veux que j'imprime"
	cont "ton DIPLOME."
	done
; 0x71863

UnknownText_0x71863: ; 0x71863
	text "Quelque chose clo-"
	line "che, je n'arrive"
	cont "pas à imprimet."
	done
; 0x71895

UnknownText_0x71895: ; 0x71895
	text "Qui, moi? Je suis"
	line "le PROGRAMMEUR."

	para "Joue aux machines"
	line "à sous!"
	done
; 0x718ca

UnknownText_0x718ca: ; 0x718ca
	text "Les JUMELLES sont"
	line "pas trop mimi?"

	para "JASMINE est trop"
	line "jolie, non?"

	para "Je les adore!"
	done
; 0x7190b

UnknownText_0x7190b: ; 0x7190b
	text "GAME FREAK"
	line "SALLE de"
	cont "DEVELOPPEMENT"
	done
; 0x71928

UnknownText_0x71928: ; 0x71928
	text "C'est le dessin"
	line "d'une jolie fille."
	done
; 0x71952

UnknownText_0x71952: ; 0x71952
	text "C'est le programme"
	line "du jeu. Si on y"

	para "touche, il y aura"
	line "des bogues!"
	done
; 0x71996

UnknownText_0x71996: ; 0x71996
	text "Il y a plein de"
	line "produits dérivés."
	cont "Il y a même une"
	cont "# POUPEE."
	done
; 0x719d5

CeladonMansion3F_MapEventHeader: ; 0x719d5
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $0, $0, 1, GROUP_CELADON_MANSION_ROOF, MAP_CELADON_MANSION_ROOF
	warp_def $0, $1, 2, GROUP_CELADON_MANSION_2F, MAP_CELADON_MANSION_2F
	warp_def $0, $6, 3, GROUP_CELADON_MANSION_2F, MAP_CELADON_MANSION_2F
	warp_def $0, $7, 2, GROUP_CELADON_MANSION_ROOF, MAP_CELADON_MANSION_ROOF

	; xy triggers
	db 0

	; signposts
	db 4
	signpost 8, 5, $1, MapCeladonMansion3FSignpost0Script
	signpost 3, 4, $1, MapCeladonMansion3FSignpost1Script
	signpost 6, 1, $1, MapCeladonMansion3FSignpost2Script
	signpost 3, 1, $1, MapCeladonMansion3FSignpost3Script

	; people-events
	db 4
	person_event SPRITE_COOLTRAINER_M, 10, 7, $3, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, CooltrainerMScript_0x71670, -1
	person_event SPRITE_GYM_GUY, 8, 7, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, GymGuyScript_0x71696, -1
	person_event SPRITE_SUPER_NERD, 11, 4, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, SuperNerdScript_0x716bc, -1
	person_event SPRITE_FISHER, 8, 4, $7, 0, 2, -1, -1, 8 + PAL_OW_RED, 0, 0, FisherScript_0x716bf, -1
; 0x71a37

