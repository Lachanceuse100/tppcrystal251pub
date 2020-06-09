GetLandmarkCoords: ; 0x1ca896
; Return coordinates (d, e) of landmark e.
	push hl
	ld l, e
	ld h, 0
	add hl, hl
	add hl, hl
	ld de, Landmarks
	add hl, de
	ld a, [hli]
	ld e, a
	ld d, [hl]
	pop hl
	ret
; 0x1ca8a5


GetLandmarkName:: ; 0x1ca8a5
; Copy the name of landmark e to StringBuffer1.
	push hl
	push de
	push bc

	ld a, e
	cp LAV_RADIO_TOWER
	jr nz, .normal
	ld a, [StatusFlags]
	bit 5, a
	jr nz, .normal
	ld hl, .PokemonTower
	jr .okay

.normal
	ld l, e
	ld h, 0
	add hl, hl
	add hl, hl
	ld de, Landmarks + 2
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
.okay
	ld de, StringBuffer1
	ld c, 18
.copy
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .copy

	pop bc
	pop de
	pop hl
	ret
; 0x1ca8c3
.PokemonTower
	db "TOUR", $1f, "#MON@"

Landmarks: ; 0x1ca8c3

landmark: MACRO
	db \1, \2
	dw \3
ENDM

	landmark   0,   0, SpecialMapName
	landmark 148, 116, NewBarkTownName
	landmark 136, 116, Route29Name
	landmark 108, 116, CherrygroveCityName
	landmark 108,  96, Route30Name
	landmark 104,  76, Route31Name
	landmark  92,  76, VioletCityName
	landmark  93,  74, SproutTowerName
	landmark  92, 108, Route32Name
	landmark  84,  92, RuinsOfAlphName
	landmark  92, 140, UnionCaveName
	landmark  90, 140, Route33Name
	landmark  76, 140, AzaleaTownName
	landmark  78, 138, SlowpokeWellName
	landmark  60, 136, IlexForestName
	landmark  60, 128, Route34Name
	landmark  60, 108, GoldenrodCityName
	landmark  58, 108, RadioTowerName
	landmark  60,  92, Route35Name
	landmark  60,  76, NationalParkName
	landmark  72,  76, Route36Name
	landmark  76,  68, Route37Name
	landmark  76,  60, EcruteakCityName
	landmark  78,  58, TinTowerName
	landmark  74,  58, BurnedTowerName
	landmark  60,  60, Route38Name
	landmark  44,  64, Route39Name
	landmark  44,  76, OlivineCityName
	landmark  46,  78, LighthouseName
	landmark  36,  72, BattleTowerName
	landmark  36,  80, Route40Name
	landmark  36, 108, WhirlIslandsName
	landmark  36, 116, Route41Name
	landmark  28, 116, CianwoodCityName
	landmark 100,  60, Route42Name
	landmark  92,  60, MtMortarName
	landmark 116,  60, MahoganyTownName
	landmark 116,  52, Route43Name
	landmark 116,  44, LakeOfRageName
	landmark 128,  60, Route44Name
	landmark 138,  54, IcePathName
	landmark 140,  60, BlackthornCityName
	landmark 140,  52, DragonsDenName
	landmark 140,  80, Route45Name
	landmark 120,  88, DarkCaveName
	landmark 132, 104, Route46Name
	landmark 156,  84, SilverCaveName
	landmark  60, 124, PalletTownName
	landmark  60, 108, Route1Name
	landmark  60,  92, ViridianCityName
	landmark  60,  80, Route2Name
	landmark  60,  76, ViridianForestName
	landmark  60,  68, PewterCityName
	landmark  72,  68, Route3Name
	landmark  84,  68, MtMoonName
	landmark  96,  68, Route4Name
	landmark 108,  68, CeruleanCityName
	landmark 104,  64, CeruleanCaveName
	landmark 108,  60, Route24Name
	landmark 116,  52, Route25Name
	landmark 108,  76, Route5Name
	landmark 116,  92, UndergroundName
	landmark 108,  92, Route6Name
	landmark 108, 100, VermilionCityName
	landmark 110,  98, SSAnneName
	landmark  96,  76, DiglettsCaveName
	landmark  96,  84, Route7Name
	landmark 124,  84, Route8Name
	landmark 124,  68, Route9Name
	landmark 140,  68, RockTunnelName
	landmark 140,  72, Route10Name
	landmark 140,  76, PowerPlantName
	landmark 140,  84, LavenderTownName
	landmark 148,  84, LavRadioTowerName
	landmark  84,  84, CeladonCityName
	landmark  82,  86, BattleTentRuinsName
	landmark 108,  84, SaffronCityName
	landmark 124, 100, Route11Name
	landmark 140,  96, Route12Name
	landmark 132, 116, Route13Name
	landmark 124, 128, Route14Name
	landmark 112, 132, Route15Name
	landmark  76,  84, Route16Name
	landmark  76, 108, Route17Name
	landmark  88, 132, Route18Name
	landmark 100, 132, FuchsiaCityName
	landmark 100, 144, Route19Name
	landmark  84, 148, Route20Name
	landmark  76, 148, SeafoamIslandsName
	landmark  60, 148, CinnabarIslandName
	landmark  64, 152, CinnabarVolcanoName
	landmark  60, 136, Route21Name
	landmark  44,  84, Route22Name
	landmark  92, 108, MewIslandName
	landmark  36,  68, VictoryRoadName
	landmark  36,  60, Route23Name
	landmark  36,  52, IndigoPlateauName
	landmark  36, 108, Route26Name
	landmark  28, 116, Route27Name
	landmark  20, 116, TohjoFallsName
	landmark  28,  84, Route28Name
	landmark 148, 132, FastShipName


NewBarkTownName:     db "BOURG GEON@"
CherrygroveCityName: db "VILLE", $1f, "GRIOTTE@"
VioletCityName:      db "MAUVILLE@"
AzaleaTownName:      db "ECORCIA@"
GoldenrodCityName:   db "DOUBLON", $1f, "VILLE@"
EcruteakCityName:    db "ROSALIA@"
OlivineCityName:     db "OLIVILLE@"
CianwoodCityName:    db "IRISIA@"
MahoganyTownName:    db "ACAJOU@"
BlackthornCityName:  db "EBENELLE@"
LakeOfRageName:      db "LAC COLERE@"
SilverCaveName:      db "GROTTE", $1f, "ARGENTEE@"
SproutTowerName:     db "TOUR", $1f, "CHETIFLOR@"
RuinsOfAlphName:     db "RUINES", $1f, "D'ALPHA@"
UnionCaveName:       db "CAVES", $1f, "JUMELLES@"
SlowpokeWellName:    db "PUITS", $1f, "RAMOLOSS@"
RadioTowerName:      db "TOUR RADIO@"
PowerPlantName:      db "CENTRALE@"
NationalParkName:    db "PARC", $1f, "NATUREL@"
TinTowerName:        db "TOUR", $1f, "FERRAILLE@"
LighthouseName:      db "PHARE@"
WhirlIslandsName:    db "TOURB'", $1f, "ILES@"
MtMortarName:        db "MONT", $1f, "CREUSET@"
DragonsDenName:      db "ANTRE DU", $1f, "DRAGON@"
IcePathName:         db "ROUTE", $1f, "DE GLACE@"
NotApplicableName:   db "N/A@"
PalletTownName:      db "BOURG", $1f, "PALETTE@"
ViridianCityName:    db "JADIELLE@"
PewterCityName:      db "ARGENTA@"
CeruleanCityName:    db "AZURIA@"
LavenderTownName:    db "LAVANVILLE@"
VermilionCityName:   db "CARMIN SUR", $1f, "MER@"
CeladonCityName:     db "CELADOPOLE@"
SaffronCityName:     db "SAFRANIA@"
FuchsiaCityName:     db "PARMANIE@"
CinnabarIslandName:  db "CRAMOIS'", $1f, "ILE@"
CinnabarVolcanoName: db "VOLCAN", $1f, "CRAMOISI@"
IndigoPlateauName:   db "PLATEAU", $1f, "INDIGO@"
VictoryRoadName:     db "ROUTE", $1f, "VICTOIRE@"
MtMoonName:          db "MONT", $1f, "SELENITE@"
RockTunnelName:      db "GROTTE@"
LavRadioTowerName:   db "TOUR RADIO", $1f, "LAV.@"
SilphCoName:         db "SILPH SARL@"
SafariZoneName:      db "PARC SAFARI@"
SeafoamIslandsName:  db "ILES", $1f, "ECUME@"
PokemonMansionName:  db "MANOIR", $1f, "#MON@"
CeruleanCaveName:    db "CAVERNE", $1f, "AZUREE@"
MewIslandName:       db "GUYANA@"
Route1Name:          db "ROUTE 1@"
Route2Name:          db "ROUTE 2@"
Route3Name:          db "ROUTE 3@"
Route4Name:          db "ROUTE 4@"
Route5Name:          db "ROUTE 5@"
Route6Name:          db "ROUTE 6@"
Route7Name:          db "ROUTE 7@"
Route8Name:          db "ROUTE 8@"
Route9Name:          db "ROUTE 9@"
Route10Name:         db "ROUTE 10@"
Route11Name:         db "ROUTE 11@"
Route12Name:         db "ROUTE 12@"
Route13Name:         db "ROUTE 13@"
Route14Name:         db "ROUTE 14@"
Route15Name:         db "ROUTE 15@"
Route16Name:         db "ROUTE 16@"
Route17Name:         db "ROUTE 17@"
Route18Name:         db "ROUTE 18@"
Route19Name:         db "ROUTE 19@"
Route20Name:         db "ROUTE 20@"
Route21Name:         db "ROUTE 21@"
Route22Name:         db "ROUTE 22@"
Route23Name:         db "ROUTE 23@"
Route24Name:         db "ROUTE 24@"
Route25Name:         db "ROUTE 25@"
Route26Name:         db "ROUTE 26@"
Route27Name:         db "ROUTE 27@"
Route28Name:         db "ROUTE 28@"
Route29Name:         db "ROUTE 29@"
Route30Name:         db "ROUTE 30@"
Route31Name:         db "ROUTE 31@"
Route32Name:         db "ROUTE 32@"
Route33Name:         db "ROUTE 33@"
Route34Name:         db "ROUTE 34@"
Route35Name:         db "ROUTE 35@"
Route36Name:         db "ROUTE 36@"
Route37Name:         db "ROUTE 37@"
Route38Name:         db "ROUTE 38@"
Route39Name:         db "ROUTE 39@"
Route40Name:         db "ROUTE 40@"
Route41Name:         db "ROUTE 41@"
Route42Name:         db "ROUTE 42@"
Route43Name:         db "ROUTE 43@"
Route44Name:         db "ROUTE 44@"
Route45Name:         db "ROUTE 45@"
Route46Name:         db "ROUTE 46@"
DarkCaveName:        db "ANTRE NOIR@"
IlexForestName:      db "BOIS AUX", $1f, "CHENES@"
BurnedTowerName:     db "TOUR", $1f, "CENDREE@"
FastShipName:        db "AQUARIA@"
ViridianForestName:  db "FORET DE", $1f, "JADE@"
DiglettsCaveName:    db "GROTTE", $1f, "TAUPIQUEUR@"
TohjoFallsName:      db "CHUTES", $1f, "TOHJO@"
UndergroundName:     db "SOUTERRAIN@"
BattleTowerName:     db "TOUR", $1f, "DE COMBAT@"
SpecialMapName:      db "SPECIAL@"
BattleTentRuinsName: db "RUINES", $1f, "TENTE CMBT@"
SSAnneName:          db "OCEANE@"

SpecialRegionCheck:
	call RegionCheck
	ld a, e
	ld [ScriptVar], a
	ret

RegionCheck: ; 0x1caea1
; Checks if the player is in Kanto or Johto.
; If in Johto, returns 0 in e.
; If in Kanto, returns 1 in e.
	ld a, [MapGroup]
	ld b, a
	ld a, [MapNumber]
	ld c, a
	call GetWorldMapLocation
	cp FAST_SHIP ; S.S. Aqua
	jr z, .johto
	cp SPECIAL_MAP
	jr nz, .checkagain

; In a special map, get the backup map group / map id
	ld a, [BackupMapGroup]
	ld b, a
	ld a, [BackupMapNumber]
	ld c, a
	call GetWorldMapLocation

.checkagain
	cp KANTO_LANDMARK
	jr c, .johto

; Victory Road area is considered to be Johto.
	cp VICTORY_ROAD
	jr c, .kanto

.johto
	ld e, 0
	ret
.kanto
	ld e, 1
	ret

