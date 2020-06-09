PrintItemDescription: ; 0x1c8955
; Print the description for item [CurSpecies] at de.

	ld a, [CurSpecies]
	cp TM_DYNAMICPUNCH
	jr c, .not_a_tm

	ld [CurItem], a
	push de
	callba GetTMHMItemMove
	pop hl
	ld a, [wd265]
	ld [CurSpecies], a
	predef PrintMoveDesc
	ret

.not_a_tm
	push de
	cp S_S_TICKET
	jr nz, .not_ss_ticket
	ld a, [StatusFlags]
	bit 5, a
	ld de, SSTicketEGKDesc
	jr z, .okay
.not_ss_ticket
	ld hl, ItemDescriptions
	ld a, [CurSpecies]
	dec a
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld e, [hl]
	inc hl
	ld d, [hl]
.okay
	pop hl
	jp PlaceString
; 0x1c8987


ItemDescriptions:
	dw MasterBallDesc
	dw UltraBallDesc
	dw BrightpowderDesc
	dw GreatBallDesc
	dw PokeBallDesc
	dw PremierBallDesc
	dw BicycleDesc
	dw MoonStoneDesc
	dw AntidoteDesc
	dw BurnHealDesc
	dw IceHealDesc
	dw AwakeningDesc
	dw ParlyzHealDesc
	dw FullRestoreDesc
	dw MaxPotionDesc
	dw HyperPotionDesc
	dw SuperPotionDesc
	dw PotionDesc
	dw EscapeRopeDesc
	dw RepelDesc
	dw MaxElixerDesc
	dw FireStoneDesc
	dw ThunderStoneDesc
	dw WaterStoneDesc
	dw PoisonGuardDesc
	dw HPUpDesc
	dw ProteinDesc
	dw IronDesc
	dw CarbosDesc
	dw LuckyPunchDesc
	dw CalciumDesc
	dw RareCandyDesc
	dw XAccuracyDesc
	dw LeafStoneDesc
	dw MetalPowderDesc
	dw NuggetDesc
	dw PokeDollDesc
	dw FullHealDesc
	dw ReviveDesc
	dw MaxReviveDesc
	dw GuardSpecDesc
	dw SuperRepelDesc
	dw MaxRepelDesc
	dw DireHitDesc
	dw BurnGuardDesc
	dw FreshWaterDesc
	dw SodaPopDesc
	dw LemonadeDesc
	dw XAttackDesc
	dw FreezeGuardDesc
	dw XDefendDesc
	dw XSpeedDesc
	dw XSpecialDesc
	dw CoinCaseDesc
	dw ItemfinderDesc
	dw PokeFluteDesc
	dw ExpShareDesc
	dw OldRodDesc
	dw GoodRodDesc
	dw SilverLeafDesc
	dw SuperRodDesc
	dw PPUpDesc
	dw EtherDesc
	dw MaxEtherDesc
	dw ElixerDesc
	dw RedScaleDesc
	dw SecretPotionDesc
	dw SSTicketDesc
	dw MysteryEggDesc
	dw ClearBellDesc
	dw SilverWingDesc
	dw MoomooMilkDesc
	dw QuickClawDesc
	dw PsnCureBerryDesc
	dw GoldLeafDesc
	dw SoftSandDesc
	dw SharpBeakDesc
	dw PrzCureBerryDesc
	dw BurntBerryDesc
	dw IceBerryDesc
	dw PoisonBarbDesc
	dw KingsRockDesc
	dw BitterBerryDesc
	dw MintBerryDesc
	dw RedApricornDesc
	dw TinyMushroomDesc
	dw BigMushroomDesc
	dw SilverPowderDesc
	dw BluApricornDesc
	dw SleepGuardDesc
	dw AmuletCoinDesc
	dw YlwApricornDesc
	dw GrnApricornDesc
	dw CleanseTagDesc
	dw MysticWaterDesc
	dw TwistedSpoonDesc
	dw WhtApricornDesc
	dw BlackbeltDesc
	dw BlkApricornDesc
	dw ParlyzGuardDesc
	dw PnkApricornDesc
	dw BlackGlassesDesc
	dw SlowpokeTailDesc
	dw PinkBowDesc
	dw StickDesc
	dw SmokeBallDesc
	dw NeverMeltIceDesc
	dw MagnetDesc
	dw MiracleBerryDesc
	dw PearlDesc
	dw BigPearlDesc
	dw EverStoneDesc
	dw SpellTagDesc
	dw RageCandyBarDesc
	dw GSBallDesc
	dw BlueCardDesc
	dw MiracleSeedDesc
	dw ThickClubDesc
	dw FocusBandDesc
	dw ConfuseGuardDesc
	dw EnergyPowderDesc
	dw EnergyRootDesc
	dw HealPowderDesc
	dw RevivalHerbDesc
	dw HardStoneDesc
	dw LuckyEggDesc
	dw CardKeyDesc
	dw MachinePartDesc
	dw EggTicketDesc
	dw LostItemDesc
	dw StardustDesc
	dw StarPieceDesc
	dw BasementKeyDesc
	dw PassDesc
	dw HelixFossilDesc
	dw DomeFossilDesc
	dw OldAmberDesc
	dw CharcoalDesc
	dw BerryJuiceDesc
	dw ScopeLensDesc
	dw OaksParcelDesc
	dw PowerHerbDesc
	dw MetalCoatDesc
	dw DragonFangDesc
	dw FriendCharmDesc
	dw LeftoversDesc
	dw ResearchNotesDesc
	dw TeruSama16Desc
	dw TeruSama17Desc
	dw MysteryBerryDesc
	dw DragonScaleDesc
	dw BerserkGeneDesc
	dw TeruSama18Desc
	dw XSpDefDesc
	dw TeruSama20Desc
	dw SacredAshDesc
	dw HeavyBallDesc
	dw FlowerMailDesc
	dw LevelBallDesc
	dw LureBallDesc
	dw FastBallDesc
	dw TeruSama21Desc
	dw LightBallDesc
	dw FriendBallDesc
	dw MoonBallDesc
	dw LoveBallDesc
	dw NormalBoxDesc
	dw GorgeousBoxDesc
	dw SunStoneDesc
	dw PolkadotBowDesc
	dw TeruSama22Desc
	dw UpGradeDesc
	dw BerryDesc
	dw GoldBerryDesc
	dw SquirtBottleDesc
	dw TeruSama23Desc
	dw ParkBallDesc
	dw RainbowWingDesc
	dw TeruSama24Desc
	dw BrickPieceDesc
	dw SurfMailDesc
	dw LiteBlueMailDesc
	dw PortraitMailDesc
	dw LovelyMailDesc
	dw EonMailDesc
	dw MorphMailDesc
	dw BlueSkyMailDesc
	dw MusicMailDesc
	dw MewMailDesc
	dw TeruSama25Desc
	dw TeruSama26Desc
	dw TeruSama26Desc
	dw TeruSama26Desc
	dw TeruSama26Desc
	dw TeruSama26Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama29Desc
	dw TeruSama30Desc
	dw TeruSama31Desc
	dw TeruSama32Desc
	dw TeruSama33Desc

MasterBallDesc:
	db   "La meilleure BALL"
	next "Ne rate jamais.@"

UltraBallDesc:
	db   "Une BALL à haut"
	next "taux de réussite.@"

BrightpowderDesc:
	db   "Baisse précision"
	next "ennemi. (TENU)@"

GreatBallDesc:
	db   "Une BALL à bon"
	next "taux de réussite.@"

PokeBallDesc:
	db   "Objet pour capturer"
	next "les #MON.@"

PremierBallDesc:
	db   "BALL créée pour"
	next "un évenement.@"

BicycleDesc:
	db   "Un vélo pliable"
	next "pour se balader.@"

MoonStoneDesc:
	db   "Evolue certains"
	next "types de #MON.@"

AntidoteDesc:
	db   "Soigne les #MON"
	next "empoisonnés.@"

BurnHealDesc:
	db   "Soigne les #MON"
	next "brûlés.@"

IceHealDesc:
	db   "Soigne les #MON"
	next "gelés.@"

AwakeningDesc:
	db   "Réveille les #-"
	next "MON endormis.@"

ParlyzHealDesc:
	db   "Soigne les #MON"
	next "paralysés@"

FullRestoreDesc:
	db   "Restaure tous PV"
	next "et statut.@"

MaxPotionDesc:
	db   "Restaure tous les"
	next "PV d'un #MON.@"

HyperPotionDesc:
	db   "Restaure 200 PV"
	next "d'un #MON.@"

SuperPotionDesc:
	db   "Restaure 50 PV"
	next "d'un #MON.@"

PotionDesc:
	db   "Restaure 20 PV"
	next "d'un #MON.@"

EscapeRopeDesc:
	db   "Pour s'enfuir"
	next "d'une grotte, etc.@"

RepelDesc:
	db   "Repousse faibles"
	next "PKMN de 100 pas.@"

MaxElixerDesc:
	db   "Restaure tous PP"
	next "d'un #MON.@"

FireStoneDesc:
	db   "Evolue certains"
	next "types de #MON.@"

ThunderStoneDesc:
	db   "Evolue certains"
	next "types de #MON.@"

WaterStoneDesc:
	db   "Evolue certains"
	next "types de #MON.@"

TeruSama2Desc:
	db   "?@"

HPUpDesc:
	db   "Monte les PV"
	next "d'un #MON.@"

ProteinDesc:
	db   "Monte l'ATTAQUE"
	next "d'un #MON.@"

IronDesc:
	db   "Monte la DEFENSE"
	next "d'un #MON.@"

CarbosDesc:
	db   "Monte la VITESSE"
	next "d'un #MON.@"

LuckyPunchDesc:
	db   "Plus de critiques"
	next "avec LEVEINARD.@"

CalciumDesc:
	db   "Monte l'ATK.SPE"
	next "d'un #MON.@"

RareCandyDesc:
	db   "Monte le niveau"
	next "d'un #MON de 1.@"

XAccuracyDesc:
	db   "Monte la"
	next "PRECISION. (1 CBT)@"

LeafStoneDesc:
	db   "Evolue certains"
	next "types de #MON.@"

MetalPowderDesc:
	db   "Monte DEFENSE de"
	next "METAMORPH. (TENU)@"

NuggetDesc:
	db   "Fait d'or pur."
	next "Se vend cher.@"

PokeDollDesc:
	db   "Pour s'enfuir face"
	next "à un PKMN sauvage.@"

FullHealDesc:
	db   "Elimine tout chan-"
	next "gement de statut.@"

ReviveDesc:
	db   "Réanime #MON KO"
	next "avec 1/2 PV MAX.@"

MaxReviveDesc:
	db   "Réanime totalement"
	next "un #MON KO.@"

GuardSpecDesc:
	db   "Prévient réduction"
	next "de stats. (1 CBT)@"

SuperRepelDesc:
	db   "Repousse faibles"
	next "PKMN de 200 pas.@"

MaxRepelDesc:
	db   "Repousse faibles"
	next "PKMN de 250 pas.@"

DireHitDesc:
	db   "Monte taux de"
	next "critiques. (1 CBT)@"

TeruSama3Desc:
	db   "?@"

FreshWaterDesc:
	db   "Restaure 50 PV"
	next "d'un #MON.@"

SodaPopDesc:
	db   "Restaure 60 PV"
	next "d'un #MON.@"

LemonadeDesc:
	db   "Restaure 80 PV"
	next "d'un #MON.@"

XAttackDesc:
	db   "Augmente"
	next "l'ATTAQUE. (1 CBT)@"

TeruSama4Desc:
	db   "?@"

XDefendDesc:
	db   "Augmente la"
	next "DEFENSE. (1 CBT)@"

XSpeedDesc:
	db   "Augmente la."
	next "VITESSE. (1CBT)@"

XSpecialDesc:
	db   "Augmente"
	next "l'ATK.SPE. (1 CBT)@"

CoinCaseDesc:
	db   "Contient jusqu'à"
	next "50.000 jetons.@"

ItemfinderDesc:
	db   "Voir objets invi-"
	next "sibles de la zone.@"

PokeFluteDesc:
	db   "Réveille #MON"
	next "endormis.@"

ExpShareDesc:
	db   "Partager les pts"
	next "d'EXP. (TENU)@"

OldRodDesc:
	db   "Pour pêcher les"
	next "PKMN dans l'eau.@"

GoodRodDesc:
	db   "Une bonne canne à"
	next "pêcher les PKMN.@"

SilverLeafDesc:
	db   "Une étrange feuille"
	next "argentée.@"

SuperRodDesc:
	db   "La meilleur canne"
	next "à pêcher les PKMN.@"

PPUpDesc:
	db   "Monte PP max d'une"
	next "capacité choisie.@"

EtherDesc:
	db   "Restaure 10 PP d'"
	next "une capacité.@"

MaxEtherDesc:
	db   "Restaure tous PP"
	next "d'une capacité.@"

ElixerDesc:
	db   "Restaure 10 PP de"
	next "toutes capacités.@"

RedScaleDesc:
	db   "Une écaille du LE-"
	next "VIATOR rouge.@"

SecretPotionDesc:
	db   "Soin total d'un"
	next "#MON.@"

SSTicketDesc:
	db   "Un ticket pour"
	next "l'AQUARIA@"

MysteryEggDesc:
	db   "Un OEUF obtenu"
	next "de M .#MON.@"

ClearBellDesc:
	db   "Sonne"
	next "doucement.@"

SilverWingDesc:
	db   "Une étrange aile"
	next "argentée.@"

MoomooMilkDesc:
	db   "Restaure 100 PV"
	next "d'un #MON.@"

QuickClawDesc:
	db   "Plus de chances d'"
	next "initiative. (TENU)@"

PsnCureBerryDesc:
	db   "Auto-soin pour"
	next "poison. (TENU)@"

GoldLeafDesc:
	db   "Une étrange"
	next "feuille d'or.@"

SoftSandDesc:
	db   "Renforce les capa-"
	next "cités SOL. (TENU)@"

SharpBeakDesc:
	db   "Renforce les capa-"
	next "cités VOL. (TENU)@"

PrzCureBerryDesc:
	db   "Auto-soin pour"
	next "paralysie. (TENU)@"

BurntBerryDesc:
	db   "Un anti-gel auto-"
	next "matique. (TENU)@"

IceBerryDesc:
	db   "Un anti-brûle au-"
	next "tomatique. (TENU)@"

PoisonBarbDesc:
	db   "Renforce capacités"
	next "POISON. (TENU)@"

KingsRockDesc:
	db   "Peut apeurer l'"
	next "ennemi. (TENU)@"

BitterBerryDesc:
	db   "Auto-soin pour la"
	next "confusion. (TENU)@"

MintBerryDesc:
	db   "Auto-soin pour le"
	next "sommeil. (TENU)@"

RedApricornDesc:
	db   "Une NOIGRUME rouge.@"

TinyMushroomDesc:
	db   "Un petit champi-"
	next "gnon ordinaire@"

BigMushroomDesc:
	db   "Un champignon"
	next "tr", $c6, "s rare@"

SilverPowderDesc:
	db   "Renforce capacités"
	next "INSECTE. (TENU)@"

BluApricornDesc:
	db   "Une NOIGRUME bleu.@"

TeruSama6Desc:
	db   "?@"

AmuletCoinDesc:
	db   "Double les gains"
	next "d'argent. (HOLD)@"

YlwApricornDesc:
	db   "Une NOIGRUME jaune.@"

GrnApricornDesc:
	db   "Une NOIGRUME verte.@"

CleanseTagDesc:
	db   "Repousse les PKMN"
	next "sauvages. (TENU)@"

MysticWaterDesc:
	db   "Renforce les capa-"
	next "cités EAU. (TENU)@"

TwistedSpoonDesc:
	db   "Renforce les capa-"
	next "cités PSY. (TENU)@"

WhtApricornDesc:
	db   "Une NOIGRUME blanc.@"

BlackbeltDesc:
	db   "Renforce caoacités"
	next "COMBAT. (TENU)@"

BlkApricornDesc:
	db   "Une NOIGRUME noir.@"

TeruSama7Desc:
	db   "?@"

PnkApricornDesc:
	db   "Une NOIGRUME rose.@"

BlackGlassesDesc:
	db   "Renforce capacités"
	next "TENEBRES. (TENU)@"

SlowpokeTailDesc:
	db   "tr", $c6, "s bon."
	next "Se vend cher.@"

PinkBowDesc:
	db   "Renforce les capa-"
	next "cités FEE. (TENU)@"

StickDesc:
	db   "Monte critique."
	next "de CANARTICHO.@"

SmokeBallDesc:
	db   "Pour s'enfuir face"
	next "à un PKMN (TENU)@"

NeverMeltIceDesc:
	db   "Renforce capacités"
	next "GLACE. (TENU)@"

MagnetDesc:
	db   "Renforce capacités"
	next "ELECTRIK. (TENU)@"

MiracleBerryDesc:
	db   "Auto-soin de tout"
	next "statut. (TENU)@"

PearlDesc:
	db   "Une belle perle."
	next "Se vend peu cher.@"

BigPearlDesc:
	db   "Une grande perle."
	next "Se vend cher.@"

EverStoneDesc:
	db   "Stoppe l'évolu-."
	next "tion (TENU)@"

SpellTagDesc:
	db   "Renforce capacités"
	next "SPECTRE. (TENU)@"

RageCandyBarDesc:	
	db   "Restaure 20 PV"
	next "d'un #MON.@"

GSBallDesc:
	db   "Une BALL"
	next "mystérieuse<...>@"

BlueCardDesc:
	db   "Pour stocker les"
	next "points BUENA.@"

MiracleSeedDesc:
	db   "Renforce capacités"
	next "PLANTE. (TENU)@"

ThickClubDesc:
	db   "Monte l'ATTAQUE de"
	next "OSSATUEUR. (TENU)@"

FocusBandDesc:
	db   "Peut empêcher un"
	next "K.O. (TENU)@"

TeruSama8Desc:
	db   "?@"

EnergyPowderDesc:
	db   "Restaure 50 PVs d'"
	next "un #MON. Amere.@"

EnergyRootDesc:
	db   "Restaure 200 PV d'"
	next "#MON. Amere.@"

HealPowderDesc:
	db   "Contre changement"
	next "de statut. Amere.@"

RevivalHerbDesc:
	db   "Ranime #MON"
	next "K.O. Amere.@"

HardStoneDesc:
	db   "Renforce capcaités"
	next "ROCHE. (TENU).@"

LuckyEggDesc:
	db   "Double points EXP."
	next "en combat. (TENU)@"

CardKeyDesc:
	db   "Ouvre les volets"
	next "à la TOUR RADIO.@"

MachinePartDesc:
	db   "Un élément de la"
	next "CENTRALE.@"

EggTicketDesc:
	db   "Pour échanger à"
	next "DOUBLONVILLE.@"

LostItemDesc:
	db   "# POUPEE perdue"
	next "par la copieuse.@"

StardustDesc:
	db   "Joli sable rouge."
	next "Se vend cher.@"

StarPieceDesc:
	db   "Morceau de joyaux"
	next "rouge. Tr", $c6, "s cher.@"

BasementKeyDesc:
	db   "Ouvre des portes.@"

PassDesc:
	db   "Un ticket pour le"
	next "TRAIN MAGNETIQUE.@"

TeruSama9Desc:
	db   "?@"

TeruSama10Desc:
	db   "?@"

TeruSama11Desc:
	db   "?@"

CharcoalDesc:
	db   "Renforce les capa-"
	next "cités FEU. (TENU)@"

BerryJuiceDesc:
	db   "Restaure 20 PVs d'"
	next "un #MON@"

ScopeLensDesc:
	db   "Monte taux de"
	next "critiques. (TENU)@"

OaksParcelDesc:
	db   "Un colis pour"
	next "le PROF.CHEN.@"

PowerHerbDesc:
	db   "Accélere charge-"
	next "ment cap. (TENU)@"

MetalCoatDesc:
	db   "Renforce capacités"
	next "ACIER. (TENU)@"

DragonFangDesc:
	db   "Renforce capacités"
	next "DRAGON. (TENU)@"

FriendCharmDesc:
	db   "Augmente taux de"
	next "capture. (TENU)@"

LeftoversDesc:
	db   "Restaure les PV en"
	next "combat. (TENU)@"

ResearchNotesDesc:
	db   "Notes de recher-"
	next "ches d'AUGUSTE@"

TeruSama16Desc:
	db   "?@"

TeruSama17Desc:
	db   "?@"

MysteryBerryDesc:
	db   "Auto-soin pour"
	next "les PP. (TENU)@"

DragonScaleDesc:
	db   "Une écaille rare"
	next "du type DRAGON.@"

BerserkGeneDesc:
	db   "Monte l'ATTAQUE"
	next "mais rend confus.@"

TeruSama18Desc:
	db   "?@"

XSpDefDesc:
	db   "Monte la DEF.SPE."
	next "(1 CBT)@"

TeruSama20Desc:
	db   "?@"

SacredAshDesc:
	db   "Réanimation totale"
	next "de tous #MON.@"

HeavyBallDesc:
	db   "BALL pour capturer"
	next "les PKMN lourds.@"

FlowerMailDesc:
	db   "Lettre fleurie."
	next "(TENU)@"

LevelBallDesc:
	db   "BALL pour #MON"
	next "de niveau moindre.@"

LureBallDesc:
	db   "BALL pour #MON"
	next "ferrés par CANNE.@"

FastBallDesc:
	db   "BALL pour #MON"
	next "rapides.@"

TeruSama21Desc:
	db   "?@"

LightBallDesc:
	db   "Orbe renforcant"
	next "PIKACHU. (TENU)@"

FriendBallDesc:
	db   "BALL pour rendre"
	next "un #MON amical.@"

MoonBallDesc:
	db   "BALL pour évolués"
	next "par PIERRE LUNE.@"

LoveBallDesc:
	db   "BALL pour capturer"
	next "le genre opposé.@"

NormalBoxDesc:
	db   "A ouvrir pour voir"
	next "ce qui se cache!@"

GorgeousBoxDesc:
	db   "A ouvrir pour voir"
	next "ce qui se cache!@"

SunStoneDesc:
	db   "Evolue certains"
	next "types de #MON.@"

PolkadotBowDesc:
	db   "Renforce capacités"
	next "NORMAL. (TENU)@"

TeruSama22Desc:
	db   "?@"

UpGradeDesc:
	db   "Boite mysterieuse"
	next "de la SYLPHE SARL.@"

BerryDesc:
	db   "Restaure 10 PV d'"
	next "un #MON (TENU)@"

GoldBerryDesc:
	db   "Restaure 1/4 PV"
	next "max (TENU)@"

SquirtBottleDesc:
	db   "Bouteille pour ar-"
	next "roser les plantes.@"

TeruSama23Desc:
	db   "?@"

ParkBallDesc:
	db   "BALL utilisé au"
	next "concours du parc.@"

RainbowWingDesc:
	db   "Plume mystique"
	next "arc-en-ciel.@"

TeruSama24Desc:
	db   "?@"

BrickPieceDesc:
	db   "Se vend peu cher@"

SurfMailDesc:
	db   "Lettre avec LOKH-"
	next "LASS (TENU)@"

LiteBlueMailDesc:
	db   "Lettre avec MINI-"
	next "DRACO. (TENU)@"

PortraitMailDesc:
	db   "Letter à l'image"
	next "du porteur (TENU).@"

LovelyMailDesc:
	db   "Lettre peinte de"
	next "coeurs (TENU)@"

EonMailDesc:
	db   "Lettre avec EVOLI."
	next "(TENU)@"

MorphMailDesc:
	db   "Lettre avec META-"
	next "MORPH (TENU)@"

BlueSkyMailDesc:
	db   "Lettre rappelant"
	next "le ciel (TENU)@"

MusicMailDesc:
	db   "Lettre avec NATU."
	next "(TENU)@"

MewMailDesc:
	db   "Lettre avec MEW."
	next "(TENU)@"

DomeFossilDesc:
	db   "Fossile d'un an-"
	next "ancien #MON.@"

HelixFossilDesc:
	db   "Fossile d'un an-"
	next "ancien #MON.@"

OldAmberDesc:
	db   "Fossile d'un an-"
	next "ancien #MON.@"

PoisonGuardDesc:
	db	 "(TENU) Empêche"
	next "l'empoisonnement.@"

BurnGuardDesc:
	db	 "(TENU) Empêche"
	next "la brûlure.@"

FreezeGuardDesc:
	db	 "(TENU) Empêche"
	next "le gel.@"

SleepGuardDesc:
	db	 "(TENU) Empêche"
	next "le sommeil.@"

ParlyzGuardDesc:
	db	 "(TENU) Empêche"
	next "la paralysie.@"

ConfuseGuardDesc:
	db	 "(TENU) Empêche"
	next "la confusion.@"

TeruSama25Desc:
	db   "?@"

TeruSama26Desc:
	db   "?@"

TeruSama27Desc:
	db   "?@"

TeruSama28Desc:
	db   "?@"

TeruSama29Desc:
	db   "?@"

TeruSama30Desc:
	db   "?@"

TeruSama31Desc:
	db   "?@"

TeruSama32Desc:
	db   "?@"

TeruSama33Desc:
	db   "?@"

SSTicketEGKDesc:
	db   "Un ticket pour"
	next "l'OCEANE.@"
