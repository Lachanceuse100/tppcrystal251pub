CinnabarVolcanoLab_MapScriptHeader:
	; triggers
	db 0

	; callbacks
	db 1
	dbw 1, AlreadyGotResearchNotesCheck

AlreadyGotResearchNotesCheck:
	checkevent EVENT_GOT_RESEARCH_NOTES ;needed to prevent reclosing after using the item?
  	iftrue .dont_close_chamber
	changeblock 8, 10, $b2
.dont_close_chamber
	disappear $3
	disappear $4
	return

SimonScript2_CinnabarVolcanoB3F
	faceplayer
	loadfont
	writetext SimonText2_CinnabarVolcanoB3F
	waitbutton
	closetext
	end

PickUpResearchNotesScript:
	loadfont
	giveitem RESEARCHNOTE, 1
	iffalse .fail
	setevent EVENT_GOT_RESEARCH_NOTES
	disappear $2
	checkevent EVENT_BLUE_REMATCH
	iffalse .skip
	setevent EVENT_COOLTRAINER_BLOCKING_CERULEAN_CAVE
.skip
	writetext GotResearchNotesText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	;event here
	appear $3
	;playmusic MUSIC_POKEMANIAC_ENCOUNTER
	applymovement $3, MoveSimonToPath
	spriteface $0, UP
	applymovement $3, MoveSimonToCapsule
	spriteface $3, UP
	loadfont
	writetext SimonText1_Lab
	waitbutton
	closetext
	special Functionc48f ;fade music
	pause 16
	playsound SFX_2_BOOPS
	waitsfx
	pause 20
	playsound SFX_STRENGTH
	earthquake 10
	refreshscreen 0
	changeblock 8, 10, $b1
	reloadmappart
	waitsfx
	appear $4
	refreshscreen 0
	loadfont
	writetext Mewtwo_Lab
	cry MEWTWO
	pause 20
	closetext
	waitsfx
	showemote $0, $3, 15
	loadfont
	writetext SimonText2_Lab
	waitbutton
	closetext
	spriteface $3, RIGHT
	follow $3, $4
	playsound SFX_TACKLE
	applymovement $3, MoveSimonToLeft
	waitsfx
	applymovement $0, MovePlayerUp
	pause 20
	spriteface $3, DOWN
	loadfont
	writetext SimonText3_Lab
	waitbutton
	closetext
	playsound SFX_WARP_FROM
	applymovement $4, WarpMewtwoOut
	disappear $4
	spriteface $3, RIGHT
	showemote $0, $3, 15
	spriteface $3, LEFT
	showemote $1, $3, 15
	loadfont
	writetext SimonText4_Lab
	waitbutton
	closetext
	playmusic MUSIC_POKEMANIAC_ENCOUNTER
	spriteface $3, DOWN
	loadfont
	writetext SimonText4a_Lab
	spriteface $3, LEFT
	buttonsound
	writetext SimonText5_Lab
	spriteface $3, DOWN
	buttonsound
	writetext SimonText6_Lab
	waitbutton
	closetext
	special Functionc48f
	applymovement $3, MoveSimonOut
	disappear $3
	special DeleteSavedMusic
	special RestartMapMusic
	end

.fail
	buttonsound
	writetext TooFullForResearchNotes
	waitbutton
	closetext
	end

PickedUpNotesText:
	text "<PLAY_G> trouve"
	line "les RECHERCHES!"
	done

SimonText1_Lab:
	text "Il fait chaud ici<...>"

	para "Je me demande si<...>"
	done

Mewtwo_Lab:
	text "Mew!"
	done
	
SimonText2_Lab:
	text "AAAAAAAHHH!" ; subtle nod to a magmar we caught in AR
	done

SimonText3_Lab:
	text "Hein, encore toi?"

	para "Viens m'aider,"
	line "morveux!"
	done

SimonText4_Lab:
	text "Ce<...> Ce truc est"
	line "parti?"

	para "Qu'est-ce que"
	line "c'était?"
	done

SimonText4a_Lab:
	text "Et qu'est-ce que"
	line "TU fais ici?"
	
	para "Hein? Et moi?"

	para "Tu te souviens du"
	line "bâtiment abandonné"
	
	para "dont je t'ai"
	line "parlé?"

	para "Ben<...>"

	para "Voilà ce qu'il en"
	line "reste<...>"

	para "Je veux croire que"
	line "mon partenaire"
	cont "s'en est sorti"
	
	para "avant que le vol-"
	line "can n'ait explosé"

	para "Alors je suis re-"
	line "venu chercher ici."
	done

SimonText5_Lab:
	
	text "Mais je ne trouve"
	line "toujours pas sa"
	cont "trace<...>"
	done

SimonText6_Lab:

	text "Il faut que je"
	line "continue de"
	cont "chercher!"

	para "<PLAYER>, c'est ça?"

	para "On se reverra!"
	done

GotResearchNotesText:
	text "<PLAYER> trouve"
	line "les RECHERCHES!"
	done

TooFullForResearchNotes:
	text "<PLAYER> trouve"
	line "les RECHERCHES!"

	para "Mais le sac est"
	line "plein<...>"
	done

SimonText2_CinnabarVolcanoB3F:
	text "Je veux être un"
	line "peu seul s'il te"
	cont "plait<...>"
	done

MoveSimonToPath:
	slow_step_down
	slow_step_down
	slow_step_down
	slow_step_right
	step_end

MoveSimonToCapsule:
	slow_step_right
	step_end

MoveSimonToLeft:
	fix_facing
	step_left
	remove_fixed_facing
	step_end

MovePlayerUp:
	step_up
	step_end

MoveSimonOut:
	step_left
	step_up
	step_up
	step_up
	step_up
	step_end

WarpMewtwoOut:
	teleport_from
	step_end

CinnabarVolcanoLab_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 1
	warp_def  0, 16,  2, GROUP_CINNABAR_VOLCANO_HALLWAY, MAP_CINNABAR_VOLCANO_HALLWAY ; hallway

	; coord events
	db 0

	; bg events
	db 0

	; object events
	db 3
	person_event SPRITE_POKEDEX, 17, 11, $1, 0, 0, -1, -1, 0, 0, 0, PickUpResearchNotesScript, EVENT_GOT_RESEARCH_NOTES
	person_event SPRITE_PHARMACIST, 12, 11, $3, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, SimonScript2_CinnabarVolcanoB3F, 0
	person_event SPRITE_MONSTER, 14, 13, $1, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, 0
