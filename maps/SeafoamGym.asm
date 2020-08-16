SeafoamGym_MapScriptHeader: ; 0x1ab4f4
	; trigger count
	db 1

	; triggers
	dw UnknownScript_0x1ab4fa, $0000

	; callback count
	db 0
; 0x1ab4fa

UnknownScript_0x1ab4fa: ; 0x1ab4fa
	end
; 0x1ab4fb

BlaineScript_0x1ab4fb: ; 0x1ab4fb
	faceplayer
	loadfont
	checkevent EVENT_BEAT_ELM
	iftrue BlainePostgameRematchScript
	checkevent EVENT_BLAINE_REMATCH
	iftrue BlaineAfterRematch
	checkevent EVENT_SET_BY_OAK_AFTER_16_BADGES
	iftrue BlaineRematchScript
	checkflag ENGINE_VOLCANOBADGE
	iftrue UnknownScript_0x1ab52b
	writetext UnknownText_0x1ab548
	waitbutton
	closetext
	winlosstext UnknownText_0x1ab646, $0000
	loadtrainer BLAINE, 1
	startbattle
	iftrue UnknownScript_0x1ab516
	appear $3
UnknownScript_0x1ab516: ; 0x1ab516
	returnafterbattle
	setevent EVENT_BEAT_BLAINE
	loadfont
	writetext UnknownText_0x1ab683
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_VOLCANOBADGE
	writetext UnknownText_0x1ab69d
	waitbutton
	verbosegiveitem TM_FIRE_BLAST, 1
	writetext AfterFireBlastText
	waitbutton
	closetext
	end
; 0x1ab52b

UnknownScript_0x1ab52b: ; 0x1ab52b
	writetext UnknownText_0x1ab71c
	waitbutton
	closetext
	end
; 0x1ab531

BlaineRematchScript:
	checkitem RESEARCHNOTE
	iffalse BlaineReject
	writetext BlaineBeforeRematchText
	waitbutton
	closetext
	winlosstext BlaineRematchBeatenText, $0000
	loadtrainer BLAINE, 2
	startbattle
	returnafterbattle
	setevent EVENT_BLAINE_REMATCH
	loadfont
	writetext BlaineAfterRematchText
	takeitem RESEARCHNOTE, 1
	waitbutton
	closetext
	end

BlaineAfterRematch:
	loadfont
	writetext BlaineAfterRematchText2
	waitbutton
	closetext
	end

BlaineReject:
	writetext BlaineRejectText
	waitbutton
	closetext
	applymovement $2, BlaineHeatedRage
	loadfont
	writetext BlaineRejectText2
	waitbutton
	closetext
	end

BlaineHeatedRage:
	half_step_right
	half_step_up
	half_step_left
	half_step_up
	half_step_right
	half_step_left
	step_end

BlaineRejectText:
	text "AUGUSTE: Mes"
	line "RECHERCHES!"

	para "Partis!"

	para "Les dernières tra-"
	line "ces dans le LABO-"
	cont "RATOIRE de CRAMOIS"
	cont "'ILE<...>"

	para "Comment ça a pu"
	line "arriver!?"
	
	para "Lorsque le VOLCAN"
	line "a explosé<...>"
	
	para "Non<...> non<...> non!"
	done

BlaineRejectText2:
	text "On dirait que ce"
	line "n'est pas le mo-"

	para "ment pour un"
	line "combat."
	done

BlaineBeforeRematchText:
	text "AUGUSTE: <...>!"
	line "Mes RECHERCHES!"

	para "Tu les as"
	line "retrouvés!"

	para "Merci de me les"
	line "avoir rapportés."
	
	para "Ce sont les der-"
	line "niers documents"
	
	para "rapportant l'em-"
	line "placement de MEW!"

	para "Bon, j'ai entendu"
	line "que tu voulais te"

	para "mesurer face à mon"
	line "feu le plus brû-"
	cont "lant."

	para "Ca va chauffer!"
	done

BlaineRematchBeatenText:
	text "Comment cela est-"
	line "il possible?"

	para "Mais tu ne battras"
	line "pas mon esprit!"
	done

BlaineAfterRematchText:
	text "AUGUSTE: C'est la"
	line "surchauffe<...>"

	para "Je vais reprendre"
	line "mes notes, mais"
	
	para "pour te remercier,"
	line "je vais te parta-"
	
	para "fer une CARTE de"
	line "GUYANA."

	para "D'après mes nom-"
	line "breuses recher-"
	
	para "ches, ce serait le"
	line "seul habitat connu"
	cont "de MEW."

	para "Bonne chance!"

	para "Moi non plus, je"
	line "n'abandonnerai pas"
	
	para "jusqu'à recons-"
	line "struire l'ARENE de"
	cont "CRAMOIS'ILE."
	done

BlaineAfterRematchText2:
	text "Gahahaha!!"

	para "Me battre contre"
	line "toi m'a gonflé à"
	cont "bloc!"
	done

SeafoamGymGuyScript: ; 0x1ab531
	faceplayer
	loadfont
	checkevent EVENT_TALKED_TO_SEAFOAM_GYM_GUY_ONCE
	iftrue .TalkedToSeafoamGymGuyScript
	writetext SeafoamGymGuyWinText
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_SEAFOAM_GYM_GUY_ONCE
	end

.TalkedToSeafoamGymGuyScript
	checkevent EVENT_SET_BY_OAK_AFTER_16_BADGES
	iffalse .skip_notes_check
	checkevent EVENT_SAW_MEW_IN_GARDEN
	iffalse .tell_about_garden
	checkevent EVENT_BLAINE_REMATCH
	iffalse .just_steamed
.skip_notes_check
	writetext SeafoamGymGuyWinText2
	waitbutton
	closetext
	end

.just_steamed
	writetext SeafoamGymGuySteamedText
	waitbutton
	closetext
	end

.tell_about_garden
	writetext SeafoamGymGuyGardenText
	waitbutton
	closetext
	end
; 0x1ab548

UnknownText_0x1ab548: ; 0x1ab548
	text "AUGUSTE: Waaah!"

	para "Mon ARENE de CRA-"
	line "MOIS'ILE a brûlé."

	para "Moi et mes #MON"
	line "de feu n'avons"

	para "plus de maison à"
	line "cause du volcan."

	para "Waaah!"

	para "Mais je suis tou-"
	line "jours un CHAMPION!"

	para "Et je fais la loi"
	line "dans cette grotte."

	para "Si tu peux me bat-"
	line "tre, je te donne-"
	cont "rai un BADGE."

	para "J'espère que tu as"
	line "de l'ANTI-BRULE!"
	done
; 0x1ab646

UnknownText_0x1ab646: ; 0x1ab646
	text "AUGUSTE: Pas mal."
	line "J'ai surchauffé<...>"

	para "Tu as mérité le"
	line "BADGE VOLCAN!"
	done
; 0x1ab683

UnknownText_0x1ab683: ; 0x1ab683
	text "<PLAYER> reçoit"
	line "le BADGE VOLCAN!"
	done
; 0x1ab69d

UnknownText_0x1ab69d: ; 0x1ab69d
	text "AUGUSTE: Prends"
	line "ça aussi."
	done

AfterFireBlastText:
	text "Ca contient"
	line "DEFLAGRATION!"

	para "Ne le gaspille"
	line "pas sur un type"
	cont "eau."

	para "Je gagnerais la"
	line "prochaine fois."

	para "Quand j'aurais"
	line "reconstruit l'ARE-"
	cont "NE de CRAMOIS'ILE,"

	para "nous combattrons"
	line "à nouveau."
	done
; 0x1ab71c

UnknownText_0x1ab71c: ; 0x1ab71c
	text "AUGUSTE: Mes"
	line "#MON de feu"

	para "seront invincibles"
	line "tu verras!"
	done
; 0x1ab759

SeafoamGymGuyWinText: ; 0x1ab759
	text "Yo!"

	para "<...> Hein? C'est déjà"
	line "fini?"

	para "Mince!"

	para "L'ARENE DE CRAMOI-"
	line "S'ILE était fermé"

	para "alors je ne savais"
	line "pas où te trouver."

	para "Mais t'es super"
	line "balèze même sans"

	para "mes conseils. Je"
	line "savais que tu"
	cont "gagnerais!"
	done
; 0x1ab806

SeafoamGymGuyWinText2: ; 0x1ab806
	text "Une ARENE #MON"
	line "peut être n'impor-"

	para "te où tant que le"
	line "CHAMPION est là."

	para "Pas besoin d'un"
	line "toit."
	done
; 0x1ab865

SeafoamGymGuySteamedText:
	text "AUGUSTE à l'air"
	line "en pétard<...>"

	para "Il devrait se"
	line "détendre un peu."
	done

SeafoamGymGuyGardenText:
	text "AUGUSTE à l'air"
	line "en pétard<...>"

	para "Oh! Dis!"

	para "Tu as entendu"
	line "cette rumeur"
	cont "bizarre?"

	para "Tu connais LEO, le"
	line "#MANIAC?"

	para "Il vivait au CAP"
	line "d'AZURIA avant."

	para "Les gens disent"
	line "qu'il y a un"

	para "jardin ou LEO"
	line "garde ses #MON"
	cont "rares."

	para "Toi qui travaille"
	line "sur un #DEX,"

	para "ça t'intéressera"
	line "peut-être."
	done

BlainePostgameRematchScript:
    writetext BlainePostgameRematchText
    yesorno
    iffalse .return
    closetext
    loadtrainer BLAINE, 2
    winlosstext BlainePostgameBeatenText, 0
    startbattle
    returnafterbattle
    loadfont
    writetext BlainePostgameAfterText
    waitbutton
.return
    closetext
    end

BlainePostgameRematchText:
	text "AUGUSTE: Woah!"
	
	para "Je ne m'attendais"
	line "pas à te revoir"
	cont "dans mon<...>"

	para "<...> <...> <...>"
	line "<...>mon <``>ARENE<''><...>"
	
	para "Oh? Tu veux un"
	line "nouveau combat?"
	done

BlainePostgameBeatenText:
	text "Impossible!"
	done

BlainePostgameAfterText:
	text "AUGUSTE: Tes #-"
	line "MON sont bou-"
	cont "illants!"

	para "Sans mon ARENE, je"
	line "ne suis qu'une pe-"
	cont "tite FLAMMECHE<...>"
	done
	
SeafoamGym_MapEventHeader: ; 0x1ab865
	; filler
	db 0, 0

	; warps
	db 1
	warp_def $5, $5, 3, GROUP_SEAFOAM_ISLANDS_ENTRANCE, MAP_SEAFOAM_ISLANDS_ENTRANCE

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 2
	person_event SPRITE_BLAINE, 6, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, BlaineScript_0x1ab4fb, -1
	person_event SPRITE_GYM_GUY, 9, 10, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, SeafoamGymGuyScript, EVENT_GYM_GUY_IN_SEAFOAM_GYM
; 0x1ab88a



