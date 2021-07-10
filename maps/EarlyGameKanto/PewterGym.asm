PewterGymRB_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

PewterGymRB_BrockScript:
	faceplayer
	loadfont
	checkevent EVENT_GOT_TM_SANDSTORM
	iftrue .have_tm
	checkflag ENGINE_BOULDERBADGE
	iftrue .have_badge
	writetext PewterGymRB_BrockIntroText
	waitbutton
	closetext
	winlosstext PewterGymRB_BrockLostText, $0000
	loadtrainer BROCK_RB, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_BROCK_RB
	setevent EVENT_BEAT_CAMPER_JERRY_RB ; Moved camper 2 tiles down, allowing player to skip him
	loadfont
	writetext PewterGymRB_GotBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_BOULDERBADGE
	setevent EVENT_RIVAL_ROUTE_22_RB
	domaptrigger GROUP_ROUTE_22_RB, MAP_ROUTE_22_RB, 0
	writetext PewterGymRB_BrockCongratsText
	waitbutton
	scall .tm
	closetext
	end

.have_badge
	writetext PewterGymRB_BrockCongratsText
	waitbutton
	scall.tm
	closetext
	end

.have_tm
	writetext PewterGymRB_BrockAfterText
	waitbutton
	scall .tm
	closetext
	end

.tm:
	givetm TM_SANDSTORM, EVENT_GOT_TM_SANDSTORM, .already_had_it, .bag_full
	writetext PewterGymRB_TMText
	waitbutton
.already_had_it:
.bag_full:
	end

TrainerCamperJerryRB:
	trainer EVENT_BEAT_CAMPER_JERRY_RB, CAMPER, JERRY_RB, CamperJerryRBSeenText, CamperJerryRBBeatenText, NULL, CamperJerryRBScript

CamperJerryRBScript:
	talkaftercancel
	loadfont
	writetext CamperJerryRBAfterText
	waitbutton
	closetext
	end

PewterGymRB_GymGuyScript:
	faceplayer
	loadfont
	checkevent EVENT_BEAT_BROCK_RB
	iffalse .NotChallengedYet
	writetext PewterGymRB_GymGuyWinText
	waitbutton
	closetext
	end

.NotChallengedYet
	writetext PewterGymRB_GymGuyText
	yesorno
	iffalse .no
	writetext PewterGymRB_GymGuyYesText
	jump .ok
.no
	writetext PewterGymRB_GymGuyNoText
.ok
	buttonsound
	writetext PewterGymRB_AdviceText
	waitbutton
	closetext
	end

PewterGymRB_StatueScript:
	trainertotext BROCK_RB, 1, $1
	checkflag ENGINE_BOULDERBADGE
	iftrue .HaveBadge
	jumpstd gymstatue1

.HaveBadge:
	jumpstd gymstatue2

PewterGymRB_BrockIntroText:
	text "Je suis PIERRE!"
	line "Le CHAMPION"
	cont "D'ARGENTA!"

	para "Je crois en la"
	line "résistance de la"
	cont "pierre!"

	para "C'est pourquoi"
	line "mes #MON sont"
	cont "de type ROCHE!"

	para "Tu veux toujours"
	line "me défier?"

	para "Très bien! Montre"
	line "moi ce que tu sais"
	cont "faire!"
	done

PewterGymRB_BrockLostText:

	text "PIERRE : Je t'ai"
	line "sous-estimé."

	para "Comme preuve de ta"
	line "victoire, voici le"
	cont "BADGE ROCHE!"
	done

PewterGymRB_GotBadgeText:
	text "<PLAYER> reçoit le"
	line "BADGE ROCHE."
	done

PewterGymRB_BrockCongratsText:

	text "PIERRE: Merci,"
	line "<PLAY_G>. J'ai aimé"
	cont "me battre avec toi"
	cont "même si j'ai"
	cont "perdu."

	para "Ce BADGE ROCHE"
	line "rendra tes #MON"

	para "encore plus"
	line "puissants."

	para "Tiens, prends ça"
	line "aussi."
	done

PewterGymRB_BrockAfterText:
	text "Il y a toutes"
	line "sortes de dre-"
	cont "sseurs dans le"
	cont "monde."

	para "Tu sembles être"
	line "un dresseur"
	cont "#MON de talent!"

	para "Va tester tes"
	line "compétences à"
	cont "l'arène d'AZURIA!"
	done

PewterGymRB_TMText:
	text "Une CT contient"
	line "une capacité pou-"
	para "vant être apprise"
	line "à un #MON!"

	para "De plus, tu peux"
	line "utiliser cette CT"
	cont "autant de fois que"
	cont "tu le souhaites."

	para "La CT37 contient"
	line "TEMPETESABLE!"

	para "Elle abat une"
	line "tempête de sable"
	cont "qui inflige des"
	cont "dégâts aux #MON"
	cont "pendant 5 tours."

	para "Certains #MON"
	line "n'y sont pas"
	cont "sensible alors"
	cont "fais attention!"
	done


CamperJerryRBSeenText:
	text "Arrête-toi là!"

	para "Tu es à des années"
	line "-lumière de pouv-"
	cont "voir battre"
	cont "PIERRE!"
	done

CamperJerryRBBeatenText:
	text "Mince!"

	para "Années-lumière"
	line "c'est pour la"
	cont "distance, pas le"
	cont "temps!"
	done

CamperJerryRBAfterText:
	text "Tu es fort, mais"
	line "pas autant que"
	cont "PIERRE!"
	done

PewterGymRB_GymGuyText:
	text "Salut! Je sens que"
	line "tu as ce qu'il"
	cont "faut pour devenir"
	cont "un champion"
	cont "#MON!"

	para "Je ne suis pas un"
	line "dresseur mais je"
	cont "peux te dire"
	cont "comment gagner!"

	para "Laisse moi t'em"
	line "mener au sommet!"
	done

PewterGymRB_GymGuyYesText:
	text "OK, c'est parti!"
	done

PewterGymRB_AdviceText:
	text "Le 1er #MON"
	line "envoyé dans un"
	para "match est en haut"
	line "de ton équipe!"

	para "En changeant"
	line "l'ordre de tes"
	para "#MON, le match"
	line "peut être plus"
	cont "facile!"
	done

PewterGymRB_GymGuyNoText:
	text "C'est un service"
	line "gratuit! C'est"
	cont "parti!"
	done

PewterGymRB_GymGuyWinText:
	text "Je le savais!"
	line "Tu as l'étoffe"
	cont "d'un champion!"

	para "La façon dont tu"
	line "t'es battu<...>"
	para "C'était vraiment"
	line "inspirant!"
	done

PewterGymRB_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 2
	warp_def 13, 4, 2, GROUP_PEWTER_CITY_RB, MAP_PEWTER_CITY_RB
	warp_def 13, 5, 2, GROUP_PEWTER_CITY_RB, MAP_PEWTER_CITY_RB

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 11, 2, $0, PewterGymRB_StatueScript
	signpost 11, 7, $0, PewterGymRB_StatueScript

	; people-events
	db 3
	person_event SPRITE_BROCK, 5, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, PewterGymRB_BrockScript, -1
	person_event SPRITE_YOUNGSTER, 11, 6, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 3, TrainerCamperJerryRB, -1
	person_event SPRITE_GYM_GUY, 15, 10, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 1, PewterGymRB_GymGuyScript, -1

