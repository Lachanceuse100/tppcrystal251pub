KrissHouse1F_MapScriptHeader: ; 0x7a4cc
	; trigger count
	db 2
	dw .Trigger0, 0
	dw .Trigger1, 0

	; callback count
	db 0
; 0x7a4d6
.Trigger0
	priorityjump MomElatedToSeeYouAlive
	end

.Trigger1
	end

MomElatedToSeeYouAlive:
	; put script here
	spriteface $2, DOWN
	loademote $0, $2, 15
	pause 15
	applymovement $2, NBT_MomApproaches
	loadfont
	writetext MomText1_Johto
	buttonsound
	stringtotext .phonecardname, $1
	scall .jumpstdRecvItem
	dotrigger 1
	setevent EVENT_MOM_POSITION_1
	clearevent EVENT_MOM_POSITION_2
	setflag ENGINE_PHONE_CARD
	domaptrigger GROUP_NEW_BARK_TOWN, MAP_NEW_BARK_TOWN, 2
	addcellnum $1 ; PHONE_MOM
	writetext MomText4_Johto
	yesorno
	iffalse .declined
	writetext MomText5
	buttonsound
	jump .finish

.declined
	writetext MomText6
	buttonsound
.finish
	writetext MomText7
	waitbutton
	closetext
	spriteface $7, LEFT
	spriteface $0, RIGHT
	loadfont
	writetext NBTLadyText_KrisHouse1F
	waitbutton
	closetext
	spriteface $7, UP
	pause 30
	spriteface $7, DOWN
	pause 5
	disappear $7
	playsound SFX_EXIT_BUILDING
	waitsfx
	pause 20
	spriteface $0, UP
	loadfont
	writetext MomText8
	waitbutton
	closetext
	special RestartMapMusic
	applymovement $2, ResetMomKrissHouse1F
	end

.jumpstdRecvItem
	jumpstd receiveitem

.phonecardname
	db "TELEPHONE@"

MomScript_0x7a582: ; 0x7a582
	faceplayer
	loadfont
	checkevent EVENT_SPOKE_TO_MOM_AFTER_DELIVERING_MYSTERY_EGG
	iftrue UnknownScript_0x7a5af
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iftrue UnknownScript_0x7a5b8
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue UnknownScript_0x7a5b5
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue UnknownScript_0x7a5a9
	writetext UnknownText_0x7a8b5
	waitbutton
	closetext
	end
; 0x7a5a9

UnknownScript_0x7a5a9: ; 0x7a5a9
	writetext UnknownText_0x7a8e5
	waitbutton
	closetext
	end
; 0x7a5af

UnknownScript_0x7a5af: ; 0x7a5af
	writetext UnknownText_0x7a957
	waitbutton
	closetext
	end
; 0x7a5b5

UnknownScript_0x7a5b5: ; 0x7a5b5
	setevent EVENT_SPOKE_TO_MOM_AFTER_DELIVERING_MYSTERY_EGG
UnknownScript_0x7a5b8: ; 0x7a5b8
	setevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	special Function16218
	waitbutton
	closetext
	end
; 0x7a5c1

PokefanFScript_0x7a5c1: ; 0x7a5c1
	faceplayer
	loadfont
	checkmorn
	iftrue UnknownScript_0x7a5d2
	checkday
	iftrue UnknownScript_0x7a5d9
	checknite
	iftrue UnknownScript_0x7a5e0
UnknownScript_0x7a5d2: ; 0x7a5d2
	writetext UnknownText_0x7a97d
	buttonsound
	jump UnknownScript_0x7a5e7
; 0x7a5d9

UnknownScript_0x7a5d9: ; 0x7a5d9
	writetext UnknownText_0x7a99c
	buttonsound
	jump UnknownScript_0x7a5e7
; 0x7a5e0

UnknownScript_0x7a5e0: ; 0x7a5e0
	writetext UnknownText_0x7a9b4
	buttonsound
	jump UnknownScript_0x7a5e7
; 0x7a5e7

UnknownScript_0x7a5e7: ; 0x7a5e7
	writetext UnknownText_0x7a9d3
	waitbutton
	closetext
	spriteface $6, $3
	end
; 0x7a5f0

MapKrissHouse1FSignpost3Script: ; 0x7a5f0
	jumptext UnknownText_0x7aad0
; 0x7a5f3

MapKrissHouse1FSignpost0Script: ; 0x7a5f3
	jumptext UnknownText_0x7aa3a
; 0x7a5f6

MapKrissHouse1FSignpost1Script: ; 0x7a5f6
	jumptext UnknownText_0x7aa64
; 0x7a5f9

MapKrissHouse1FSignpost2Script: ; 0x7a5f9
	jumptext UnknownText_0x7aa91
; 0x7a5fc

NBT_MomApproaches:
	slow_step_down
	step_sleep 20
	step_down
	big_step_left
	turn_head_down
	step_end

ResetMomKrissHouse1F:
	step_up
	step_right
	step_up
	turn_head_left
	step_end

UnknownText_0x7a8b5: ; 0x7a8b5
	text "Le PROF.ORME"
	line "t'attends."

	para "Dépêche toi,"
	line "chouchou."
	done
; 0x7a8e5

UnknownText_0x7a8e5: ; 0x7a8e5
	text "Alors, que tu vou-"
	line "lais le PROF.ORME?"

	para "<...>"

	para "Ca semble être un"
	line "sacré défi."

	para "Mais soit fier que"
	line "les gens comptent"
	cont "sur toi."
	done
; 0x7a957

UnknownText_0x7a957: ; 0x7a957
	text "<PLAYER>, courage!"

	para "Je suis de toute"
	line "coeur avec toi!"
	done
; 0x7a97d

UnknownText_0x7a97d: ; 0x7a97d
	text "Bonjour,"
	line "<PLAY_G>!"

	para "Je visite!"
	done
; 0x7a99c

UnknownText_0x7a99c: ; 0x7a99c
	text "Bonjour,"
	line "<PLAY_G>!"

	para "Je visite!"
	done
; 0x7a9b4

UnknownText_0x7a9b4: ; 0x7a9b4
	text "Bonsoir,"
	line "<PLAY_G>!"

	para "Je visite!"
	done
; 0x7a9d3

UnknownText_0x7a9d3: ; 0x7a9d3
	text "<PLAY_G>, tu"
	line "savais?"

	para "Ma fille veux de-"
	line "venir l'assistante"

	para "du PROF.ORME."

	para "Elle aime les"
	line "#MON!"
	done
; 0x7aa3a

UnknownText_0x7aa3a: ; 0x7aa3a
	text "La spécialité de"
	line "MAMAN."

	para "Le HAMBURGER"
	line "CRAMOISI!"
	done
; 0x7aa64

UnknownText_0x7aa64: ; 0x7aa64
	text "C'est tout propre!"
	para "MAMAN aime le"
	line "nettoyer."
	done
; 0x7aa91

UnknownText_0x7aa91: ; 0x7aa91
	text "Voyons ce qu'il y"
	line "a dans le frigo<...>"

	para "De l'EAU FRAICHE"
	line "et une LIMONADE!"
	done
; 0x7aad0

UnknownText_0x7aad0: ; 0x7aad0
	text "Il y a un film à"
	line "la télé: Des"

	para "étoiles pendant"
	line "que deux garçons"
	cont "prennent le train."

	para "Je devrais y aller"
	line "aussi!"
	done
; 0x7ab31

MomText1_Johto:
	text "<PLAY_G>? C'est,"
	line "c'est vraiment toi"
	cont "chouchou?"

	para "Tout ce temps,"
	line "j'ai<...>"

	para "Peu importe, tu"
	line "vas bien, c'est"
	cont "l'important."

	para "Oh, <PLAY_G><...>"

	para "J'étais tellement"
	line "inquiète!"

	para "Quand j'ai enten-"
	line "du la nouvelle<...>"

	para "Ne me fais plus"
	line "jamais peur comme"
	cont "ça!"

	para "J'aurais du insta-"
	line "ller ça le moment"
	cont "ou ton #MATOS"
	cont "est revenu!"
	done

MomText4_Johto:
	text "J'ai déjà enregi-"
	line "stré mon numéro."

	para "Appelle moi de"
	line "temps en temps,"
	cont "d'accord?"

	para "Je ne veux plus"
	line "avoir à me soucier"
	cont "comme ça<...>"

	para "Au fait, tu sais"
	line "utiliser le"
	cont "TELEPHONE?"
	done
; 0x7a7cb

MomText5: ; 0x7a7cb
	text "Il faut allumer"
	line "le #MATOS et"

	para "sélectionner l'i-"
	line "cône du TELEPHONE"
	done
; 0x7a807

MomText6: ; 0x7a807
	text "Je vais lire les"
	line "instructions."

	para "Allume le #-"
	line "MATOS et sélec-"
	cont "tionne l'icône du"
	cont "TELEPHONE."
	done
; 0x7a850

MomText7: ; 0x7a850
	text "Les numéros de té-"
	line "léphone sont sto-"
	cont "ckés dans la"
	cont "mémoire."

	para "Choisis un nom que"
	line "tu veux appeler."

	para "C'est pratique,"
	line "non?"

	para $56, " ", $56, " ", $56
	line "<PLAY_G><...>"

	para "N'oublie jamais"
	line "que je t'aime."
	done

NBTLadyText_KrisHouse1F:
	text "Je dois y aller."

	para "Ravie de t'avoir"
	line "rencontré,"
	cont "<PLAY_G>!"
	done

MomText8:
	text "Oh! J'ai presque"
	line "oublié!"

	para "Un des collègues"
	line "du PROF.CHEN"
	cont "vit ici."

	para "Son nom est PROF."
	line "ORME. Son LABO est"
	cont "à côté."

	para "Tu devrais te"
	line "présenter à lui."

	para "Je l'appelle pour"
	line "lui faire savoir"
	cont "que tu arrives."
	done

KrissHouse1F_MapEventHeader: ; 0x7ab31
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $7, $6, 2, GROUP_NEW_BARK_TOWN, MAP_NEW_BARK_TOWN
	warp_def $7, $7, 2, GROUP_NEW_BARK_TOWN, MAP_NEW_BARK_TOWN
	warp_def $0, $9, 1, GROUP_KRISS_HOUSE_2F, MAP_KRISS_HOUSE_2F

	; xy triggers
	db 0
	; xy_trigger 0, $4, $8, $0, UnknownScript_0x7a4d8, $0, $0
	; xy_trigger 0, $4, $9, $0, UnknownScript_0x7a4db, $0, $0

	; signposts
	db 4
	signpost 1, 0, $0, MapKrissHouse1FSignpost0Script
	signpost 1, 1, $0, MapKrissHouse1FSignpost1Script
	signpost 1, 2, $0, MapKrissHouse1FSignpost2Script
	signpost 1, 4, $0, MapKrissHouse1FSignpost3Script

	; people-events
	db 7
	person_event SPRITE_MOM, 8, 11, $8, 0, 0, -1, -1, 0, 0, 0, MomScript_0x7a582, EVENT_MOM_POSITION_1
	person_event SPRITE_MOM, 6, 6, $7, 0, 0, -1, 1, 0, 0, 0, MomScript_0x7a582, EVENT_MOM_POSITION_2
	person_event SPRITE_MOM, 8, 11, $8, 0, 0, -1, 2, 0, 0, 0, MomScript_0x7a582, EVENT_MOM_POSITION_2
	person_event SPRITE_MOM, 6, 4, $7, 0, 0, -1, 4, 0, 0, 0, MomScript_0x7a582, EVENT_MOM_POSITION_2
	person_event SPRITE_POKEFAN_F, 8, 8, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, PokefanFScript_0x7a5c1, EVENT_NEIGHBOR_IN_YOUR_HOUSE_1F
	person_event SPRITE_TEACHER, 11, 11, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, ObjectEvent, EVENT_MOM_POSITION_1
; 0x7abab

