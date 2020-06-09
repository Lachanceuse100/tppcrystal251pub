ViridianNicknameSpeechHouseRB_MapScriptHeader: ; 0x9ae38
	; trigger count
	db 0

	; callback count
	db 0
; 0x9ae3a

ViridianNicknameSpeechHouseRBPokefanMScript: ; 0x9ae3a
	jumptextfaceplayer _ViridianHouseText1
; 0x9ae3d

ViridianNicknameSpeechHouseRBLassScript: ; 0x9ae3d
	jumptextfaceplayer _ViridianHouseText2
; 0x9ae40

ViridianNicknameSpeechHouseRBMoltresScript: ; 0x9ae40
	loadfont
	writetext _ViridianHouseText_1d5b1
	cry SPEAROW
	waitbutton
	closetext
	end
; 0x9ae4a

_ViridianHouseText1:
	text "Trouver des sur-"
	line "noms est difficile"
	cont "mais amusant."

	para "Les noms simples"
	line "se retiennent plus"
	cont "facilement."
	done

_ViridianHouseText2:
	text "Papa aime aussi"
	line "les #MON."
	done

_ViridianHouseText_1d5b1:
	text "PIAFFY: Tetweet!"
	done

_ViridianHouseText4:
	text "PIAFABEC"
	line "Nom: PIAFFY"
	done


ViridianNicknameSpeechHouseRB_MapEventHeader: ; 0x9af21
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 1, GROUP_VIRIDIAN_CITY_RB, MAP_VIRIDIAN_CITY_RB
	warp_def $7, $3, 1, GROUP_VIRIDIAN_CITY_RB, MAP_VIRIDIAN_CITY_RB

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_POKEFAN_M, 8, 6, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, ViridianNicknameSpeechHouseRBPokefanMScript, -1
	person_event SPRITE_LASS, 8, 9, $7, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ViridianNicknameSpeechHouseRBLassScript, -1
	person_event SPRITE_SPEAROW, 6, 9, $16, 0, 2, -1, -1, 8 + PAL_OW_BROWN, 0, 0, ViridianNicknameSpeechHouseRBMoltresScript, -1
; 0x9af65

