MomPhoneGreetingText: ; 0x1b4000
	text "Allo?"

	para "Oh, ", $52, "!"
	line "Tu travailles dur?"
	done

UnknownText_0x1b4021: ; 0x1b4021
	text "Oh, tu es sur"
	line "@"
	TX_RAM StringBuffer3
	text "<...>"

	para "C'est pas la que"
	line "@"
	TX_RAM StringBuffer4
	text $51
	db "est? Tu y as"
	line "jeté un oeil?"
	done

MomPhoneGenericAreaText: ; 0x1b406b
	text "Vraiment, tu es à"
	line "@"
	TX_RAM StringBuffer3
	text "?"

	para "Je ne connais pas"
	line "ce coin. Tu as de"
	cont "la chance, ", $52, "."
	done

MomPhoneNewBarkText: ; 0x1b40b1
	text "Quoi? Tu es à"
	line "@"
	TX_RAM StringBuffer3
	text "?"

	para "Viens voir ta"
	line "MAMAN si tu peux!"
	done

MomPhoneCherrygroveText: ; 0x1b40e4
	text "Tu visites"
	line "@"
	TX_RAM StringBuffer3
	text "?"

	para "Et si tu passais"
	line "à la maison un"
	cont "moment?"
	done

UnknownText_0x1b411c: ; 0x1b411c
	text "Woah, tu es à"
	line "@"
	TX_RAM StringBuffer3
	text "?"

	para "Bonne chance dans"
	line "ta quête #MON!"
	done

UnknownText_0x1b4150: ; 0x1b4150
	text "Ca a l'air dur."

	para "Mais, ", $52, ", je"
	line "sais que tu es"

	para "déterminer. Ca va"
	line "aller, d'accord?"
	done

UnknownText_0x1b41a7: ; 0x1b41a7
	text "Au fait, tu as"
	line "économisé ¥@"
	TX_RAM StringBuffer3
	text "."

	para "Tu veux continuer"
	line "à économiser?"
	done

UnknownText_0x1b41ea: ; 0x1b41ea
	text "C'est important"
	line "d'économiser ton"
	cont "argent!"
	done

UnknownText_0x1b420d: ; 0x1b420d
	text "Oh, ", $52, ","
	line "tu n'économises"

	para "pas d'argent."
	line "Tu voudrais"
	cont "commencer?"
	done

UnknownText_0x1b4249: ; 0x1b4249
	text "Au fait, tu as"
	line "économisé ¥@"
	TX_RAM StringBuffer3
	text "."

	para "Tu veux de nou-"
	line "veau économiser?"
	done

UnknownText_0x1b4289: ; 0x1b4289
	text "Très bien j'écono-"
	line "miserais ton"
	cont "argent."
	done

MomPhoneWontSaveMoneyText: ; 0x1b42a3
	text "D'accord, je n'é-"
	line "conomiserais pas"
	cont "ton argent."
	done

MomPhoneHangUpText: ; 0x1b42c0
	text $52, ", continue"
	line "je t'encourage"
	cont "mon chou!"
	done

MomPhoneNoPokemonText: ; 0x1b42ea
	text "Allo?"

	para "Oh, ", $52, "!"
	line "Le PROF.ORME. ne"
	cont "t'attendais pas?"
	done

MomPhoneNoPokedexText: ; 0x1b431d
	text "Allo?"

	para "Oh, ", $52, "!"
	line "Tu as une grande"

	para "mission du PROF."
	line "ORME? Soit sage!"
	done

MomPhoneNoGymQuestText: ; 0x1b435f
	text "Allo?"

	para "Bonjour, ", $52, "!"
	line "Si tu as fini ta"

	para "course, reviens à"
	line "la maison"
	done

MomPhoneLectureText: ; 0x1b43a1
	text "Allo?"

	para "<...><...> ", $52, "?"
	line "J'ai entendu par"

	para "le PROF.ORME que"
	line "partais pour un"
	cont "long voyage"

	para "J'aurais aimé que"
	line "tu m'en parles<...>"

	para "Et ton argent?"
	line "Je dois l'écono-"
	cont "miser?"
	done
