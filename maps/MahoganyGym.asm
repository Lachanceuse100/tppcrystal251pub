MahoganyGym_MapScriptHeader: ; 0x199a9c
	; trigger count
	db 0

	; callback count
	db 0
; 0x199a9e

PryceScript_0x199a9e: ; 0x199a9e
	faceplayer
	loadfont
	checkevent EVENT_BEAT_ELM
	iftrue PrycePostgameRematchScript
	checkevent EVENT_PRYCE_REMATCH
	iftrue PryceAfterRematch
	checkevent EVENT_SET_BY_OAK_AFTER_16_BADGES
	iftrue PryceRematchScript
	checkevent EVENT_BEAT_PRYCE
	iftrue UnknownScript_0x199ac8
	writetext UnknownText_0x199b8d
	waitbutton
	closetext
	winlosstext UnknownText_0x199cb3, $0000
	loadtrainer PRYCE, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_PRYCE
	loadfont
	writetext UnknownText_0x199d3b
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_GLACIERBADGE
	checkcode VAR_BADGES
	scall UnknownScript_0x199af6
UnknownScript_0x199ac8: ; 0x199ac8
	checkevent EVENT_GOT_TM16_ICY_WIND
	iftrue UnknownScript_0x199af0
	setevent EVENT_BEAT_SKIER_ROXANNE
	setevent EVENT_BEAT_SKIER_CLARISSA
	setevent EVENT_BEAT_BOARDER_RONALD
	setevent EVENT_BEAT_BOARDER_BRAD
	setevent EVENT_BEAT_BOARDER_DOUGLAS
	writetext UnknownText_0x199d55
	buttonsound
	verbosegiveitem TM_ICY_WIND, 1
	iffalse UnknownScript_0x199af4
	setevent EVENT_GOT_TM16_ICY_WIND
	writetext UnknownText_0x199def
	waitbutton
	closetext
	end
; 0x199af0

PryceRematchScript:
	writetext PryceRematchTextBefore
	waitbutton
	closetext
	winlosstext PryceRematchBeatenText, $0000
	loadtrainer PRYCE, 2
	startbattle
	returnafterbattle
	setevent EVENT_PRYCE_REMATCH
	loadfont ;fallthrough
	writetext PryceSilverWingText
	buttonsound
	verbosegiveitem SILVER_WING, 1
	writetext PryceAfterSilverWingText
	waitbutton
	closetext
	end


PryceAfterRematch:
	writetext PryceAfterRematchText
	waitbutton
	closetext
	end

UnknownScript_0x199af0: ; 0x199af0
	writetext UnknownText_0x199e59
	waitbutton
UnknownScript_0x199af4: ; 0x199af4
	closetext
	end
; 0x199af6

UnknownScript_0x199af6: ; 0x199af6
	if_equal $7, UnknownScript_0x199b02
	if_equal $6, UnknownScript_0x199aff
	end
; 0x199aff

UnknownScript_0x199aff: ; 0x199aff
	jumpstd goldenrodrockets
; 0x199b02

UnknownScript_0x199b02: ; 0x199b02
	jumpstd radiotowerrockets
; 0x199b05

TrainerSkierRoxanne: ; 0x199b05
	; bit/flag number
	dw $592

	; trainer group && trainer id
	db SKIER, ROXANNE

	; text when seen
	dw SkierRoxanneSeenText

	; text when trainer beaten
	dw SkierRoxanneBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SkierRoxanneScript
; 0x199b11

SkierRoxanneScript: ; 0x199b11
	talkaftercancel
	loadfont
	writetext UnknownText_0x19a116
	waitbutton
	closetext
	end
; 0x199b19

TrainerSkierClarissa: ; 0x199b19
	; bit/flag number
	dw $593

	; trainer group && trainer id
	db SKIER, CLARISSA

	; text when seen
	dw SkierClarissaSeenText

	; text when trainer beaten
	dw SkierClarissaBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SkierClarissaScript
; 0x199b25

SkierClarissaScript: ; 0x199b25
	talkaftercancel
	loadfont
	writetext UnknownText_0x19a18f
	waitbutton
	closetext
	end
; 0x199b2d

TrainerBoarderRonald: ; 0x199b2d
	; bit/flag number
	dw $40e

	; trainer group && trainer id
	db BOARDER, RONALD

	; text when seen
	dw BoarderRonaldSeenText

	; text when trainer beaten
	dw BoarderRonaldBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw BoarderRonaldScript
; 0x199b39

BoarderRonaldScript: ; 0x199b39
	talkaftercancel
	loadfont
	writetext UnknownText_0x199f2d
	waitbutton
	closetext
	end
; 0x199b41

TrainerBoarderBrad: ; 0x199b41
	; bit/flag number
	dw $40f

	; trainer group && trainer id
	db BOARDER, BRAD

	; text when seen
	dw BoarderBradSeenText

	; text when trainer beaten
	dw BoarderBradBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw BoarderBradScript
; 0x199b4d

BoarderBradScript: ; 0x199b4d
	talkaftercancel
	loadfont
	writetext UnknownText_0x199fdd
	waitbutton
	closetext
	end
; 0x199b55

TrainerBoarderDouglas: ; 0x199b55
	; bit/flag number
	dw $410

	; trainer group && trainer id
	db BOARDER, DOUGLAS

	; text when seen
	dw BoarderDouglasSeenText

	; text when trainer beaten
	dw BoarderDouglasBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw BoarderDouglasScript
; 0x199b61

BoarderDouglasScript: ; 0x199b61
	talkaftercancel
	loadfont
	writetext UnknownText_0x19a047
	waitbutton
	closetext
	end
; 0x199b69

MahoganyGymGuyScript: ; 0x199b69
	faceplayer
	loadfont
	checkevent EVENT_BEAT_PRYCE
	iftrue .MahoganyGymGuyWinScript
	writetext MahoganyGymGuyText
	waitbutton
	closetext
	end

.MahoganyGymGuyWinScript
	writetext MahoganyGymGuyWinText
	waitbutton
	closetext
	end
; 0x199b7d

MapMahoganyGymSignpost1Script: ; 0x199b7d
	checkflag ENGINE_GLACIERBADGE
	iftrue UnknownScript_0x199b86
	jumpstd gymstatue1
; 0x199b86

UnknownScript_0x199b86: ; 0x199b86
	trainertotext PRYCE, 1, $1
	jumpstd gymstatue2
; 0x199b8d

UnknownText_0x199b8d: ; 0x199b8d
	text "Les #MON ont"
	line "beaucoup d'aven-"

	para "tures au cours de"
	line "leur vie, tout"
	cont "comme nous."

	para "Moi aussi, j'ai"
	line "beaucoup souffert"
	cont "dans ma vie."

	para "Puisque je suis"
	line "ton aîné, laisse-"
	cont "moi t'expliquer<...>"

	para "Je suis avec les"
	line "#MON depuis"

	para "bien avant ta"
	line "naissance."

	para "Je ne perds pas"
	line "facilement."

	para "Moi, FREDO, le"
	line "dresseur du froid,"

	para "je vais te montrer"
	line "ma puissance!"
	done
; 0x199cb3

PryceRematchTextBefore:
	text "Tu as eu des mo-"
	line "ments difficiles."
	
	para "Mais ne pense pas"
	line "que tu me battras"
	cont "facilement."

	para "L'heure n'est plus"
	line "aux mots."

	para "Ce combat #MON"
	line "sera notre seul"
	cont "dialogue."
	done

PryceRematchBeatenText:
	text "Hmm."

	para "Je vois que je"
	line "n'ai plus de"
	cont "chance<...>"
	done

PryceSilverWingText:
	text "Oui, oui<...>"

	para "C'était un combat"
	line "impressionnant."

	para "Je voudrais que tu"
	line "ais ceci."

	done

PryceAfterSilverWingText:
	text "J'ai trouvé ceci"
	line "à la fin de mes"
	cont "aventures."

	para "Mais l'heure est"
	line "venu pour moi de"
	cont "laisser la place"
	cont "aux jeunes."

	para "Dans ce cas, tu es"
	line "la seule personne"
	
	para "à qui je pense"
	line "pouvoir confier"
	cont "ceci."

	para "Finis ce que je"
	line "n'ai pu accomplir."

	done

PryceAfterRematchText:
	text "Tu devrais être"
	line "capable de sur-"
	cont "passer n'importe"
	cont "quoi."

	para "Même LUGIA<...>"

	done

UnknownText_0x199cb3: ; 0x199cb3
	text "Ah, je suis très"
	line "impressionné par"
	cont "ta prouesse."

	para "Avec un tempéra-"
	line "ment comme le"

	para "tien, tu surmon-"
	line "teras tous les"

	para "obstacles de la"
	line "vie."

	para "Tu as bien mérité"
	line "ce BADGE!"
	done
; 0x199d3b

UnknownText_0x199d3b: ; 0x199d3b
	text "<PLAYER> reçoit"
	line "le BADGEGLACIER."
	done
; 0x199d55

UnknownText_0x199d55: ; 0x199d55
	text "Ce BADGE permet à"
	line "tes #MON de"
	cont "développer leurs"
	cont "SPECIAL."

	para "Il permet aussi à"
	line "tes #MON"
	cont "d'utiliser SIPHON"
	cont "pour passer les"
	cont "tourbillons."

	para "Et ça<...> C'est un"
	line "cadeau de ma part!"
	done
; 0x199def

UnknownText_0x199def: ; 0x199def
	text "Cette CT contient"
	line "VENT GLACE."

	para "Il inflige des"
	line "dégâts et réduit"
	cont "la VITESSE des"
	cont "#MON."

	para "Il incarne la"
	line "rudesse du froid"
	cont "hivernal."
	done
; 0x199e59

UnknownText_0x199e59: ; 0x199e59
	text "Lorsque la glace"
	line "et la neige fon-"
	cont "dent, le printemps"
	cont "arrive."

	para "Toi et tes #MON"
	line "serez ensembles"

	para "pendant des"
	line "années."

	para "Profitez bien de"
	line "ces instants."
	done
; 0x199ee1

BoarderRonaldSeenText: ; 0x199ee1
	text "Je vais geler tes"
	line "#MON et tu ne"
	
	para "pourras plus rien"
	line "faire!"
	done
; 0x199f10

BoarderRonaldBeatenText: ; 0x199f10
	text "Zut. Je n'ai rien"
	line "pu faire!"
	done
; 0x199f2d

UnknownText_0x199f2d: ; 0x199f2d
	text "Je crois qu'il"
	line "existe une capaci-"

	para "té que les #MON"
	line "peuvent utiliser"
	cont "même en étant"
	cont "gelés."
	done
; 0x199f65

BoarderBradSeenText: ; 0x199f65
	text "Cette ARENE a le"
	line "sol glissant."

	para "C'est marrant,"
	line "pas vrai?"

	para "Mais fini de"
	line "jouer!"
	done
; 0x199fbd

BoarderBradBeatenText: ; 0x199fbd
	text "Tu vois à quel"
	line "point on est"
	cont "sérieux ici?"
	done
; 0x199fdd

UnknownText_0x199fdd: ; 0x199fdd
	text "Cette ARENE est"
	line "superbe. J'adore"
	cont "surfer avec mes"
	cont "#MON!"
	done
; 0x19a00f

BoarderDouglasSeenText: ; 0x19a00f
	text "Je connais le"
	line "secret de FREDO."
	done
; 0x19a026

BoarderDouglasBeatenText: ; 0x19a026
	text "OK. Je vais te"
	line "le dire."
	done
; 0x19a047

UnknownText_0x19a047: ; 0x19a047
	text "Le secret de la"
	line "force de FREDO<...>"

	para "Il médite derrière"
	line "une cascade tous"

	para "les jours pour"
	line "accroître sa force"
	
	para "et développer son"
	line "esprit."
	done
; 0x19a0ae

SkierRoxanneSeenText: ; 0x19a0ae
	text "Pour vaincre"
	line "FREDO, notre"

	para "CHAMPION d'ARENE,"
	line "tu dois penser"
	cont "avant de patiner."
	done
; 0x19a0f4

SkierRoxanneBeatenText: ; 0x19a0f4
	text "Bah moi je te bats"
	line "en ski!"
	done
; 0x19a116

UnknownText_0x19a116: ; 0x19a116
	text "Si tu ne patines"
	line "pas avec préci-"

	para "sion, tu n'iras"
	line "pas bien loin dans"
	cont "cette ARENE."
	done
; 0x19a157

SkierClarissaSeenText: ; 0x19a157
	text "Regarde ce virage"
	line "parallèle!"
	done
; 0x19a174

SkierClarissaBeatenText: ; 0x19a174
	text "Non! Tu m'as faite"
	line "déraper!"
	done
; 0x19a18f

UnknownText_0x19a18f: ; 0x19a18f
	text "Je n'aurais pas"
	line "dû me vanter<...>"
	done
; 0x19a1bf

MahoganyGymGuyText: ; 0x19a1bf
	text "FREDO est un vété-"
	line "ran qui entraîne"

	para "des #MON depuis"
	line "50 ans."

	para "Il prétends être"
	line "bon pour geler ses"

	para "adversaires de ses"
	line "attaques de GLACE."

	para "Fais-le fondre"
	line "avec ton ambition"
	cont "brûlante!"
	done
; 0x19a275

MahoganyGymGuyWinText: ; 0x19a275
	text "PRYCE is some-"
	line "thing, but you're"
	cont "something else!"

	para "That was a hot"
	line "battle that"

	para "bridged the gen-"
	line "eration gap!"
	done
; 0x19a2df

PrycePostgameRematchScript:
    writetext PrycePostgameRematchText
    yesorno
    iffalse .return
    closetext
    loadtrainer PRYCE, 2
    winlosstext PrycePostgameBeatenText, 0
    startbattle
    returnafterbattle
    loadfont
    writetext PrycePostgameAfterText
    waitbutton
.return
    closetext
    end
	
PrycePostgameRematchText:
	text "Bonjour, <PLAY_G>."

	para "Je vois que tu as"
	line "battu plusieurs"
	cont "dresseurs expé-"
	line "rimentés."

	para "Veux-tu de nouveau"
	line "te battre?"

	done
	
PrycePostgameBeatenText:
	text "Pfff<...>"
	
	para "Je n'ai toujours"
	line "pas assez de"
	cont "chance."
	done
	
PrycePostgameAfterText:

	text "Tu n'as pas gagné"
	line "grâce à la chance<...>"
	cont "Non."

	para "Tu es un dresseur"
	line "de talent."
	
	para "Rien ne peut s'op-"
	line "poser à toi."
	done
	
MahoganyGym_MapEventHeader: ; 0x19a2df
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $11, $4, 3, GROUP_MAHOGANY_TOWN, MAP_MAHOGANY_TOWN
	warp_def $11, $5, 3, GROUP_MAHOGANY_TOWN, MAP_MAHOGANY_TOWN

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 15, 3, $0, MapMahoganyGymSignpost1Script
	signpost 15, 6, $0, MapMahoganyGymSignpost1Script

	; people-events
	db 8
	person_event SPRITE_PRYCE, 7, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, PryceScript_0x199a9e, EVENT_SET_BY_OAK_AFTER_16_BADGES
	person_event SPRITE_BUENA, 10, 8, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, TrainerSkierRoxanne, -1
	person_event SPRITE_ROCKER, 21, 4, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 1, TrainerBoarderRonald, -1
	person_event SPRITE_BUENA, 21, 13, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, TrainerSkierClarissa, -1
	person_event SPRITE_ROCKER, 13, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 1, TrainerBoarderBrad, -1
	person_event SPRITE_ROCKER, 8, 6, $a, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 1, TrainerBoarderDouglas, -1
	person_event SPRITE_GYM_GUY, 19, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, MahoganyGymGuyScript, -1
	person_event SPRITE_PRYCE, 19, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, PryceScript_0x199a9e, EVENT_MORTY_IS_AT_BACK_OF_GYM
; 0x19a354

