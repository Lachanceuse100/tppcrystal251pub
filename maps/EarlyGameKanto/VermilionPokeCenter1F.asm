VermilionPokeCenter1FRB_MapScriptHeader: ; 0x191601
	; trigger count
	db 0

	; callback count
	db 0
; 0x191603

VermilionPokeCenter1FRB_NurseScript: ; 0x191603
	jumpstd pokecenternurse
; 0x191606

VermilionPokeCenter1FRB_FishingGuruScript: ; 0x191606
	jumptextfaceplayer _VermilionPokecenterText1
; 0x19161a

VermilionPokeCenter1FRB_SailorScript: ; 0x19161a
	jumptextfaceplayer _VermilionPokecenterText2
; 0x19161d

VermilionPokeCenter1FRB_BugCatcherScript: ; 0x19161d
	jumptextfaceplayer _VermilionPokecenterGuyText
; 0x191620

_VermilionPokecenterText1:
	text "Même à niveau"
	line "égal, les #MON"
	cont "ont des capacités"
	cont "différentes."

	para "Un #MON élevé"
	line "par un dresseur"
	cont "est plus fort"
	cont "qu'un sauvage."
	done

_VermilionPokecenterText2:
	text "Mon #MON était"
	line "empoisonné!"

	para "Ca s'est en allé"
	line "mais j'ai eu peur!"
	done

_VermilionPokecenterGuyText:
	text "C'est vrai qu'un"
	line "#MON plus haut"
	cont "niveau sera plus"
	cont "puissant<...>"

	para "Mais tous les"
	line "#MON ont un"
	cont "point faible face"
	cont "à certains types."

	para "Il n'y a pas"
	line "vraiment de"
	cont "#MON ultime."
	done

VermilionPokeCenter1FRB_LinkScript:
	jumpstd pokecenterlinkegk

VermilionPokeCenter1FRB_MapEventHeader: ; 0x191791
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $5, 2, GROUP_VERMILION_CITY_RB, MAP_VERMILION_CITY_RB
	warp_def $7, $6, 2, GROUP_VERMILION_CITY_RB, MAP_VERMILION_CITY_RB

	; xy triggers
	db 0

	; signposts
	db 0
	
	; people-events
	db 5
	person_event SPRITE_NURSE, 5, 9, $6, 0, 0, -1, -1, 0, 0, 0, VermilionPokeCenter1FRB_NurseScript, -1
	person_event SPRITE_FISHING_GURU, 9, 16, $3, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, VermilionPokeCenter1FRB_FishingGuruScript, -1
	person_event SPRITE_SAILOR, 7, 10, $3 , 1, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, VermilionPokeCenter1FRB_SailorScript, -1
	person_event SPRITE_BUG_CATCHER, 8, 6, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, VermilionPokeCenter1FRB_BugCatcherScript, -1
	person_event SPRITE_LINK_RECEPTIONIST, 6, 17, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, VermilionPokeCenter1FRB_LinkScript, -1
; 0x1917da

