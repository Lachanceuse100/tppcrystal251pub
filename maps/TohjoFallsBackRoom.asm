TohjoFallsBackRoom_MapScriptHeader:
	db 2

	dw TohjoFallsBackRoom_Trigger1, $0000
	dw TohjoFallsBackRoom_Trigger2, $0000

	db 0

TohjoFallsBackRoom_Trigger1:
	priorityjump GiovanniScript1
	end

TohjoFallsBackRoom_Trigger2:
	end

GiovanniScript1:
	showemote $0, $2, 15
	pause 15
	spriteface $2, $0
	playmusic MUSIC_ROCKET_ENCOUNTER
	loadfont
	writetext GiovanniText1
	waitbutton
	closetext
	applymovement $2, MovementData_Giovanni1
	loadtrainer ROCKETBOSS, GIOVANNI_RB
	winlosstext GiovanniText2, GiovanniText3
	startbattle
	reloadmapmusic
	returnafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	loadfont
	writetext GiovanniText4
	waitbutton
	closetext
	applymovement $0, MovementData_PlayerTFBR
	applymovement $2, MovementData_Giovanni2
	playsound SFX_EXIT_BUILDING
	disappear $2
	dotrigger $1
	playmapmusic
	end

MovementData_Giovanni1:
	step_down
MovementData_Giovanni2:
	step_down
	step_end

MovementData_PlayerTFBR:
	step_left
	turn_head_right
	step_end

GiovanniText1:
	text "Toi<...> Comment m'as-"
	line "tu trouvé?"

	para "Peu importe."

	para "Mon nom est"
	line "GIOVANNI."

	para "Il y a 3 mois j'ai"
	line "mené la TEAM RO-"
	cont "CKET a sa gloire."

	para "Jusqu'au jour ou"
	line "un enfant m'a"
	cont "battu."

	para "Embarassé, je suis"
	line "venu ici m'entraî-"
	cont "ner en solitaire."

	para "J'ai dissous la"
	line "TEAM ROCKET ce"
	cont "jour-là."

	para "Quoi? Ils me"
	line "cherchaient?"

	para "Et tu les as de"
	line "nouveau battus"
	cont "à JOHTO? Ha!"

	para "Intéressant!"
	line "Permet-moi de tes-"
	cont "ter mes nouveaux"
	cont "talents face à"
	cont "toi."

	para "Prépare toi à"
	line "souffrir!"
	done

GiovanniText2:
	text "QUOI?!"

	para "Comment est-ce"
	line "possible?"

	para "Tous ces mois"
	line "d'entraînement<...>"

	para "Tout ça pour rien?"
	done

GiovanniText3:
	text "Tu auras au moins"
	line "appris a ne pas te"

	para "frotter au plus"
	line "grand dresseur"
	cont "#MON."
	done

GiovanniText4:
	text "Incroyable<...>"

	para "Il semblerait que"
	line "mon entraînement"
	cont "ne soit pas"
	cont "suffisant."

	para "Je vais battre en"
	line "retraite pour"
	cont "l'instant."

	para "Nos chemins se"
	line "recroiseront<...>"
	done

TohjoFallsBackRoom_MapEventHeader:
	db 0, 0

	db 1
	warp_def 5, 5, 3, GROUP_TOHJO_FALLS, MAP_TOHJO_FALLS

	db 0

	db 0

	db 1
	person_event SPRITE_GIOVANNI, 6, 9, $7, 0, 0, $ff, $ff, 0, 0, 0, ObjectEvent, EVENT_BEAT_GIOVANNI
