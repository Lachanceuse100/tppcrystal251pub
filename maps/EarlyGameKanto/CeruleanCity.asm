CeruleanCityRB_MapScriptHeader: ; 0x184000
	; trigger count
	db 2
	dw .Trigger0, 0
	dw .Trigger1, 0

	; callback count
	db 1
	dbw 5, .Callback
.Trigger0
	end
.Trigger1
	end
.Callback
	disappear $2
	return

CeruleanCityRivalBattleLeftTrigger:
	scall CeruleanCityRivalBattle
	spriteface $0, RIGHT
	applymovement $2, Movement_CeruleanRivalExitsRight
	spriteface $0, DOWN
	applymovement $2, Movement_CeruleanRivalExits
	disappear $2
	special RestartMapMusic
	end

CeruleanCityRivalBattleRightTrigger:
	moveperson $2, 21, 2
	scall CeruleanCityRivalBattle
	spriteface $0, LEFT
	applymovement $2, Movement_CeruleanRivalExitsLeft
	spriteface $0, DOWN
	applymovement $2, Movement_CeruleanRivalExits
	disappear $2
	special RestartMapMusic
	end

CeruleanCityRivalBattle:
	appear $2
	setlasttalked $2
	playmusic MUSIC_RIVAL_RB
	applymovement $2, Movement_CeruleanRivalEnters
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .male_intro
	writetext _CeruleanCityText_19668F
	jump .selectbattle
.male_intro
	writetext _CeruleanCityText_19668
.selectbattle
	waitbutton
	closetext
	checkevent EVENT_GOT_CHARMANDER_FROM_OAK
	iftrue .charmander
	checkevent EVENT_GOT_SQUIRTLE_FROM_OAK
	iftrue .squirtle
	loadtrainer BLUE_RB, BLUE_RB_3C
	jump .startbattle
.squirtle
	loadtrainer BLUE_RB, BLUE_RB_3B
	jump .startbattle
.charmander
	loadtrainer BLUE_RB, BLUE_RB_3A
.startbattle
	winlosstext _CeruleanCityText_1966d, _CeruleanCityText_19672
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .got_rival_gender
	loadvar OtherTrainerClass, BLUE_RB_F
	winlosstext _CeruleanCityText_1966dF, _CeruleanCityText_19672F
.got_rival_gender
	writecode VAR_BATTLETYPE, BATTLETYPE_RIVAL_RB
	startbattle
	returnafterbattle
	special RestartMapMusic
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .male_outro
	writetext _CeruleanCityText_19677F
	jump .finish
.male_outro
	writetext _CeruleanCityText_19677
.finish
	waitbutton
	closetext
	dotrigger $1
	playmusic MUSIC_RIVAL_AFTER_RB
	end

CeruleanCityRBSuperNerdScript:
	jumptextfaceplayer _CeruleanCityText3

CeruleanCityRBCooltrainerM1Script:
	faceplayer
	loadfont
	checkevent EVENT_CERULEAN_CITY_RB_STOPPED_ROBBERY
	iftrue .after
	writetext _CeruleanCityText4
	waitbutton
	closetext
	end
.after
	writetext _CeruleanCityText4After
	waitbutton
	closetext
	end

CeruleanCityRBCooltrainerM2Script:
	jumptextfaceplayer _CeruleanCityText5

CeruleanCityRBLass1Script:
	random 3
	if_equal 1, .text1
	if_equal 2, .text2
	jumptext _CeruleanCityText_19730
.text1
	jumptext _CeruleanCityText_19735
.text2
	loadfont
	writetext _CeruleanCityText_1973a
	waitbutton
	closetext
	faceplayer
	loadfont
	writetext _CeruleanCityText_1973a_2
	waitbutton
	closetext
	checkevent EVENT_CERULEAN_CITY_RB_STOPPED_ROBBERY
	iftrue .post_robbery_sprite
	spriteface $6, LEFT
	end
.post_robbery_sprite
	spriteface $7, LEFT
	end

CeruleanCityRBSlowbroScript:
	waitsfx
	cry SLOWBRO
	random 4
	if_equal 1, .text1
	if_equal 2, .text2
	if_equal 3, .text3
	jumptext _CeruleanCityText_1976f
.text1
	jumptext _CeruleanCityText_19774
.text2
	jumptext _CeruleanCityText_19779
.text3
	jumptext _CeruleanCityText_1977e

CeruleanCityRBLass2Script:
	jumptextfaceplayer _CeruleanCityText9

CeruleanCityRBRocketScript:
	loadfont
	writetext CeruleanCityRBRocketText1
	waitbutton
	closetext
	pause 15
	showemote $0, $c, 15
	pause 15
	faceplayer
	playmusic MUSIC_HIKER_ENCOUNTER
	loadfont
	writetext CeruleanCityRBRocketText2
	waitbutton
	closetext
	loadtrainer GRUNTM, 37
	winlosstext CeruleanCityRBRocketWinText, 0
	startbattle
	returnafterbattle
	special RestartMapMusic
	loadfont
	writetext CeruleanCityRBRocketText3
	waitbutton
	closetext
	disappear $6
	disappear $8
	appear $7
	appear $9
	moveperson $d, 27, 11
	checkcode VAR_FACING
	if_equal RIGHT, CeruleanRBGrampsScript_Right
	if_equal LEFT, CeruleanRBGrampsScript_Left
	spriteface $0, LEFT
	applymovement $c, Movement_CeruleanRocketRBRunsAway_playerbelow
	disappear $c
	pause 15
	appear $d
	playsound SFX_EXIT_BUILDING
	waitsfx
	applymovement $d, Movement_CeruleanGrampsRBApproaches_playerbelow
	loadfont
	writetext CeruleanCityRBRocketText4
	buttonsound
	verbosegiveitem TM_THIEF, 1
	iffalse .bag_full_up
	writetext CeruleanCityRBRocketText5
	waitbutton
	closetext
	applymovement $d, Movement_CeruleanGrampsRBRetreats_playerbelow
	disappear $d
	playsound SFX_ENTER_DOOR
	waitsfx
	end

.bag_full_up
	closetext
	applymovement $d, Movement_CeruleanGrampsRBPartialRetreat_playerbelow
	spriteface $d, DOWN
	end

CeruleanRBGrampsScript_Left
	spriteface $0, LEFT
	applymovement $c, Movement_CeruleanRocketRBRunsAway_playerright
	disappear $c
	pause 15
	appear $d
	playsound SFX_EXIT_BUILDING
	waitsfx
	applymovement $d, Movement_CeruleanGrampsRBApproaches_playerright
	loadfont
	writetext CeruleanCityRBRocketText4
	buttonsound
	verbosegiveitem TM_THIEF, 1
	iffalse .bag_full_left
	writetext CeruleanCityRBRocketText5
	waitbutton
	closetext
	applymovement $d, Movement_CeruleanGrampsRBRetreats_playerright
	disappear $d
	playsound SFX_ENTER_DOOR
	waitsfx
	end

.bag_full_left
	closetext
	applymovement $d, Movement_CeruleanGrampsRBPartialRetreat_playerright
	spriteface $d, DOWN
	end

CeruleanRBGrampsScript_Right
	spriteface $0, LEFT
	applymovement $c, Movement_CeruleanRocketRBRunsAway_playerleft
	disappear $c
	pause 15
	appear $d
	playsound SFX_EXIT_BUILDING
	waitsfx
	follow $0, $d
	applymovement $0, Movement_CeruleanGrampsRBApproaches_playerleft
	stopfollow
	spriteface $d, RIGHT
	loadfont
	writetext CeruleanCityRBRocketText4
CeruleanCityRBGrampsScriptContinue:
	buttonsound
	verbosegiveitem TM_THIEF, 1
	iffalse .bag_full_right
	writetext CeruleanCityRBRocketText5
	waitbutton
	closetext
	applymovement $d, Movement_CeruleanGrampsRBRetreats_playerleft
	disappear $d
	playsound SFX_ENTER_DOOR
	waitsfx
	end

.bag_full_right
	closetext
	spriteface $d, DOWN
	end

CeruleanCityRBGrampsScript:
	faceplayer
	loadfont
	writetext CeruleanCityRBRocketText6
	jump CeruleanCityRBGrampsScriptContinue

MapCeruleanCityRBSignpost0Script:
	jumptext _CeruleanCityText12

MapCeruleanCityRBSignpost1Script:
	jumptext _CeruleanCityText17

MapCeruleanCityRBSignpost2Script:
	jumptext _CeruleanCityText16

MapCeruleanCityRBSignpost3Script:
	jumptext _CeruleanCityText13

MapCeruleanCityRBSignpost6Script:
	jumpstd pokecentersign

MapCeruleanCityRBSignpost7Script:
	jumpstd martsign

MapCeruleanCityRBLockedDoorScript:
	jumptext Text_CeruleanCityRBLockedDoor

MapCeruleanCityRBHiddenRareCandy:
	dwb EVENT_CERULEAN_CITY_HIDDEN_RARE_CANDY, RARE_CANDY

Movement_CeruleanRivalExitsRight:
	slow_step_right
	step_end

Movement_CeruleanRivalExitsLeft
	slow_step_left
	step_end

Movement_CeruleanRivalExits:
	slow_step_down
	slow_step_down
Movement_CeruleanRivalEnters:
	slow_step_down
	slow_step_down
	slow_step_down
	slow_step_down
	step_end

Movement_CeruleanRocketRBRunsAway_playerleft:
	big_step_down
Movement_CeruleanRocketRBRunsAway_playerbelow:
Movement_CeruleanRocketRBRunsAway_playerright:
	big_step_left
	big_step_left
	big_step_left
	big_step_left
	big_step_left
	step_end

Movement_CeruleanGrampsRBApproaches_playerleft:
	step_right
	turn_head_left
	step_end

Movement_CeruleanGrampsRBApproaches_playerright:
	step_down
	step_right
	step_end

Movement_CeruleanGrampsRBApproaches_playerbelow:
	step_down
	step_down
	turn_head_right
	step_end

Movement_CeruleanGrampsRBRetreats_playerbelow:
	step_up
Movement_CeruleanGrampsRBPartialRetreat_playerbelow
	step_up
	step_end

Movement_CeruleanGrampsRBRetreats_playerright:
	step_left
Movement_CeruleanGrampsRBRetreats_playerleft:
	step_up
	step_end

Movement_CeruleanGrampsRBPartialRetreat_playerright:
	step_left
	step_end

_CeruleanCityText_19668F:
	text "<GREEN>: <PLAYER>!"
	line "Contente de te"
	cont "voir!"

	para "Comment vas-tu?"
	line "Tes #MON ont"
	cont "l'air heureux!"

	para "Moi j'en ai eu"
	line "plein depuis la"
	cont "dernière fois."

	para "Je vais te"
	line "montrer comment"
	cont "ils sont mignons!"
	done

_CeruleanCityText_19668:
	text "<GREEN>: Salut!"
	line "<PLAYER>!"

	para "Tu traînes encore?"

	para "Moi ça va!"
	line "J'ai capturé plein"
	cont "de #MON forts!"

	para "Et toi, t'as"
	line "attrapé quoi,"
	cont "<PLAYER>?"
	done

_CeruleanCityText_1966dF:
	text "Woah, tes #MON"
	line "ont bien grandi!"
	done

_CeruleanCityText_1966d:
	text "Hé! Du calme!"
	line "C'est bon! T'as"
	cont "gagné!"
	done

_CeruleanCityText_19672F:
	text "Ah! C'est mes"
	line "#MON qui"
	cont "gagnent cette"
	cont "fois!"
	done

_CeruleanCityText_19672:
	text "Ha! Tu fais pas"
	line "le poids face à"
	cont "mon génie!"
	done

_CeruleanCityText_19677F:
	text "<GREEN>: Alors,"
	line "j'étais au cap,"

	para "et j'ai rencontré"
	line "le fameux LEO"

	para "C'est un grand"
	line "collectionneur et"
	cont "il m'a montré ses"
	cont "meilleurs prises."

	para "Et tu savais?"
	line "Il est responsable"
	cont "du système de"
	cont "stockage de #-"
	cont "MON sur PC."

	para "Tu devrais te"
	line "présenter à lui."

	para "Bon, j'y vais."
	line "C'était sympa"
	cont "de te voir!"
	done

_CeruleanCityText_19677:
	text "<GREEN>: Devine"
	line "quoi?"

	para "J'ai vu LEO et"
	line "il m'a montré ses"
	cont "#MON rares!"

	para "Ca a ajouté plein"
	line "a mon #DEX!"

	para "Après tout, LEO"
	line "est un célèbre"
	cont "#MANIAC!"

	para "Il a inventé le"
	line "stockage de #-"
	cont "MON sur PC!"

	para "Puisque tu"
	line "utilises son"
	cont "système, va le"
	cont "remercier!"

	para "Bon, moi je trace!"
	line "A plus!"
	done

_CeruleanCityText3:
	text "Tu es aussi"
	line "un dresseur?"

	para "Je pari que tu vas"
	line "aller défier"
	cont "ONDINE, pas vrai?"

	para "Bonne chance!"
	done

_CeruleanCityText4:
	text "Ce FLAGADOSS"
	line "devant le magasin"
	cont "est sur le chemin."

	para "On doit pouvoir"
	line "le contourner."
	done

_CeruleanCityText4After:
	text "Les #MON ont"
	line "aussi des"
	cont "sentiments."

	para "Si tu les laisses"
	line "être K.O trop"
	cont "souvent, ils"
	cont "seront malheureux."
	done

_CeruleanCityText5:
	text "La CHAMPIONNE est"
	line "hors de ce monde."
	cont "Fais attention!"
	done

_CeruleanCityText_19730:
	text "OK! FLAGADOSS!"
	line "Lance SONICBOOM!"
	cont "Allez, FLAGADOSS,"
	cont "concentre toi!"
	done

_CeruleanCityText_19735:
	text "Poing FLAGADOSS!"
	line "Non! Encore raté!"
	done

_CeruleanCityText_1973a:
	text "FLAGADOSS, REPLI!"
	line "Mais non, pas ça!"
	done

_CeruleanCityText_1973a_2:
	text "C'est si dur de"
	line "contrôler des"
	cont "#MON!"

	para "L'obéissance de"
	line "tes #MON"
	cont "dépends de tes"
	cont "compétences de"
	cont "dresseur."
	done

_CeruleanCityText_1976f:
	text "FLAGADOSS fait une"
	line "sieste<...>"
	done

_CeruleanCityText_19774:
	text "FLAGADOSS se"
	line "tourne les pouces<...>"
	done

_CeruleanCityText_19779:
	text "FLAGADOSS tourne"
	line "la tête<...>"
	done

_CeruleanCityText_1977e:
	text "FLAGADOSS ignore"
	line "les ordres<...>"
	done

_CeruleanCityText9:
	text "Je veux une"
	line "BICYCLETTE rouge!"

	para "Quand est-ce que"
	line "le gérant revient?"
	done

_CeruleanCityText12:
	text "AZURIA"
	line "Une aura bleue"
	cont "mystérieuse"
	cont "l'entoure<...>"
	done

_CeruleanCityText13:
	text "ASTUCE"

	para "Appuyer sur B"
	line "durant une évolu-"
	cont "tion annule le"
	cont "processus."
	done

_CeruleanCityText16:
	text "Plus vite dans le"
	line "vent, plus vite"
	cont "dans les villes."
	cont "CYCLES A GOGO"

	para " Fermé durant les"
	line "   les vacances"
	done

_CeruleanCityText17:
	text "ARENE #MON"
	line "D'AZURIA"
	para "CHAMPIONNE:"
	line "ONDINE"

	para "La sirène"
	line "garçon manqué!"
	done

Text_CeruleanCityRBLockedDoor:
	text "C'est fermé<...>"
	done

CeruleanCityRBRocketText1:
	text "C'est ici qu'il"
	line "la garde<...>"
	done

CeruleanCityRBRocketText2:
	text "Quoi? Je me parle"
	line "à moi même."

	para "J'ai rien fait!"
	line "Tu me crois pas?"
	done

CeruleanCityRBRocketWinText:
	text "Arrête!"
	line "J'abandonne! Je"
	cont "vais m'en aller!"
	done

CeruleanCityRBRocketText3:
	text "Bon sang! Je te"
	line "ferais payer cher!"
	done

CeruleanCityRBRocketText4:
	text "C'était quoi ce"
	line "boucan?"

	para "<...> Oh? Cet homme"
	line "était après ma CT?"

	para "Merci de l'avoir"
	line "chassé."

	para "Si j'étais plus"
	line "jeune<...>"

	para "Enfin, j'y"
	line "peux rien."

	para "Tiens, pour te"
	line "remercier."
	done

CeruleanCityRBRocketText5:
	text "Cette CT contient"
	line "LARCIN."

	para "Attention, voler"
	line "c'est mal."
	done

CeruleanCityRBRocketText6:
	text "Te voilà! J'ai"
	line "gardé ça pour toi!"
	done

CeruleanCityRB_MapEventHeader: ; 0x18445d
	; filler
	db 0, 0

	; warps
	db 6
	warp_def 11,  9, 1, GROUP_CERULEAN_GYM_BADGE_SPEECH_HOUSE_RB, MAP_CERULEAN_GYM_BADGE_SPEECH_HOUSE_RB
	warp_def 15, 13, 1, GROUP_CERULEAN_TRADE_SPEECH_HOUSE_RB, MAP_CERULEAN_TRADE_SPEECH_HOUSE_RB
	warp_def 17, 19, 1, GROUP_CERULEAN_POKECENTER_1F_RB, MAP_CERULEAN_POKECENTER_1F_RB
	warp_def 19, 30, 1, GROUP_CERULEAN_GYM_RB, MAP_CERULEAN_GYM_RB
	warp_def 25, 25, 2, GROUP_CERULEAN_MART_RB, MAP_CERULEAN_MART_RB
	warp_def  9,  9, 3, GROUP_CERULEAN_GYM_BADGE_SPEECH_HOUSE_RB, MAP_CERULEAN_GYM_BADGE_SPEECH_HOUSE_RB

	; xy triggers
	db 2
	xy_trigger 0,  7, 20, $0, CeruleanCityRivalBattleLeftTrigger, 0, 0
	xy_trigger 0,  7, 21, $0, CeruleanCityRivalBattleRightTrigger, 0, 0

	; signposts
	db 9
	signpost 19, 23, $0, MapCeruleanCityRBSignpost0Script
	signpost 21, 27, $0, MapCeruleanCityRBSignpost1Script
	signpost 25, 11, $0, MapCeruleanCityRBSignpost2Script
	signpost 29, 17, $0, MapCeruleanCityRBSignpost3Script
	signpost 17, 20, $0, MapCeruleanCityRBSignpost6Script
	signpost 25, 26, $0, MapCeruleanCityRBSignpost7Script
	signpost 25, 14, $0, MapCeruleanCityRBLockedDoorScript
	signpost 11, 27, $0, MapCeruleanCityRBLockedDoorScript
	signpost  8, 17, $7, MapCeruleanCityRBHiddenRareCandy

	; people-events
	db 13
	person_event SPRITE_EGK_RIVAL,  6, 24, $0, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_BEAT_RIVAL_IN_EGK_CERULEAN
	person_event SPRITE_SUPER_NERD, 24, 35, $6, 0, 0, -1, -1, 0, 0, 0, CeruleanCityRBSuperNerdScript, -1
	person_event SPRITE_COOLTRAINER_M, 22, 19, $2, 1, 1, -1, -1, 0, 0, 0, CeruleanCityRBCooltrainerM1Script, -1
	person_event SPRITE_COOLTRAINER_M, 25, 13, $4, 2, 0, -1, -1, 0, 0, 0, CeruleanCityRBCooltrainerM2Script, -1
	person_event SPRITE_LASS, 31, 24, $8, 0, 0, -1, -1, 0, 0, 0, CeruleanCityRBLass1Script, EVENT_CERULEAN_CITY_RB_STOPPED_ROBBERY
	person_event SPRITE_LASS, 30, 24, $8, 0, 0, -1, -1, 0, 0, 0, CeruleanCityRBLass1Script, EVENT_CERULEAN_CITY_RB_NOT_YET_ROBBERY
	person_event SPRITE_SLOWPOKE, 31, 23, $1, 0, 0, -1, -1, 0, 0, 0, CeruleanCityRBSlowbroScript, EVENT_CERULEAN_CITY_RB_STOPPED_ROBBERY
	person_event SPRITE_SLOWPOKE, 30, 23, $1, 0, 0, -1, -1, 0, 0, 0, CeruleanCityRBSlowbroScript, EVENT_CERULEAN_CITY_RB_NOT_YET_ROBBERY
	person_event SPRITE_LASS, 31, 13, $5, 0, 2, -1, -1, 0, 0, 0, CeruleanCityRBLass2Script, -1
	person_event SPRITE_COOLTRAINER_M, 16, 8, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, ObjectEvent, EVENT_BLUE_REMATCH
	person_event SPRITE_ROCKET, 16, 32, $7, 0, 0, -1, -1, 0, 0, 0, CeruleanCityRBRocketScript, EVENT_CERULEAN_RB_ROCKET_1
	person_event SPRITE_GRAMPS, 16, 31, $3, 0, 0, -1, -1, 0, 0, 0, CeruleanCityRBGrampsScript, EVENT_CERULEAN_RB_ROCKET_2
; 0x1844fc

