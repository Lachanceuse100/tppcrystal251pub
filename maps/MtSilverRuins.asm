MtSilverRuins_MapScriptHeader:
	; triggers
	db 0

	; callbacks
	db 0

; <scripts go here>

SilverCaveRuins_MissingnoFill:
	ld hl, OverworldMap
	ld bc, 1300
	ld a, [ScriptVar]
	jp ByteFill

MtSilverRuinsElmScript:
	waitsfx
	playmusic MUSIC_NONE
	faceplayer
	loadfont
	writetext Text_MtSilverRuinsBird
	cry 252
	waitbutton
	closetext
	playsound SFX_THUNDER
	earthquake 10
	refreshscreen 0
	special Function8c084
	;change tiles to missingno
	writebyte $6d
	callasm SilverCaveRuins_MissingnoFill
	reloadmappart
	closetext
	special Function8c079
	;look around
	pause 15
	checkcode VAR_FACING
	if_equal RIGHT, .LookAroundRight
	spriteface $0, UP
	pause 15
	spriteface $0, DOWN
	pause 15
	spriteface $0, RIGHT
	pause 30
	spriteface $0, LEFT
	jump .ContinueEffects

.LookAroundRight
	spriteface $0, UP
	pause 15
	spriteface $0, DOWN
	pause 15
	spriteface $0, LEFT
	pause 30
	spriteface $0, RIGHT
.ContinueEffects
	pause 15
	faceplayer
	loadfont
	writetext Text_MtSilverRuinsBird
	cry 252
	waitbutton
	closetext
	playsound SFX_FLY
	checkcode VAR_FACING
	if_equal RIGHT, .ChangeBlocksFacingRight
	spriteface $0, DOWN
	applymovement $3, Movement_BirdToCenter
	playsound SFX_THUNDER
	earthquake 10
	refreshscreen 0
	special Function8c084
	writebyte $72
	callasm SilverCaveRuins_MissingnoFill
	reloadmappart
	closetext
	special Function8c079
	pause 30
	spriteface $0, UP
	pause 20
	spriteface $0, DOWN
	pause 20
	applymovement $0, Movement_WalkLeftToCenter
	jump .ShowArena

.ChangeBlocksFacingRight
	spriteface $0, DOWN
	applymovement $3, Movement_BirdToCenter
	playsound SFX_THUNDER
	earthquake 10
	refreshscreen 0
	special Function8c084
	writebyte $72
	callasm SilverCaveRuins_MissingnoFill
	reloadmappart
	closetext
	special Function8c079
	pause 30
	spriteface $0, UP
	pause 20
	spriteface $0, DOWN
	pause 50
	applymovement $0, Movement_WalkToCenter
;at this point, we are at the same point regardless of initial location
.ShowArena
	spriteface $0, RIGHT
	pause 10
;ball
	playsound SFX_FLASH
	special Function8c084
	refreshscreen 0
	changeblock 20, 6, $73
	changeblock 22, 6, $74
	changeblock 20, 8, $75
	changeblock 22, 8, $76
	reloadmappart
	special Function8c079
	applymovement $0, MovementSurprisedPlayer
	loadfont
	writetext ElmText_ShoutPlayerName
	waitbutton
	closetext
	spriteface $0, DOWN
	spriteface $3, DOWN
	showemote $0, $3, 10
	;good job elm, screwing up things
	;reset map change center blocks
	playsound SFX_FLASH
	special Function8c084
	changemap MtSilverRuins_BlockData
	changeblock 20, 6, $6e
	changeblock 22, 6, $6f
	changeblock 20, 8, $70
	changeblock 22, 8, $71
	reloadmappart
	closetext
	special Function8c079
	playsound SFX_RUN
	spriteface $0, UP
	applymovement $3, Movement_UnknownBirdFliesAway
	disappear $3
	waitsfx
	appear $2
	applymovement $2, Movement_ElmWalksUpToPlayer
	loadfont
	writetext ElmText_SawBird
	waitbutton
	closetext
	spriteface $0, RIGHT
	spriteface $2, LEFT
	loadfont
	writetext ElmText_MtSilverRuinsFinalBattleIntro
	waitbutton
	closetext
	pause 10
	spriteface $2, UP
	pause 30
	showemote $0, $2, 10
	spriteface $2, LEFT
	loadfont
	writetext ElmContinueText_MtSilverRuins
	waitbutton
	closetext
	checkevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	iftrue .LoadMeganiumTeam
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .LoadTyphlosionTeam
	loadtrainer PROF_ELM, 3
	jump .StartBattle

.LoadTyphlosionTeam
	loadtrainer PROF_ELM, 2
	jump .StartBattle

.LoadMeganiumTeam
	loadtrainer PROF_ELM, 1
.StartBattle
	winlosstext ElmWinText_MtSilverRuins, ElmLossText_MtSilverRuins
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapmusic
	reloadmap
	setevent EVENT_BEAT_ELM
	loadfont
	writetext ElmText_MtSilverRuinsFinalBattleAfter_Part1
	buttonsound
	waitsfx
	playmusic MUSIC_HALL_OF_FAME
	writetext ElmText_MtSilverRuinsFinalBattleAfter_Part2
	waitbutton
	closetext
	pause 30
	special HealParty
	refreshscreen $0
	credits
	end

Movement_ElmWalksUpToPlayer:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end

Movement_UnknownBirdFliesAway:
	step_up
	step_up
	step_up
	step_up
	step_end

Movement_BirdToCenter:
	fast_jump_step_down
	jump_step_down
	jump_step_right
	step_up
	step_left
	step_end

Movement_WalkLeftToCenter:
	step_left
	step_left
Movement_WalkToCenter:
	step_down
	step_sleep 10
	step_down
	step_sleep 15
	slow_step_down
	half_step_right
	step_end

MovementSurprisedPlayer:
	big_step_left
	turn_head_right
	step_sleep 40
	slow_step_right
	step_end


; <text goes here>
Text_MtSilverRuinsBird:
	text "Gyaaa!"
	done

ElmText_ShoutPlayerName:
	text "<PLAYER>!"
	done

ElmText_SawBird:
	text "Cet oiseau qui"
	line "s'est envolé<...>"

	para "Est-ce que c'était"
	line "un #MON?!"

	para "On dirait que l'on"
	line "en apprends tous"
	cont "les jours."
	done

ElmText_MtSilverRuinsFinalBattleIntro
	text "<PLAYER>, Je ne"
	line "m'attendais pas à"
	cont "te voir ici<...>"

	para "J'ai senti un"
	line "léger SEISME en"

	para "faisant mes"
	line "recherches dehors,"

	para "alors je suis venu"
	line "voir<...>"

	para "On dirait que j'ai"
	line "interrompu un"
	cont "évènement unique<...>"

	para "Ah, tant que j'y"
	line "pense."

	para "<PLAYER>, je"
	line "voulais te deman-"
	cont "der quelque chose."

	para "Ce serait mieux"
	line "dans mon LABO-"
	cont "RATOIRE<...>"

	para "Mais puisque notre"
	line "mystérieux ami"

	para "nous a préparé le"
	line "terrain, autant"
	cont "en profiter."
	done

ElmContinueText_MtSilverRuins:
	text "<PLAYER>!"

	para "Tu as attrapé tous"
	line "les #MON et"

	para "battu les plus"
	line "grands dresseurs."

	para "C'est pourquoi je"
	line "veux te défier,"
	cont "<PLAY_G>."

	para "Pour constater"
	line "tout le retard que"
	cont "j'ai pris."
	done

ElmWinText_MtSilverRuins:
	text "Bravo!"

	para "Je n'ai jamais vu"
	line "et encore moins"

	para "participé à un"
	line "combat aussi"
	cont "intense."

	para "Je n'ai plus rien"
	line "à dire."

	para "<PLAY_G>, tu es un"
	line "vrai MAITRE"
	cont "#MON!"
	done

ElmLossText_MtSilverRuins:
	text "Ah!"

	para "Je vois que je ne"
	line "suis pas rouillé."

	para "Tout de même,"
	line "ce fut intense."

	para "Il y a longtemps"
	line "que je n'ai pas"
	cont "mené un tel"
	cont "combat."

	para "Je n'ai plus rien"
	line "à dire."

	para "<PLAY_G>, tu es un"
	line "vrai MAITRE"
	cont "#MON!"
	done

ElmText_MtSilverRuinsFinalBattleAfter_Part1:
	text "<...>Pfoui."

	para "<PLAYER>, tu as"
	line "traversé tant"
	cont "d'épreuves."

	para "Quand je t'ai ren-"
	line "contré à BOURG"
	cont "GEON<...>"

	para "Je savais que tu"
	line "voulais être le"
	cont "meilleur dresseur."

	para "Tu t'es battu sans"
	line "répit<...>"

	para "Et haut la main,"
	line "tu as gagné tous"
	cont "les défis."
	done
ElmText_MtSilverRuinsFinalBattleAfter_Part2:
	text "Tu as parcouru la"
	line "terre entière,"

	para "traquant les"
	line "#MON et leurs"
	cont "mystères."

	para "Et aujourd'hui,"
	line "après t'avoir"
	cont "combattu<...>"

	para "Je comprends"
	line "mieux le secret"
	cont "de ton pouvoir."

	;POKEMON! Gotta Catch em-- oh wait

	para "<PLAYER>!"

	para "Toutes mes"
	line "félicitations!"
	done

MtSilverRuins_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 16
	warp_def 47, 27, 2, GROUP_SILVER_CAVE_ROOM_3, MAP_SILVER_CAVE_ROOM_3
	warp_def 47, 28, 3, GROUP_SILVER_CAVE_ROOM_3, MAP_SILVER_CAVE_ROOM_3
	warp_def 43, 27, 1, GROUP_MT_SILVER_RUINS_B1, MAP_MT_SILVER_RUINS_B1
	warp_def 43, 28, 2, GROUP_MT_SILVER_RUINS_B1, MAP_MT_SILVER_RUINS_B1
	warp_def 44, 18, 3, GROUP_MT_SILVER_RUINS_B1, MAP_MT_SILVER_RUINS_B1
	warp_def 36, 16, 4, GROUP_MT_SILVER_RUINS_B1, MAP_MT_SILVER_RUINS_B1
	warp_def 32, 4, 5, GROUP_MT_SILVER_RUINS_B1, MAP_MT_SILVER_RUINS_B1
	warp_def 26, 4, 6, GROUP_MT_SILVER_RUINS_B1, MAP_MT_SILVER_RUINS_B1
	warp_def 24, 16, 7, GROUP_MT_SILVER_RUINS_B1, MAP_MT_SILVER_RUINS_B1
	warp_def 32, 20, 8, GROUP_MT_SILVER_RUINS_B1, MAP_MT_SILVER_RUINS_B1
	warp_def 26, 22, 9, GROUP_MT_SILVER_RUINS_B1, MAP_MT_SILVER_RUINS_B1
	warp_def 28, 28, 10, GROUP_MT_SILVER_RUINS_B1, MAP_MT_SILVER_RUINS_B1
	warp_def 16, 28, 11, GROUP_MT_SILVER_RUINS_B1, MAP_MT_SILVER_RUINS_B1
	warp_def 4, 4, 12, GROUP_MT_SILVER_RUINS_B1, MAP_MT_SILVER_RUINS_B1
	warp_def 1, 3, 13, GROUP_MT_SILVER_RUINS_B1, MAP_MT_SILVER_RUINS_B1
	warp_def 1, 4, 14, GROUP_MT_SILVER_RUINS_B1, MAP_MT_SILVER_RUINS_B1
	; coord events
	db 0

	; bg events
	db 0

	; object events
	db 2
	person_event SPRITE_ELM, 16, 26, $7, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_ELM_IN_SILVER_CAVE_RUINS
	person_event SPRITE_BIRD, 8, 25, $3, 0, 0, -1, -1, 8 + PAL_OW_SILVER, 0, 0, MtSilverRuinsElmScript, -1
