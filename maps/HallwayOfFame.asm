HallwayOfFame_MapScriptHeader: ; 0x180e2c
	; trigger count
	db 2

	; triggers
	dw HallwayTrigger0, $0000
	dw HallwayTrigger1, $0000

	; callback count
	db 0
; 0x180e39

HallwayTrigger0: ; 0x180e39
	priorityjump RealChampScript
	end
; 0x180e3d

HallwayTrigger1: ; 0x180e3d
	end
; 0x180e3e


RealChampScript: ; 0x180e74
	applymovement $0, MovementToChamp
	spriteface 2, LEFT
	loadfont
	checkevent EVENT_OAK_DEFEATED
	iftrue EGKRivalRematch
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .male_intro
	writetext AzureBeforeBattleText
	jump .selectbattle
.male_intro
	writetext RustBeforeBattleText
.selectbattle
	waitbutton
	closetext
	checkevent EVENT_GOT_CHARMANDER_FROM_OAK
	iftrue .charmander
	checkevent EVENT_GOT_SQUIRTLE_FROM_OAK
	iftrue .squirtle
	loadtrainer BLUE_RB, BLUE_RB_5C
	jump .startbattle
.squirtle
	loadtrainer BLUE_RB, BLUE_RB_5B
	jump .startbattle
.charmander
	loadtrainer BLUE_RB, BLUE_RB_5A
.startbattle
	winlosstext WinVsChampRustText, LoseVsChampRustText
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .got_rival_gender
	loadvar OtherTrainerClass, BLUE_RB_F
	winlosstext WinVsChampAzureText, LoseVsChampAzureText
.got_rival_gender
	writecode VAR_BATTLETYPE, BATTLETYPE_RIVAL_RB
	startbattle
	returnafterbattle
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .male_postfight
	writetext AzurePostFightText
	jump OakAppears
.male_postfight
	writetext RustPostFightText
OakAppears:
	waitbutton
	closetext
	pause 15
	appear $3
	playmusic MUSIC_SLOW_PALLET
	loadfont
	writetext HallwayOfFameOakText1
	waitbutton
	closetext
	spriteface $0, DOWN
	spriteface $2, DOWN
	applymovement $3, OakWalksUp
	loadfont
	checkevent EVENT_OAK_DEFEATED
	iftrue CheckDexForMtSilver
	writetext UnknownText_0x18121b
	waitbutton
	closetext
	applymovement $3, OakWalkBackToPlayer
	spriteface $0, LEFT
	spriteface $2, LEFT
	loadfont
	writetext OakAfterRivalTalkToPlayer
AfterOakTalk:
	buttonsound
	writetext OakAboutToHoF
	waitbutton
	closetext
	applymovement $3, OakRepositions
	follow $3, $0
	spriteface $2, UP
	applymovement $3, OakWalksUpMore
	stopfollow
	playsound SFX_EXIT_BUILDING
	disappear $3
	applymovement $0, MovementData_0x180f55
	loadvar wMapMusic, MUSIC_SLOW_PALLET
	warpcheck
	; playsound SFX_EXIT_BUILDING
	; disappear $0
	; special Function8c084
	; pause 15
	; dotrigger $1
	; warpfacing $1, GROUP_HALL_OF_FAME, MAP_HALL_OF_FAME, $4, $d
	end


EGKRivalRematch:
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .male_intro
	writetext AzureBeforeRematchText
	jump .selectbattle
.male_intro
	writetext RustBeforeRematchText
.selectbattle
	waitbutton
	closetext
	checkevent EVENT_GOT_CHARMANDER_FROM_OAK
	iftrue .charmander
	checkevent EVENT_GOT_SQUIRTLE_FROM_OAK
	iftrue .squirtle
	loadtrainer BLUE_RB, BLUE_RB_6C
	jump .startbattle
.squirtle
	loadtrainer BLUE_RB, BLUE_RB_6B
	jump .startbattle
.charmander
	loadtrainer BLUE_RB, BLUE_RB_6A
.startbattle
	winlosstext WinVsRematchRustText, LoseVsRematchRustText
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .got_rival_gender
	loadvar OtherTrainerClass, BLUE_RB_F
	winlosstext WinVsRematchAzureText, LoseVsRematchAzureText
.got_rival_gender
	writecode VAR_BATTLETYPE, BATTLETYPE_RIVAL_RB
	startbattle
	returnafterbattle
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .male_postfight
	writetext AzurePostRematchText
	jump OakAppears
.male_postfight
	writetext RustPostRematchText
	jump OakAppears


CheckDexForMtSilver:
	writetext OakToRivalAfterRemtachText
	waitbutton
	closetext
	applymovement $3, OakWalkBackToPlayer
	spriteface 0, LEFT
	loadfont
	checkevent EVENT_ALLOWED_INTO_ROUTE_28
	iftrue OakAlreadyDoneEverythingText
	checkevent EVENT_OAK_KNOWS_DEX_FULL
	iftrue OakAllowsRoute28
	writetext OakRematchText
	buttonsound
	writetext OakCheckDexAtHoF
	special ProfOaksPCBoot
	checkcode VAR_DEXCAUGHT
	if_less_than 251, DexNotFull
	writetext OakFullDex
	playsound SFX_DEX_FANFARE_230_PLUS
	waitsfx
	writetext OakCongrats
	setevent EVENT_ALLOWED_INTO_ROUTE_28
	jump AfterOakTalk

DexNotFull:
	writetext OakDexNotFull
	jump AfterOakTalk

OakAllowsRoute28:
	writetext OakRematchText
	buttonsound
	writetext OakCongrats
	setevent EVENT_ALLOWED_INTO_ROUTE_28
	jump AfterOakTalk
; 0x180f33

OakAlreadyDoneEverythingText:
	writetext OakRematchText
	jump AfterOakTalk

OakRematchText:
	text "PROF.CHEN: Ah,"
	line "<PLAY_G>!"

	para "Félicitations pour"
	line "ta victoire face"

	para "aux meilleurs"
	line "dresseurs #MON"
	cont "du monde."
	done

OakCheckDexAtHoF:
	text "Puis-je savoir où"
	line "en est ton"
	cont "#DEX?"
	prompt

OakFullDex:
	text "Wouah!"
	line "Ton #DEX est"
	cont "complet!"
	done

OakCongrats:
	text "Tu es un vrai"
	line "MAITRE #MON!"

	para "Tu sais quoi,"
	line "<PLAY_G>?"

	para "Je vais m'arranger"
	line "pour que tu ais"
	cont "accès au MONT"
	cont "ARGENT."

	para "C'est un endroit"
	line "très dangereux"

	para "pour les dresseurs"
	line "mais nous ferons"

	para "une exception pour"
	line "toi, <PLAY_G>."

	para "La porte est à l'"
	line "est de la ROUTE"
	cont "22."

	para "Pense à chercher"
	line "un DIPLOME à"
	para "CELADOPOLE en ré-"
	line "compense de ton"
	cont "exploit."

	done

OakDexNotFull:
	text "Ton aventure n'est"
	line "pas terminée."

	para "Repasse à mon LABO"
	line "lorsque ton #-"
	cont "DEX sera rempli."

	done

MovementToChamp:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	turn_head_right
	step_end

OakWalksUp:
	step_up
	step_up
	step_up
	step_up
	step_end

OakWalkBackToPlayer:
	step_left
	step_left
	step_up
	turn_head_right
	step_end

OakRepositions:
	step_up
	step_right
	step_end

OakWalksUpMore:
    step_up
    step_up
    step_up
    step_up
    step_up
    step_up
    step_up
    step_end

MovementData_0x180f55: ; 0x180f55
	step_up
	step_end

AzureBeforeBattleText:
	text "<PLAY_G>!"
	line "Tu vas bien!"

	para "Tu as réussi à"
	line "t'échapper de"
	cont "l'OCEANE!"

	para "Je savais que tu"
	line "survivrais!"

	para "J'ai continué de"
	line "prendre soin de"
	cont "mes #MON."

	para "Et maintenant<...>"

	para "Je suis là!"

	para "J'ai surmonté le"
	line "CONSEIL des 4!"

	para "Je suis la nou-"
	line "velle MAITRE!"

	para "<...>"

	para "<PLAY_G>!"

	para "Tu sais ce que ça"
	line "veut dire?"

	para "Nous allons enfin"
	line "disputer le combat"
	cont "dont nous avions"
	cont "toujours rêvé!"

	para "Je te défie en"
	line "tant que MAITRE"
	cont "#MON!"
	done

RustBeforeBattleText:
	text "Hé! Je m'attendais"
	line "a te voir ici,"
	cont "<PLAY_G>!"

	para "Je savais que tu"
	line "t'en étais sortie"
	cont "à l'OCEANE."

	para "Mon rival ne s'a-"
	line "baisserais pas à"
	cont "perdre face à la"
	cont "TEAM ROCKET!"

	para "Maintenant que tu"
	line "es là, il faut que"
	cont "tu saches."

	para "En améliorant mon"
	line "#DEX, j'ai"
	cont "recherché les"
	cont "#MON sur-"
	cont "puissants!"

	para "J'ai ainsi crée"
	line "l'équipe ultime,"
	cont "efficace contre"
	cont "tous les types de"
	cont "#MON!"

	para "Et tu sais quoi?!"
	line "Je suis maintenant"
	cont "le MAITRE #MON!"

	para "<PLAY_G>!"
	line "Tu sais ce que ça"
	cont "veut dire?"

	para "Ecoute ça."

	para "Je suis le"
	line "dresseur le plus"
	cont "puissant du monde!"
	done

WinVsChampAzureText:
	text "Roooh<...> Je ne suis"
	line "pas aussi bonne"
	cont "que toi!"
	done
LoseVsChampAzureText
	text "C'était un beau"
    line "combat."

    para "Mais c'est moi la"
    line "meilleure!"
	done

LoseVsChampRustText:
	text "Haha!"
	line "Je savais que"
	
	para "j'étais le plus"
	line "fort!"
	done

WinVsChampRustText:
	text "Raaaah<...>"

	para "Pourquoi j'ai per-"
	line "du face à une"
	cont "idiote comme toi?"
	done

AzurePostFightText:
	text "<...>Bon, je te"
	line "l'accorde."

	para "Tu es meilleur"
	line "dresseur que moi."
	done

RustPostFightText:
	text "Et zut alors!"
	line "Tu es le nouveau"
	cont "MAITRE #MON!"
	para "Alors ça<...>"
	line "Ca me la coupe."
	done

HallwayOfFameOakText1:
	text "CHEN: <GREEN>!"
	done

AzureBeforeRematchText:
	text "<PLAYER>! Tu es"
	line "là!"

	para "J'ai travaillé dur"
	line "pour élever mes"

	para "#MON depuis"
	line "notre dernier"
	cont "combat."

	para "Et j'ai battu l'"
	line "ultime défi du"
	cont "CONSEIL des 4!"

	para "Je suppose que toi"
	line "aussi puisque tu"
	cont "es là!"

	para "C'est génial!"
	line "Félicitations!"

	para "Bien, <PLAYER>!"

	para "Je te défie une"
	line "fois de plus dans"
	cont "un combat #MON!"

	para "Je veux voir à"
	line "quel point nous"
	cont "nous sommes amé-"
	cont "liorés!"
	done

RustBeforeRematchText:
	text "<PLAYER>! Ravi de"
	line "te revoir!"

	para "Pendant que tu"
	line "faisais joujou"
	cont "avec ton #DEX<...>"

	para "J'ai continué"
	line "d'entraîner mes"
	cont "#MON!"

	para "Et me voilà MAITRE"
	line "de la LIGUE"
	cont "#MON!"

	para "J'ai battu l'ulti-"
	line "me défi du CONSEIL"
	cont "des 4!"

	para $56, " ",$56, " ",$56
	line "Hein?! Oh."

	para "Si tu es là, c'est"
	line "que tu les as"
	cont "battus aussi."

	para "Tu veux le titre"
	line "de MAITRE?"

	para "Essaie un peu de"
	line "me le prendre!"
	done

WinVsRematchAzureText:
	text "Incroyable!"

	para "Tu es plus fort"
	line "que n'importe qui"
	cont "que je connaisse!"
	done
LoseVsRematchAzureText:
	text "Hi hi<...>"

	para "Je suis meilleure"
	line "que toi, <PLAYER>."
	done
WinVsRematchRustText:
	text "QUOI?!"

	para "J'ai encore perdu"
	line "contre toi?"
	done
LoseVsRematchRustText:
	text "Ha!"

	para "Tu passes trop de"
	line "temps sur ton"

	para "#DEX et pas"
	line "assez avec ton"
	cont "équipe!"

	para "Bon, à plus tard"
	line "<PLAYER>!"
	done

AzurePostRematchText:
	text "Wouah, <PLAYER>."
	line "Tu es tellement"
	cont "fort<...>"

	para "Tu pourras me"
	line "battre avec une"
	cont "main dans le dos<...>"
	; Wow Deku OneHand
	done

RustPostRematchText:
	text "<......> <......> <......>"
	line "<......> <......> <......>"

	para "Argh! Pourquoi je"
	line "ne peux jamais te"
	cont "battre, <PLAYER>?"

	para "Tu as toujours un"
	line "coup d'avance!"
	cont "C'est pas juste!"
	done

OakToRivalAfterRemtachText:
	text "PROF.CHEN: Je suis"
	line "encore déçu!"

	para "J'ai entendu que"
	line "tu avais conquis"

	para "le défi suprême du"
	line "CONSEIL des 4!"

	para "Mais quand je suis"
	line "arrivé, tu avais"
	cont "encore perdu!"

	para "Je te l'ai dit"
	line "pourtant, tu ne"

	para "peux pas gagner si"
	line "tu ne traites pas"
	cont "tes #MON avec"
	cont "amour."
	done

UnknownText_0x18121b: ; 0x18121b
	text "PROF.CHEN: Je suis"
	line "déçu, <GREEN>!"

	para "Apprenant que tu"
	line "avais vaincu le"
	cont "CONSEIL des 4, je"
	cont "suis venu en"
	cont "vitesse!"

	para "Mais le temps"
	line "d'arriver jusqu'"
	cont "ici, tu avais déjà"
	cont "perdu<...>"

	para "<GREEN>! As-tu"
	line "compris pourquoi"
	cont "ton équipe à"
	cont "perdu?"

	para "Tu as oublié de"
	line "traiter tes"

	para "#MON avec"
	line "amour!"

	para "Sans ça, tu ne"
	line "redeviendras"
	cont "jamais MAITRE!"
	done

OakAfterRivalTalkToPlayer:

	text "CHEN: <PLAY_G>!"
	para "Cette victoire<...>"
	line "Tu ne la dois pas"

	para "entièrement à tes"
	line "qualités!"

	para "Tu as tant baigné"
	line "d'amour tes chers"
	cont "petits #MON!"

	para "Et ça<...>"
	line "C'est bien."
	done
; 0x18134b

OakAboutToHoF:
	text "<PLAY_G>!"
	line "Suis-moi!"
	done


HallwayOfFame_MapEventHeader: ; 0x1813f4
	; filler
	db 0, 0

	; warps
	db 4
	warp_def 19, $4, 3, GROUP_LANCES_ROOM, MAP_LANCES_ROOM
	warp_def 19, $5, 4, GROUP_LANCES_ROOM, MAP_LANCES_ROOM
	warp_def $2, $4, 1, GROUP_HALL_OF_FAME, MAP_HALL_OF_FAME
	warp_def $2, $5, 2, GROUP_HALL_OF_FAME, MAP_HALL_OF_FAME

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 2
	person_event SPRITE_EGK_RIVAL, 14, 9, $6, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, -1
	person_event SPRITE_OAK, 19, 9, $7, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_MARY_AND_OAK_IN_LANCES_ROOM
; 0x181445

