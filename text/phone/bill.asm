BillPhoneMornGreetingText: ; 0x1b4427
	text "Bonjour!"

	para "Ici le service d'"
	line "administration du"

	para "système de stock-"
	line "age #MON."
	done

BillPhoneDayGreetingText: ; 0x1b4470
	text "Bonjour!"

	para "Ici le service d'"
	line "administration du"

	para "système de stock-"
	line "age #MON."
	done

BillPhoneNiteGreetingText: ; 0x1b44b5
	text "Bonsoir!"

	para "Ici le service d'"
	line "administration du"

	para "système de stock-"
	line "age #MON."
	done

BillPhoneGeneriText: ; 0x1b44fe
	db $0, "Qui est-ce?", $51
	db $14, ", c'est ça?", $4f
	db "Un moment<...>", $51
	db $56, $4f
	db $56, $57

BillPhoneNotFullText: ; 0x1b452a
	text "Merci d'avoir"
	line "patienté!"

	para $14, ", ta boîte"
	line "peut acceuillir @"
	TX_RAM StringBuffer3
	text $55 
	db "#MON de plus."

	para "Va donc la"
	line "remplir!"
	done

BillPhoneNearlyFullText: ; 0x1b4587
	text "Merci d'avoir"
	line "patienté!"

	para $14, ", ta boîte"
	line "peut acceuillir @"
	TX_RAM StringBuffer3
	text $55 
	db "#MON de plus."

	para "Il faudrait peut-"
	line "être en changer..."
	done

BillPhoneFullText: ; 0x1b45ed
	text "Merci d'avoir"
	line "patienté!"

	para $14, ", ta boîte"
	line "est pleine!"
	prompt

BillPhoneNewlyFullText: ; 0x1b4652
	text "Salut, ", $14, "?"
	line "C'est moi, LEO!"

	para "Merci d'utiliser"
	line "mon système de"
	cont "stockage!"

	para "Ce dernier #-"
	line "MON a fini remplir"
	cont "ta boîte!"
	prompt

BillWholePCFullText:
	text "Wouah, tu as rem-"
	line "pli un serveur"
	cont "entier!"

	para "Il faudra relâch-"
	line "er des #MON"

	para "pour faire de la"
	line "place."
	done

BillWantNextBox:
	text "Je vais mettre la"
	line "suivante par"
	cont "défaut pour toi."

	para "Par contre<...>"
	prompt

BillThankYouText:
	text "Merci d'utiliser"
	line "le système de sto-"
	cont "ckage!"
	done

BillCallMeToSwitch:
	text "OK, je la laisse"
	line "tranquille alors."

	para "Rappelle moi si tu"
	line "changes d'avis."

	para "Tu peux aussi toi-"
	line "même changer de"
	cont "boîte via le PC."
	prompt
