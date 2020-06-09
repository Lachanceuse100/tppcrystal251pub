RuinsofAlphResearchCenter_MapScriptHeader: ; 0x59173
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x59180, $0000
	dw UnknownScript_0x59181, $0000

	; callback count
	db 1

	; callbacks

	dbw 2, UnknownScript_0x59185
; 0x59180

UnknownScript_0x59180: ; 0x59180
	end
; 0x59181

UnknownScript_0x59181: ; 0x59181
	priorityjump UnknownScript_0x59192
	end
; 0x59185

UnknownScript_0x59185: ; 0x59185
	checktriggers
	if_equal $1, UnknownScript_0x5918b
	return
; 0x5918b

UnknownScript_0x5918b: ; 0x5918b
	moveperson $4, $3, $7
	appear $4
	return
; 0x59192

UnknownScript_0x59192: ; 0x59192
	applymovement $4, MovementData_0x5926f
	playsound SFX_BOOT_PC
	pause 60
	playsound SFX_SWITCH_POKEMON
	pause 30
	playsound SFX_TALLY
	pause 30
	playsound SFX_TRANSACTION
	pause 30
	spriteface $4, $0
	loadfont
	writetext UnknownText_0x59278
	waitbutton
	closetext
	applymovement $4, MovementData_0x59274
	loadfont
	writetext UnknownText_0x592fa
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_UNOWN_DEX
	writetext UnknownText_0x59311
	waitbutton
	closetext
	applymovement $4, MovementData_0x59276
	dotrigger $0
	special RestartMapMusic
	end
; 0x591d1

ScientistScript_0x591d1: ; 0x591d1
	faceplayer
	loadfont
	checkcode VAR_UNOWNCOUNT
	if_equal 26, UnknownScript_0x591df
	writetext UnknownText_0x59311
	waitbutton
	closetext
	end
; 0x591df

UnknownScript_0x591df: ; 0x591df
	writetext UnknownText_0x5935f
	waitbutton
	closetext
	end
; 0x591e5

ScientistScript_0x591e5: ; 0x591e5
	faceplayer
	loadfont
	checkcode VAR_UNOWNCOUNT
	if_equal 26, UnknownScript_0x5920b
	checkflag ENGINE_UNOWN_DEX
	iftrue UnknownScript_0x59205
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftrue UnknownScript_0x591ff
	writetext UnknownText_0x593ed
	waitbutton
	closetext
	end
; 0x591ff

UnknownScript_0x591ff: ; 0x591ff
	writetext UnknownText_0x59478
	waitbutton
	closetext
	end
; 0x59205

UnknownScript_0x59205: ; 0x59205
	writetext UnknownText_0x59445
	waitbutton
	closetext
	end
; 0x5920b

UnknownScript_0x5920b: ; 0x5920b
	writetext UnknownText_0x594cb
	waitbutton
	closetext
	clearevent EVENT_YOUNGSTERS_IN_RUINS_OF_ALPH_OUTSIDE
	end
; 0x59214

ScientistScript_0x59214: ; 0x59214
	faceplayer
	loadfont
	checkcode VAR_UNOWNCOUNT
	if_equal 26, UnknownScript_0x5922e
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftrue UnknownScript_0x59228
	writetext UnknownText_0x5954f
	waitbutton
	closetext
	end
; 0x59228

UnknownScript_0x59228: ; 0x59228
	writetext UnknownText_0x595cb
	waitbutton
	closetext
	end
; 0x5922e

UnknownScript_0x5922e: ; 0x5922e
	writetext UnknownText_0x59769
	waitbutton
	closetext
	end
; 0x59234

MapRuinsofAlphResearchCenterSignpost1Script: ; 0x59234
	loadfont
	checkevent EVENT_SCIENTIST_IN_RUINS_OF_ALPH_RESEARCH_CENTER
	iftrue UnknownScript_0x59241
	checkcode VAR_UNOWNCOUNT
	if_equal 26, UnknownScript_0x59247
UnknownScript_0x59241: ; 0x59241
	writetext UnknownText_0x597b6
	waitbutton
	closetext
	end
; 0x59247

UnknownScript_0x59247: ; 0x59247
	writetext UnknownText_0x597d9
	waitbutton
	closetext
	end
; 0x5924d

MapRuinsofAlphResearchCenterSignpost2Script: ; 0x5924d
	loadfont
	checkevent EVENT_SCIENTIST_IN_RUINS_OF_ALPH_RESEARCH_CENTER
	iftrue UnknownScript_0x5925a
	checkcode VAR_UNOWNCOUNT
	if_equal 26, UnknownScript_0x59260
UnknownScript_0x5925a: ; 0x5925a
	writetext UnknownText_0x5980e
	waitbutton
	closetext
	end
; 0x59260

UnknownScript_0x59260: ; 0x59260
	writetext UnknownText_0x5982d
	waitbutton
	special Functionc2cd
	closetext
	end
; 0x59269

UnknownScript_0x59269: ; 0x59269
	jumptext UnknownText_0x59848
; 0x5926c

MapRuinsofAlphResearchCenterSignpost0Script: ; 0x5926c
	jumptext UnknownText_0x59886
; 0x5926f

FossilRevivalGuyScript:
	faceplayer
	loadfont
	checkevent EVENT_000_STD
	iftrue .PleaseWait
	checkevent EVENT_LEFT_FOSSIL_TO_BE_REVIVED
	iftrue .give_fossil
	writetext Text_IntroFossilGuy
	buttonsound
	waitsfx
	special FossilMenu
	iffalse .nope
	if_equal 1, .helix
	if_equal 2, .dome
	if_equal 3, .amber
.nope
	writetext Text_ComeBackWithAFossil
	waitbutton
	closetext
	end
.helix
	setevent EVENT_LEFT_HELIX_TO_BE_REVIVED
	takeitem HELIX_FOSSIL, 1
	jump .takeawalk
.dome
	setevent EVENT_LEFT_DOME_TO_BE_REVIVED
	takeitem DOME_FOSSIL, 1
	jump .takeawalk
.amber
	setevent EVENT_LEFT_AMBER_TO_BE_REVIVED
	takeitem OLD_AMBER, 1
.takeawalk
	setevent EVENT_LEFT_FOSSIL_TO_BE_REVIVED
	setevent EVENT_000_STD
	writetext Text_TakeAWalk
	waitbutton
	closetext
	end

.give_fossil
	writetext Text_WhereHaveYouBeen
	buttonsound
	waitsfx
	checkevent EVENT_LEFT_HELIX_TO_BE_REVIVED
	iftrue .omanyte
	checkevent EVENT_LEFT_DOME_TO_BE_REVIVED
	iftrue .kabuto
	; aerodactyl
	pokenamemem AERODACTYL, 0
	writetext Text_ReceiveRevivedPokemon
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke AERODACTYL, 33
	jump .finish
.omanyte
	pokenamemem OMANYTE, 0
	writetext Text_ReceiveRevivedPokemon
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke OMANYTE, 23
	jump .finish
.kabuto
	pokenamemem KABUTO, 0
	writetext Text_ReceiveRevivedPokemon
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke KABUTO, 23
.finish
	if_equal 2, .PartyAndBoxFull
	clearevent EVENT_LEFT_DOME_TO_BE_REVIVED
	clearevent EVENT_LEFT_HELIX_TO_BE_REVIVED
	clearevent EVENT_LEFT_AMBER_TO_BE_REVIVED
	clearevent EVENT_LEFT_FOSSIL_TO_BE_REVIVED
	writetext Text_ComeBackAgain
	waitbutton
	closetext
	end
.PleaseWait
	writetext Text_StillBusy
	waitbutton
	closetext
	end
.PartyAndBoxFull
	writetext Text_NoRoomForFossilMon
	waitbutton
	closetext
	end
MovementData_0x5926f: ; 0x5926f
	step_up
	step_up
	step_left
	turn_head_up
	step_end
; 0x59274

MovementData_0x59274: ; 0x59274
	step_down
	step_end
; 0x59276

MovementData_0x59276: ; 0x59276
	step_up
	step_end
; 0x59278

UnknownText_0x59278: ; 0x59278
	text "Et voilà!"

	para "J'ai modifié ton"
	line "#DEX."

	para "Il a maintenant"
	line "une option pour"

	para "stocker les"
	line "données des ZARBI."

	para "Ils sont enregi-"
	line "stré dans l'ordre"
	cont "de capture."
	done
; 0x592fa

UnknownText_0x592fa: ; 0x592fa
	text "Le #DEX de"
	line "<PLAYER> est"
	cont "amélioré."
	done
; 0x59311

UnknownText_0x59311: ; 0x59311
	text "Les ZARBI que tu"
	line "capture seront"
	cont "tous enregistrés."

	para "Regarde combien il"
	line "en existe."
	done
; 0x5935f

UnknownText_0x5935f: ; 0x5935f
	text "Tu as capturé tous"
	line "les ZARBI?"

	para "Félicitations!"

	para "L'imprimante là-"
	line "bas peux imprimer"
	cont "les données de"
	cont "ZARBI."

	para "Tu peux l'utiliser"
	line "quand tu veux"
	done
; 0x593ed

UnknownText_0x593ed: ; 0x593ed
	text "Les RUINES ont"
	line "plus de 1500 ans."

	para "On ne sait pas qui"
	line "les a construit ou"
	cont "pourquoi."
	done
; 0x59445

UnknownText_0x59445: ; 0x59445
	text "Je me demande"
	line "combien de sortes"
	cont "de #MON il y a"
	cont "dans les RUINES."
	done
; 0x59478

UnknownText_0x59478: ; 0x59478
	text "Des #MON sont"
	line "apparus dans les"
	cont "RUINES?"

	para "C'est une incroya-"
	line "ble nouvelle!"

	para "Nous allons devoir"
	line "enquêter!"
	done
; 0x594cb

UnknownText_0x594cb: ; 0x594cb
	text "Grâce à ton aide,"
	line "nos recherches sur"

	para "les RUINES portent"
	line "enfin leurs fruits!"

	para "Les RUINES sem-"
	line "blent être un re-"
	cont "fuge pour #MON."
	done
; 0x5954f

UnknownText_0x5954f: ; 0x5954f
	text "Ces étranges figu-"
	line "res sur les murs"
	cont "des RUINES<...>"

	para "Ca doit être la"
	line "clé pour dévoiler"
	cont "les mystères des"
	cont "RUINES."
	done
; 0x595cb

UnknownText_0x595cb: ; 0x595cb
	text "Ce #MON étrange"
	line "que tu as vu dans"
	cont "les RUINES<...>"

	para "Il ressemble aux"
	line "dessins sur les"
	cont "murs."

	para "Hum<...>"

	para "Il doit y avoir"
	line "tellement de for-"
	cont "mes différentes<...>"
	done
; 0x59669

; possibly unused
;UnknownText_0x59669: ; 0x59669
;	text "We think something"
;	line "caused the cryptic"

;	para "patterns to appear"
;	line "in the RUINS."

	;para "We've focused our"
;	line "studies on that."
;	done
; 0x596d3

; possibly unused
;UnknownText_0x596d3: ; 0x596d3
;	text "According to my"
;	line "research<...>"

	;para "Those mysterious"
;	line "patterns appeared"

;	para "when the #COM"
;	line "CENTER was built."

;	para "It must mean that"
;	line "radio waves have"

;	para "some sort of a"
;	line "link<...>"
;	done
; 0x59769

UnknownText_0x59769: ; 0x59769
	text "Pourquoi ces an-"
	line "ciennent figures"

	para "n'apparaissent sur"
	line "le mur qu'au-"
	cont "jourd'hui?"

	para "Le mystère"
	line "s'épaissit<...>"
	done
; 0x597b6

UnknownText_0x597b6: ; 0x597b6
	text "RUINES ALPHA"

	para "10ème année"
	line "d'exploration."
	done
; 0x597d9

UnknownText_0x597d9: ; 0x597d9
	text "#MON mystère:"
	line "Nom: ZARBI"

	para "Un total de 26"
	line "formes sont"
	cont "référencées."
	done
; 0x5980e

UnknownText_0x5980e: ; 0x5980e
	text "Ca n'a pas l'air"
	line "de fonctionner<...>"
	done
; 0x5982d

UnknownText_0x5982d: ; 0x5982d
	text "ZARBI peut être"
	line "imprimé."
	done
; 0x59848

; possibly unused
UnknownText_0x59848: ; 0x59848
	text "Une photo du fon-"
	line "dateur du CENTRE"

	para "de RECHERCHE,"
	line "PROF.SOIE."
	done
; 0x59886

UnknownText_0x59886: ; 0x59886
	text "Il y a plein de"
	line "livres de science."

	para "Anciennes ruines<...>"
	line "Antiques mystères<...>"
	done
; 0x598d0

Text_IntroFossilGuy:
	text "Bonjour, je suis"
	line "un scientifique"
	cont "important."

	para "J'ai développé une"
	line "technologie qui"

	para "réssuscitent les"
	line "FOSSILES #MON."
	done

Text_TakeAWalk:
	text "Ca me prendra du"
	line "temps pour le ré-"
	cont "ssuciter."

	para "Pourquoi tu ne vas"
	line "pas faire un tour?"

	para "Ca devrait être"
	line "fini quand tu"
	cont "reviendras."
	done

Text_WhereHaveYouBeen:
	text "Te voilà!"
	line "Ou étais-tu?"

	para "L'expérience"
	line "a réussi!"
	done

Text_ReceiveRevivedPokemon:
	text "Nous avons réssu-"
	line "sciter le #MON"
	cont "antique:"
	cont "@"
	TX_RAM StringBuffer3
	text "!"

	para "<PLAYER> reçoit"
	line "@"
	TX_RAM StringBuffer3
	text "!"
	done

Text_StillBusy:
	text "Laisse-moi!"
	line "Je suis occupé"

	para "avec ton FOSSILE!"
	done

Text_ComeBackAgain:
	text "J'ai fait du bon"
	line "travail, hein?"

	para "Reviens si tu"
	line "trouves un autre"
	cont "FOSSILE."
	done

Text_ComeBackWithAFossil:
	text "Si tu trouves un"
	line "FOSSILE, ramène le"

	para "ici et je le"
	line "réssusciterais."
	done
Text_NoRoomForFossilMon:
	text "Tu n'as plus de"
	line "place."
	done

RuinsofAlphResearchCenter_MapEventHeader: ; 0x598d0
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 6, GROUP_RUINS_OF_ALPH_OUTSIDE, MAP_RUINS_OF_ALPH_OUTSIDE
	warp_def $7, $3, 6, GROUP_RUINS_OF_ALPH_OUTSIDE, MAP_RUINS_OF_ALPH_OUTSIDE

	; xy triggers
	db 0

	; signposts
	db 3
	signpost 5, 6, $0, MapRuinsofAlphResearchCenterSignpost0Script
	signpost 4, 3, $0, MapRuinsofAlphResearchCenterSignpost1Script
	signpost 1, 7, $0, MapRuinsofAlphResearchCenterSignpost2Script

	; people-events
	db 4
	person_event SPRITE_SCIENTIST, 9, 8, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ScientistScript_0x591e5, -1
	person_event SPRITE_SCIENTIST, 6, 9, $2, 1, 2, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ScientistScript_0x59214, -1
	person_event SPRITE_SCIENTIST, 9, 6, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ScientistScript_0x591d1, EVENT_SCIENTIST_IN_RUINS_OF_ALPH_RESEARCH_CENTER
	person_event SPRITE_SCIENTIST, 6, 4, $3, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, FossilRevivalGuyScript, -1
; 0x59916

