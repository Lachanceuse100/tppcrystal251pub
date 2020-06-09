GoldenrodBikeShop_MapScriptHeader: ; 0x5474d
	; trigger count
	db 0

	; callback count
	db 0
; 0x5474f

UnknownScript_0x5474f: ; 0x5474f
	end
; 0x54750

ClerkScript_0x54750: ; 0x54750
	faceplayer
	loadfont
	checkevent EVENT_GOT_BICYCLE
	iftrue UnknownScript_0x54775
	writetext UnknownText_0x54787
	yesorno
	iffalse UnknownScript_0x5477b
	writetext UnknownText_0x547f8
	buttonsound
	waitsfx
	giveitem BICYCLE, $1
	writetext UnknownText_0x54848
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setflag ENGINE_14
	setevent EVENT_GOT_BICYCLE
UnknownScript_0x54775: ; 0x54775
	writetext UnknownText_0x5485f
	waitbutton
	closetext
	end
; 0x5477b

UnknownScript_0x5477b: ; 0x5477b
	writetext UnknownText_0x54898
	waitbutton
	closetext
	end
; 0x54781

; possibly unused
UnknownScript_0x54781: ; 0x54781
	jumptext UnknownText_0x548c0
; 0x54784

MapGoldenrodBikeShopSignpost8Script: ; 0x54784
	jumptext UnknownText_0x548ed
; 0x54787

UnknownText_0x54787: ; 0x54787
	text "<...><...>"
	line "J'ai déménagé ici"

	para "mais je n'arrive"
	line "pas à vendre mes"

	para "BICYCLETTES."
	line "Pourquoi?"

	para "Pourrais-tu faire"
	line "de la BICYCLETTE"
	cont "et me faire de la"
	cont "pub?"
	done
; 0x547f8

UnknownText_0x547f8: ; 0x547f8
	text "Vraiment? Génial!"

	para "Donne-moi ton nom"
	line "et ton numéro de"
	cont "téléphone et je te"

	para "prêterai une"
	line "BICYCLETTE."
	done
; 0x54848

UnknownText_0x54848: ; 0x54848
	text "<PLAYER> emprunte"
	line "une BICYCLETTE."
	done
; 0x5485f

UnknownText_0x5485f: ; 0x5485f
	text "Mes BICYCLETTES"
	line "sont trop bien!"

	para "Tu peux en faire"
	line "partout."
	done
; 0x54898

UnknownText_0x54898: ; 0x54898
	text "<...><...>"
	line "Que dire de plus<...>"
	done
; 0x548c0

; possibly unused
UnknownText_0x548c0: ; 0x548c0
	text "Nouveau modèle!"

	para "La BICYCLETTE"
	line "compacte!"
	done
; 0x548ed

UnknownText_0x548ed: ; 0x548ed
	text "Une BICYCLETTE"
	line "flambant neuve!"
	done
; 0x54907

GoldenrodBikeShop_MapEventHeader: ; 0x54907
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 2, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY
	warp_def $7, $3, 2, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY

	; xy triggers
	db 0

	; signposts
	db 9
	signpost 2, 1, $0, MapGoldenrodBikeShopSignpost8Script
	signpost 3, 0, $0, MapGoldenrodBikeShopSignpost8Script
	signpost 3, 1, $0, MapGoldenrodBikeShopSignpost8Script
	signpost 5, 0, $0, MapGoldenrodBikeShopSignpost8Script
	signpost 5, 1, $0, MapGoldenrodBikeShopSignpost8Script
	signpost 6, 0, $0, MapGoldenrodBikeShopSignpost8Script
	signpost 6, 1, $0, MapGoldenrodBikeShopSignpost8Script
	signpost 6, 6, $0, MapGoldenrodBikeShopSignpost8Script
	signpost 6, 7, $0, MapGoldenrodBikeShopSignpost8Script

	; people-events
	db 1
	person_event SPRITE_CLERK, 6, 11, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, ClerkScript_0x54750, -1
; 0x54951

