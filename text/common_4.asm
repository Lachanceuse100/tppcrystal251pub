_OakText6: ; 0x1c4000
	text "Et tu disais"
	line "donc t'appeler?"
	prompt
; 0x1c4026

_OakText7: ; 0x1c4026
	text "<PLAYER>, es-tu"
	line "prêt?"

	para "Ta quête #MON"
	line "est sur le point"
	cont "de commencer."

	para "Joies et périls"
	line "paveront ta"
	cont "route."

	para "Un monde de rêves"
	line "et d'aventure avec"

	para "les #MON"
	line "t'attend!"
	cont "Lance toi!"

	para "..."
	line "A plus tard!"
	done
; 0x1c40e6

_OakText8:
	text "Ah, c'est donc"
	line "<PLAYER>."
	prompt

_OakText9:
	text "Voici ton meilleur"
	line "ami."

	para "C'est ton rival"
	line "depuis ta plus"
	cont "tendre enfance."

	para "Tu te souviens de"
	line "son nom, pas vrai?"
	done

_OakText10:
	text "C'est bien ça, son"
	line "nom est <GREEN>!"
	prompt

_OakText9F:
	text "Voici ton meilleur"
	line "ami."

	para "C'est ton rival"
	line "depuis ta plus"
	cont "tendre enfance."

	para "Tu te souviens de"
	line "son nom, pas vrai?"
	done

_OakText10F:
	text "C'est bien ça, son"
	line "nom est <GREEN>!"
	prompt

UnknownText_0x1c40e6: ; 0x1c40e6
	text "L'horloge est"
	line "peut-être fausse."

	para "Veuillez vérifier"
	line "l'heure."
	prompt
; 0x1c411c

UnknownText_0x1c411c: ; 0x1c411c
	text "Réglez avec la"
	line "manette."

	para "Choix:  Bouton A"
	line "Retour: Bouton B"
	done
; 0x1c415b

UnknownText_0x1c415b: ; 0x1c415b
	text "Est-ce correct?"
	done
; 0x1c4168

UnknownText_0x1c4168: ; 0x1c4168
	text "L'horloge est"
	line "réinitialisé."
	done
; 0x1c4183

UnknownText_0x1c4183: ; 0x1c4183
	text "Trop de temps"
	line "s'est écoulé."
	cont "Veuillez réessayer"
	prompt
; 0x1c41b1

UnknownText_0x1c41b1: ; 0x1c41b1
	text "Si tu échanges ce"
	line "#MON, tu ne"
	cont "pourras pas te."
	cont "battre!"
	prompt
; 0x1c41e6

UnknownText_0x1c41e6: ; 0x1c41e6
	text "Le @"
	text_from_ram StringBuffer1
	text " de"
	line "ton ami semble"
	cont "anormal!"
	prompt
; 0x1c4212

UnknownText_0x1c4212: ; 0x1c4212
	text "Envoyer @"
	text_from_ram wd004
	text ""
	line "pour @"
	text_from_ram StringBuffer1
	text "?"
	done
; 0x1c422a

UnknownText_0x1c422a: ; 0x1c422a
	text "Pour faire un com-"
	line "bat mobile, tu"

	para "dois choisir une"
	line "équipe de trois"
	cont "#MON."

	para "C'est d'accord?"
	done
; 0x1c4275

UnknownText_0x1c4275: ; 0x1c4275
	text "Besoin de plus d'"
	line "infos sur les"
	cont "combats mobile?"
	done
; 0x1c4298

UnknownText_0x1c4298: ; 0x1c4298
	text "Pour un combat"
	line "mobile, choisissez"
	cont "trois #MON."

	para "Le temps d'un"
	line "combat est de dix"

	para "minutes pour"
	line "chaque joueur."

	para "Si un combat dé-"
	line "passe la limite de"

	para "temps, le joueur"
	line "avec le moins de"

	para "#MON en forme"
	line "gagne."

	para "Si égalité, l'"
	line "équipe ayant perdu"

	para "le moins de PVs"
	line "gagne."
	done
; 0x1c439c

UnknownText_0x1c439c: ; 0x1c439c
	text "Aujourd'hui, il"
	line "reste @"
	deciram StringBuffer2, $12
	text " min."

	para "Voulez vous"
	line "combattre?"
	done
; 0x1c43dc

UnknownText_0x1c43dc: ; 0x1c43dc
	text "Il ne reste que @"
	deciram StringBuffer2, $12
	text ""
	line "min. aujourd'hui."

	para "Un petit combat"
	line "rapide?"
	done
; 0x1c4419

UnknownText_0x1c4419: ; 0x1c4419
	text "Il ne reste qu'une"
	line "minute!"

	para "Un combat en"
	line "vitesse?"
	done
; 0x1c445a

UnknownText_0x1c445a: ; 0x1c445a
	text "Plus assez de"
	line "temps pour un"

	para "combat. Réessayez"
	line "demain."
	done
; 0x1c449c

UnknownText_0x1c449c: ; 0x1c449c
	text "Essayez avec les"
	line "mêmes paramètres?"
	done
; 0x1c44c0

UnknownText_0x1c44c0: ; 0x1c44c0
	text "Il reste moins d'1"
	line "minute aujourd'hui"
	done
; 0x1c44e7

UnknownText_0x1c44e7: ; 0x1c44e7
	text "Plus de temps pour"
	line "aujourd'hui."
	done
; 0x1c4508

UnknownText_0x1c4508: ; 0x1c4508
	text "Choisissez trois"
	line "#MON."
	done
; 0x1c4525

UnknownText_0x1c4525: ; 0x1c4525
	text "Aujourd'hui, il"
	line "reste @"
	deciram StringBuffer2, $12
	text " min."
	done
; 0x1c454b

UnknownText_0x1c454b: ; 0x1c454b
	text "Voulez-vous"
	line "sauvegarder?"
	done
; 0x1c456d

UnknownText_0x1c456d: ; 0x1c456d
	text "SAUVEGARDE<...> NE"
	line "PAS ETEINDRE."
	done
; 0x1c4590

UnknownText_0x1c4590: ; 0x1c4590
	text $52, " sauve"
	line "la partie."
	done
; 0x1c45a3

UnknownText_0x1c45a3: ; 0x1c45a3
	text "Il y a déjà une"
	line "sauvegarde. La"
	cont "replacer?"
	done
; 0x1c45d9

UnknownText_0x1c45d9: ; 0x1c45d9
	text "Il y a déjà une"
	line "autre sauvegarde."
	cont "la replacer?"
	done
; 0x1c460d

UnknownText_0x1c460d: ; 0x1c460d
	text "La sauvegarde est"
	line "corrompue!"
	prompt
; 0x1c462a

UnknownText_0x1c462a: ; 0x1c462a
	text "En changeant de"
	line "boîte #MON,"
	cont "les données sont"
	cont "sauvegardées. OK?"
	done
; 0x1c465f

UnknownText_0x1c465f: ; 0x1c465f
	text "A chaque déplace-"
	line "ment de #MON,"
	cont "les données sont"
	cont "sauvegardées. OK?"
	done
; 0x1c4693

_Text_DeleteBox:
	text "En vidant toute"
	line "la boîte #MON"
	cont "les données sont"
	cont "sauvegardées. OK?"
	done

UnknownText_0x1c4693: ; 0x1c4693
	text "La fenêtre de"
	line "sauvegarde est"
	cont "dépassé."
	done
; 0x1c46b7

UnknownText_0x1c46b7: ; 0x1c46b7
	text "Pas de fenêtres"
	line "disponibles."
	done
; 0x1c46dc

UnknownText_0x1c46dc: ; 0x1c46dc
	text "Evènement corrompu"
	prompt
; 0x1c46ee

_ObjectEventText:: ; 0x1c46ee
	text "Objet évènement"
	done
; 0x1c46fc

UnknownText_0x1c46fc:: ; 0x1c46fc
	text "Arrière-plan"
	line "évènement."
	done
; 0x1c4706

UnknownText_0x1c4706:: ; 0x1c4706
	text "Coordonnées"
	line "évènement."
	done
; 0x1c4719

UnknownText_0x1c4719:: ; 0x1c4719
	text $52, " reçois"
	line "@"
	text_from_ram StringBuffer4
	text "."
	done

MultipleGetItemText::
	text $52, " reçois"
	line "@"
	deciram wd10c, $13
	text " @"
	text_from_ram StringBuffer4
	text "S."
	done
; 0x1c472c

UnknownText_0x1c472c:: ; 0x1c472c
	text $52, " met"
	line "@"
	text_from_ram StringBuffer1
	text " dans"
	cont "la @"
	text_from_ram StringBuffer3
	text "."
	prompt
; 0x1c474b

UnknownText_0x1c474b:: ; 0x1c474b
	text "La @"
	text_from_ram StringBuffer3
	text ""
	line "est pleine<...>"
	prompt
; 0x1c475f

UnknownText_0x1c475f: ; 0x1c475f
	text "Je sais tout."
	line "Je vois tout<...>"

	para "Bien sûr, je"
	line "connais ton #-"
	cont "MON"
	done
; 0x1c4797

UnknownText_0x1c4797: ; 0x1c4797
	text "Quooooi? Je n'y"
	line "arrive pas!"

	para "Comment c'est"
	line "possible<...>"
	done
; 0x1c47d4

UnknownText_0x1c47d4: ; 0x1c47d4
	text "Hm<...> Tu as rencon-"
	line "tré @"
	text_from_ram wd003
	text " ici:"
	cont "@"
	text_from_ram wd00e
	text "!"
	prompt
; 0x1c47fa

UnknownText_0x1c47fa: ; 0x1c47fa
	text "L'heure était"
	line "@"
	text_from_ram wd01f
	text "!"

	para "Son niveau @"
	text_from_ram wd036
	text "!"

	para "Pas mal?"
	prompt
; 0x1c4837

UnknownText_0x1c4837: ; 0x1c4837
	text "Hm<...> @"
	text_from_ram wd003
	text ""
	line "viens d'un @"
	text_from_ram wd02a
	text $55
	db "échange?"

	para "@"
	text_from_ram wd00e
	text ""
	line "est la ou @"
	text_from_ram wd02a
	text $55
	db "à rencontré @"
	text_from_ram wd003
	text "!"
	prompt
; 0x1c487f

UnknownText_0x1c487f: ; 0x1c487f
	text "Quoi? Incroyable!"

	para "Je ne sais pas"
	line "comment mais c'est"

	para "incroyable!"
	line "Tu es spécial."

	para "Je ne sais pas ou"
	line "tu l'as rencontré"
	cont "mais c'était au"
	cont "niveau @"
	text_from_ram wd036
	text "."

	para "Pas mal, hein?"
	prompt
; 0x1c491d

UnknownText_0x1c491d: ; 0x1c491d
	text "Hé!"

	para "C'est un oeuf!"

	para "On ne peux pas"
	line "dire que tu l'as"
	cont "rencontré<...>"
	done
; 0x1c4955

UnknownText_0x1c4955: ; 0x1c4955
	text "Fufufu! J'ai vu"
	line "que tu ne ferais"
	cont "rien!"
	done
; 0x1c497a

UnknownText_0x1c497a: ; 0x1c497a
	text "De plus<...>"

	para "Ce serait sage"
	line "d'élever plus"
	cont "soigneusement tes"
	cont "#MON"
	done
; 0x1c49c6

UnknownText_0x1c49c6: ; 0x1c49c6
	text "De plus<...>"

	para "On dirait que tu"
	line "as grandis."

	para "@"
	text_from_ram wd003
	text " semble"
	line "être plus"
	cont "confiant."
	done
; 0x1c4a21

UnknownText_0x1c4a21: ; 0x1c4a21
	text "De plus<...>"

	para "@"
	text_from_ram wd003
	text " a"
	line "grandi. il a"
	cont "gagné de la force."
	done
; 0x1c4a5b

UnknownText_0x1c4a5b: ; 0x1c4a5b
	text "De plus<...>"

	para "Il a très bien"
	line "grandi!"

	para "Ce @"
	text_from_ram wd003
	text ""
	line "a du traverser"

	para "bien de combats"
	line "#MON"

	para "Il rayonne de"
	line "confiance en lui."
	done
; 0x1c4ae5

UnknownText_0x1c4ae5: ; 0x1c4ae5
	text "Et puis<...>"

	para "Je suis ébahit par"
	line "ton dévouement."

	para "Cela fait un"
	line "moment que je n'ai"

	para "pas vu de tel"
	line "#MON comme ce"
	cont "@"
	text_from_ram wd003
	text "."

	para "Je suis sûr que"
	line "voir ce @"
	text_from_ram wd003
	text $51
	db "en combat motive-"
	line "rait n'importe"
	cont "qui."
	done
; 0x1c4b92

UnknownText_0x1c4b92: ; 0x1c4b92
	text "Félicitations!"
	line "Ton @"
	text_from_ram StringBuffer2
	db "@"
; 0x1c4bae

UnknownText_0x1c4bae: ; 0x1c4bae
	db "@"
; 0x1c4baf

UnknownText_0x1c4baf: ; 0x1c4baf
	text $51
	db "a évolué en"
	line "@"
	text_from_ram StringBuffer1
	text "!"
	done
; 0x1c4bc5

UnknownText_0x1c4bc5: ; 0x1c4bc5
	text "Hein? @"
	text_from_ram StringBuffer2
	text ""
	line "N'évolue plus!"
	prompt
; 0x1c4be3

UnknownText_0x1c4be3: ; 0x1c4be3
	text "Quoi? @"
	text_from_ram StringBuffer2
	text ""
	line "évolue!"
	done
; 0x1c4bfd

UnknownText_0x1c4bfd: ; 0x1c4bfd
	text "Combien?"
	done
; 0x1c4c08

UnknownText_0x1c4c08: ; 0x1c4c08
	deciram wd10c, $12
	text " @"
	text_from_ram StringBuffer2
	text "(S)"
	line "fera ¥@"
	deciram $ffc3, $36
	text "."
	done
; 0x1c4c28

UnknownText_0x1c4c28: ; 0x1c4c28
	text "Bonjour."

	para "Je vends des her-"
	line "bes médicinales"
	cont "peu chères."

	para "Elles sont bonnes"
	line "mais un peu amère."

	para "Ton #MON peut"
	line "ne pas les aimer."

	para "Héhéhéhé<...>"
	done
; 0x1c4ca3

UnknownText_0x1c4ca3: ; 0x1c4ca3
	text "Combien?"
	done
; 0x1c4cae

UnknownText_0x1c4cae: ; 0x1c4cae
	deciram wd10c, $12
	text " @"
	text_from_ram StringBuffer2
	text "(S)"
	line "fera ¥@"
	deciram $ffc3, $36
	text "."
	done
; 0x1c4cce

UnknownText_0x1c4cce: ; 0x1c4cce
	text "Merci bien."
	line "Héhéhéhé<...>"
	done
; 0x1c4cea

UnknownText_0x1c4cea: ; 0x1c4cea
	text "Oh? Ton SAC est"
	line "plein<...>"
	done
; 0x1c4d08

UnknownText_0x1c4d08: ; 0x1c4d08
	text "Héhéhé<...> Tu n'as"
	line "pas assez d'argent."
	done
; 0x1c4d2a

UnknownText_0x1c4d2a: ; 0x1c4d2a
	text "Reviens plus tard<...>"
	line "Héhéhéhé<...>"
	done
; 0x1c4d47

UnknownText_0x1c4d47: ; 0x1c4d47
	text "Salut, tu veux"
	line "voir quelques"
	cont "promotions?"

	para "Je vends des"
	line "objets rares que"
	cont "seul moi possède."

	para "Mais je n'en ai"
	line "qu'un de chaque."
	done
; 0x1c4db0

UnknownText_0x1c4db0: ; 0x1c4db0
	text_from_ram StringBuffer2
	text " coûte"
	line "¥@"
	deciram $ffc3, $36
	text ". Tu le veux?"
	done
; 0x1c4dcd

UnknownText_0x1c4dcd: ; 0x1c4dcd
	text "Merci."
	done
; 0x1c4dd6

UnknownText_0x1c4dd6: ; 0x1c4dd6
	text "Oh oh, ton SAC est"
	line "vachement plein."
	done
; 0x1c4df7

UnknownText_0x1c4df7: ; 0x1c4df7
	text "Tu as déjà acheté"
	line "ça. Je n'en ai"
	cont "plus."
	done
; 0x1c4e28

UnknownText_0x1c4e28: ; 0x1c4e28
	text "Oh oh, tu n'as"
	line "pas d'argent."
	done
; 0x1c4e46

UnknownText_0x1c4e46: ; 0x1c4e46
	text "Reviens une"
	line "autre fois."
	done
; 0x1c4e5f

UnknownText_0x1c4e5f: ; 0x1c4e5f
	text "Oui? Besoin de"
	line "médicaments?"
	done
; 0x1c4e7e

UnknownText_0x1c4e7e: ; 0x1c4e7e
	text "Combien?"
	done
; 0x1c4e89

UnknownText_0x1c4e89: ; 0x1c4e89
	deciram wd10c, $12
	text " @"
	text_from_ram StringBuffer2
	text "(S)"
	line "te coûtera ¥@"
	deciram $ffc3, $36
	text "."
	done
; 0x1c4eab

UnknownText_0x1c4eab: ; 0x1c4eab
	text "Merci beaucoup!"
	done
; 0x1c4eb9

UnknownText_0x1c4eb9: ; 0x1c4eb9
	text "Tu n'as plus de"
	line "place."
	done
; 0x1c4ed8

UnknownText_0x1c4ed8: ; 0x1c4ed8
	text "Hein? Ce n'est pas"
	line "assez d'argent."
	done
; 0x1c4ef6

UnknownText_0x1c4ef6: ; 0x1c4ef6
	text "OK, a la"
	line "revoyure!"
	done
; 0x1c4f12

UnknownText_0x1c4f12: ; 0x1c4f12
	text "Tu n'as rien "
	line "à vendre."
	prompt
; 0x1c4f33

UnknownText_0x1c4f33: ; 0x1c4f33
	text "Combien?"
	done
; 0x1c4f3e

UnknownText_0x1c4f3e: ; 0x1c4f3e
	text "Ca en vaudrait"
	line "¥@"
	deciram $ffc3, $36
	text "."

	para "C'est d'accord?"
	done
; 0x1c4f62

UnknownText_0x1c4f62: ; 0x1c4f62
	text "Bienvenue! En quoi"
	line "puis-je t'aider?"
	done
; 0x1c4f80

UnknownText_0x1c4f80: ; 0x1c4f80
	text "Voilà pour toi."
	line "Merci!"
	done
; 0x1c4f9a

UnknownText_0x1c4f9a: ; 0x1c4f9a
	text "Tu n'as pas"
	line "assez d'argent."
	done
; 0x1c4fb7

UnknownText_0x1c4fb7: ; 0x1c4fb7
	text "Tu ne peux plus"
	line "rien porter."
	done
; 0x1c4fd7

UnknownText_0x1c4fd7: ; 0x1c4fd7
	text "Je ne peux pas"
	line "t'acheter ça!"
	prompt
; 0x1c4ff9

UnknownText_0x1c4ff9: ; 0x1c4ff9
	text "A la prochaine!"
	done
; 0x1c500d

UnknownText_0x1c500d: ; 0x1c500d
	text "As-tu besoin"
	line "d'autre chose?"
	done
; 0x1c502e

_Text_PremierBallBonus:
	text "Reçu une HONOR"
	line "BALL en cadeau."
	done

UnknownText_0x1c502e: ; 0x1c502e
	text "Reçu ¥@"
	deciram $ffc3, $36
	text " pour"
	line "@"
	text_from_ram StringBuffer2
	text "(S)."
	done
; 0x1c5049

UnknownText_0x1c5049: ; 0x1c5049
	text "Combien"
	line "de jetons?"
	done
; 0x1c505e

UnknownText_0x1c505e: ; 0x1c505e
	text "GO!"
	done
; 0x1c5066

UnknownText_0x1c5066: ; 0x1c5066
	text "Pas assez"
	line "de pièces."
	prompt
; 0x1c5079

UnknownText_0x1c5079: ; 0x1c5079
	text "Zut<...> Plus de"
	line "pièces<...>"
	done
; 0x1c5092

UnknownText_0x1c5092: ; 0x1c5092
	text "Rejouer?"
	done
; 0x1c509f

UnknownText_0x1c509f: ; 0x1c509f
	text "En ligne!"
	line "@"
	text_from_ram StringBuffer2
	text " jetons!"
	done
; 0x1c50bb

UnknownText_0x1c50bb: ; 0x1c50bb
	text "Zut!"
	done
; 0x1c50c2

_MobileStadiumEntryText: ; 0x1c50c2
	text "Données pour le"
	line "STADIUM MOBILE"

	para "#MON STADIUM 2"
	line "de la N64 peuvent"
	cont "être lu."

	para "Lire les données??"
	done
; 0x1c5121

_MobileStadiumSuccessText: ; 0x1c5121
	text "Transfert de"
	line "données OK", $51
	db "Nous espérons que"
	line "vous apprécierez", $51
	db "le STADIUM MOBILE"
	line "sur #MON."
	cont "STADIUM 2", $51
	db $57
; 0x1c5182

UnknownText_0x1c5182: ; 0x1c5182
	text "Heure de l'horloge"
	line "inconnue."
	done
; 0x1c5196

UnknownText_0x1c5196: ; 0x1c5196
	text "Supprimer le"
	line "MOT DE PASSE?"
	done
; 0x1c51b9

UnknownText_0x1c51b9: ; 0x1c51b9
	text "MOT DE PASSE"
	line "supprimé."
	done
; 0x1c51d7

UnknownText_0x1c51d7: ; 0x1c51d7
	text "Choisissez trois"
	line "#MON"
	prompt
; 0x1c51f4

UnknownText_0x1c51f4: ; 0x1c51f4
	text_from_ram wd006
	text ","
	line "@"
	text_from_ram wd00c
	text " et"
	cont "@"
	text_from_ram wd012
	text "."

	para "C'est bien ça?"
	done
; 0x1c521c

UnknownText_0x1c521c: ; 0x1c521c
	text "Seuls trois #-"
	line "MON peuvent entrer"
	prompt
; 0x1c5238

UnknownText_0x1c5238: ; 0x1c5238
	text "Le DOSS. CARTE"
	line "stocke ta carte et", $51
	db "les cartes de tes'"
	line "amis.", $51
	db "Une carte contient"
	line "des informations", $51
	db "comme le nom, le"
	line "No. de téléphone,", $55
	db "le profil.", $51
	db $57
; 0x1c52bc

UnknownText_0x1c52bc: ; 0x1c52bc
	text "C'est ta carte.", $51
	db "Entre ton numéro"
	line "de téléphone et", $51
	db "échanges des"
	line "cartes avec tes", $55
	db "amis.", $51
	db $57
; 0x1c531e

UnknownText_0x1c531e: ; 0x1c531e
	text "Si tu as la carte"
	line "de ton ami, tu", $51
	db "peux l'appeler via"
	line "le téléphone", $51
	db "mobile du second"
	line "étage d'un centre", $55
	db "#MON", $51
	db $57
; 0x1c5394

UnknownText_0x1c5394: ; 0x1c5394
	text "Pour stocker ta"
	line "collection de", $51
	db "cartes, tu dois"
	line "mettre un mot de", $55
	db "passe au dossier.", $51
	db $57
; 0x1c53ee

UnknownText_0x1c53ee: ; 0x1c53ee
	text "Si le DOSS. CARTES"
	line "est supprimé, les"

	para "cartes et le MOT"
	line "DE PASSE seront"
	cont "aussi supprimé."

	para "Attention, cette"
	line "action ne peux"
	cont "être annulée."

	para "Supprimer le"
	line "DOSS. CARTES?"
	done
; 0x1c5494

UnknownText_0x1c5494: ; 0x1c5494
	text "Etes-vous sur de"
	line "le supprimer?"
	done
; 0x1c54b9

UnknownText_0x1c54b9: ; 0x1c54b9
	text "Le DOSS. CARTES à"
	line "bien été supprimé.", $51
	db $57
; 0x1c54dd

UnknownText_0x1c54dd: ; 0x1c54dd
	text "Il y a un ancien"
	line "DOSS. CARTES d'une"
	cont "autre aventure."

	para "Voulez-vous"
	line "l'ouvrir?"
	done
; 0x1c552d

UnknownText_0x1c552d: ; 0x1c552d
	text "Supprimer l'ancien"
	line "DOSS. CARTES?"
	done
; 0x1c554a

UnknownText_0x1c554a: ; 0x1c554a
	text "Finir l'enregistre"
	line "tment des CARTES?"
	done
; 0x1c5565

UnknownText_0x1c5565: ; 0x1c5565
	text "Hein? Pardon,"
	line "mauvais numéro!"
	done
; 0x1c5580

UnknownText_0x1c5580: ; 0x1c5580
	text "Clic!"
	done
; 0x1c5588

UnknownText_0x1c5588: ; 0x1c5588
	text "", $56, $57
; 0x1c558b

UnknownText_0x1c558b: ; 0x1c558b
	text "Ce numéro est hors"
	line "de la zone."
	done
; 0x1c55ac

UnknownText_0x1c55ac: ; 0x1c55ac
	text "Va parler à cette"
	line "personne!"
	done
; 0x1c55ca

UnknownText_0x1c55ca: ; 0x1c55ca
	text "Merci!"
	done
; 0x1c55d6

UnknownText_0x1c55d6: ; 0x1c55d6
	text "  :"
	done
; 0x1c55db

UnknownText_0x1c55db: ; 0x1c55db
	text "Mot de passe OK."
	line "Choisir CONTINUER"
	cont "& réinitialiser"
	cont "les paramètres."
	prompt
; 0x1c560b

UnknownText_0x1c560b: ; 0x1c560b
	text "Mauvais mot de"
	line "passe."
	prompt
; 0x1c561c

UnknownText_0x1c561c: ; 0x1c561c
	text "Réinitialiser"
	line "l'horloge?"
	done
; 0x1c562e

UnknownText_0x1c562e: ; 0x1c562e
	text "Entre le mot"
	line "de passe."
	done
; 0x1c564a

UnknownText_0x1c564a: ; 0x1c564a
	text "Effacer touts"
	line "les données?"
	done
; 0x1c5660

UnknownText_0x1c5660: ; 0x1c5660
	text_from_ram wd050
	text " apprend"
	line "@"
	text_from_ram StringBuffer2
	text "!@"
	sound0
	text_waitsfx
	db "@"
; 0x1c5677

UnknownText_0x1c5677: ; 0x1c5677
	db "@"
; 0x1c5678

UnknownText_0x1c5678: ; 0x1c5678
	text "Quelle capacité", $4e, "doit être oubliée?"
	done
; 0x1c5699

UnknownText_0x1c5699: ; 0x1c5699
	text "Arrêter d'appren-"
	line "dre @"
	text_from_ram StringBuffer2
	text "?"
	done
; 0x1c56af

UnknownText_0x1c56af: ; 0x1c56af
	text_from_ram wd050
	text ""
	line "n'a pas appris"
	cont "@"
	text_from_ram StringBuffer2
	text "."
	prompt
; 0x1c56c9

UnknownText_0x1c56c9: ; 0x1c56c9
	text_from_ram wd050
	text ""
	line "tente d'apprendre"
	cont "@"
	text_from_ram StringBuffer2
	text "."

	para "Mais @"
	text_from_ram wd050
	text " ne"
	line "plus de quatre"
	cont "capacités."

	para "Effacer une"
	line "ancienne capacité"
	cont "pour @"
	text_from_ram StringBuffer2
	text "?"
	done
; 0x1c5740

UnknownText_0x1c5740: ; 0x1c5740
	text "1, 2 et<...>@"
	interpret_data
	db "@"
; 0x1c574d

UnknownText_0x1c574d: ; 0x1c574d
	db "@"
; 0x1c574e

UnknownText_0x1c574e: ; 0x1c574e
	text " Tadaa!@"
	interpret_data
	text $51
	db "@"
	text_from_ram wd050
	text " oublie"
	line "@"
	text_from_ram StringBuffer1
	text "."

	para "Et<...>"
	prompt
; 0x1c5772

UnknownText_0x1c5772: ; 0x1c5772
	text "Les capacités de"
	line "CS ne peuvent être"
	cont "oubliées."
	prompt
; 0x1c5793

UnknownText_0x1c5793: ; 0x1c5793
	text "Jouer avec trois"
	line "jetons?"
	done
; 0x1c57ab

UnknownText_0x1c57ab: ; 0x1c57ab
	text "Pas assez de"
	line "jetons<...>"
	prompt
; 0x1c57be

UnknownText_0x1c57be: ; 0x1c57be
	text "Choisis une carte."
	done
; 0x1c57ce

UnknownText_0x1c57ce: ; 0x1c57ce
	text "Parier..."
	done
; 0x1c57df

UnknownText_0x1c57df: ; 0x1c57df
	text "Rejouer?"
	done
; 0x1c57f4

UnknownText_0x1c57f4: ; 0x1c57f4
	text "Les cartes sont"
	line "mélangées."
	prompt
; 0x1c5813

UnknownText_0x1c5813: ; 0x1c5813
	text "Ouais!"
	done
; 0x1c581a

UnknownText_0x1c581a: ; 0x1c581a
	text "Zut<...>"
	done
; 0x1c5821

UnknownText_0x1c5821: ; 0x1c5821
	current_day
	db "@"
; 0x1c5823

UnknownText_0x1c5823: ; 0x1c5823
	db "@"
; 0x1c5824

UnknownText_0x1c5824: ; 0x1c5824
	text "", $56, $57
; 0x1c5827

UnknownText_0x1c5827: ; 0x1c5827
	text "Vous êtes en"
	line "dehors du réseau."
	prompt
; 0x1c5847

UnknownText_0x1c5847: ; 0x1c5847
	text "Qui voulez-vous"
	line "appeler?"
	done
; 0x1c5862

UnknownText_0x1c5862: ; 0x1c5862
	text "Presser un bouton"
	line "pour sortir."
	done
; 0x1c587d

UnknownText_0x1c587d: ; 0x1c587d
	text "Effacer ce numéro"
	line "enregistré?"
	done
; 0x1c589f

UnknownText_0x1c589f: ; 0x1c589f
	text "Quel prix"
	line "désires-tu?"
	done
; 0x1c58bc

UnknownText_0x1c58bc: ; 0x1c58bc
	text_from_ram StringBuffer1
	text "?"
	line "C'est bien ça?"
	done
; 0x1c58d1

UnknownText_0x1c58d1: ; 0x1c58d1
	text "Et voilà!", $51
	db $57
; 0x1c58e0

UnknownText_0x1c58e0: ; 0x1c58e0
	text "Tu n'as pas assez"
	line "de points.", $51
	db $57
; 0x1c58ff

UnknownText_0x1c58ff: ; 0x1c58ff
	text "Tu n'as pas de"
	line "place.", $51
	db $57
; 0x1c591a

UnknownText_0x1c591a: ; 0x1c591a
	text "Oh. Revenez"
	line "plus tard!"
	done
; 0x1c5937

UnknownText_0x1c5937: ; 0x1c5937
	text "Excusez moi!", $51
	db $57
; 0x1c5944

UnknownText_0x1c5944: ; 0x1c5944
	;text "Excuse me." redundent
	;line "You're not ready.", $51
	;db $57
; 0x1c5962

UnknownText_0x1c5962: ; 0x1c5962
	text "Revenez lorsque"
	line "vous serez prêts."
	done
; 0x1c5983

UnknownText_0x1c5983: ; 0x1c5983
	text "Il faut au moins"
	line "trois #MON.", $51
	db $57
; 0x1c59a3

UnknownText_0x1c59a3: ; 0x1c59a3
	text "Un OEUF ne peut"
	line "se qualifier.", $51
	db $57
; 0x1c59c3

UnknownText_0x1c59c3: ; 0x1c59c3
;	text "Only three #MON"
;	line "may be entered.", $51
;	db $57
; 0x1c59e5

UnknownText_0x1c59e5: ; 0x1c59e5
;	text "The @"
;	text_from_ram StringBuffer2
;	text " #MON"
;	line "must all be", $55
;	db "different kinds.", $51
;	db $57
; 0x1c5a13

UnknownText_0x1c5a13: ; 0x1c5a13
;	text "The @"
;	text_from_ram StringBuffer2
;	text " #MON"
;	line "must not hold the", $55
;	db "same items.", $51
;	db $57
; 0x1c5a42

UnknownText_0x1c5a42: ; 0x1c5a42
;	text "You can't take an"
;	line "EGG!", $51
;	db $57
; 0x1c5a5a

UnknownText_0x1c5a5a: ; 0x1c5a5a
	text "Il esquive la"
	line "BALL!"

	para "Ce #MON"
	line "ne peut-être"
	cont "capturé"
	prompt
; 0x1c5a90

UnknownText_0x1c5a90: ; 0x1c5a90
	text "Tu as manqué le"
	line "#MON!"
	prompt
; 0x1c5aa6

UnknownText_0x1c5aa6: ; 0x1c5aa6
	text "Oh non! Le #MON"
	line "s'est libéré!"
	prompt
; 0x1c5ac3

UnknownText_0x1c5ac3: ; 0x1c5ac3
	text "Zut, il était"
	line "presque rentré!"
	prompt
; 0x1c5ae3

UnknownText_0x1c5ae3: ; 0x1c5ae3
	text "Argh! Ca y"
	line "était presque!"
	prompt
; 0x1c5afa

UnknownText_0x1c5afa: ; 0x1c5afa
	text "Mince! C'était"
	line "pas loin!"
	prompt
; 0x1c5b17

UnknownText_0x1c5b17: ; 0x1c5b17
	text "Super! @"
	text_from_ram EnemyMonNick
	text ""
	line "est attrapé!@"
	sound0x02
	db "@"
; 0x1c5b34

UnknownText_0x1c5b34: ; 0x1c5b34
	db "@"
; 0x1c5b35

UnknownText_0x1c5b35: ; 0x1c5b35
	text_waitsfx
	db "@"
; 0x1c5b37

UnknownText_0x1c5b37: ; 0x1c5b37
	db "@"
; 0x1c5b38

UnknownText_0x1c5b38: ; 0x1c5b38
	text_from_ram wd050
	text " est"
	line "envoyé au"
	cont "PC de LEO."
	prompt
; 0x1c5b53

UnknownText_0x1c5b38_2: ; 0x1c5b38
	text_from_ram wd050
	text " est"
	line "envoyé au"
	cont "PC de ?????"
	prompt
; 0x1c5b53

_SentToBoxNumberText:
	text "Il est placé dans"
	line "@"
	TX_RAM StringBuffer3
	text "!"
	prompt

UnknownText_0x1c5b53: ; 0x1c5b53
	text "Le profil de"
	line "@"
	text_from_ram EnemyMonNick
	text " est"
	cont "ajouté au #DEX.@"
	sound0x2C
	text_waitsfx
	db "@"
; 0x1c5b7e

UnknownText_0x1c5b7e: ; 0x1c5b7e
	db "@"
; 0x1c5b7f

UnknownText_0x1c5b7f: ; 0x1c5b7f
	text "Donner un surnom à"
	line "@"
	text_from_ram StringBuffer1
	text "?"
	done
; 0x1c5b9a

UnknownText_0x1c5b9a: ; 0x1c5b9a
	text_from_ram StringBuffer2
	text " de"
	line "@"
	text_from_ram StringBuffer1
	text ""
	cont "augmente."
	prompt
; 0x1c5bac

UnknownText_0x1c5bac: ; 0x1c5bac
	text "Impossible"
	line "d'utiliser ça sur"
	cont "sur ce #MON"
	prompt
; 0x1c5bcd

UnknownText_0x1c5bcd: ; 0x1c5bcd
	text "Le REPOUSSE précé-"
	line "dent fait toujours"
	cont "effet."
	prompt
; 0x1c5bf9

UnknownText_0x1c5bf9: ; 0x1c5bf9
	text "Quel son"
	line "entraînant!"
	prompt
; 0x1c5c28

UnknownText_0x1c5c28: ; 0x1c5c28
	text "Tous les #MON"
	line "endormis se"
	cont "réveillent"
	prompt
; 0x1c5c44

UnknownText_0x1c5c44: ; 0x1c5c44
	text $52, " joue de la"
	line "# FLUTE.@"
	text_waitsfx
	db "@"
; 0x1c5c5d

UnknownText_0x1c5c5d: ; 0x1c5c5d
	db "@"
; 0x1c5c5e

UnknownText_0x1c5c5e: ; 0x1c5c5e
	text "Vous avez"
	line "@"
	deciram wBlueCardBalance, $12
	text " points."
	done
; 0x1c5c7b

UnknownText_0x1c5c7b: ; 0x1c5c7b
	text "Jetons:"
	line "@"
	deciram Coins, $25
	db "@"
; 0x1c5c89

UnknownText_0x1c5c89: ; 0x1c5c89
	db "@"
; 0x1c5c8a

UnknownText_0x1c5c8a: ; 0x1c5c8a
	text "Monter les PP de"
	line "quelle capacité?"
	done
; 0x1c5ca7

UnknownText_0x1c5ca7: ; 0x1c5ca7
	text "Restaurer PP de"
	line "quelle capacité?"
	done
; 0x1c5cc6

UnknownText_0x1c5cc6: ; 0x1c5cc6
	text "Les PP de"
	line "@"
	text_from_ram StringBuffer2
	text ""
	cont "sont au maximum!"
	prompt
; 0x1c5cdd

UnknownText_0x1c5cdd: ; 0x1c5cdd
	text "Les PP de"
	line "@"
	text_from_ram StringBuffer2
	text ""
	cont "augmentent!"
	prompt
; 0x1c5cf1

UnknownText_0x1c5cf1: ; 0x1c5cf1
	text "PP restaurés."
	prompt
; 0x1c5d03

UnknownText_0x1c5d03: ; 0x1c5d03
	text "Il y a un trophée"
	line "dedans!@"
	sound0
	text $51
	db "@"
	text_from_ram PlayerName
	text " envoie"
	line "le trophée à la"
	cont "maison."
	prompt
; 0x1c5d3e

UnknownText_0x1c5d3e: ; 0x1c5d3e
	text "C'est amère<...>"
	prompt
; 0x1c5d50

UnknownText_0x1c5d50: ; 0x1c5d50
	text "Impossible d'uti-"
	line "liser ça sur un"
	cont "OEUF."
	prompt
; 0x1c5d6e

UnknownText_0x1c5d6e: ; 0x1c5d6e
	text "CHEN: ", $52, "!"
	line "Ce n'est pas le"
	cont "moment d'utiliser"
	cont "ça!"
	prompt
; 0x1c5d97

UnknownText_0x1c5d97: ; 0x1c5d97
	text "Ca appartient à"
	line "quelqu'un d'autre!"
	prompt
; 0x1c5db6

UnknownText_0x1c5db6: ; 0x1c5db6
	text "Ca n'aura pas"
	line "d'effet."
	prompt
; 0x1c5dd0

UnknownText_0x1c5dd0: ; 0x1c5dd0
	text "Le dresseur bloque"
	line "la BALL!"
	prompt
; 0x1c5def

UnknownText_0x1c5def: ; 0x1c5def
	text "Voler, c'est mal!"
	prompt
; 0x1c5e01

UnknownText_0x1c5e01: ; 0x1c5e01
	text "La BICYCLETTE"
	line "est interdite ici."
	prompt
; 0x1c5e1d

UnknownText_0x1c5e1d: ; 0x1c5e1d
	text "Impossible de mon-"
	line "ter sur la"
	cont "@"
	text_from_ram StringBuffer1
	text ""
	prompt
; 0x1c5e3a

UnknownText_0x1c5e3a: ; 0x1c5e3a
	text "La BOITE #MON"
	line "est pleine. C'est"
	cont "inutilisable pour"
	cont "l'instant"
	prompt
; 0x1c5e68

UnknownText_0x1c5e68: ; 0x1c5e68
	text $52, " utilise@"
	text_dunno1
	text_from_ram StringBuffer2
	text "."
	done
; 0x1c5e7b

UnknownText_0x1c5e7b: ; 0x1c5e7b
	text $52, " monte sur@"
	text_dunno1
	text_from_ram StringBuffer2
	text "."
	prompt
; 0x1c5e90

UnknownText_0x1c5e90: ; 0x1c5e90
	text $52, " descends@"
	text_dunno1
	text "de la @"
	text_from_ram StringBuffer2
	text "."
	prompt
; 0x1c5ea8

UnknownText_0x1c5ea8: ; 0x1c5ea8
	text_from_ram StringBuffer1
	text " connais"
	line "@"
	text_from_ram StringBuffer2
	text "."
	prompt
; 0x1c5eba

UnknownText_0x1c5eba: ; 0x1c5eba
	text "Ce #MON ne"
	line "connaît qu'une"
	cont "capacité."
	done
; 0x1c5eda

UnknownText_0x1c5eda: ; 0x1c5eda
	text "Lui faire oublier"
	line "@"
	text_from_ram StringBuffer1
	text "?"
	done
; 0x1c5ef5

UnknownText_0x1c5ef5: ; 0x1c5ef5
	text "C'est bon! Ton"
	line "#MON a oublié"
	cont "cette capacité!"
	done
; 0x1c5f17

UnknownText_0x1c5f17: ; 0x1c5f17
	text "Un OEUF ne connait"
	line "pas de capacités!"
	done
; 0x1c5f36

UnknownText_0x1c5f36: ; 0x1c5f36
	text "Non? Reviens une"
	line "prochaine fois."
	done
; 0x1c5f50

UnknownText_0x1c5f50: ; 0x1c5f50
	text "Quelle capacité"
	line "doit-il oublier?"
	prompt
; 0x1c5f74

UnknownText_0x1c5f74: ; 0x1c5f74
	text "Hum<...> Ah, oui, je"
	line "suis l'EFFACEUR DE"
	cont "CAPACITES."

	para "Je peux forcer les"
	line "#MON a oublier"
	cont "n'importe quelle"
	cont "capacité."

	para "Dois-je m'occuper"
	line "d'un de tes"
	cont "#MON?"
	done
; 0x1c5fd1

UnknownText_0x1c5fd1: ; 0x1c5fd1
	text "Quel #MON?"
	prompt
; 0x1c5fde

UnknownText_0x1c5fde: ; 0x1c5fde
	text "      DST,"
	line "C'est bien ça?"
	done
; 0x1c5ff1

UnknownText_0x1c5ff1: ; 0x1c5ff1
	text ","
	line "C'est bien ça?"
	done
; 0x1c6000

UnknownText_0x1c6000: ; 0x1c6000
	text "Veux-tu passer"
	line "à l'heure d'été?"
	done
; 0x1c6030

UnknownText_0x1c6030: ; 0x1c6030
	text "J'ai avancé l'hor-"
	line "loge d'une heure."
	prompt
; 0x1c6056

UnknownText_0x1c6056: ; 0x1c6056
	text "Est-on à l'heure"
	line "d'hiver?"
	done
; 0x1c6075

UnknownText_0x1c6075: ; 0x1c6075
	text "J'ai reculé l'hor-"
	line "loge d'une heure."
	prompt
; 0x1c6095

UnknownText_0x1c6095: ; 0x1c6095
	text "Veux-tu ajuster"
	line "l'horloge pour"

	para "l'heure d'été?"
	done
; 0x1c60d1

UnknownText_0x1c60d1: ; 0x1c60d1
	text "J'ai perdu le"
	line "manuel du #-"
	cont "MATOS."

	para "Reviens plus tard!"
	prompt
; 0x1c611e

_LovelyWaterText:
	text "L'eau semble si"
	line "paisible<...>"
	done
