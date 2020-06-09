_FruitBearingTreeText: ; 0x1bc000
	text "C'est un arbre"
	line "à baies."
	done
; 0x1bc01c

_HeyItsFruitText: ; 0x1bc01c
	text "Tiens! Une"
	line "@"
	text_from_ram StringBuffer3
	text "!"
	done
; 0x1bc02d

_ObtainedFruitText: ; 0x1bc02d
	text "Obtenu une"
	line "@"
	text_from_ram StringBuffer3
	text "!"
	done
; 0x1bc03e

_FruitPackIsFullText: ; 0x1bc03e
	text "Mais le SAC est"
	line "plein<...>"
	done
; 0x1bc055

_NothingHereText: ; 0x1bc055
	text "Il n'y a rien"
	line "ici<...>"
	done
; 0x1bc06b

UnknownText_0x1bc06b: ; 0x1bc06b
	text "J'utilise quel"
	line "NOIGRUME?"
	done
; 0x1bc089

UnknownText_0x1bc089: ; 0x1bc089
	text "Combien j'en fais?"
	done
; 0x1bc0a2

UnknownText_0x1bc0a2: ; 0x1bc0a2
	text_from_ram StringBuffer1
	text ""
	line "récupère @"
	deciram wd1f3, $23
	text "PV!"
	done
; 0x1bc0bb

UnknownText_0x1bc0bb: ; 0x1bc0bb
	text_from_ram StringBuffer1
	text " est"
	line "guéri du poison."
	done
; 0x1bc0d2

UnknownText_0x1bc0d2: ; 0x1bc0d2
	text_from_ram StringBuffer1
	text " n'est"
	line "plus paralysé."
	done
; 0x1bc0ea

UnknownText_0x1bc0ea: ; 0x1bc0ea
	text_from_ram StringBuffer1
	text " n'est"
	line "plus brûlé."
	done
; 0x1bc101

UnknownText_0x1bc101: ; 0x1bc101
	text_from_ram StringBuffer1
	text ""
	line "est dégelé."
	done
; 0x1bc115

UnknownText_0x1bc115: ; 0x1bc115
	text_from_ram StringBuffer1
	text ""
	line "se réveille."
	done
; 0x1bc123

UnknownText_0x1bc123: ; 0x1bc123
	text_from_ram StringBuffer1
	text ""
	line "retrouve la forme!"
	done
; 0x1bc13a

UnknownText_0x1bc13a: ; 0x1bc13a
	text_from_ram StringBuffer1
	text ""
	line "est ranimé."
	done
; 0x1bc14f

UnknownText_0x1bc14f: ; 0x1bc14f
	text_from_ram StringBuffer1
	text " monte"
	line "au niveau @"
	deciram CurPartyLevel, $13
	text "!@"
	sound0
	text_waitsfx
	db "@"
; 0x1bc16d

UnknownText_0x1bc16d: ; 0x1bc16d
	db "@"
; 0x1bc16e

UnknownText_0x1bc16e: ; 0x1bc16e
	text_from_ram StringBuffer1
	text " reviens"
	line "à lui."
	done
; 0x1bc187

UnknownText_0x1bc187: ; 0x1bc187
	text "Entrer un code"
	line "à 4 chiffres."
	done
; 0x1bc1ac

UnknownText_0x1bc1ac: ; 0x1bc1ac
	text "Entrer le même"
	line "code."
	done
; 0x1bc1cf

UnknownText_0x1bc1cf: ; 0x1bc1cf
	text "Code non identique"
	done
; 0x1bc1eb

UnknownText_0x1bc1eb: ; 0x1bc1eb
	text "Code enregistré."
	line $51
	db "Entrez ce code pour"
	line "ouvrir le DOSSIER", $55
	db "de CARTES.", $51
	db $57
; 0x1bc23e

UnknownText_0x1bc23e: ; 0x1bc23e
	text "0000 est invalide!", $51
	db $57
; 0x1bc251

UnknownText_0x1bc251: ; 0x1bc251
	text "Entrez le code", $4e
	done
; 0x1bc272

UnknownText_0x1bc272: ; 0x1bc272
	text "Code"
	line "Incorrect!", $51
	db $57
; 0x1bc288

UnknownText_0x1bc288: ; 0x1bc288
	text "DOSS. CARTE ouvert@"
	db "@"
; 0x1bc29c

UnknownText_0x1bc29c: ; 0x1bc29c
	text $56, $56, $56, $56, $56, $56
	line $56, $56, $56, $56, $56, $56

	para "Zzz<...> Hm? Quoi<...>?"
	line "Tu m'as réveillé!"

	para "Mais quelle heure"
	line "est-il?"
	prompt
; 0x1bc2eb

UnknownText_0x1bc2eb: ; 0x1bc2eb
	text "Quelle heure"
	line "est-il?"
	done
; 0x1bc2fd

UnknownText_0x1bc2fd: ; 0x1bc2fd
	text "Quoi?@"
	db "@"
; 0x1bc305

UnknownText_0x1bc305: ; 0x1bc305
	text "?"
	done
; 0x1bc308

UnknownText_0x1bc308: ; 0x1bc308
	text "Combien de"
	line "minutes?"
	done
; 0x1bc31b

UnknownText_0x1bc31b: ; 0x1bc31b
	text "Woah!@"
	db "@"
; 0x1bc323

UnknownText_0x1bc323: ; 0x1bc323
	text "?"
	done
; 0x1bc326

UnknownText_0x1bc326: ; 0x1bc326
	text "!"
	line "J'ai trop dormi!"
	done
; 0x1bc336

UnknownText_0x1bc336: ; 0x1bc336
	text "!"
	line "Mince! J'ai trop"
	cont "dormi!"
	done
; 0x1bc34f

UnknownText_0x1bc34f: ; 0x1bc34f
	text "!"
	line "Pas étonnant qu'il"
	cont "fasse si sombre!"
	done
; 0x1bc369

UnknownText_0x1bc369: ; 0x1bc369
	text "Quel jour on est?"
	done
; 0x1bc37a

UnknownText_0x1bc37a: ; 0x1bc37a
	text "?"
	done
; 0x1bc384

UnknownText_0x1bc384: ; 0x1bc384
	text "Rien n'est"
	line "connecté."
	done
; 0x1bc3a1

UnknownText_0x1bc3a1: ; 0x1bc3a1
	text "Vérifiez l'adapta-"
	line "teur du téléphone."
	done
; 0x1bc3bc

UnknownText_0x1bc3bc: ; 0x1bc3bc
	text "Vérifiez l'adapta-"
	line "teur CDMA"
	done
; 0x1bc3d1

UnknownText_0x1bc3d1: ; 0x1bc3d1
	text "Vérifiez l'adapta-"
	line "teur DOCOMO PHS."
	done
; 0x1bc3ec

UnknownText_0x1bc3ec: ; 0x1bc3ec
	text "Vérifiez l'adapta-"
	line "teur DDI PHS."
	done
; 0x1bc404

UnknownText_0x1bc404: ; 0x1bc404
	text "Vérifiez l'adapta-"
	line "teur illimité de"
	cont "combat mobile."
	done
; 0x1bc42c

UnknownText_0x1bc42c: ; 0x1bc42c
	text "Le code est:"
	line $57
; 0x1bc43f

UnknownText_0x1bc43f: ; 0x1bc43f
	text "C'est bien ça?"
	done
; 0x1bc44c

UnknownText_0x1bc44c: ; 0x1bc44c
	text "Entrez le N."
	line "ID."
	done
; 0x1bc45e

UnknownText_0x1bc45e: ; 0x1bc45e
	text "Entrez le montant."
	done
; 0x1bc471

UnknownText_0x1bc471: ; 0x1bc471
	text "Rien à choisir."
	prompt
; 0x1bc48c

UnknownText_0x1bc48c: ; 0x1bc48c
	text "De quel côté le"
	line "mettre?"
	done
; 0x1bc4b2

UnknownText_0x1bc4b2: ; 0x1bc4b2
	text "Quel côté ranger?"
	done
; 0x1bc4d7

UnknownText_0x1bc4d7: ; 0x1bc4d7
	text "Rangé:"
	line "@"
	text_from_ram StringBuffer3
	text "."
	prompt
; 0x1bc4ec

UnknownText_0x1bc4ec: ; 0x1bc4ec
	text "Il n'y a rien à"
	line "ranger."
	prompt
; 0x1bc509

UnknownText_0x1bc509: ; 0x1bc509
	text "Mis:"
	line "@"
	text_from_ram StringBuffer3
	text "."
	prompt
; 0x1bc51c

UnknownText_0x1bc51c: ; 0x1bc51c
	text "Rangé:"
	line "@"
	text_from_ram StringBuffer3
	text $51
	db "Et mis:"
	line "@"
	text_from_ram StringBuffer4
	text "."
	prompt
; 0x1bc546

UnknownText_0x1bc546: ; 0x1bc546
	text "C'est déjà mis."
	prompt
; 0x1bc55d

UnknownText_0x1bc55d: ; 0x1bc55d
	text "C'est la CARTE."
	done
; 0x1bc570

UnknownText_0x1bc570: ; 0x1bc570
	text "Un poster mignon"
	line "d'un PIKACHU."
	done
; 0x1bc591

UnknownText_0x1bc591: ; 0x1bc591
	text "Un poster mignon"
	line "d'un MELOFEE."
	done
; 0x1bc5b3

UnknownText_0x1bc5b3: ; 0x1bc5b3
	text "Un poster mignon"
	line "d'un RONDOUDOU."
	done
; 0x1bc5d7

UnknownText_0x1bc5d7: ; 0x1bc5d7
	text "C'est une adorable"
	line "@"
	text_from_ram StringBuffer3
	text "."
	done
; 0x1bc5ef

UnknownText_0x1bc5ef: ; 0x1bc5ef
	text "Une poupée géante!"
	line "Si douce et"
	cont "câline!"
	done
; 0x1bc615

UnknownText_0x1bc615: ; 0x1bc615
	text "Salut, ", $52, "!"
	line "Comment vas-tu?"
	prompt
; 0x1bc62a

UnknownText_0x1bc62a: ; 0x1bc62a
	text "J'ai vu un objet"
	line "utile en faisant"
	cont "les courses."
	prompt
; 0x1bc64e

UnknownText_0x1bc64e: ; 0x1bc64e
	text "Alors j'ai craqué"
	line "et j'ai dépensé"
	cont "tes sous. Désolée<...>"
	prompt
; 0x1bc673

UnknownText_0x1bc673: ; 0x1bc673
	text "C'est dans ton PC,"
	line "ça va te plaire!"
	done
; 0x1bc693

UnknownText_0x1bc693: ; 0x1bc693
	text "En faisant les"
	line "courses, j'ai vu"
	cont "cette poupée et<...>"
	prompt
; 0x1bc6c7

UnknownText_0x1bc6c7: ; 0x1bc6c7
	text "C'est dans ta"
	line "chambre, tu vas"
	cont "l'adorer!"
	done
; 0x1bc6e9

UnknownText_0x1bc6e9: ; 0x1bc6e9
	text_from_ram wc6d1
	text " est"
	line "envoyé à @"
	text_from_ram wc719
	text "."
	done
; 0x1bc701

UnknownText_0x1bc701: ; 0x1bc701
	text ""
	done
; 0x1bc703

UnknownText_0x1bc703: ; 0x1bc703
	text_from_ram wc719
	text " dis"
	line "adieu à"
	done
; 0x1bc719

UnknownText_0x1bc719: ; 0x1bc719
	text_from_ram wc703
	text "."
	done
; 0x1bc71f

UnknownText_0x1bc71f: ; 0x1bc71f
	text "Prends soin de"
	line "@"
	text_from_ram wc703
	text "."
	done
; 0x1bc739

UnknownText_0x1bc739: ; 0x1bc739
	text "Pour le @"
	text_from_ram wc6d1
	text ""
	line "de @"
	text_from_ram wc6e7
	text ","
	done
; 0x1bc74c

UnknownText_0x1bc74c: ; 0x1bc74c
	text_from_ram wc719
	text " envoie"
	line "@"
	text_from_ram wc703
	text "."
	done
; 0x1bc75e

UnknownText_0x1bc75e: ; 0x1bc75e
	text_from_ram wc719
	text " va"
	line "envoyer @"
	text_from_ram wc703
	db "@"
; 0x1bc773

UnknownText_0x1bc773: ; 0x1bc773
	db "@"
; 0x1bc774

UnknownText_0x1bc774: ; 0x1bc774
	text "pour le @"
	text_from_ram wc6d1
	text ""
	line "de @"
	text_from_ram wc6e7
	text "."
	done
; 0x1bc787

UnknownText_0x1bc787: ; 0x1bc787
	text_from_ram wc6e7
	text " va"
	line "envoyer @"
	text_from_ram wc6d1
	db "@"
; 0x1bc79c

UnknownText_0x1bc79c: ; 0x1bc79c
	db "@"
; 0x1bc79d

UnknownText_0x1bc79d: ; 0x1bc79d
	text "pour le @"
	text_from_ram wc703
	text " de "
	line "@"
	text_from_ram wc719
	text "."
	done
; 0x1bc7b0

UnknownText_0x1bc7b0: ; 0x1bc7b0
	text_from_ram wc6d1
	text " de"
	line "@"
	text_from_ram wc6e7
	cont "envoyé<...>"
	done
; 0x1bc7c3

UnknownText_0x1bc7c3: ; 0x1bc7c3
	text "Prends soin de"
	line "@"
	text_from_ram wc703
	text "."
	done
; 0x1bc7dd

UnknownText_0x1bc7dd: ; 0x1bc7dd
	text_from_ram wc6d1
	text " de"
	line "@"
	text_from_ram wc6e7
	cont "envoyé<...>"
	done
; 0x1bc7f0

UnknownText_0x1bc7f0: ; 0x1bc7f0
	text "Prends soin de"
	line "@"
	text_from_ram wc703
	text "."
	done
; 0x1bc80a

UnknownText_0x1bc80a: ; 0x1bc80a
	text_from_ram wc703
	text " est"
	line "revenu!"
	done
; 0x1bc81a

UnknownText_0x1bc81a: ; 0x1bc81a
	text ""
	line "LULA: Chronique"
	done
; 0x1bc82d

UnknownText_0x1bc82d: ; 0x1bc82d
	text ""
	line "du PROF.CHEN!"
	done
; 0x1bc83a

UnknownText_0x1bc83a: ; 0x1bc83a
	text ""
	line "Avec moi, LULA"
	done
; 0x1bc84b

UnknownText_0x1bc84b: ; 0x1bc84b
	text ""
	line "CHEN: @"
	text_from_ram wd050
	db "@"
; 0x1bc857

UnknownText_0x1bc857: ; 0x1bc857
	db "@"
; 0x1bc858

UnknownText_0x1bc858: ; 0x1bc858
	text ""
	line "est près de"
	done
; 0x1bc86d

UnknownText_0x1bc86d: ; 0x1bc86d
	text ""
	line "@"
	text_from_ram StringBuffer1
	text "."
	done
; 0x1bc876

UnknownText_0x1bc876: ; 0x1bc876
	text ""
	line "MARY: @"
	text_from_ram StringBuffer1
	text ""
	done
; 0x1bc885

UnknownText_0x1bc885: ; 0x1bc885
	text ""
	line "est adorable et"
	done
; 0x1bc89a

UnknownText_0x1bc89a: ; 0x1bc89a
	text ""
	line "est fou et"
	done
; 0x1bc8af

UnknownText_0x1bc8af: ; 0x1bc8af
	text ""
	line "bien nommé et"
	done
; 0x1bc8c1

UnknownText_0x1bc8c1: ; 0x1bc8c1
	text ""
	line "indéniablement"
	done
; 0x1bc8d6

UnknownText_0x1bc8d6: ; 0x1bc8d6
	text ""
	line "est très"
	done
; 0x1bc8ea

UnknownText_0x1bc8ea: ; 0x1bc8ea
	text ""
	line "est tellement"
	done
; 0x1bc8fe

UnknownText_0x1bc8fe: ; 0x1bc8fe
	text ""
	line "est toxique et"
	done
; 0x1bc913

UnknownText_0x1bc913: ; 0x1bc913
	text ""
	line "si sensuel et"
	done
; 0x1bc927

UnknownText_0x1bc927: ; 0x1bc927
	text ""
	line "est vicieux et"
	done
; 0x1bc93a

UnknownText_0x1bc93a: ; 0x1bc93a
	text ""
	line "est très"
	done
; 0x1bc94e

UnknownText_0x1bc94e: ; 0x1bc94e
	text ""
	line "addictivement"
	done
; 0x1bc961

UnknownText_0x1bc961: ; 0x1bc961
	text ""
	line "dans l'eau est"
	done
; 0x1bc975

UnknownText_0x1bc975: ; 0x1bc975
	text ""
	line "évolué est"
	done
; 0x1bc989

UnknownText_0x1bc989: ; 0x1bc989
	text ""
	line "provocateur"
	done
; 0x1bc999

UnknownText_0x1bc999: ; 0x1bc999
	text ""
	line "si fou et"
	done
; 0x1bc9ae

UnknownText_0x1bc9ae: ; 0x1bc9ae
	text ""
	line "fondant"
	done
; 0x1bc9c0

UnknownText_0x1bc9c0: ; 0x1bc9c0
	text ""
	line "mignon."
	done
; 0x1bc9c8

UnknownText_0x1bc9c8: ; 0x1bc9c8
	text ""
	line "bizarre."
	done
; 0x1bc9d1

UnknownText_0x1bc9d1: ; 0x1bc9d1
	text ""
	line "agréable."
	done
; 0x1bc9dd

UnknownText_0x1bc9dd: ; 0x1bc9dd
	text ""
	line "osé, un peu"
	done
; 0x1bc9ee

UnknownText_0x1bc9ee: ; 0x1bc9ee
	text ""
	line "effrayant."
	done
; 0x1bc9fd

UnknownText_0x1bc9fd: ; 0x1bc9fd
	text ""
	line "suave, débonnaire!"
	done
; 0x1bca11

UnknownText_0x1bca11: ; 0x1bca11
	text ""
	line "puissant."
	done
; 0x1bca1d

UnknownText_0x1bca1d: ; 0x1bca1d
	text ""
	line "exaltant."
	done
; 0x1bca29

UnknownText_0x1bca29: ; 0x1bca29
	text ""
	line "cool!"
	done
; 0x1bca33

UnknownText_0x1bca33: ; 0x1bca33
	text ""
	line "inspirant."
	done
; 0x1bca40

UnknownText_0x1bca40: ; 0x1bca40
	text ""
	line "amical."
	done
; 0x1bca4c

UnknownText_0x1bca4c: ; 0x1bca4c
	text ""
	line "chaud, chaud!"
	done
; 0x1bca5d

UnknownText_0x1bca5d: ; 0x1bca5d
	text ""
	line "stimulant."
	done
; 0x1bca6c

UnknownText_0x1bca6c: ; 0x1bca6c
	text ""
	line "protégé."
	done
; 0x1bca77

UnknownText_0x1bca77: ; 0x1bca77
	text ""
	line "grâcieux."
	done
; 0x1bca81

UnknownText_0x1bca81: ; 0x1bca81
	text ""
	line "rapide."
	done
; 0x1bca8b

UnknownText_0x1bca8b: ; 0x1bca8b
	text "#MON"
	done
; 0x1bca91

UnknownText_0x1bca91: ; 0x1bca91
	text ""
	line "@"
	text_from_ram StringBuffer1
	db "@"
; 0x1bca98

UnknownText_0x1bca98: ; 0x1bca98
	db "@"
; 0x1bca99

UnknownText_0x1bca99: ; 0x1bca99
	text ""
	line "BEN: Antenne"
	done
; 0x1bcaab

UnknownText_0x1bcaab: ; 0x1bcaab
	text ""
	line "Musique ", $e1, $e2, "!"
	done
; 0x1bcab6

UnknownText_0x1bcab6: ; 0x1bcab6
	text ""
	line "C'est moi, DJ BEN!"
	done
; 0x1bcac8

UnknownText_0x1bcac8: ; 0x1bcac8
	text ""
	line "FERN: #MUSIQUE!"
	done
; 0x1bcad8

UnknownText_0x1bcad8: ; 0x1bcad8
	text ""
	line "Avec DJ FERN!"
	done
; 0x1bcae8

UnknownText_0x1bcae8: ; 0x1bcae8
	text ""
	line "C'est @"
	current_day
	text ","
	done
; 0x1bcaf6

UnknownText_0x1bcaf6: ; 0x1bcaf6
	text ""
	line "on s'écoute la"
	done
; 0x1bcb09

UnknownText_0x1bcb09: ; 0x1bcb09
	text ""
	line "on se détends sur"
	done
; 0x1bcb1b

UnknownText_0x1bcb1b: ; 0x1bcb1b
	text ""
	line "Marche #MON!"
	done
; 0x1bcb29

UnknownText_0x1bcb29: ; 0x1bcb29
	text ""
	line "Berceuse #MON!"
	done
; 0x1bcb39

UnknownText_0x1bcb39: ; 0x1bcb39
	text ""
	line "SAM: Yeah! Comment"
	done
; 0x1bcb4d

UnknownText_0x1bcb4d: ; 0x1bcb4d
	text ""
	line "ça gaze les gars?"
	done
; 0x1bcb60

UnknownText_0x1bcb60: ; 0x1bcb60
	text ""
	line "Si t'as la pêche"
	done
; 0x1bcb73

UnknownText_0x1bcb73: ; 0x1bcb73
	text ""
	line "ou pas le moral,"
	done
; 0x1bcb86

UnknownText_0x1bcb86: ; 0x1bcb86
	text ""
	line "ne rate jamais le"
	done
; 0x1bcb9a

UnknownText_0x1bcb9a: ; 0x1bcb9a
	text ""
	line "BON NUMERO!"
	done
; 0x1bcbaf

UnknownText_0x1bcbaf: ; 0x1bcbaf
	text ""
	line "Cette semaine, le"
	done
; 0x1bcbc2

UnknownText_0x1bcbc2: ; 0x1bcbc2
	text ""
	line "No. est @"
	interpret_data
	text_from_ram StringBuffer1
	text "!"
	done
; 0x1bcbd6

UnknownText_0x1bcbd6: ; 0x1bcbd6
	text ""
	line "Je répète..."
	done
; 0x1bcbe9

UnknownText_0x1bcbe9: ; 0x1bcbe9
	text ""
	line "Gagne et va vite"
	done
; 0x1bcbfe

UnknownText_0x1bcbfe: ; 0x1bcbfe
	text ""
	line "à la TOUR RADIO!"
	done
; 0x1bcc11

UnknownText_0x1bcc11: ; 0x1bcc11
	text ""
	line "<...>Se répéter est"
	done
; 0x1bcc25

UnknownText_0x1bcc25: ; 0x1bcc25
	text ""
	line "fatiguant<...>"
	done
; 0x1bcc3a

UnknownText_0x1bcc3a: ; 0x1bcc3a
	text ""
	line "Socio FM!"
	done
; 0x1bcc4f

UnknownText_0x1bcc4f: ; 0x1bcc4f
	text ""
	line "Présenté par moi,"
	done
; 0x1bcc63

UnknownText_0x1bcc63: ; 0x1bcc63
	text ""
	line "DJ LILY!"
	done
; 0x1bcc72

UnknownText_0x1bcc72: ; 0x1bcc72
	text ""
	line "@"
	text_from_ram StringBuffer2
	text " @"
	text_from_ram StringBuffer1
	db "@"
; 0x1bcc7f

UnknownText_0x1bcc7f: ; 0x1bcc7f
	db "@"
; 0x1bcc80

UnknownText_0x1bcc80: ; 0x1bcc80
	text ""
	line "est mignon."
	done
; 0x1bcc8b

UnknownText_0x1bcc8b: ; 0x1bcc8b
	text ""
	line "est paresseux."
	done
; 0x1bcc9e

UnknownText_0x1bcc9e: ; 0x1bcc9e
	text ""
	line "est heureux."
	done
; 0x1bccb1

UnknownText_0x1bccb1: ; 0x1bccb1
	text ""
	line "est bruyant."
	done
; 0x1bccc3

UnknownText_0x1bccc3: ; 0x1bccc3
	text ""
	line "is précoce."
	done
; 0x1bccd4

UnknownText_0x1bccd4: ; 0x1bccd4
	text ""
	line "est audacieux."
	done
; 0x1bcce8

UnknownText_0x1bcce8: ; 0x1bcce8
	text ""
	line "est trop exigeant!"
	done
; 0x1bccf8

UnknownText_0x1bccf8: ; 0x1bccf8
	text ""
	line "est décent"
	done
; 0x1bcd09

UnknownText_0x1bcd09: ; 0x1bcd09
	text ""
	line "est bof"
	done
; 0x1bcd1a

UnknownText_0x1bcd1a: ; 0x1bcd1a
	text ""
	line "est super en fait."
	done
; 0x1bcd2f

UnknownText_0x1bcd2f: ; 0x1bcd2f
	text ""
	line "est mon type."
	done
; 0x1bcd42

UnknownText_0x1bcd42: ; 0x1bcd42
	text ""
	line "est cool, non?"
	done
; 0x1bcd54

UnknownText_0x1bcd54: ; 0x1bcd54
	text ""
	line "est inspirant!"
	done
; 0x1bcd64

UnknownText_0x1bcd64: ; 0x1bcd64
	text ""
	line "est bizarre."
	done
; 0x1bcd78

UnknownText_0x1bcd78: ; 0x1bcd78
	text ""
	line "est bon pour moi?"
	done
; 0x1bcd8b

UnknownText_0x1bcd8b: ; 0x1bcd8b
	text ""
	line "est étrange!"
	done
; 0x1bcda0

UnknownText_0x1bcda0: ; 0x1bcda0
	text ""
	line "@"
	text_from_ram StringBuffer1
	db "@"
; 0x1bcda7

UnknownText_0x1bcda7: ; 0x1bcda7
	db "@"
; 0x1bcda8

UnknownText_0x1bcda8: ; 0x1bcda8
	text ""
	line "<...> <...>Hum, nous sommes"
	done
; 0x1bcdba

UnknownText_0x1bcdba: ; 0x1bcdba
	text ""
	line "la TEAM ROCKET!"
	done
; 0x1bcdc9

UnknownText_0x1bcdc9: ; 0x1bcdc9
	text ""
	line "Après trois mois"
	done
; 0x1bcddd

UnknownText_0x1bcddd: ; 0x1bcddd
	text ""
	line "dans l'ombre, nous"
	done
; 0x1bcdf2

UnknownText_0x1bcdf2: ; 0x1bcdf2
	text ""
	line "renaissons de"
	done
; 0x1bce05

UnknownText_0x1bce05: ; 0x1bce05
	text ""
	line "nos cendres!"
	done
; 0x1bce17

UnknownText_0x1bce17: ; 0x1bce17
	text ""
	line "GIOVANNI! @"
	interpret_data
	text "Vous entendez?"
	done
; 0x1bce2e

UnknownText_0x1bce2e: ; 0x1bce2e
	text ""
	line "@"
	interpret_data
	text "On l'a fait!"
	done
; 0x1bce44

UnknownText_0x1bce44: ; 0x1bce44
	text ""
	line "@"
	interpret_data
	text "Ou est le boss?"
	done
; 0x1bce5c

UnknownText_0x1bce5c: ; 0x1bce5c
	text ""
	line "@"
	interpret_data
	text "Il nous écoute?"
	done
; 0x1bce72

UnknownText_0x1bce72: ; 0x1bce72
	text ""
	line "BUENA: Ici BUENA!"
	done
; 0x1bce87

UnknownText_0x1bce87: ; 0x1bce87
	text ""
	line "Le mot de passe<...>"
	done
; 0x1bce9a

UnknownText_0x1bce9a: ; 0x1bce9a
	text ""
	line "Voyons<...> C'est"
	done
; 0x1bceae

UnknownText_0x1bceae: ; 0x1bceae
	text ""
	line "@"
	text_from_ram StringBuffer1
	text "!"
	done
; 0x1bceb7

UnknownText_0x1bceb7: ; 0x1bceb7
	text ""
	line "Ne l'oubliez pas!"
	done
; 0x1bcec9

UnknownText_0x1bcec9: ; 0x1bcec9
	text ""
	line "Je suis à la"
	done
; 0x1bcedc

UnknownText_0x1bcedc: ; 0x1bcedc
	text ""
	line "TOUR RADIO!"
	done
; 0x1bceeb

UnknownText_0x1bceeb: ; 0x1bceeb
	text ""
	line "BUENA: Oh<...>"
	done
; 0x1bcefb

UnknownText_0x1bcefb: ; 0x1bcefb
	text ""
	line "Il est minuit,"
	done
; 0x1bcf0d

UnknownText_0x1bcf0d: ; 0x1bcf0d
	text ""
	line "c'est fini!"
	done
; 0x1bcf22

UnknownText_0x1bcf22: ; 0x1bcf22
	text ""
	line "Merci d'être la"
	done
; 0x1bcf36

UnknownText_0x1bcf36: ; 0x1bcf36
	text ""
	line "jusqu'à la fin!"
	done
; 0x1bcf4b

UnknownText_0x1bcf4b: ; 0x1bcf4b
	text ""
	line "Ne restez pas trop"
	done
; 0x1bcf5e

UnknownText_0x1bcf5e: ; 0x1bcf5e
	text ""
	line "tard! C'était DJ"
	done
; 0x1bcf73

UnknownText_0x1bcf73: ; 0x1bcf73
	text ""
	line "BUENA à l'antenne!"
	done
; 0x1bcf86

UnknownText_0x1bcf86: ; 0x1bcf86
	text "Au revoir!"
	done
; 0x1bcf96

UnknownText_0x1bcf96: ; 0x1bcf96
	text "<...>"
	done
; 0x1bcf99

UnknownText_0x1bcf99: ; 0x1bcf99
	text ""
	line ""
	done
; 0x1bcf9c

_WhosThatPkmnText1:
	text ""
	line "C'est l'heure du"
	done

_WhosThatPkmnText2:
	text ""
	line "Quiz #MON!"
	done

_WhosThatPkmnText3:
	text ""
	line "Avec moi, LULA!"
	done

_WhosThatPkmnText4:
	text ""
	line "Devinez donc"
	done

_WhosThatPkmnText5:
	text ""
	line "quel est ce"
	done

_WhosThatPkmnText6:
	text ""
	line "#MON?"
	done

_WhosThatPkmnText7:
	text ""
	line $56, " ", $56, " ", $56
	done

_WhosThatPkmnText8:
	text ""
	line "Vous l'avez?"
	done

_WhosThatPkmnText9:
	text ""
	line "C'est @"
	TX_RAM StringBuffer1
	text "!"
	done

UnknownText_0x1bcf9c: ; 0x1bcf9c
	text $3f
	line "retire"
	cont "@"
	text_from_ram EnemyMonNick
	text "!"
	prompt
; 0x1bcfaf

UnknownText_0x1bcfaf: ; 0x1bcfaf
	text $3f
	line "utilise"
	cont "@"
	text_from_ram wd050
	text $55
	db "sur @"
	text_from_ram EnemyMonNick
	text "!"
	prompt
; 0x1bcfc7

UnknownText_0x1bcfc7: ; 0x1bcfc7
	text "Impossible d'uti-"
	line "liser ça ici."
	prompt
; 0x1bcfe5

UnknownText_0x1bcfe5: ; 0x1bcfe5
	text "Impossible de me-"
	line "ttre dans le SAC."
	done
; 0x1bd009

UnknownText_0x1bd009: ; 0x1bd009
	text "@"
	text_from_ram StringBuffer1
	text " est"
	line "mis dans le SAC"
	done
; 0x1bd029

UnknownText_0x1bd029: ; 0x1bd029
	text "Temps restant"
	done
; 0x1bd039

UnknownText_0x1bd039: ; 0x1bd039
	text "Les PVs des #-"
	line "MON sont restaurés"
	prompt
; 0x1bd054

UnknownText_0x1bd054: ; 0x1bd054
	text "Télportation<...>"
	done
; 0x1bd05e

UnknownText_0x1bd05e: ; 0x1bd05e
	text "Changer quel"
	line "numéro?"
	done
; 0x1bd07f

UnknownText_0x1bd07f: ; 0x1bd07f
	text "Jouer avec"
	line "@"
	text_from_ram StringBuffer2
	text "?"
	done
; 0x1bd09a

UnknownText_0x1bd09a: ; 0x1bd09a
	text "Il faut deux #-"
	line "MON pour les faire"
	cont "reproduires"
	prompt
; 0x1bd0bd

UnknownText_0x1bd0bd: ; 0x1bd0bd
	text "Reproduction"
	line "impossible."
	prompt
; 0x1bd0d8

UnknownText_0x1bd0d8: ; 0x1bd0d8
	text "La compatibilité"
	line "est de @"
	deciram wd265, $13
	text "."
	cont "Reproduire?"
	done
; 0x1bd109

UnknownText_0x1bd109: ; 0x1bd109
	text "Aucun OEUF<...>"
	line $58
; 0x1bd11c

UnknownText_0x1bd11c: ; 0x1bd11c
	text "Il va éclore!"
	prompt
; 0x1bd131

UnknownText_0x1bd131: ; 0x1bd131
	text "Tester "
	line "@"
	deciram StringBuffer2, $12
	text "?"
	done
; 0x1bd145

UnknownText_0x1bd145: ; 0x1bd145
	text "Go!"
	done
; 0x1bd14d

UnknownText_0x1bd14d: ; 0x1bd14d
	text "Terminé!"
	done
; 0x1bd153

UnknownText_0x1bd153: ; 0x1bd153
	text "Pour un garçon!"
	done
; 0x1bd15f

UnknownText_0x1bd15f: ; 0x1bd15f
	text "Pour une fille!"
	done
; 0x1bd16c

UnknownText_0x1bd16c: ; 0x1bd16c
	text "Ca ne concerne"
	line "pas un garçon!"
	done
; 0x1bd188

UnknownText_0x1bd188: ; 0x1bd188
	text "Boîte pleine!"
	done
; 0x1bd19a

UnknownText_0x1bd19a: ; 0x1bd19a
	text "Reçu CARTE de"
	line "@"
	text_from_ram StringBuffer2
	text "."
	done
; 0x1bd1ba

UnknownText_0x1bd1ba: ; 0x1bd1ba
	text "La mettre dans le"
	line "DOSSIER CARTES?"
	done
; 0x1bd1dd

UnknownText_0x1bd1dd: ; 0x1bd1dd
	text_from_ram StringBuffer2
	text " porte"
	line "le numéro @"
	deciram StringBuffer1, $12
	text "."
	prompt
; 0x1bd201

UnknownText_0x1bd201: ; 0x1bd201
	text "Début lien."
	done
; 0x1bd211

UnknownText_0x1bd211: ; 0x1bd211
	text "Lien fermé."
	done
; 0x1bd223

UnknownText_0x1bd223: ; 0x1bd223
	text "Fermeture lien."
	done
; 0x1bd232

UnknownText_0x1bd232: ; 0x1bd232
	text "Retirer la limite"
	line "de temps?"
	done
; 0x1bd249

UnknownText_0x1bd249: ; 0x1bd249
	text "Limite de temps"
	line "retirée."
	done
; 0x1bd266

UnknownText_0x1bd266: ; 0x1bd266
	text "Quel paquet est"
	line "une erreur?"
	done
; 0x1bd286

UnknownText_0x1bd286: ; 0x1bd286
	text "Echange @"
	text_from_ram StringBuffer2
	text ""
	line "pour @"
	text_from_ram StringBuffer1
	text "<...>"
	done
; 0x1bd2a0

UnknownText_0x1bd2a0: ; 0x1bd2a0
	text "Obtenu le"
	line "VOLTORBADGE!"
	done
; 0x1bd2bc

UnknownText_0x1bd2bc: ; 0x1bd2bc
	text "Quel étage?"
	done
; 0x1bd2ca

UnknownText_0x1bd2ca: ; 0x1bd2ca
	text "ANNONCEUR: BIIIP!"

	para "Terminé!"
	done
; 0x1bd2e7

UnknownText_0x1bd2e7: ; 0x1bd2e7
	text "ANNONCEUR: Le"
	line "concours est fini!"
	done
; 0x1bd308

UnknownText_0x1bd308: ; 0x1bd308
	text "Le REPOUSSE"
	line "s'estompe."
	done
; 0x1bd321

_UseAnotherRepelText:
	text "Le REPOUSSE"
	line "s'estompe."

	para "En utiliser un?"
	line "autre?"
	done

UnknownText_0x1bd321: ; 0x1bd321
	text $52, " trouve"
	line "@"
	text_from_ram StringBuffer3
	text "!"
	done
; 0x1bd331

UnknownText_0x1bd331: ; 0x1bd331
	text "Mais ", $52, " n'a"
	line "plus de place<...>"
	done
; 0x1bd34b

UnknownText_0x1bd34b: ; 0x1bd34b
	text "J'ai vu des rares"
	line "@"
	text_from_ram StringBuffer1
	text " sur"
	cont "@"
	text_from_ram StringBuffer2
	text "."

	para "Je t'appelle si je"
	line "vois un autre"
	cont "#MON rare, OK?"
	prompt
; 0x1bd39e

UnknownText_0x1bd39e: ; 0x1bd39e
	text "SAUVEGARDE<...> NE"
	line "PAS ETEINDRE!"
	done
; 0x1bd3be

UnknownText_0x1bd3be: ; 0x1bd3be
	text_from_ram PlayerName
	text " reçoit"
	line "@"
	text_from_ram StringBuffer1
	text "!@"
	sound0x0F
	text_waitsfx
	db "@"
; 0x1bd3d6

UnknownText_0x1bd3d6: ; 0x1bd3d6
	db "@"
; 0x1bd3d7

UnknownText_0x1bd3d7: ; 0x1bd3d7
	text "Tu n'as pas de"
	line "jetons"
	prompt
; 0x1bd3eb

UnknownText_0x1bd3eb: ; 0x1bd3eb
	text "Tu n'as pas de"
	line "BOITE JETONS."
	prompt
; 0x1bd407

UnknownText_0x1bd407: ; 0x1bd407
	text "OK, connecte le"
	line "Câble Link."
	prompt
; 0x1bd429

UnknownText_0x1bd429: ; 0x1bd429
	text $52, " échange"
	line "@"
	text_from_ram wd050
	text " pour", $55
	db "@"
	text_from_ram StringBuffer2
	text ".@"
	db "@"
; 0x1bd445

UnknownText_0x1bd445: ; 0x1bd445
	sound0x0A
	interpret_data
	db "@"
; 0x1bd448

UnknownText_0x1bd448: ; 0x1bd448
	db "@"
; 0x1bd449

UnknownText_0x1bd449: ; 0x1bd449
	text "Je collectionne"
	line "les #MON."
	cont "Tu as"
	cont "@"
	text_from_ram StringBuffer1
	text "?"

	para "Tu veux l'échanger"
	line "contre @"
	text_from_ram StringBuffer2
	text "?"
	done
; 0x1bd48c

UnknownText_0x1bd48c: ; 0x1bd48c
	text "Tu ne veux pas?"
	line "Zut<...>"
	done
; 0x1bd4aa

UnknownText_0x1bd4aa: ; 0x1bd4aa
	text "Hein? Ce n'est pas"
	line "@"
	text_from_ram StringBuffer1
	text "<...> "
	done
; 0x1bd4d2

UnknownText_0x1bd4d2: ; 0x1bd4d2
	text "Oui! J'ai eu un"
	line "@"
	text_from_ram StringBuffer1
	text "!"
	cont "Merci!"
	done
; 0x1bd4f4

UnknownText_0x1bd4f4: ; 0x1bd4f4
	text "Salut, comment vas"
	line "@"
	text_from_ram StringBuffer2
	text "?"
	done
; 0x1bd512

UnknownText_0x1bd512: ; 0x1bd512
	text "Salut, je cherche"
	line "ce #MON."

	para "Si tu as"
	line "@"
	text_from_ram StringBuffer1
	text ", tu"

	para "veux l'échanger"
	line "contre @"
	text_from_ram StringBuffer2
	text "?"
	done
; 0x1bd565

UnknownText_0x1bd565: ; 0x1bd565
	text "Toi non plus?"

	para "Zut, c'est"
	line "décevant<...>"
	done
; 0x1bd5a1

UnknownText_0x1bd5a1: ; 0x1bd5a1
	text "Tu n'as pas"
	line "@"
	text_from_ram StringBuffer1
	text "? C'est"
	cont "dommage."
	done
; 0x1bd5cc

UnknownText_0x1bd5cc: ; 0x1bd5cc
	text "Super, merci!"

	para "J'ai enfin"
	line "@"
	text_from_ram StringBuffer1
	text "."
	done
; 0x1bd5f4

UnknownText_0x1bd5f4: ; 0x1bd5f4
	text "Le @"
	text_from_ram wd050
	text ""
	line "que tu m'as échan-"
	cont "gé va bien!"
	done
; 0x1bd621

UnknownText_0x1bd621: ; 0x1bd621
	text_from_ram wd050
	text " est"
	line "mignon mais je ne"

	para "l'ai pas."
	line "Tu as"
	cont "@"
	text_from_ram StringBuffer1
	text "?"

	para "Tu veux l'échanger"
	line "contre @"
	text_from_ram StringBuffer2
	text "?"
	done
; 0x1bd673

UnknownText_0x1bd673: ; 0x1bd673
	text "Tu ne veux pas?"
	line "Oh zut<...>"
	done
; 0x1bd696

UnknownText_0x1bd696: ; 0x1bd696
	text "Ce n'est pas un"
	line "@"
	text_from_ram StringBuffer1
	text "."

	para "Reviens si tu en"
	line "as un."
	done
; 0x1bd6cd

UnknownText_0x1bd6cd: ; 0x1bd6cd
	text "Wowah! Merci!"
	line "J'ai toujours vou-"
	cont "lu un @"
	text_from_ram wd050
	text "!"
	done
; 0x1bd6f5

UnknownText_0x1bd6f5: ; 0x1bd6f5
	text "Comment va le"
	line "@"
	text_from_ram StringBuffer2
	text " que"
	cont "je t'ai échangé?"

	para "Ton @"
	text_from_ram wd050
	text " est"
	line "si mignon!"
	done
; 0x1bd731

UnknownText_0x1bd731: ; 0x1bd731
	text "Hein? Qu'est-ce"
	line "qu'il s'est passé?"
	done
; 0x1bd745

UnknownText_0x1bd745: ; 0x1bd745
	text "C'est bizarre"
	line "d'échanger<...>"

	para "J'ai encore beau-"
	line "coup à apprendre."
	done
; 0x1bd77f

UnknownText_0x1bd77f: ; 0x1bd77f
	text "<...>"

	para "Alors tu repars"
	line "à l'aventure<...>"

	para "OK! Je"
	line "t'aiderais aussi."

	para "Mais qu'est-ce"
	line "que je peux faire?"

	para "Je sais, j'écono-"
	line "miserais ton"
	cont "argent!"

	para "C'est important"
	line "lors d'un voyage."

	para "Tu veux que j'éco-"
	line "nomise ton argent?"
	done
; 0x1bd868

UnknownText_0x1bd868: ; 0x1bd868
	text "OK, je prends soin"
	line "de ton argent."
	para $56, $56, $56
	prompt
; 0x1bd88e

UnknownText_0x1bd88e: ; 0x1bd88e
	text "Sois prudent."

	para "Tes #MON sont"
	line "tes amis. Vous"
	cont "devez travailler"
	cont "en équipe."

	para "Allez, vas-y!"
	done
; 0x1bd8da

UnknownText_0x1bd8da: ; 0x1bd8da
	text "Coucou! Bienvenue"
	line "à la maison!"

	para "Tu travailles dur"
	line "je vois."

	para "J'ai rangé ta"
	line "chambre."

	para "C'est à propos"
	line "de l'argent?"
	done
; 0x1bd942

UnknownText_0x1bd942: ; 0x1bd942
	text "Tu veux faire"
	line "quoi?"
	done
; 0x1bd95b

UnknownText_0x1bd95b: ; 0x1bd95b
	text "Combien veux-tu"
	line "économiser?"
	done
; 0x1bd97a

UnknownText_0x1bd97a: ; 0x1bd97a
	text "Tu veux prendre"
	line "combien?"
	done
; 0x1bd999

UnknownText_0x1bd999: ; 0x1bd999
	text "Tu veux"
	line "économiser?"
	done
; 0x1bd9ba

UnknownText_0x1bd9ba: ; 0x1bd9ba
	text "Tu n'as pas autant"
	line "économiser."
	prompt
; 0x1bd9d7

UnknownText_0x1bd9d7: ; 0x1bd9d7
	text "Tu ne peux pas"
	line "prendre autant."
	prompt
; 0x1bd9f1

UnknownText_0x1bd9f1: ; 0x1bd9f1
	text "Tu n'as pas"
	line "autant."
	prompt
; 0x1bda0b

UnknownText_0x1bda0b: ; 0x1bda0b
	text "Tu ne peux pas"
	line "économiser autant."
	prompt
; 0x1bda25

UnknownText_0x1bda25: ; 0x1bda25
	text "OK, je vais épar-"
	line "gner ton argent."

	para $52, ", courage!"
	done
; 0x1bda5b

UnknownText_0x1bda5b: ; 0x1bda5b
	text "Ton argent est en"
	line "sûreté. Continue!"
	done
; 0x1bda7e

UnknownText_0x1bda7e: ; 0x1bda7e
	text $52, 
	line "n'abandonne pas!"
	done
; 0x1bda90

UnknownText_0x1bda90: ; 0x1bda90
	text "Just do what"
	line "you can."
	done
; 0x1bdaa7

UnknownText_0x1bdaa7: ; 0x1bdaa7
	text ""
	done
; 0x1bdaa9

UnknownText_0x1bdaa9: ; 0x1bdaa9
	text "Je m'occupe de la"
	line "PENSION, veux-tu"
	cont "que j'entraîne un"
	cont "#MON?"
	done
; 0x1bdad8

UnknownText_0x1bdad8: ; 0x1bdad8
	text "Je m'occupe de la"
	line "PENSION."

	para "Tu connais les"
	line "OEUFS?"

	para "J'élevais des"
	line "#MON avec ma"
	cont "femme, tu vois."

	para "Et puis on a trou-"
	line "vé un OEUF!!"

	para "C'est pas dingue"
	line "ça?"

	para "Bon. Tu le veux"
	line "cet OEUF?"
	cont "Tu peux le garder."
	done
; 0x1bdb85

UnknownText_0x1bdb85: ; 0x1bdb85
	text "Je m'occupe de la"
	line "PENSION, veux-tu"
	cont "que j'entraîne un"
	cont "#MON?"
	done
; 0x1bdbbb

UnknownText_0x1bdbbb: ; 0x1bdbbb
	text "Je m'occupe de la"
	line "PENSION."

	para "Tu connais les"
	line "OEUFS?"

	para "J'élevais des"
	line "#MON avec mon"
	cont "homme, tu vois."

	para "Et puis on a trou-"
	line "vé un OEUF!"

	para "C'est pas dingue"
	line "ça?"

	para "Bon. Tu le veux"
	line "cet OEUF?"
	cont "Tu peux le garder."
	done
; 0x1bdc79

UnknownText_0x1bdc79: ; 0x1bdc79
	text "Qui dois-je"
	line "élever?"
	prompt
; 0x1bdc97

UnknownText_0x1bdc97: ; 0x1bdc97
	text "Oh? Mais tu as"
	line "un seul #MON."
	prompt
; 0x1bdcb8

UnknownText_0x1bdcb8: ; 0x1bdcb8
	text "Pardon mais je"
	line "n'accepte pas"
	cont "d'OEUF"
	prompt
; 0x1bdcda

UnknownText_0x1bdcda: ; 0x1bdcda
	text "Il faut d'abord"
	line "retirer la LETTRE."
	prompt
; 0x1bdcff

UnknownText_0x1bdcff: ; 0x1bdcff
	text "Si tu me donnes"
	line "ça, avec quoi tu"
	cont "vas te battre?"
	prompt
; 0x1bdd30

UnknownText_0x1bdd30: ; 0x1bdd30
	text "D'accord, j'élève-"
	line "rais @"
	text_from_ram StringBuffer1
	text "."
	prompt
; 0x1bdd4b

UnknownText_0x1bdd4b: ; 0x1bdd4b
	text "Reviens le cher-"
	line "cher plus tard."
	done
; 0x1bdd64

UnknownText_0x1bdd64: ; 0x1bdd64
	text "On est des génies!"
	line "Tu veux voir"
	cont "ton @"
	text_from_ram StringBuffer1
	text "?"
	done
; 0x1bdd96

UnknownText_0x1bdd96: ; 0x1bdd96
	text "Ton @"
	text_from_ram StringBuffer1
	text ""
	line "a beaucoup grandi."

	para "Il a gagné"
	line "@"
	deciram StringBuffer2 + 1, $13
	text " niveaux."

	para "Si tu veux le"
	line "reprendre, il fau-"
	cont "dra payer ¥@"
	deciram StringBuffer2 + 2, $34
	text "."
	done
; 0x1bde04

UnknownText_0x1bde04: ; 0x1bde04
	text "Parfait, voilà ton"
	line "#MON."
	prompt
; 0x1bde1f

UnknownText_0x1bde1f: ; 0x1bde1f
	text $52, " récupère"
	line "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 0x1bde32

UnknownText_0x1bde32: ; 0x1bde32
	text "Hein? Déjà revenu?"
	line "Ton @"
	text_from_ram StringBuffer1
	text $51
	db "à besoin de"
	line "plus de temps."

	para "Si tu veux le ré-"
	line "cupérer, ça te"
	cont "coûtera ¥100."
	done
; 0x1bdea2

UnknownText_0x1bdea2: ; 0x1bdea2
	text "Tu n'as plus de"
	line "place."
	prompt
; 0x1bdebc

UnknownText_0x1bdebc: ; 0x1bdebc
	text "Tu n'as pas assez"
	line "d'argent."
	prompt
; 0x1bded9

UnknownText_0x1bded9: ; 0x1bded9
	text "Oh, d'accord."
	prompt
; 0x1bdee9

UnknownText_0x1bdee9: ; 0x1bdee9
	text "Reviens une autre"
	line "fois."
	done
; 0x1bdef6

UnknownText_0x1bdef6: ; 0x1bdef6
	text "Pas encore<...>"
	done
; 0x1bdf00

UnknownText_0x1bdf00: ; 0x1bdf00
	text "Ah, c'est toi!"

	para "On élevait tes"
	line "#MON quand on"
	cont "a eu une surprise!"

	para "Tes #MON avaient"
	line "un OEUF!"

	para "On ne sait pas ou"
	line "il l'a eu, mais il"

	para "est de ton #MON"
	line "Tu le veux?"
	done
; 0x1bdfa5

UnknownText_0x1bdfa5: ; 0x1bdfa5
	text $52, " reçois"
	line "l'OEUF!"
	done
; 0x1bdfba

UnknownText_0x1bdfba: ; 0x1bdfba
	text "Prends-en soin!"
	done
; 0x1bdfd1

UnknownText_0x1bdfd1: ; 0x1bdfd1
	text "Il est à toi."
	line "Merci!"
	done
; 0x1bdff2

UnknownText_0x1bdff2: ; 0x1bdff2
	text "Tu n'as plus de"
	line "place."
	done
; 0x1be024

UnknownText_0x1be024: ; 0x1be024
	text "Quel #MON dois-"
	line "je photographie?"
	prompt
; 0x1be047

UnknownText_0x1be047: ; 0x1be047
	text "Très bien. Ne"
	line "bouge pas."
	prompt
; 0x1be06a

UnknownText_0x1be06a: ; 0x1be06a
	text "Et voilà. Tout est"
	line "bon. Reviens une"
	cont "prochaine fois!"
	done
; 0x1be08d
