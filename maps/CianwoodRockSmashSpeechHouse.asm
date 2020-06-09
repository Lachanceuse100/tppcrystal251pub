CianwoodRockSmashSpeechHouse_MapScriptHeader:
	; triggers
	db 0

	; callbacks
	db 0

CianwoodRockSmashManiac:
	faceplayer
	loadfont
	checkevent EVENT_GOT_TM08_ROCK_SMASH
	iftrue .after_smash
	writetext RockSmashManiacBeforeText
	buttonsound
	checkitem TM_ROCK_SMASH
	iftrue .AlreadyHaveRockSmash
	verbosegiveitem TM_ROCK_SMASH, 1
	jump .after_got_smash

.AlreadyHaveRockSmash
	writetext GotRockSmashText
	buttonsound
.after_got_smash
	setevent EVENT_GOT_TM08_ROCK_SMASH
.after_smash
	writetext RockSmashManiacAfterText
	waitbutton
.cancel
	closetext
	end

RockSmashManiacBeforeText:
	text "Yahou!"

	para "On m'appelle le"
	line "gars à ECLATE-ROC"

	para "mais je trouve ça"
	line "dégradant."

	para "Je mérite plus de"
	line "respect que ça!"

	para "Pourquoi pas le"
	line "mec à ECLATE-ROC,"
	cont "hein?"

	para "Yahou!"

	para "Bref, ton #MON"
	line "à l'air costaud."

	para "J'aime ça!"

	para "Tiens, prends"
	line "cette CT!"
	done

GotRockSmashText:
	text "Oh? Tu en as"
	line "déjà une?"

	para "TROP BIEN!"
	done

RockSmashManiacAfterText:
	text "Cette CT contient"
	line "ECLATE ROC"

	para "Si tu vois des"
	line "gros rochers qui"

	para "bloquent ton"
	line "chemin<...>"

	para "Ben tu utilises"
	line "cette CT et BAM!"
	cont "Hors du chemin!"

	para "Oui! BAM les"
	line "rochers j'ai dit"
	cont "Yahou!"
	done

CianwoodRockSmashSpeechHouse_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 8, GROUP_CIANWOOD_CITY, MAP_CIANWOOD_CITY
	warp_def $7, $3, 8, GROUP_CIANWOOD_CITY, MAP_CIANWOOD_CITY

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_SCIENTIST, 7, 6, $6, 0, 0, -1, -1, 0, 0, 0, CianwoodRockSmashManiac, -1
	
