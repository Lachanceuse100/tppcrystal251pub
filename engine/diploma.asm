
Function1dd702: ; 1dd702
	call Function1dd709
	call Functiona80
	ret
; 1dd709

Function1dd709: ; 1dd709
	call WhiteBGMap
	call ClearTileMap
	call ClearSprites
	call DisableLCD
	ld hl, LZ_1dd805
	ld de, VTiles2
	call Decompress
	ld hl, Tilemap_1ddc4b
	ld de, TileMap
	ld bc, $0168
	call CopyBytes
	ld de, String_1dd760
	hlcoord 2, 5
	call PlaceString
	ld de, String_1dd767
	hlcoord 15, 5
	call PlaceString
	ld de, PlayerName
	hlcoord 9, 5
	call PlaceString
	ld de, String_1dd768
	hlcoord 2, 8
	call PlaceString
	call EnableLCD
	call WaitBGMap
	ld b, $8
	call GetSGBLayout
	call Function32f9
	call DelayFrame
	ret
; 1dd760

String_1dd760:
	db "JOUEUR@"

String_1dd767:
	db "@"

String_1dd768:
	db   "Ceci certifie"
	next "que votre nou-"
	next "veau #DEX"
	next "est complet."
	next "Félicitations!!!"
	db   "@"
; 1dd7ae

Function1dd7ae: ; 1dd7ae
	ld hl, TileMap
	ld bc, $0168
	ld a, $7f
	call ByteFill
	ld hl, Tilemap_1dddb3
	ld de, TileMap
	ld bc, $0168
	call CopyBytes
	ld de, String_1dd7fa
	hlcoord 8, 0
	call PlaceString
	ld de, String_1dd7f0
	hlcoord 3, 15
	call PlaceString
	hlcoord 12, 15
	ld de, GameTimeHours
	ld bc, $0204
	call PrintNum
	ld [hl], $67
	inc hl
	ld de, GameTimeMinutes
	ld bc, $8102
	call PrintNum
	ret
; 1dd7f0

String_1dd7f0: db "TEMPS JEU@"
String_1dd7fa: db "GAME FREAK@"
; 1dd805

LZ_1dd805: ; 1dd805
INCBIN "gfx/unknown/1dd805.2bpp.lz"

Tilemap_1ddc4b: ; 1ddc4b
INCBIN "gfx/unknown/1ddc4b.tilemap"

Tilemap_1dddb3: ; 1dddb3
INCBIN "gfx/unknown/1dddb3.tilemap"
