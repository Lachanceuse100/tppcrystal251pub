SSAnne7_MapScriptHeader:
	db 0
	db 0

SSAnne7CaptainScript:
	checkevent EVENT_S_S_ANNE_RUBBED_CAPTAINS_BACK
	iftrue .rubbed_back
	loadfont
	writetext _SSAnne7RubText
	playmusic MUSIC_HEAL
	pause 60
	setevent EVENT_S_S_ANNE_RUBBED_CAPTAINS_BACK
	special RestartMapMusic
	waitbutton
	closetext
	faceplayer
	loadfont
	writetext _NotReceivingHM01Text
	waitbutton
	closetext
	special Special_FadeToBlack
	special Functiond91
	playmusic MUSIC_HEAL
	special HealParty
	blackoutmod GROUP_S_S_ANNE_10, MAP_S_S_ANNE_10
	pause 60
	special Function8c0ab
	special RestartMapMusic
	loadfont
	writetext _SSAnne7Text_61932
	waitbutton
	closetext
	follow $2, $0
	applymovement $2, Movement_CaptainReturnsToHisPost
	stopfollow
	loadfont
	writetext SSAnne7Text_CaptainSetsSail1
	pause 30
	writetext SSAnne7Text_CaptainSetsSail2
	pause 30
	writetext SSAnne7Text_CaptainSetsSail3
	pause 30
	closetext
	pause 15
	playsound SFX_BOAT
	earthquake 45
	pause 15
	faceplayer
	loadfont
	writetext SSAnne7Text_CaptainSetsSail4
	waitbutton
	closetext
	special StartSSAnneTimer
	disappear $2
	appear $3
	domaptrigger GROUP_S_S_ANNE_1, MAP_S_S_ANNE_1, 1
	end

.rubbed_back
	faceplayer
	loadfont
	writetext SSAnne7Text_CaptainSetsSail5
	waitbutton
	closetext
	checkflag ENGINE_51
	iffalse .end
	appear $4
	playsound SFX_EXIT_BUILDING
	waitsfx
	spriteface $3, DOWN
	spriteface $0, DOWN
	playmusic MUSIC_ROCKET_ENCOUNTER
	applymovement $4, SSAnne7_RocketRunsUpToCaptain
	spriteface $0, RIGHT
	appear $5
	playsound SFX_EXIT_BUILDING
	waitsfx
	spriteface $0, DOWN
	applymovement $5, SSAnne7_GiovanniRunsUpToCaptain
	spriteface $0, RIGHT
	spriteface $3, RIGHT
	loadfont
	writetext SSAnne7Text_RocketsText
	waitbutton
	closetext
	loadfont
	writetext SSAnne7Text_CaptainConfused
	waitbutton
	closetext
	special Special_FadeToBlack
	special Functiond91
	disappear $3
	disappear $4
	disappear $5
	clearevent EVENT_ROCKETS_NOT_YET_BOARDED_SS_ANNE
	setevent EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	domaptrigger GROUP_S_S_ANNE_5, MAP_S_S_ANNE_5, 1
	domaptrigger GROUP_S_S_ANNE_3, MAP_S_S_ANNE_3, 1
	playmusic MUSIC_NONE
	playsound SFX_TACKLE
	waitsfx
	pause 15
	playsound SFX_TACKLE
	waitsfx
	pause 60
	special HealParty
	blackoutmod GROUP_S_S_ANNE_7, MAP_S_S_ANNE_7
	playsound SFX_EXIT_BUILDING
	waitsfx
	playsound SFX_EXIT_BUILDING
	waitsfx
	special Function8c0ab
	takeitem S_S_TICKET, 1
	playmapmusic
.end
	end

SSAnne7TrashcanScript:
	jumptext _SSAnne7Text2
SSAnne7SeasicknessBookScript:
	jumptext _SSAnne7Text3

Movement_CaptainReturnsToHisPost:
	step_left
	step_up
	step_left
	step_left
	turn_head_down
	step_end

SSAnne7_RocketRunsUpToCaptain:
	big_step_up
	big_step_up
	big_step_right
	big_step_right
	big_step_up
	big_step_up
	big_step_up
	turn_head_left
	step_end

SSAnne7_GiovanniRunsUpToCaptain:
	step_up
	step_up
	step_sleep 30
	step_right
	step_right
	step_up
	step_up
	turn_head_left
	step_end

_SSAnne7RubText:
	text "CAPITAINE: Beuuuh<...>"
	line "Je suis malade<...>"
	cont "Urrp! Mal de mer<...>"

	para "<PLAYER> masse"
	line "le dos du"
	cont "CAPITAINE!"

	para "Scratch<...>"
	line "Scratch<...>"
	done

_NotReceivingHM01Text:
	text "CAPITAINE: Woaw!"
	line "Merci! Je me sens"
	cont "tellement mieux!"

	para "Tu veux voir ma"
	line "technique COUPE?"

	para "Je voudrais bien"
	line "si j'étais pas"
	cont "malade<...>"

	para "Je sais! Laisse"
	line "moi soigner tes"
	cont "#MON."

	para "C'est le moins que"
	line "je puisse faire"
	cont "pour m'avoir aidé!"
	done

_SSAnne7Text_61932:
	text "CAPITAINE: Waouw!"

	para "Maintenant que je"
	line "vais mieux, c'est"
	cont "l'heure!"
	done

SSAnne7Text_CaptainSetsSail1:
	text "Prêt à partir?"
	done

SSAnne7Text_CaptainSetsSail2:
	text "ANNONCE: Aye-aye"
	line "capitaine!"
	done

SSAnne7Text_CaptainSetsSail3:
	text "Alors en mer!"
	done

SSAnne7Text_CaptainSetsSail4:
	text "Et c'est parti!"

	para $56, " ", $56, " ", $56
	line $56, " ", $56, "Hein?"

	para "Tu voulais sortir"
	line "à CARMIN SUR MER?"

	para "C'est inhabituel<...>"

	para "Si on fait demi-"
	line "tour, les autres"
	cont "passagers vont"
	cont "râler."

	para "Il nous faudra une"
	line "année avant de"
	cont "revenir."

	para "Nous amarrerons"
	line "à OLIVILLE dans"
	cont "une semaine."

	para "On pourra t'y"
	line "arranger l'AQUARIA"
	cont "pour retourner à"
	cont "CARMIN SUR MER."

	para "En attendant,"
	line "profites donc de"
	cont "nos services de"
	cont "luxe."

	para "D'après ton"
	line "ticket<...>"

	para "Ta cabine est au"
	line "niveau en dessous."

	para "Sens-toi libre de"
	line "t'y reposer."
	done

SSAnne7Text_CaptainSetsSail5:
	text "Ah, <PLAYER>!"

	para "Tu apprécies ton"
	line "séjour à l'OCEANE?"
	done

SSAnne7Text_RocketsText:
	text "Pas un mot de"
	line "plus, CAPITAINE."
	
	para "Ceci est une"
	line "mutinerie!"

	para "Restez calme ou"
	line "ça va mal se"
	cont "passer!"
	done

SSAnne7Text_CaptainConfused:
	text "Q-Quoi? Comment"
	line "ça une mutinerie?"
	done

_SSAnne7Text2:
	text "Beurk! Je n'aurais"
	line "pas du regarder!"
	done

_SSAnne7Text3:
	text "Conquérir le"
	line "mal de mer<...>"
	para "Le CAPITAINE"
	line "lisait ça?"
	done

SSAnne7_MapEventHeader:
	db 0, 0
	db 1
	warp_def 7, 0, 9, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2

	db 0
	db 2
	signpost 1, 4, $0, SSAnne7TrashcanScript
	signpost 2, 1, $0, SSAnne7SeasicknessBookScript

	db 4
	person_event SPRITE_CAPTAIN, 6, 8, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SSAnne7CaptainScript, EVENT_S_S_ANNE_RUBBED_CAPTAINS_BACK
	person_event SPRITE_CAPTAIN, 5, 5, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SSAnne7CaptainScript, EVENT_S_S_ANNE_NOT_YET_DEPARTED
	person_event SPRITE_ROCKET, 10, 5, $7, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_S_S_ANNE_7_ROCKETS
	person_event SPRITE_GIOVANNI, 10, 5, $7, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_S_S_ANNE_7_ROCKETS
