Route6_MapScriptHeader: ; 0x1ad927
	; trigger count
	db 0

	; callback count
	db 0
; 0x1ad929

TrainerPokefanmRex: ; 0x1ad929
	; bit/flag number
	dw $5c7

	; trainer group && trainer id
	db POKEFANM, REX

	; text when seen
	dw PokefanmRexSeenText

	; text when trainer beaten
	dw PokefanmRexBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PokefanmRexScript
; 0x1ad935

PokefanmRexScript: ; 0x1ad935
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ad9ff
	waitbutton
	closetext
	end
; 0x1ad93d

TrainerPokefanmAllan: ; 0x1ad93d
	; bit/flag number
	dw $5c8

	; trainer group && trainer id
	db POKEFANM, ALLAN

	; text when seen
	dw PokefanmAllanSeenText

	; text when trainer beaten
	dw PokefanmAllanBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PokefanmAllanScript
; 0x1ad949

PokefanmAllanScript: ; 0x1ad949
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ada88
	waitbutton
	closetext
	end
; 0x1ad951

PokefanMScript_0x1ad951: ; 0x1ad951
	jumptextfaceplayer UnknownText_0x1ad957
; 0x1ad954

MapRoute6Signpost0Script: ; 0x1ad954
	jumptext UnknownText_0x1ad99b
; 0x1ad957

UnknownText_0x1ad957: ; 0x1ad957
	text "La route sera"
	line "fermée tant que le"

	para "problème à la"
	line "CENTRALE ne sera"
	cont "pas résolu."
	done
; 0x1ad99b

UnknownText_0x1ad99b: ; 0x1ad99b
	text "SOUTERRAIN"

	para "AZURIA -"
	line "CARMIN SUR MER"
	done
; 0x1ad9cc

PokefanmRexSeenText: ; 0x1ad9cc
	text "Mon PONYTA est le"
	line "plus mignon du"
	cont "monde!"
	done
; 0x1ad9f3

PokefanmRexBeatenText: ; 0x1ad9f3
	text "Père: Mon PONYTA!"

	para "Fils: Papa, stop<...>"
	done
; 0x1ad9ff

UnknownText_0x1ad9ff: ; 0x1ad9ff
	text "Mon PONYTA est"
	line "adorable!"

	para "Plus mignon qu'un"
	line "CHETIFLOR!"
	done
; 0x1ada4f

PokefanmAllanSeenText: ; 0x1ada4f
	text "Mon CHETIFLOR est"
	line "le plus mignon du"
	cont "monde!"
	done
; 0x1ada79

PokefanmAllanBeatenText: ; 0x1ada79
	text "Père: CHETIFLOR!"
	line "Non!!!"

	para "Fils: Papa, c'est"
	line "gênant<...>"
	done
; 0x1ada88

UnknownText_0x1ada88: ; 0x1ada88
	text "Mon CHETIFLOR est"
	line "adorable!"

	para "Plus mignon qu'un"
	line "PONYTA!"
	done
; 0x1adadb

Route6_MapEventHeader: ; 0x1adadb
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $3, $11, 1, GROUP_ROUTE_6_UNDERGROUND_ENTRANCE, MAP_ROUTE_6_UNDERGROUND_ENTRANCE
	warp_def $1, $6, 3, GROUP_ROUTE_6_SAFFRON_GATE, MAP_ROUTE_6_SAFFRON_GATE

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 5, 19, $0, MapRoute6Signpost0Script

	; people-events
	db 3
	person_event SPRITE_POKEFAN_M, 8, 21, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 2, PokefanMScript_0x1ad951, EVENT_MEN_BLOCKING_UNDERGROUND_PATH_ROUTES_5_6
	person_event SPRITE_POKEFAN_M, 16, 13, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 0, TrainerPokefanmRex, -1
	person_event SPRITE_POKEFAN_M, 16, 14, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 0, TrainerPokefanmAllan, -1
; 0x1adb17

