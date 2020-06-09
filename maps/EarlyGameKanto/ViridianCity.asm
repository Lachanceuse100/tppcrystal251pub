ViridianCityRB_MapScriptHeader: ; 0x1a9a43
	; trigger count
	db 3
	dw .Trigger0, 0
	dw .Trigger1, 0
	dw .Trigger2, 0

	; callback count
	db 0

.Trigger0
	end
.Trigger1
	end
.Trigger2
	end

ViridianCityRBAngryGrandpaTrigger:
	spriteface $0, LEFT
	scall ViridianCityRBAngryGrandpaScript
	applymovement $0, ViridianCityRB_PlayerStepsDown
	end

ViridianCityRBAngryGrandpaScript:
	loadfont
	writetext _ViridianCityText_19191
	waitbutton
	closetext
	end

ViridianCityRBGymDoorTrigger:
	spriteface $0, UP
	loadfont
	writetext _ViridianCityText14
	waitbutton
	closetext
	playsound SFX_JUMP_OVER_LEDGE
	applymovement $0, ViridianCityRB_PlayerJumpsDown
	end

ViridianCityRB_CatchingTutorial:
	faceplayer
	loadfont
	writetext _ViridianCityText_1920a
	yesorno
	iftrue .DeclineTutorial
	writetext _ViridianCityText_1920f
	waitbutton
	closetext
	loadpokedata WEEDLE, 5
	catchtutorial BATTLETYPE_TUTORIAL
	loadfont
	writetext _ViridianCityText_19219
	waitbutton
	closetext
	end

.DeclineTutorial
	writetext _ViridianCityText_19214
	waitbutton
	closetext
	end

ViridianCityRB_GirlShoppingScript:
	jumptextfaceplayer _ViridianCityText_1917a

ViridianCityRB_GirlApologyScript:
	jumptextfaceplayer _ViridianCityText_19175

ViridianCityRB_BugSpeechYoungster:
	faceplayer
	loadfont
	writetext _ViridianCityText_1914d
	yesorno
	iffalse .declined
	writetext _ViridianCityText_19157
	waitbutton
	closetext
	end

.declined
	writetext _ViridianCityText_19152
	waitbutton
	closetext
	end

ViridianCityRB_WhereIsTheLeader:
	jumptextfaceplayer _ViridianCityText_19122

ViridianCityRB_PokeballsAtWaistYoungster:
	jumptextfaceplayer _ViridianCityText1

MapViridianCityRBTownSignScript: ; 0x1a9a93
	jumptext _ViridianCityText8
; 0x1a9a96

MapViridianCityRBGymSignScript: ; 0x1a9a96
	jumptext _ViridianCityText13
; 0x1a9a99

MapViridianCityRBTrainerTips1SignScript: ; 0x1a9a99
	jumptext _ViridianCityText9
; 0x1a9a9c

MapViridianCityRBTrainerTips2SignScript: ; 0x1a9a99
	jumptext _ViridianCityText10
; 0x1a9a9c

MapViridianCityRBHiddenPotion: ; 0x1a9a9c
	dw EVENT_VIRIDIAN_CITY_RB_HIDDEN_POTION
	db POTION
; 0x1a9a9f

MapViridianCityRBPokecenterSignScript: ; 0x1a9a9f
	jumpstd pokecentersign
; 0x1a9aa2

MapViridianCityRBPokemartSignScript: ; 0x1a9aa2
	jumpstd martsign
; 0x1a9aa5

ViridianCityRB_PlayerStepsDown:
	step_down
	step_end

ViridianCityRB_PlayerJumpsDown:
	jump_step_down
	step_end

_ViridianCityText1:
	text "Ces # BALLs"
	line "à ta ceinture<...>"
	cont "C'est des #MON?"

	para "C'est cool de"
	line "pouvoir s'en"
	cont "servir quand on"
	cont "veut, hein?"
	done

_ViridianCityText_19122:
	text "L'arène #MON"
	line "est toujours"
	cont "fermée."

	para "Je me demande qui"
	line "en est le"
	cont "CHAMPION<...>"
	done

_ViridianCityText_1914d:
	text "Tu veux tout"
	line "savoir sur les 2"
	cont "types de chenille"
	cont "#MON?"
	done

_ViridianCityText_19152:
	text "Bon, OK!"
	done

_ViridianCityText_19157:
	text "Contrairement à"
	line "CHENIPAN, ASPICOT"
	cont "est venimeux."

	para "Attention à son"
	line "DARD-VENIN!"
	done

_ViridianCityText_19175:
	text "Rooh, grand-père,"
	line "soit pas méchant!"
	cont "Il n'a pas encore"
	cont "eu son café."
	done

_ViridianCityText_1917a:
	text "Quand je vais aux"
	line "courses à ARGENTA,"
	cont "je dois passer par"
	cont "la forêt de JADE."
	done

_ViridianCityText_19191:
	text "Oh! On ne passe"
	line "pas!"

	para "C'est une"
	line "propriété privée!"
	done

_ViridianCityText_1920a:
	text "Ahh, J'ai enfin eu"
	line "mon café. Ca va"
	cont "mieux!"

	para "Bien sûr que tu"
	line "peux passer!"

	para "Es-tu pressé?"
	done

_ViridianCityText_1920f:
	text "Je vois que tu as"
	line "un #DEX."

	para "Quand tu attrapes"
	line "un #MON, le"
	cont "#DEX se met"
	cont "aussitôt à jour."

	para "Quoi? Tu ne sais"
	line "pas attraper des"
	cont "#MON?"

	para "Je vais te"
	line "montrer alors."
	done

_ViridianCityText_19214:
	text "Le temps, c'est de"
	line "l'argent. Va."
	done

_ViridianCityText_19219:
	text "Il faut d'abord"
	line "affaiblir le"
	cont "#MON ciblé."
	done

_ViridianCityText8:
	text "JADIELLE"
	line "Le paradis vert"
	cont "éternel!"
	done

_ViridianCityText9:
	text "ASTUCE"

	para "Attrapez des #-"
	line "MON pour agrandir"
	cont "votre collection."

	para "Plus vous en avez,"
	line "plus vos combats"
	cont "seront faciles!"
	done

_ViridianCityText10:
	text "ASTUCE"

	para "Les capacités des"
	line "#MON sont"
	cont "limitées par leurs"
	cont "Points de Pouvoir"
	cont "ou PP."

	para "Rechargez donc les"
	line "PPs de vos #MON"
	cont "dans un centre"
	cont "#MON!"
	done

_ViridianCityText13:
	text "ARENE #MON"
	line "de JADIELLE."
	done

_ViridianCityText14:
	text "Les portes sont"
	line "fermées<...>"
	done

ViridianCityRB_MapEventHeader: ; 0x1a9ec9
	; filler
	db 0, 0

	; warps
	db 4
	warp_def  $9, $15, 1, GROUP_VIRIDIAN_NICKNAME_SPEECH_HOUSE_RB, MAP_VIRIDIAN_NICKNAME_SPEECH_HOUSE_RB
	warp_def  $f, $15, 1, GROUP_VIRIDIAN_TRAINER_SCHOOL_RB, MAP_VIRIDIAN_TRAINER_SCHOOL_RB
	warp_def $13, $1d, 2, GROUP_VIRIDIAN_MART_RB, MAP_VIRIDIAN_MART_RB
	warp_def $19, $17, 1, GROUP_VIRIDIAN_POKECENTER_1F_RB, MAP_VIRIDIAN_POKECENTER_1F_RB

	; xy triggers
	db 3
	xy_trigger 0, 6, 19, $0, ViridianCityRBAngryGrandpaTrigger, 0, 0
	xy_trigger 0, 8, 32, $0, ViridianCityRBGymDoorTrigger, 0, 0
	xy_trigger 1, 8, 32, $0, ViridianCityRBGymDoorTrigger, 0, 0

	; signposts
	db 7
	signpost 17, 17, $0, MapViridianCityRBTownSignScript
	signpost  7, 27, $0, MapViridianCityRBGymSignScript
	signpost  1, 19, $0, MapViridianCityRBTrainerTips1SignScript
	signpost 29, 21, $0, MapViridianCityRBTrainerTips2SignScript
	signpost  4, 14, $7, MapViridianCityRBHiddenPotion
	signpost 25, 24, $0, MapViridianCityRBPokecenterSignScript
	signpost 19, 30, $0, MapViridianCityRBPokemartSignScript

	; people-events
	db 8
	person_event SPRITE_SIDEWAYS_GRAMPS, 10, 22, $0, 0, 0, -1, -1, 0, 0, 0, ViridianCityRBAngryGrandpaScript, EVENT_VIRIDIAN_CITY_RB_OLD_MAN_LYING_DOWN
	person_event SPRITE_GRAMPS, 10, 22, $5, 0, 1, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ViridianCityRB_CatchingTutorial, EVENT_VIRIDIAN_CITY_RB_OLD_MAN_WALKING_ABOUT
	person_event SPRITE_GRAMPS, 12, 34, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ViridianCityRB_WhereIsTheLeader, -1
	person_event SPRITE_FISHER, 27, 10, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, ObjectEvent, -1
	person_event SPRITE_YOUNGSTER, 25, 21, $2, 3, 3, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ViridianCityRB_PokeballsAtWaistYoungster, -1
	person_event SPRITE_YOUNGSTER, 29, 34, $2, 2, 2, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ViridianCityRB_BugSpeechYoungster, -1
	person_event SPRITE_TEACHER, 10, 21, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ViridianCityRB_GirlApologyScript, EVENT_VIRIDIAN_CITY_RB_OLD_MAN_LYING_DOWN
	person_event SPRITE_TEACHER, 13, 22, $5, 0, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ViridianCityRB_GirlShoppingScript, EVENT_VIRIDIAN_CITY_RB_OLD_MAN_WALKING_ABOUT
; 0x1a9f3a

