PewterNidoranSpeechHouseRB_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0


PewterNidoranSpeechHouseRBSuperNerdScript:
	jumptext _PewterHouse1Text2


PewterNidoranSpeechHouseRBNidoranScript:
	loadfont
	writetext _PewterHouse1Text1
	cry NIDORAN_M
	waitbutton
	closetext
	end


PewterNidoranSpeechHouseRBUnusedGuyScript:
	jumptextfaceplayer _PewterHouse1Text3

_PewterHouse1Text2:
	text "NIDORAN, assis!"
	done


_PewterHouse1Text1:
	text "NIDORAN: Nidoni!"
	done


_PewterHouse1Text3:
	text "Notre #MON est"
	line "un échangé, il est"
	cont "difficile à"
	cont "maîtriser!"

	para "Un échangé est un"
	line "#MON échangé"
	cont "avec un dresseur."

	para "Il grandit vite"
	line "mais il ignore les"
	cont "commandes d'un"
	cont "dresseur non"
	cont "expérimenté."

	para "Si seulement nous"
	line "avions des BADGES<...>"
	done


PewterNidoranSpeechHouseRB_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 1, GROUP_PEWTER_CITY_RB, MAP_PEWTER_CITY_RB
	warp_def $7, $3, 1, GROUP_PEWTER_CITY_RB, MAP_PEWTER_CITY_RB

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_GROWLITHE, 9, 8, $16, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, PewterNidoranSpeechHouseRBNidoranScript, -1
	person_event SPRITE_SUPER_NERD, 9, 7, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, PewterNidoranSpeechHouseRBSuperNerdScript, -1
	person_event SPRITE_UNUSED_GUY, 7, 6, $9, 0, 0, -1, -1, 0, 0, 0, PewterNidoranSpeechHouseRBUnusedGuyScript, -1


