ManiasHouse_MapScriptHeader: ; 0x9d276
	; trigger count
	db 0

	; callback count
	db 0
; 0x9d278

RockerScript_0x9d278: ; 0x9d278
	faceplayer
	loadfont
	checkevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
	iftrue UnknownScript_0x9d2fa
	checkevent EVENT_GOT_SHUCKIE
	iftrue UnknownScript_0x9d2a4
	writetext UnknownText_0x9d303
	yesorno
	iffalse UnknownScript_0x9d2b6
	special SpecialGiveShuckle
	iffalse UnknownScript_0x9d2b0
	writetext UnknownText_0x9d3ed
	buttonsound
	waitsfx
	writetext UnknownText_0x9d41b
	playsound SFX_KEY_ITEM
	waitsfx
	closetext
	setevent EVENT_GOT_SHUCKIE
	end
; 0x9d2a4

UnknownScript_0x9d2a4: ; 0x9d2a4
	checkflag ENGINE_SHUCKLE_GIVEN
	iffalse UnknownScript_0x9d2bc
	writetext UnknownText_0x9d3ed
	waitbutton
	closetext
	end
; 0x9d2b0

UnknownScript_0x9d2b0: ; 0x9d2b0
	writetext UnknownText_0x9d42f
	waitbutton
	closetext
	end
; 0x9d2b6

UnknownScript_0x9d2b6: ; 0x9d2b6
	writetext UnknownText_0x9d449
	waitbutton
	closetext
	end
; 0x9d2bc

UnknownScript_0x9d2bc: ; 0x9d2bc
	writetext UnknownText_0x9d470
	yesorno
	iffalse UnknownScript_0x9d2ee
	special SpecialReturnShuckle
	if_equal $0, UnknownScript_0x9d2df
	if_equal $1, UnknownScript_0x9d2ee
	if_equal $3, UnknownScript_0x9d2e5
	if_equal $4, UnknownScript_0x9d2fa
	writetext UnknownText_0x9d4b1
	waitbutton
	closetext
	setevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
	end
; 0x9d2df

UnknownScript_0x9d2df: ; 0x9d2df
	writetext UnknownText_0x9d4bd
	waitbutton
	closetext
	end
; 0x9d2e5

UnknownScript_0x9d2e5: ; 0x9d2e5
	writetext UnknownText_0x9d4e3
	waitbutton
	closetext
	setevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
	end
; 0x9d2ee

UnknownScript_0x9d2ee: ; 0x9d2ee
	writetext UnknownText_0x9d53f
	waitbutton
	closetext
	end
; 0x9d2f4

UnknownScript_0x9d2f4: ; 0x9d2f4
	writetext UnknownText_0x9d5b0
	waitbutton
	closetext
	end
; 0x9d2fa

UnknownScript_0x9d2fa: ; 0x9d2fa
	writetext UnknownText_0x9d56c
	waitbutton
	closetext
	end
; 0x9d300

UnknownScript_0x9d300: ; 0x9d300
	jumpstd picturebookshelf
; 0x9d303

UnknownText_0x9d303: ; 0x9d303
	text "Je, je suis sous"
	line "le choc!"

	para "Un gamin de ton"
	line "âge avec des yeux"

	para "perçant et des"
	line "cheveux longs"
	
	para "s'est infiltré"
	line "chez moi."

	para "Il m'a pris mon"
	line "#MON adoré!"

	para "Il m'en reste un"
	line "mais que faire si"
	cont "il revient?"

	para "Tu as l'air fort."
	line "Peux-tu t'occuper"

	para "de mon #MON"
	line "un petit moment?"
	done
; 0x9d3ed

UnknownText_0x9d3ed: ; 0x9d3ed
	text "Oh, merci!"
	line "Merci beaucoup!"

	para "Prends-en bien"
	line "soin, pitié!"
	done
; 0x9d41b

UnknownText_0x9d41b: ; 0x9d41b
	text "<PLAYER> reçoit un"
	line "#MON."
	done
; 0x9d42f

UnknownText_0x9d42f: ; 0x9d42f
	text "Ton équipe est"
	line "au complet!"
	done
; 0x9d449

UnknownText_0x9d449: ; 0x9d449
	text "Oh, non<...> Que"
	line "vais-je faire si"
	cont "il revient?"
	done
; 0x9d470

UnknownText_0x9d470: ; 0x9d470
	text "Salut! Comment-va"
	line "mon #MON?"

	para "Je me sens en sé-"
	line "curité maintenant."

	para "Tu pourrais me"
	line "le rendre?"
	done
; 0x9d4b1

UnknownText_0x9d4b1: ; 0x9d4b1
	text "Merci beaucoup!"
	done
; 0x9d4bd

UnknownText_0x9d4bd: ; 0x9d4bd
	text "Hé! Tu n'as pas"
	line "mon #MON avec"
	cont "toi!"
	done
; 0x9d4e3

UnknownText_0x9d4e3: ; 0x9d4e3
	text "Mon #MON a"
	line "l'air de t'aimer."

	para "Tu devrais le"
	line "garder."

	para "Mais promet moi"
	line "qu'il sera bien"
	cont "traîté!"
	done
; 0x9d53f

UnknownText_0x9d53f: ; 0x9d53f
	text "Oh, non, non<...>"
	line "C'est comme si tu"
	cont "me l'avais volé!"
	done
; 0x9d56c

UnknownText_0x9d56c: ; 0x9d56c
	text "Pour un #MON,"
	line "le bonheur est"

	para "d'être avec une"
	line "personne qui le"
	cont "traîte avec amour."
	done
; 0x9d5b0

UnknownText_0x9d5b0: ; 0x9d5b0
	text "Si je reprends mon"
	line "#MON, que vas-tu"

	para "utiliser en"
	line "combat?"
	done
; 0x9d5f0

ManiasHouse_MapEventHeader: ; 0x9d5f0
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 1, GROUP_CIANWOOD_CITY, MAP_CIANWOOD_CITY
	warp_def $7, $3, 1, GROUP_CIANWOOD_CITY, MAP_CIANWOOD_CITY

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_ROCKER, 8, 6, $3, 0, 0, -1, -1, 0, 0, 0, RockerScript_0x9d278, -1
; 0x9d60d

