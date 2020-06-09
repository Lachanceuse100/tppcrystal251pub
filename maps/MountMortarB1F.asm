MountMortarB1F_MapScriptHeader: ; 0x7e1f4
	; trigger count
	db 0

	; callback count
	db 0
; 0x7e1f6

BlackBeltScript_0x7e1f6: ; 0x7e1f6
	faceplayer
	loadfont
	checkevent EVENT_GOT_TYROGUE_FROM_KIYO
	iftrue UnknownScript_0x7e231
	checkevent EVENT_BEAT_BLACKBELT_KIYO
	iftrue UnknownScript_0x7e217
	writetext UnknownText_0x7e24d
	waitbutton
	closetext
	winlosstext UnknownText_0x7e2a9, $0000
	loadtrainer BLACKBELT_T, KIYO
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_BLACKBELT_KIYO
	loadfont
UnknownScript_0x7e217: ; 0x7e217
	writetext UnknownText_0x7e2c0
	buttonsound
	waitsfx
	checkcode VAR_PARTYCOUNT
	if_equal $6, MortarGiftPC
	writetext UnknownText_0x7e355
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke HITMONTOP, 70, 0, 0
	setevent EVENT_GOT_TYROGUE_FROM_KIYO
UnknownScript_0x7e231: ; 0x7e231
	writetext UnknownText_0x7e36a
	waitbutton
	closetext
	end

MortarGiftPC
	checkcode VAR_BOXSPACE
	if_equal $0, UnknownScript_0x7e237
	writetext MortarGiftPCText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke HITMONTOP, 70, 0, 0
	setevent EVENT_GOT_TYROGUE_FROM_KIYO
	jump UnknownScript_0x7e231

UnknownScript_0x7e237: ; 0x7e237
	writetext UnknownText_0x7e3df
	waitbutton
	closetext
	end
; 0x7e23d

BoulderScript_0x7e23d: ; 0x7e23d
	jumpstd strengthboulder
; 0x7e240

ItemFragment_0x7e240: ; 0x7e240
	db HYPER_POTION, 1
; 0x7e242

ItemFragment_0x7e242: ; 0x7e242
	db CARBOS, 1
; 0x7e244

ItemFragment_0x7e244: ; 0x7e244
	db FULL_RESTORE, 1
; 0x7e246

ItemFragment_0x7e246: ; 0x7e246
	db MAX_ETHER, 1
; 0x7e248

ItemFragment_0x7e248: ; 0x7e248
	db PP_UP, 1
; 0x7e24a

MapMountMortarB1FSignpostItem0: ; 0x7e24a
	dw $0093
	db MAX_REVIVE

; 0x7e24d

UnknownText_0x7e24d: ; 0x7e24d
	text "Hé!"

	para "Je suis le ROI du"
	line "KARATE!"

	para "Je m'entraîne seul"
	line "dans le noir!"

	para "Toi! Moi!"
	line "Combat!"

	para "Yaaaaaaaah!"
	done
; 0x7e2a9

UnknownText_0x7e2a9: ; 0x7e2a9
	text "Waaaarggh!"
	line "J'ai perdu!"
	done
; 0x7e2c0

UnknownText_0x7e2c0: ; 0x7e2c0
	text "Quelle<...> force<...>"

	para "Mon entraînement"
	line "n'est pas encore"
	cont "suffisant."

	para "Mais j'admets ma"
	line "défaite."

	para "En gage de récom-"
	line "pense, je vais te"

	para "donner un #MON"
	line "COMBAT rare."
	done
; 0x7e355

UnknownText_0x7e355: ; 0x7e355
	text "<PLAYER> reçoit"
	line "KAPOERA."
	done

MortarGiftPCText
	text "KAPOERA est envoyé"
	line "au PC de LEO."
	done

UnknownText_0x7e36a: ; 0x7e36a
	text "KAPOERA est un"
	line "type COMBAT."

	para "Peu de DEBUGANT"
	line "évoluent en ce"
	cont "#MON."

	para "Je vais continuer"
	line "de m'entraîner."
	
	para "Fais-en de même!"

	para "Adieu!"
	done
; 0x7e3df

UnknownText_0x7e3df: ; 0x7e3df
	text "Plus de place dans"
	line "ton équipe ou ta"
	cont "BOITE PC."
	done
; 0x7e400

MountMortarB1F_MapEventHeader: ; 0x7e400
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $3, $3, 5, GROUP_MOUNT_MORTAR_1F_INSIDE, MAP_MOUNT_MORTAR_1F_INSIDE
	warp_def $1d, $13, 7, GROUP_MOUNT_MORTAR_1F_OUTSIDE, MAP_MOUNT_MORTAR_1F_OUTSIDE

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 6, 4, $7, MapMountMortarB1FSignpostItem0

	; people-events
	db 7
	person_event SPRITE_POKE_BALL, 16, 33, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x7e240, EVENT_ITEM_MT_MORTAR_B1F_HYPER_POTION
	person_event SPRITE_POKE_BALL, 20, 8, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x7e242, EVENT_ITEM_MT_MORTAR_B1F_CARBOS
	person_event SPRITE_BOULDER, 14, 13, $19, 0, 0, -1, -1, 0, 0, 0, BoulderScript_0x7e23d, -1
	person_event SPRITE_BLACK_BELT, 8, 20, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, BlackBeltScript_0x7e1f6, -1
	person_event SPRITE_POKE_BALL, 28, 38, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x7e244, EVENT_ITEM_MT_MORTAR_B1F_FULL_RESTORE
	person_event SPRITE_POKE_BALL, 7, 36, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x7e246, EVENT_ITEM_MT_MORTAR_B1F_MAX_ETHER
	person_event SPRITE_POKE_BALL, 30, 25, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x7e248, EVENT_ITEM_MT_MORTAR_B1F_PP_UP
; 0x7e470

