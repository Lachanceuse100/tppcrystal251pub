SilverCavePokeCenter1F_MapScriptHeader: ; 0x1ae598
	; trigger count
	db 0

	; callback count
	db 0
; 0x1ae59a

NurseScript_0x1ae59a: ; 0x1ae59a
	jumpstd pokecenternurse
; 0x1ae59d

GrannyScript_0x1ae59d: ; 0x1ae59d
	jumptextfaceplayer SilverPokeCenterNPCText
; 0x1ae5a0

SecondGrannyPCScript: ; 0x1ae59d
	jumptextfaceplayer SilverPokeCenterNPC2Text
; 0x1ae5a0

SilverPokeCenterNPCText: ; 0x1ae5a0
	text "Les dresseurs qui"
	line "recherchent le"

	para "pouvoir grimpent"
	line "le MONT ARGENT"

	para "malgré ses nom-"
	line "breux dangers."

	para "Avec leurs #MON"
	line "les plus forts,"

	para "ils pensent être"
	line "capable d'aller"
	cont "n'importe où."
	done

SilverPokeCenterNPC2Text:
	text "Un objet du SAC"
	line "peut être enregis-"

	para "tré comme fonction"
	line "du bouton SELECT."

	para "C'est pas génial?"

	done

SilverCavePokeCenter1F_MapEventHeader: ; 0x1ae622
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $7, $3, 1, GROUP_SILVER_CAVE_OUTSIDE, MAP_SILVER_CAVE_OUTSIDE
	warp_def $7, $4, 1, GROUP_SILVER_CAVE_OUTSIDE, MAP_SILVER_CAVE_OUTSIDE
	warp_def $7, $0, 1, GROUP_POKECENTER_2F, MAP_POKECENTER_2F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_NURSE, 5, 7, $6, 0, 0, -1, -1, 0, 0, 0, NurseScript_0x1ae59a, -1
	person_event SPRITE_GRANNY, 9, 5, $8, 1, 2, -1, -1, 0, 0, 0, GrannyScript_0x1ae59d, -1
	person_event SPRITE_GRANNY, 8, 12, $5, 1, 3, -1, -1, PAL_OW_BLUE, 0, 0, SecondGrannyPCScript, -1
; 0x1ae651

