Route22RB_MapScriptHeader:
	; trigger count
	db 2
	dw .Trigger0, 0
	dw .Trigger1, 0

	; callback count
	db 0

.Trigger0
	end

.Trigger1
	end

Route22RBRivalBattleTriggerBottom:
	playmusic MUSIC_RIVAL_RB
	applymovement $2, Route22RB_RivalWalksIn_PlayerOnBottom
	scall Route22RBRivalBattle
	applymovement $2, Route22RB_RivalWalksOut_PlayerOnBottom
	disappear $2
	dotrigger $0
	special RestartMapMusic
	end

Route22RBRivalBattleTriggerTop:
	playmusic MUSIC_RIVAL_RB
	applymovement $2, Route22RB_RivalWalksIn_PlayerOnTop
	spriteface $0, DOWN
	scall Route22RBRivalBattle
	applymovement $2, Route22RB_RivalWalksOut_PlayerOnTop
	disappear $2
	dotrigger $0
	special RestartMapMusic
	end

Route22RBRivalBattle:
	setlasttalked $2
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .male_rival_1
	writetext _Route22RivalBeforeBattleText1F
	jump .done_intro_text

.male_rival_1
	writetext _Route22RivalBeforeBattleText1
.done_intro_text
	waitbutton
	closetext
	checkevent EVENT_GOT_CHARMANDER_FROM_OAK
	iftrue .charmander
	checkevent EVENT_GOT_SQUIRTLE_FROM_OAK
	iftrue .squirtle
	loadtrainer BLUE_RB, BLUE_RB_2C
	jump .StartBattle

.charmander
	loadtrainer BLUE_RB, BLUE_RB_2A
	jump .StartBattle

.squirtle
	loadtrainer BLUE_RB, BLUE_RB_2B
.StartBattle
	winlosstext _Route22RivalDefeatedText1, _Route22RivalLossText
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .got_rival_gender
	loadvar OtherTrainerClass, BLUE_RB_F
	winlosstext _Route22RivalDefeatedText1F, _Route22RivalLossTextF
.got_rival_gender
	writecode VAR_BATTLETYPE, BATTLETYPE_RIVAL_RB
	startbattle
	returnafterbattle
	special RestartMapMusic
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .male_rival_2
	writetext _Route22RivalAfterBattleText1F
	jump .done_outro_text

.male_rival_2
	writetext _Route22RivalAfterBattleText1
.done_outro_text
	waitbutton
	closetext
	playmusic MUSIC_RIVAL_AFTER_RB
	end

Route22RB_RivalWalksIn_PlayerOnTop:
	step_right
	step_right
	step_right
	step_right
	step_right
	turn_head_up
	step_end

Route22RB_RivalWalksIn_PlayerOnBottom:
	step_right
	step_right
	step_right
	step_right
	step_end

Route22RB_RivalWalksOut_PlayerOnBottom:
	step_up
	step_right
	step_right
	step_right
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

Route22RB_RivalWalksOut_PlayerOnTop:
	step_right
	step_right
	step_down
	step_down
	step_down
	step_down
	step_end

MapRoute22RBSignpost0Script:
	jumptext _Route22FrontGateText

_Route22RivalBeforeBattleText1::
	text "<GREEN>: Salut!"
	line "<PLAYER>!"

	para "Tu essaies d'aller"
	line "à la LIGUE"
	cont "#MON?"

	para "Oublie, t'as pas"
	line "de BADGES!"

	para "Le garde te"
	line "laissera pas"
	cont "passer!"

	para "Ce garde ne laisse"
	line "passer personne"
	cont "sans BADGES!"

	para "Au fait, ou en"
	line "sont tes #MON?"
	done

_Route22RivalAfterBattleText1::
	text "J'ai entendu que"
	line "la ligue #MON"
	cont "renferme les"
	cont "dresseurs d'élite."

	para "Je dois trouver"
	line "comment les"
	cont "battre."

	para "Tu devrais arrêter"
	line "de rester la et"
	cont "y aller."
	done

_Route22RivalDefeatedText1::
	text "<GREEN>: Bah!"
	line "T'as juste eu de"
	cont "la chance<...>"
	done

_Route22RivalLossText:
	text "<GREEN>: Ouais!"
	line "Je suis trop fort"
	cont "ou quoi?"
	done

_Route22RivalBeforeBattleText1F::
	text "<GREEN>: Oh,"
	line "salut <PLAYER>!"

	para "Tu vas vers la"
	line "LIGUE #MON?"

	para "Je ne veux pas te"
	line "décevoir mais<...>"
	cont "Fais demi-tour."

	para "Personne ne passe"
	line "sans BADGES<...>"

	para "Au fait, tu as"
	line "pris soin de tes"
	cont "#MON?"
	done

_Route22RivalAfterBattleText1F::
	text "J'ai entendu"
	line "beaucoup de choses"
	cont "sur la ligue"
	cont "#MON<...>"

	para "Il y a des"
	line "dresseurs puissant"
	cont "là bas."

	para "J'aimerais voir"
	line "leurs techniques"
	cont "de combat<...>"

	para "Oh, Pardon."
	line "Je continue mon"
	cont "chemin."
	done

_Route22RivalDefeatedText1F::
	text "<GREEN>: <...>"
	line "Pas mal!"
	done

_Route22RivalLossTextF:
	text "<GREEN>: Oh<...>"
	line "J'aurais du y"
	cont "aller moins fort<...>"
	done

_Route22FrontGateText::
	text "LIGUE #MON!"
	line "Entrée principale."
	done

Route22RB_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 1
	warp_def $5, $8, 1, GROUP_VICTORY_ROAD_GATE_RB, MAP_VICTORY_ROAD_GATE_RB

	; xy triggers
	db 2
	xy_trigger 1, 4, 29, $0, Route22RBRivalBattleTriggerTop, 0, 0
	xy_trigger 1, 5, 29, $0, Route22RBRivalBattleTriggerBottom, 0, 0

	; signposts
	db 1
	signpost 11, 7, $0, MapRoute22RBSignpost0Script

	; people-events
	db 1
	person_event SPRITE_EGK_RIVAL, 9, 28, $0, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_RIVAL_ROUTE_22_RB
; 0x7c038

