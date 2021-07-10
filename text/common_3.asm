UnknownText_0x1c0000: ; 1c0000
	text "Pas de photos?"
	line "Reviens une autre"
	cont "fois!"
	done
; 1c0021

UnknownText_0x1c0021: ; 1c0021
	text "Un OEUF? Mon"
	line "talent vaut mieux<...>"
	done
; 1c0043

UnknownText_0x1c0043: ; 1c0043
	text "Bonjour, je suis"
	line "le spécialiste des"
	cont "noms."

	para "Je donne mon avis"
	line "sur les noms des"
	cont "#MON."

	para "Es-tu intéressé"
	line "par mes services?"
	done
; 1c00a0

UnknownText_0x1c00a0: ; 1c00a0
	text "Lequel des tes"
	line "#MON veux tu"
	cont "que j'évalue?"
	prompt
; 1c00cd

UnknownText_0x1c00cd: ; 1c00cd
	text "Hum<...> @"
	text_from_ram StringBuffer1
	text "<...>"
	line "C'est pas mal"
	cont "comme nom."

	para "Je pense que l'on"
	line "peux mieux faire."

	para "Tu veux lui donner"
	line "un meilleur nom?"
	done
; 1c0142

UnknownText_0x1c0142: ; 1c0142
	text "Très bien, comment"
	line "doit-on l'appeler?"
	prompt
; 1c0171

UnknownText_0x1c0171: ; 1c0171
	text "C'est un meilleur"
	line "nom qu'avant!"

	para "Bien joué!"
	done
; 1c019e

UnknownText_0x1c019e: ; 1c019e
	text "OK. Reviens une"
	line "autre fois."
	done
; 1c01be

UnknownText_0x1c01be: ; 1c01be
	text "Hm<...> @"
	text_from_ram StringBuffer1
	text "?"
	line "Quel joli nom!"
	cont "C'est parfait."

	para "Traite @"
	text_from_ram StringBuffer1
	text ""
	line "Avec grand soin."
	done
; 1c0208

UnknownText_0x1c0208: ; 1c0208
	text "Mais<...> C'est juste"
	line "un OEUF."
	done
; 1c0222

UnknownText_0x1c0222: ; 1c0222
	text "Il ressemble à"
	line "celui d'avant,"

	para "mais ce nom est"
	line "bien mieux!"

	para "Bien joué!"
	done
; 1c0272

UnknownText_0x1c0272: ; 1c0272
	text "Très bien, ce"
	line "#MON s'appelera"
	cont "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 1c029c

UnknownText_0x1c029c: ; 1c029c
	text_from_ram StringBuffer1
	text " gagne@@"
; 1c02a9

UnknownText_0x1c02a9: ; 1c02a9
	text ""
	line "un bonus de"
	cont "@"
	deciram StringBuffer2, $25 ; fixes 5-digit EXP glitch
	text " Points EXP.!"
	prompt
; 1c02c9

UnknownText_0x1c02c9: ; 1c02c9
	text ""
	line "@"
	deciram StringBuffer2, $25 ; fixes 5-digit EXP glitch
	text " Points EXP.!"
	prompt
; 1c02df

UnknownText_0x1c02df: ; 1c02df
	text "Go! @@"
; 1c02e6

UnknownText_0x1c02e6: ; 1c02e6
	text "Allez! @@"
; 1c02f0

UnknownText_0x1c02f0: ; 1c02f0
	text "Vas-y,"
	line "@@"
; 1c02fe

UnknownText_0x1c02fe: ; 1c02fe
	text "Il est faible!"
	line "Go, @@"
; 1c0317

UnknownText_0x1c0317: ; 1c0317
	text_from_ram BattleMonNick
	text "!"
	done
; 1c031d

UnknownText_0x1c031d: ; 1c031d
	text_from_ram BattleMonNick
	text ",@@"
; 1c0324

UnknownText_0x1c0324: ; 1c0324
	text " assez!"
	line "Reviens!@@"
; 1c0340

UnknownText_0x1c0340: ; 1c0340
	text " OK!"
	line "Reviens!@@"
; 1c0352

UnknownText_0x1c0352: ; 1c0352
	text " super!"
	line "Reviens!@@"
; 1c0366

UnknownText_0x1c0366: ; 1c0366
	text " "
	line "Reviens!"
	done
; 1c0373

UnknownText_0x1c0373: ; 1c0373
	text "CT enclenchée."
	prompt
; 1c0384

UnknownText_0x1c0384: ; 1c0384
	text "CS enclenchée."
	prompt
; 1c0396

UnknownText_0x1c0396: ; 1c0396
	text "Elle contient"
	line "@"
	text_from_ram StringBuffer2
	text "."

	para "Apprendre"
	line "@"
	text_from_ram StringBuffer2
	text ""
	cont "à un #MON?"
	done
; 1c03c2

UnknownText_0x1c03c2: ; 1c03c2
	text_from_ram StringBuffer2
	text " n'est"
	line "pas compatible"
	cont "avec @"
	text_from_ram StringBuffer1
	text "."
; 1c03fa

UnknownText_0x1c03fa: ; 1c03fa
	text "Tu n'as plus de"
	line "place pour des"
	cont "@"
	text_from_ram StringBuffer1
	text ""
	prompt
; 1c0421

UnknownText_0x1c0421: ; 1c0421
	text "Tu reçois"
	line "@"
	text_from_ram StringBuffer1
	text "!"
	prompt
; 1c0436

UnknownText_0x1c0436: ; 1c0436
	text "Le lien est"
	line "annulé."
	prompt
; 1c0454

UnknownText_0x1c0454: ; 1c0454
	text "Erreur de"
	line "communication."
	prompt
; 1c046a

UnknownText_0x1c046a: ; 1c046a
	text "CADEAU à retirer"
	line "au centre #MON."
	prompt
; 1c048e

UnknownText_0x1c048e: ; 1c048e
	text "Votre ami n'est"
	line "pas prêt."
	prompt
; 1c04a7

UnknownText_0x1c04a7: ; 1c04a7
	text "Désolé, cinq ca-"
	line "deaux seulement"
	cont "pour une journée."
	prompt
; 1c04c6

UnknownText_0x1c04c6: ; 1c04c6
	text "Désolée, un seul"
	line "cadeau par"
	cont "personne."
	prompt
; 1c04e9

UnknownText_0x1c04e9: ; 1c04e9
	text_from_ram wc903
	text " envoie"
	line "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 1c04fa

UnknownText_0x1c04fa: ; 1c04fa
	text_from_ram wc903
	text " envoie"
	line "@"
	text_from_ram StringBuffer1
	text $55
	db "chez @"
	text_from_ram wc950 + 3
	text "."
	prompt
; 1c051a

UnknownText_0x1c051a: ; 1c051a
	text "Reçu la CARTE de"
	line "@"
	text_from_ram wc850
	text "."
	prompt
; 1c0531

UnknownText_0x1c0531: ; 1c0531
	text_from_ram wc850
	text " envoie"
	line "une CARTE listé au"
	cont "numéro @"
	deciram wd265, $12
	text "."
	prompt
; 1c0555

UnknownText_0x1c0555: ; 1c0555
	text "Cette CARTE n'est"
	line "pas enregistré."
	prompt
; 1c0573

UnknownText_0x1c0573: ; 1c0573
	text "Le lien est"
	line "annulé."
	prompt
; 1c0591

UnknownText_0x1c0591: ; 1c0591
	text "Erreur de"
	line "communication."
	prompt
; 1c05a7

_BadgeRequiredText: ; 1c05a7
	text "Désolé! Un nouveau"
	line "BADGE est requis."
	prompt
; 1c05c8

UnknownText_0x1c05c8: ; 1c05c8
	text "Impossible"
	line "d'utiliser ça ici."
	prompt
; 1c05dd

UnknownText_0x1c05dd: ; 1c05dd
	text_from_ram StringBuffer2
	text " utilse"
	line "COUPE!"
	prompt
; 1c05ec

UnknownText_0x1c05ec: ; 1c05ec
	text "Rien à couper"
	line "ici."
	prompt
; 1c0609

UnknownText_0x1c0609: ; 1c0609
	text "Un FLASH illumine"
	line "la zone!@"
	text_waitsfx
	db "@"
; 1c062e

UnknownText_0x1c062e: ; 1c062e
	db "@"
; 1c062f

_UsedSurfText: ; 1c062f
	text_from_ram StringBuffer2
	text " utilise"
	line "SURF!"
	done
; 1c063f

_CantSurfText: ; 1c063f
	text "Pas de SURF ici."
	prompt
; 1c0654

_AlreadySurfingText: ; 1c0654
	text "Tu SURF déjà."
	prompt
; 1c066c

_AskSurfText: ; 1c066c
	text "L'eau est calme."
	line "Un peu de SURF?"
	done
; 1c068e

UnknownText_0x1c068e: ; 1c068e
	text_from_ram StringBuffer2
	text " utilise"
	line "CASCADE!"
	done
; 1c06a3

UnknownText_0x1c06a3: ; 1c06a3
	text "Woah, quelle"
	line "cascade!"
	done
; 1c06bf

UnknownText_0x1c06bf: ; 1c06bf
	text "Voulez-vous"
	line "utiliser CASCADE?"
	done
; 1c06de

UnknownText_0x1c06de: ; 1c06de
	text_from_ram StringBuffer2
	text " utilise"
	line "TUNNEL!"
	done
; 1c06ed

UnknownText_0x1c06ed: ; 1c06ed
	text "<PLAYER> utilise"
	line "une CORDE SORTIE."
	done
; 1c0705

UnknownText_0x1c0705: ; 1c0705
	text "Tu ne peux pas"
	line "utiliser ça ici."
	done
; 1c071a

UnknownText_0x1c071a: ; 1c071a
	text "Retour au dernier"
	line "Centre #MON"
	done
; 1c073b

UnknownText_0x1c073b: ; 1c073b
	text "Tu ne peux pas"
	line "utiliser ça ici.", $51
	db $57
; 1c0751

UnknownText_0x1c0751: ; 1c0751
	text "Un #MON utilise"
	line "déjà FORCE."
	prompt
; 1c0774

UnknownText_0x1c0774: ; 1c0774
	text_from_ram StringBuffer2
	text " utilise"
	line "FORCE!"
	done
; 1c0788

UnknownText_0x1c0788: ; 1c0788
	text_from_ram StringBuffer1
	text " peut"
	line "bouger les"
	cont "rochers."
	prompt
; 1c07a0

UnknownText_0x1c07a0: ; 1c07a0
	text "Un #MON peut"
	line "déplacer ça."

	para "Utiliser FORCE?"
	done
; 1c07d8

UnknownText_0x1c07d8: ; 1c07d8
	text "Les rochers peu-"
	line "vent être"
	cont "déplacés"
	done
; 1c07f4

UnknownText_0x1c07f4: ; 1c07f4
	text "Un #MON peut"
	line "déplacer ça."
	done
; 1c0816

UnknownText_0x1c0816: ; 1c0816
	text_from_ram StringBuffer2
	text " utilise"
	line "SIPHON!"
	prompt
; 1c082b

UnknownText_0x1c082b: ; 1c082b
	text "C'est un vicieux"
	line "SIPHON!"

	para "Un #MON peut"
	line "le franchir."
	done
; 1c0864

UnknownText_0x1c0864: ; 1c0864
	text "Un SIPHON est sur"
	line "le chemin."

	para "Utiliser"
	line "SIPHON?"
	done
; 1c0897

UnknownText_0x1c0897: ; 1c0897
	text_from_ram StringBuffer2
	text " met un"
	line "COUP D'BOULE!"
	prompt
; 1c08ac

UnknownText_0x1c08ac: ; 1c08ac
	text "Non, rien<...>"
	done
; 1c08bc

UnknownText_0x1c08bc: ; 1c08bc
	text "Un #MON peut"
	line "être dans cet"
	cont "arbre."

	para "Mettre un"
	line "COUP D'BOULE?"
	done
; 1c08f0

UnknownText_0x1c08f0: ; 1c08f0
	text_from_ram StringBuffer2
	text " utilise"
	line "ECLATE-ROC!"
	prompt
; 1c0906

UnknownText_0x1c0906: ; 1c0906
	text "Un #MON semble"
	line "capable de briser"
	cont "ça."
	done
; 1c0924

UnknownText_0x1c0924: ; 1c0924
	text "Ce rocher semble"
	line "brisable."

	para "Utiliser ECLATE-"
	line "ROC?"
	done
; 1c0958

UnknownText_0x1c0958: ; 1c0958
	text "Oh!"
	line "Ca mord!"
	prompt
; 1c0965

UnknownText_0x1c0965: ; 1c0965
	text "Rien du tout!"
	prompt
; 1c0979

UnknownText_0x1c0979: ; 1c0979
	text "On dirait qu'il"
	line "n'y a rien ici."
	prompt
; 1c099a

UnknownText_0x1c099a: ; 1c099a
	text "Impossible de"
	line "descendre ici!"
	done
; 1c09b2

UnknownText_0x1c09b2: ; 1c09b2
	text "<PLAYER> monte sur"
	line "la @"
	text_from_ram StringBuffer2
	text "."
	done
; 1c09c7

UnknownText_0x1c09c7: ; 1c09c7
	text "<PLAYER> descend de"
	line "la @"
	text_from_ram StringBuffer2
	text "."
	done
; 1c09dd

UnknownText_0x1c09dd: ; 1c09dd
	text "Cet arbre peut"
	line "être coupé!"

	para "Utiliser COUPE?"
	done
; 1c0a05

UnknownText_0x1c0a05: ; 1c0a05
	text "Cet arbre peut"
	line "être coupé!"
	done
; 1c0a1c

UnknownText_0x1c0a1c: ; 1c0a1c
	text "<PLAYER> trouve"
	line "@"
	text_from_ram StringBuffer3
	text "!"
	done

MultipleGetItemBallText::
	text $52, " trouve"
	line "@"
	deciram wd10c, $13
	text " @"
	text_from_ram StringBuffer3
	text "S."
	done
; 1c0a2c

UnknownText_0x1c0a2c: ; 1c0a2c
	text "Mais ", "<PLAYER> ne"
	line "peux plus porter"
	cont "d'autres objets."
	done
; 1c0a4e

UnknownText_0x1c0a4e: ; 1c0a4e
	text "<PLAYER> n'a plus"
	line "de #MON"
	cont "en forme."

	para "<PLAYER> est"
	line "hors-jeu!"
	done
; 1c0a77

UnknownText_0x1c0a4e_2: ; 1c0a4e
	text "<PLAYER> n'a plus"
	line "de #MON"
	cont "en forme."

	para "<PLAYER> panique"
	line "et fait tomber"
	cont "¥@"
	deciram $ffc3, $35
	text "<...>"

	para $56, " ", $56, " ", $56
	line $56, " ", $56, " ", $56

	para "<PLAYER> est"
	line "hors-jeu!"
	done

UnknownText_0x1c0a4e_3: ; 1c0a4e
	text "<PLAYER> n'a plus"
	line "de #MON"
	cont "en forme."

	para "<PLAYER> paye"
	line "¥@"
	deciram $ffc3, $35
	text " au"
	cont "gagnant<...>"

	para $56, " ", $56, " ", $56
	line $56, " ", $56, " ", $56

	para "<PLAYER> est"
	line "hors-jeu!"
	done
; 1c0a77

UnknownText_0x1c0a77: ; 1c0a77
	text "Oui! CHERCH'OBJET"
	line "indique quelque"
	cont "chose tout près."
	prompt
; 1c0aa9

UnknownText_0x1c0aa9: ; 1c0aa9
	text "Non! CHERCH'OBJET"
	line "ne réponds pas."
	prompt
; 1c0acc

UnknownText_0x1c0acc: ; 1c0acc
	text_from_ram StringBuffer3
	text ""
	line "survit à"
	cont "l'empoisonnement!"
	prompt
; 1c0ada

; UnknownText_0x1c0ada: ; 1c0ada
	; text "<PLAYER> is out of"
	; line "useable #MON!"

	; para "<PLAYER> whited"
	; line "out!"
	; prompt
; ; 1c0b03

UnknownText_0x1c0b03: ; 1c0b03
	text_from_ram StringBuffer3
	text " utilise"
	line "DOUX PARFUM!"
	done
; 1c0b1a

UnknownText_0x1c0b1a: ; 1c0b1a
	text "On dirait qu'il n'"
	line "y a plus rien<...>"
	done
; 1c0b3b

UnknownText_0x1c0b3b: ; 1c0b3b
	text "<PLAYER> éclabousse"
	line "de l'eau."

	para "Mais rien ne se"
	line "passe<...>"
	done
; 1c0b65

UnknownText_0x1c0b65: ; 1c0b65
	text "Les #MON de"
	line "<PLAYER> sont"
	cont "soignés."
	done
; 1c0b7f

UnknownText_0x1c0b7f: ; 1c0b7f
	text "Un OEUF ne peut"
	line "pas tenir d'objet."
	prompt
; 1c0b9a

UnknownText_0x1c0b9a: ; 1c0b9a
	text "Aucun objet."
	done
; 1c0ba5

UnknownText_0x1c0ba5: ; 1c0ba5
	text "En jeter combien?"
	done
; 1c0bbb

UnknownText_0x1c0bbb: ; 1c0bbb
	text "Jeter @"
	deciram wd10c, $12
	text ""
	line "@"
	text_from_ram StringBuffer2
	text "(S)?"
	done
; 1c0bd8

UnknownText_0x1c0bd8: ; 1c0bd8
	text "Jeté:"
	line "@"
	text_from_ram StringBuffer2
	text "(S)."
	prompt
; 1c0bee

UnknownText_0x1c0bee: ; 1c0bee
	text "CHEN: ", "<PLAYER>!"
	line "Ce n'est pas le"
	cont "moment pour ça!"
	prompt
; 1c0c17

UnknownText_0x1c0c17: ; 1c0c17
	text "Tu n'as pas de"
	line "#MON!"
	prompt
; 1c0c2e

UnknownText_0x1c0c2e: ; 1c0c2e
	text "Enregistré:"
	line "@"
	text_from_ram StringBuffer2
	text "."
	prompt
; 1c0c45

UnknownText_0x1c0c45: ; 1c0c45
	text "Tu ne peux pas"
	line "enregistrer ça."
	prompt
; 1c0c63
Text_DeselectedItem:
	text "@"
	text_from_ram StringBuffer2
	text ""
	line "désenregistré."
	prompt

Text_NotRegistered:
	text "Cet objet n'est"
	line "pas enregistré."
	prompt

Text_AlreadyRegistered:
	text "Cet objet est déjà"
	line "enregistré."
	prompt

UnknownText_0x1c0c63: ; 1c0c63
	text "Ou le déplacer?"
	done
; 1c0c83

UnknownText_0x1c0c83: ; 1c0c83
	text ""
	done
; 1c0c85

UnknownText_0x1c0c85: ; 1c0c85
	text "Tu ne peux pas"
	line "utiliser ça en"
	cont "combat!"
	prompt
; 1c0ca3

UnknownText_0x1c0ca3: ; 1c0ca3
	text "Mais présente toi,"
	line "Es-tu une fille"
	cont "ou un garçon?"
	done
; 1c0cc6

ConfirmBoyText:
	text "Tu es un garçon?"
	done
ConfirmGirlText:
	text "Tu es une fille?"
	done

UnknownText_0x1c0cc6: ; 1c0cc6
	text_from_ram StringBuffer2
	text " de"
	line $5a, "@"
	db "@"
; 1c0ccf

UnknownText_0x1c0ccf: ; 1c0ccf
	db "@"
; 1c0cd0

UnknownText_0x1c0cd0: ; 1c0cd0
	interpret_data
	text ""
	cont "monte à fond!"
	prompt
; 1c0ce0

UnknownText_0x1c0ce0: ; 1c0ce0
	text ""
	cont "augmente!"
	prompt
; 1c0ceb

UnknownText_0x1c0ceb: ; 1c0ceb
	text_from_ram StringBuffer2
	text " de"
	line $59, "@"
	db "@"
; 1c0cf4

UnknownText_0x1c0cf4: ; 1c0cf4
	db "@"
; 1c0cf5

UnknownText_0x1c0cf5: ; 1c0cf5
	text ""
	cont "baisse à fond!"
	prompt
; 1c0d06

UnknownText_0x1c0d06: ; 1c0d06
	text ""
	cont "diminue!"
	prompt
; 1c0d0e

UnknownText_0x1c0d0e: ; 1c0d0e
	text $5a, "@@"
; 1c0d12

UnknownText_0x1c0d12: ; 1c0d12
	text ""
	line "crée un cyclone!"
	prompt
; 1c0d26

UnknownText_0x1c0d26: ; 1c0d26
	text ""
	line "rayonne!"
	prompt
; 1c0d3a

UnknownText_0x1c0d3a: ; 1c0d3a
	text ""
	line "baisse la tête!"
	prompt
; 1c0d4e

UnknownText_0x1c0d4e: ; 1c0d4e
	text ""
	line "brille!"
	prompt
; 1c0d5c

UnknownText_0x1c0d5c: ; 1c0d5c
	text ""
	line "s'envole!"
	prompt
; 1c0d6c

UnknownText_0x1c0d6c: ; 1c0d6c
	text ""
	line "creuse un trou!"
	prompt
; 1c0d7a

_PowerHerbText:
	text "L'HERBE POUV. de"
	line $5a 
	cont "s'active!"
	prompt

_ActorNameText: ; 1c0d7a
	text $5a, "@@"
; 1c0d7e

_UsedMove1Text: ; 1c0d7e
	text ""
	line "lance"
	cont "@@"
; 1c0d87

_UsedMove2Text: ; 1c0d87
	text ""
	line "lance"
	cont "@@"
; 1c0d90

_UsedInsteadText: ; 1c0d90
	text "a la place,", $55
	db "@@"
; 1c0d9c

_MoveNameText: ; 1c0d9c
	text_from_ram StringBuffer2
	db "@"
; 1c0da0

UnknownText_0x1c0da0: ; 1c0da0
	db "@"
; 1c0da1

_EndUsedMove1Text: ; 1c0da1
	text "!"
	done
; 1c0da4

_EndUsedMove2Text: ; 1c0da4
	text "!"
	done
; 1c0da7

_EndUsedMove3Text: ; 1c0da7
	text "!"
	done
; 1c0daa

_EndUsedMove4Text: ; 1c0daa
	text "!"
	done
; 1c0dad

_EndUsedMove5Text: ; 1c0dad
	text "!"
	done
; 1c0db0

UnknownText_0x1c0db0: ; 1c0db0
	text "Hein?", $51
	db "@@"
; 1c0db8

UnknownText_0x1c0db8: ; 1c0db8
	text ""
	done
; 1c0dba

UnknownText_0x1c0dba: ; 1c0dba
	text_from_ram StringBuffer1
	text " sors"
	line "de son OEUF!@"
	sound0x02
	text_waitsfx
	db "@"
; 1c0dd7

UnknownText_0x1c0dd7: ; 1c0dd7
	db "@"
; 1c0dd8

UnknownText_0x1c0dd8: ; 1c0dd8
	text "Donner un surnom à"
	line "@"
	text_from_ram StringBuffer1
	text "?"
	done
; 1c0df3

UnknownText_0x1c0df3: ; 1c0df3
	text "C'est @"
	text_from_ram wBreedMon2Nick
	text ""
	line "qui a été laissé"
	para "avec la dame de"
	line "la PENSION."
	done
; 1c0e24

UnknownText_0x1c0e24: ; 1c0e24
	text "C'est @"
	text_from_ram wBreedMon1
	text ""
	line "qui a été laissé"
	para "avec l'homme de"
	line "la PENSION."
	done
; 1c0e54

UnknownText_0x1c0e54: ; 1c0e54
	text "Il déborde"
	line "d'énergie."
	prompt
; 1c0e6f

UnknownText_0x1c0e6f: ; 1c0e6f
	text "Il se fiche de"
	line "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 1c0e8d

UnknownText_0x1c0e8d: ; 1c0e8d
	text "Il s'intéresse à"
	line "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 1c0eac

UnknownText_0x1c0eac: ; 1c0eac
	text "Il est amical avec"
	line "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 1c0ec6

UnknownText_0x1c0ec6: ; 1c0ec6
	text "Il aime bien"
	line "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 1c0ee3

_EmptyMailboxText: ; 1c0ee3
	text "Il n'y a pas de"
	line "LETTRE."
	prompt
; 1c0ef9

ClearedMailPutAwayText: ; 1c0ef9
	text "La LETTRE effacée"
	line "a été rangée."
	prompt
; 1c0f19

MailPackFullText: ; 1c0f19
	text "Le SAC est plein."
	prompt
; 1c0f2c

MailMessageLostText: ; 1c0f2c
	text "Le message sera"
	line "perdu. OK?"
	done
; 1c0f51

MailAlreadyHoldingItemText: ; 1c0f51
	text "Il tiens déja"
	line "un objet."
	prompt
; 1c0f71

MailEggText: ; 1c0f71
	text "Un OEUF ne pas"
	line "tenir une LETTRE."
	prompt
; 1c0f8d

MailMovedFromBoxText: ; 1c0f8d
	text "La LETTRE est"
	line "rangé dans la"
	cont "BOITE A LETTRES"
	prompt
; 1c0fb3

UnknownText_0x1c0fb3: ; 1c0fb3
	text "Oui"
	prompt
; 1c0fb8

UnknownText_0x1c0fb8: ; 1c0fb8
	text "Non"
	prompt
; 1c0fbc

UnknownText_0x1c0fbc: ; 1c0fbc
	deciram wcf64, $13
	text " @"
	text_from_ram StringBuffer1
	text ""
	line "Type d'animation @"
	text_from_ram StringBuffer2
	db "@"
; 1c0fdc

UnknownText_0x1c0fdc: ; 1c0fdc
	db "@"
; 1c0fdd

UnknownText_0x1c0fdd: ; 1c0fdd
	text "Numéro #MON?"
	done
; 1c0feb

UnknownText_0x1c0feb: ; 1c0feb
	text_from_ram StringBuffer1
	text " est"
	line "envoyé au PC"
	cont "de LEO."
	prompt
; 1c1006

UnknownText_0x1c1006: ; 1c1006
	text "Tu dois avoir des"
	line "#MON pour"
	cont "appeler!"
	prompt
; 1c1024

UnknownText_0x1c1024: ; 1c1024
	text "Quoi?"
	done
; 1c102b

UnknownText_0x1c102b: ; 1c102b
	text "un #MON tiens"
	line "une LETTRE."

	para "Veuillez retirez"
	line "la LETTRE."
	prompt
; 1c1062

UnknownText_0x1c1062: ; 1c1062
	text "Tu n'as pas un"
	line "seul #MON!"
	prompt
; 1c1080

UnknownText_0x1c1080: ; 1c1080
	text "C'est ton dernier"
	line "#MON!"
	prompt
; 1c10a2

UnknownText_0x1c10a2: ; 1c10a2
	text "Tu as trop de"
	line "#MON."
	prompt
; 1c10c0

UnknownText_0x1c10c0: ; 1c10c0
	text "@"
	text_from_ram StringBuffer1
	text " est"
	line "attrapé!"
	prompt
; 1c10cf

UnknownText_0x1c10cf: ; 1c10cf
	text "Changer de #MON?"
	done
; 1c10dd

UnknownText_0x1c10dd: ; 1c10dd
	text "Tu as déjà attrapé"
	line "un @"
	text_from_ram StringBuffer1
	text "."
	prompt
; 1c10fa

UnknownText_0x1c10fa: ; 1c10fa
	text "Le vainqueur du"
	line "concours est @"
	interpret_data
	text "<...>", $51
	db "@"
	text_from_ram wd016
	text ","
	line "qui a capturé un", $55
	db "@"
	text_from_ram StringBuffer1
	text "!@@"
; 1c113f

UnknownText_0x1c113f: ; 1c113f
	text $51
	db "Avec un score"
	line "de @"
	deciram wd004, $23
	text " points!"
	prompt
; 1c1166

UnknownText_0x1c1166: ; 1c1166
	text "En seconde place,"
	line "@"
	text_from_ram wd016
	text ",", $51
	db "qui a capturé un"
	line "@"
	text_from_ram StringBuffer1
	text "!@@"
; 1c1196

UnknownText_0x1c1196: ; 1c1196
	text $51
	db "Avec un score de"
	line "@"
	deciram wd008, $23
	text " points!"
	prompt
; 1c11b5

UnknownText_0x1c11b5: ; 1c11b5
	text "En troisième,"
	line "@"
	text_from_ram wd016
	text ",", $51
	db "qui a capturé un"
	line "@"
	text_from_ram StringBuffer1
	text "!@@"
; 1c11e4

UnknownText_0x1c11e4: ; 1c11e4
	text $51
	db "Le score est de"
	line "@"
	deciram wd00c, $23
	text " points!"
	prompt
; 1c1203

UnknownText_0x1c1203: ; 1c1203
	text "Je vais mesurer"
	line "ce MAGICARPE."

	para "<...>Hum, il mesure"
	line "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 1c123a

UnknownText_0x1c123a: ; 1c123a
	text "RECORD actuel:", $51
	db "@"
	text_from_ram StringBuffer1
	text " par"
	line "@"
	text_from_ram wdfe9 + 1
	text_waitsfx
	db "@"
; 1c1260

UnknownText_0x1c1260: ; 1c1260
	db "@"
; 1c1261

UnknownText_0x1c1261: ; 1c1261
	text "Félicitations!"

	para "Une correspondance"
	line "a été trouvé avec"

	para "le @"
	text_from_ram StringBuffer1
	text " de"
	line "votre équipe."
	prompt
; 1c12ae

UnknownText_0x1c12ae: ; 1c12ae
	text "Félicitations!"

	para "Une correspondance"
	line "a été trouvé avec"

	para "le @"
	text_from_ram StringBuffer1
	text " de"
	line "votre boîte PC."
	prompt
; 1c12fc

UnknownText_0x1c12fc: ; 1c12fc
	text "Donner un surnom"
	line "au @"
	text_from_ram StringBuffer1
	text ""
	cont "reçu?"
	done
; 1c1328

UnknownText_0x1c1328: ; 1c1328
	text "Bzzzzt! Tu dois"
	line "avoir un #MON"
	cont "pour ça!"
	prompt
; 1c1353

UnknownText_0x1c1353: ; 1c1353
	text "<PLAYER> allume"
	line "le PC."
	prompt
; 1c1368

UnknownText_0x1c1368: ; 1c1368
	text "Que voulez-vous"
	line "faire?"
	done
; 1c1381

_KrissPCHowManyWithdrawText: ; 1c1381
	text "Combien faut-il"
	line "en retirer?"
	done
; 1c13a4

_KrissPCWithdrewItemsText: ; 1c13a4
	text "Retiré: @"
	deciram wd10c, $12
	text ""
	line "@"
	text_from_ram StringBuffer2
	text "(S)."
	prompt
; 1c13bf

_KrissPCNoRoomWithdrawText: ; 1c13bf
	text "Plus de place pour"
	line "d'autres objets."
	prompt
; 1c13df

UnknownText_0x1c13df: ; 1c13df
	text "Aucun objet ici!"
	prompt
; 1c13ef

_KrissPCHowManyDepositText: ; 1c13ef
	text "Combien faut-il"
	line "en déposer?"
	done
; 1c1411

_KrissPCDepositItemsText: ; 1c1411
	text "Deposé: @"
	deciram wd10c, $12
	text ""
	line "@"
	text_from_ram StringBuffer2
	text "(S)."
	prompt
; 1c142d

_KrissPCNoRoomDepositText: ; 1c142d
	text "Plus de place pour"
	line "d'autres objets."
	prompt
; 1c144d

_KrissPCCantDepositText:
	text "Tu ne peux pas"
	line "déposer ton PC."
	prompt

UnknownText_0x1c144d: ; 1c144d
	text "<PLAYER> allume"
	line "le PC."
	prompt
; 1c1462

UnknownText_0x1c1462: ; 1c1462
	text "Accéder à quel PC?"
	done
; 1c1474

UnknownText_0x1c1474: ; 1c1474
	text "PC de LEO"
	line "connecté."

	para "Gestion stocks"
	line "de #MON."
	prompt
; 1c14a4

UnknownText_0x1c1474_2: ; 1c1474
	text "PC de ???"
	line "connecté."

	para "Gestion stocks"
	line "de #MON."
	prompt
; 1c14a4

UnknownText_0x1c14a4: ; 1c14a4
	text "PC personnel"
	line "connecté."

	para "Gestion stocks"
	line "d'objets."
	prompt
; 1c14d2

UnknownText_0x1c14d2: ; 1c14d2
	text "PC du PROF.CHEN"
	line "connecté."

	para "Evaluation du"
	line "#DEX."
	prompt
; 1c1505

UnknownText_0x1c1505: ; 1c1505
	text "<...>"
	line "Déconnexion<...>"
	done
; 1c1515

_OakPCText1: ; 1c1515
	text "Veux-tu que j'éva-"
	line "lue ton #DEX?"
	done
; 1c1533

_OakPCText2: ; 1c1533
	text "Niveau #DEX"
	line "actuel:"
	prompt
; 1c1553

_OakPCText3: ; 1c1553
	text_from_ram StringBuffer3
	text " #MON vus"
	line "@"
	text_from_ram StringBuffer4
	text " #MON pris"

	para "Evaluation"
	line "PROF.CHEN:"
	done
; 1c1585

_OakRating01: ; 1c1585
	text "Cherche les #-"
	line "MON dans les"
	cont "hautes herbes"
	done
; 1c15a5

_OakRating02: ; 1c15a5
	text "Bien, tu comprends"
	line "comment te servir"
	cont "des # BALLS."
	done
; 1c15d5

_OakRating03: ; 1c15d5
	text "Tu t'améliores"
	line "mais tu as encore"
	cont "du chemin à faire."
	done
; 1c1611

_OakRating04: ; 1c1611
	text "Tu dois remplir"
	line "le #DEX."

	para "Capture plein"
	line "de #MON"
	cont "différents!"
	done
; 1c164f

_OakRating05: ; 1c164f
	text "Tu travailles dur"
	line "je vois."

	para "Ton #DEX"
	line "s'améliore."
	done
; 1c168c

_OakRating06: ; 1c168c
	text "Pour évouler,"
	line "certains #-,"

	para "MON utilisent les"
	line "effets des PIERRES."
	done
; 1c16ca

_OakRating07: ; 1c16ca
	text "As-tu eu une CANNE"
	line "à pêcher? Tu peux"

	para "attraper d'autres"
	line "#MON en"
	cont "pêchant"
	done
; 1c1709

_OakRating08: ; 1c1709
	text "Excellent! Tu"
	line "en à collectionné"
	cont "pas mal!"
	done
; 1c173b

_OakRating09: ; 1c173b
	text "Certains #MON"
	line "n'apparaissent que"

	para "durant certaines"
	line "périodes de la"
	cont "journée."
	done
; 1c1773

_OakRating10: ; 1c1773
	text "Ton #DEX se"
	line "rempli. Continue"
	cont "le bon travail!"
	done
; 1c17a4

_OakRating11: ; 1c17a4
	text "Je suis impré-"
	line "ssionné. Tu évo-"

	para "lues aussi les"
	line "#MON."
	done
; 1c17e0

_OakRating12: ; 1c17e0
	text "Connais-tu FARGAS?"
	line "Ses BALLS sur-"
	cont "mesures devraient."
	cont "t'aider."
	done
; 1c1812

_OakRating13: ; 1c1812
	text "Woah, tu as trouvé"
	line "plus de #MON"

	para "que lors de mon"
	line "dernier projet de"
	cont "#DEX"
	done
; 1c1853

_OakRating14: ; 1c1853
	text "Echanges-tu des"
	line "#MON? C'est"

	para "dur de faire ça"
	line "tout seul!"
	done
; 1c188b

_OakRating15: ; 1c188b
	text "Woah! Ton #DEX"
	line "a bonne mine. Tu"
	cont "en as plus de 200!"
	done
; 1c18bc

_OakRating16: ; 1c18bc
	text "Tu as trouvé tant"
	line "de #MON!"

	para "Tu aides vrai-"
	line "ment mes études!"
	done
; 1c18f7

_OakRating17: ; 1c18f7
	text "Magnifique, tu"
	line "pourrais devenir"

	para "un chercheur #-"
	line "MON maintenant!"
	done
; 1c1932

_OakRating18: ; 1c1932
	text "Ton #DEX est"
	line "génial. Quel"
	cont "professionnalisme!"
	done
; 1c196b

_OakRatingNearlyThere:
	text "Woah! Ce #DEX"
	line "est bientôt"
	cont "complet!"

	para "Tu m'as surpassé"
	line "de loin!"
	done

_OakRating19: ; 1c196b
	text "Un #DEX par-"
	line "fait! J'en ai"

	para "toujours rêvé!"
	line "Félicitations!"
	done
; 1c19aa

_OakPCText4: ; 1c19aa
	text "Connexion au PC du"
	line "PROF.CHEN terminée."
	done
; 1c19cd

UnknownText_0x1c19cd: ; 1c19cd
	text "Triple-theme"
	line "dresseur classé!", $51
	db "Cette sauvegarde"
	line "va sûrement bien", $55
	db "te classer!", $51
	db $57
; 1c1a22

UnknownText_0x1c1a22: ; 1c1a22
	text "Aucune données."
	line "Connectez-vous", $51
	db "pour obtenir le"
	line "classement.", $51
	db $57
; 1c1a5b

UnknownText_0x1c1a5b: ; 1c1a5b
	text " , ouais!"
	done
; 1c1a65

UnknownText_0x1c1a65: ; 1c1a65
	text "Zut<...>"
	done
; 1c1a6c

UnknownText_0x1c1a6c: ; 1c1a6c
	text "Voulez-vous finir"
	line "le concours?"
	done
; 1c1a90

UnknownText_0x1c1a90: ; 1c1a90
	text "Jeter combien de"
	line "@"
	text_from_ram StringBuffer2
	text "(S)?"
	done
; 1c1aad

UnknownText_0x1c1aad: ; 1c1aad
	text "Jeter @"
	deciram wd10c, $12
	text ""
	line "@"
	text_from_ram StringBuffer2
	text "(S)?"
	done
; 1c1aca

UnknownText_0x1c1aca: ; 1c1aca
	text "Jetés:"
	line "@"
	text_from_ram StringBuffer1
	text "(S)."
	prompt
; 1c1adf

UnknownText_0x1c1adf: ; 1c1adf
	text "Trop important"
	line "pour jeter ça!"
	prompt
; 1c1b03

UnknownText_0x1c1b03: ; 1c1b03
	text "CHEN: ", "<PLAYER>!"
	line "Ce n'est pas le"
	cont "moment d'utiliser"
	cont "ça!"
	done
; 1c1b2c

UnknownText_0x1c1b2c: ; 1c1b2c
	text "Pris @"
	text_from_ram StringBuffer1
	text ""
	line "de @"
	text_from_ram wd050
	text " et"

	para "fait tenir"
	line "@"
	text_from_ram StringBuffer2
	text "."
	prompt
; 1c1b57

UnknownText_0x1c1b57: ; 1c1b57
	text "@"
	text_from_ram wd050
	text " tient"
	line "@"
	text_from_ram StringBuffer2
	text "."
	prompt
; 1c1b6f

UnknownText_0x1c1b6f: ; 1c1b6f
	text "Retirez d'abord"
	line "la LETTRE."
	prompt
; 1c1b8e

UnknownText_0x1c1b8e: ; 1c1b8e
	text_from_ram wd050
	text " ne"
	line "tient rien."
	prompt
; 1c1baa

UnknownText_0x1c1baa: ; 1c1baa
	text "Le sac est plein."
	prompt
; 1c1bc4

UnknownText_0x1c1bc4: ; 1c1bc4
	text "Pris @"
	text_from_ram StringBuffer1
	text ""
	line "de @"
	text_from_ram wd050
	text "."
	prompt
; 1c1bdc

UnknownText_0x1c1bdc: ; 1c1bdc
	text_from_ram wd050
	text " tient"
	line "déjà l'objet"

	para "@"
	text_from_ram StringBuffer1
	text "."
	line "Echanger?"
	done
; 1c1c09

UnknownText_0x1c1c09: ; 1c1c09
	text "Impossible de"
	line "porter l'objet."
	prompt
; 1c1c22

UnknownText_0x1c1c22: ; 1c1c22
	text "Cette LETTRE pedra"
	line "son message. OK?"
	done
; 1c1c47

UnknownText_0x1c1c47: ; 1c1c47
	text "Lettre détachée de"
	line "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 1c1c62

UnknownText_0x1c1c62: ; 1c1c62
	text "Aucun espace pour"
	line "retirer la LETTRE."
	prompt
; 1c1c86

UnknownText_0x1c1c86: ; 1c1c86
	text "Envoyer la LETTRE"
	line "dans le PC?"
	done
; 1c1ca9

UnknownText_0x1c1ca9: ; 1c1ca9
	text "La boîte aux"
	line "LETTREs du PC est"
	cont "pleine."
	prompt
; 1c1cc4

UnknownText_0x1c1cc4: ; 1c1cc4
	text "La LETTRE est"
	line "envoyé au PC."
	prompt
; 1c1ce3

UnknownText_0x1c1ce3: ; 1c1ce3
	text "Pas assez de PVs!"
	prompt
; 1c1cf3

UnknownText_0x1c1cf3: ; 1c1cf3
	text "Un objet du SAC"
	line "peut être enregis-"

	para "tré comme fonction"
	line "du bouton SELECT."
	done
; 1c1d35

_OakText1: ; 1c1d35
	text "Bonjour! Pardon de"
	line "l'attente!"

	para "Bienvenue dans le"
	line "monde des #MON!"

	para "Mon nom est CHEN."

	para "Mais on m'appelle"
	line "le PROF. #MON."
	prompt
; 1c1da4

_OakText2: ; 1c1da4
	text "Ce monde est habi-"
	line "té de créatures", $55
	db "appelées #MON.@@"
; 1c1de2

_OakText3: ; 1c1de2
	text_waitsfx
	db "@"
; 1c1de4

UnknownText_0x1c1de4: ; 1c1de4
	db "@"
; 1c1de5

_OakText4: ; 1c1de5
	text "Humains et #MON"
	line "vivent ensemble"

	para "en parfaite"
	line "harmonie."

	para "Certains jouent"
	line "avec les #MON,"
	
	para "d'autres font des"
	line "combats avec eux."
	prompt
; 1c1e51

_OakText5: ; 1c1e51
	text "Il reste cependant"
	line "beaucoup à appren-"
	cont "dre sur nos amis"
	cont "les #MON."

	para "De nombreux mystè-"
	line "res planent à leur"
	cont "sujet."

	para "Voilà pourquoi"
	line "j'étudie tous les"
	cont "jours les #MON."
	prompt
; 1c1ec9
