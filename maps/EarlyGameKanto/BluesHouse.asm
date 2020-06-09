BluesHouseRB_MapScriptHeader: ; 0x19b0ce
	; trigger count
	db 0

	; callback count
	db 0
; 0x19b0d0

EGK_DaisyScript: ; 0x19b0d0
	faceplayer
	loadfont
	checkflag ENGINE_MAP_CARD
	iftrue .AfterTownMap
	checkflag ENGINE_POKEDEX
	iffalse .BeforePokedex
	writetext Text_DaisyGiveTownMap
	waitbutton
	disappear $3
	setflag ENGINE_MAP_CARD
	writetext Text_ReceivedMapCard
	playsound SFX_ITEM
	waitsfx
	writetext Text_DaisyExplainMapCard
	jump .FinishDaisy

.AfterTownMap
	writetext Text_DaisyAfterMapCard
	jump .FinishDaisy

.BeforePokedex
	writetext Text_DaisyBeforePokedex
.FinishDaisy
	waitbutton
	closetext
	spriteface $2, RIGHT
	end

TownMapScript_EGKBluesHouse:
	jumptext Text_MapCard

Text_DaisyGiveTownMap:
	text "Le PROF.CHEN t'a"
	line "demandé de faire"
	cont "une course pour"
	cont "lui?"

	para "Tiens, ça va"
	line "t'aider!"
	done

Text_ReceivedMapCard:
	text "<PLAYER> reçoit"
	line "la CARTE."
	done

Text_DaisyExplainMapCard:
	text "Utilise la CARTE"
	line "dans ton #MATOS"

	para "pour savoir ou"
	line "tu es."
	done

Text_MapCard:
	text "On dirait une"
	line "CARTE pour le"
	cont "#MATOS."

	para "Peut-être que ce"
	line "sera utile?"
	done

Text_DaisyBeforePokedex:
	text "Salut, <PLAYER>!"
	line "<GREEN> se trouve"
	cont "dans le labo du"
	cont "PROF."
	done

Text_DaisyAfterMapCard:
	text "Les #MON sont"
	line "des êtres vivants!"

	para "Veille à leur"
	line "santé!"
	done

BluesHouseRB_MapEventHeader: ; 0x19b3a8
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 2, GROUP_PALLET_TOWN_RB, MAP_PALLET_TOWN_RB
	warp_def $7, $3, 2, GROUP_PALLET_TOWN_RB, MAP_PALLET_TOWN_RB

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 2
	person_event SPRITE_DAISY, 7, 6, $3, 0, 0, -1, -1, 0, 0, 0, EGK_DaisyScript, -1
	person_event SPRITE_PAPER, 7, 7, $0, 0, 0, -1, -1, 0, 0, 0, TownMapScript_EGKBluesHouse, EVENT_GOT_MAP_CARD
; 0x19b3c5

