
SpecialPokeSeer: ; 4f0bc
	ld hl, .Intro
	call PrintText
	call YesNoBox
	jr c, .cancel
	ld hl, .Which
	call PrintText
	call Functiona36

	ld b, $6
	callba Function50000
	jr c, .cancel

	ld a, [CurPartySpecies]
	cp EGG
	jr z, .egg

	call IsAPokemon
	jr c, .no_mon

	call ReadDVs
	call JudgePokemon
	ret

.cancel
	ld hl, .Cancel
	call PrintText
	ret

.no_mon
	ret

.egg
	ld hl, .Egg
	call PrintText
	ret
; 4f0ee

.Intro
	text "Je suis le #-"
	line "DEVIN."

	para "Je peux réveler"
	line "le potentiel caché"
	cont "de ton #MON."

	para "Veux-tu que je"
	line "juge un de tes"
	cont "#MON?"
	done

.Which
	text "Quel #MON"
	line "dois-je juger?"
	done
.Cancel
	text "Oh, tr", $c6, "s bien,"
	line "reviens une autre"
	cont "fois."
	done
.Egg
	text "Je ne peux pas"
	line "juger un OEUF."
	done

ReadDVs:
	ld a, PartyMon1DVs - PartyMon1
	call GetPartyParamLocation
	ld a, [hli]
	ld d, a
	ld a, [hl]
	ld e, a
	ld hl, wd002
; HP
	ld a, d
	and $10
	srl a
	ld b, a
	ld a, d
	and $1
	add a
	add a
	or b
	ld b, a
	ld a, e
	and $10
	swap a
	add a
	or b
	ld b, a
	ld a, e
	and $1
	or b
	ld [hli], a
; Attack
	ld a, d
	and $f0
	swap a
	ld [hli], a
; Defense
	ld a, d
	and $f
	ld [hli], a
; Speed
	ld a, e
	and $f0
	swap a
	ld [hli], a
; Special
	ld a, e
	and $f
	ld [hl], a
	ret

JudgePokemon:
	ld hl, .InitJudge
	call PrintText
	call Functiona36
	call GetDVTotal
	; push bc
	call JudgeDVTotal
	ld hl, .Incidentally
	call PrintText
	call Functiona36

	; pop bc
	; ld a, b
	; and a
	; jr z, .skip_maxdv
	; cp 75
	; jr z, .skip_maxdv
	call GetMaxDV
	push bc
	call InformMaxDVs
	pop bc
	call JudgeMaxDV
	ld hl, .Conclude
	call PrintText
	call Functiona36
	call GetMinDV
	call InformMinDVs
.skip_maxdv
	ld hl, .Finish
	call PrintText
	ret

.InitJudge
	text "Voyons", $56
	line $56, " ", $56, " ", $56
	done

.Incidentally
	text "Egalement<...>"
	done

.Conclude
	text "C'est comme ça que"
	line "je le juge."
	done

.Finish
	text "Reviens une autre"
	line "fois."
	done

GetDVTotal:
	ld hl, wd002
	ld b, 0
	ld c, 5
.loop
	ld a, [hli]
	add b
	ld b, a
	dec c
	jr nz, .loop
	ret

JudgeDVTotal:
	ld a, b
	; max dv total is 5 * 15 = 75
	and a
	ld hl, .AbsoluteWorst
	jr z, .okay
	cp 20
	ld hl, .Poor
	jr c, .okay
	cp 35
	ld hl, .Unremarkable
	jr c, .okay
	cp 50
	ld hl, .Decent
	jr c, .okay
	cp 75
	ld hl, .Strong
	jr c, .okay
	ld hl, .Perfect
.okay
	call PrintText
	call Functiona36
	ret

.AbsoluteWorst
	text "Oh<...> Ton #-"
	line "MON a si peu de"
	cont "potentiel!"

	para "Je n'ai jamais vu"
	line "un #MON si"
	cont "faible<...>"
	done
.Poor
	text "Ton #MON semble"
	line "semble manquer de"
	cont "pontentiel."
	done

.Unremarkable
	text "Ton #MON"
	line "n'est pas"
	cont "extraordinaire."
	done

.Decent
	text "Ton #MON"
	line "semble être"
	cont "décent en général."
	done

.Strong
	text "Ton #MON semble"
	line "être plutot"
	cont "spectaculaire!"
	done

.Perfect
	text "Je n'ai pas bes-"
	line "oin de regarder"

	para "pour voir la per-"
	line "fection de ton"
	cont "#MON."
	done

GetMaxDV:
	ld hl, wd002
	ld b, 0
	ld c, 5
.loop
	ld a, [hli]
	cp b
	jr c, .skip
	ld b, a
.skip
	dec c
	jr nz, .loop
	; We found the max value, now let's get which ones are equal.
	ld hl, wd002
	ld c, 5
	ld d, 0
.loop2
	srl d
	ld a, [hli]
	cp b
	jr nz, .skip2
	set 4, d
.skip2
	dec c
	jr nz, .loop2
	ret

InformMaxDVs:
	ld c, 5
	ld b, 0
.loop
	srl d
	jr nc, .next
	push de
	push bc
	ld a, 5
	sub c
	add a
	ld e, a
	ld d, 0
	ld hl, .StatNames
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, StringBuffer1
.loop1
	ld a, [hli]
	ld [de], a
	cp "@"
	jr z, .done1
	inc de
	jr .loop1
.done1
	ld a, b
	add a
	ld e, a
	ld d, 0
	ld hl, .WhichStatTexts
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call PrintText
	call Functiona36
	pop bc
	pop de
	inc b
.next
	dec c
	jr nz, .loop
	ret

.StatNames
	dw .hp
	dw .atk
	dw .def
	dw .spd
	dw .spc
.hp
	db "ses PV@"
.atk
	db "son ATTAQUE@"
.def
	db "sa DEFENSE@"
.spd
	db "sa VITESSE@"
.spc
	db "son SPECIAL@"

.WhichStatTexts
	dw .FirstStatText
	dw .SecondStatText
	dw .ThirdStatText
	dw .FourthStatText
	dw .FifthStatText

.FirstStatText
	text "Son plus grand po-"
	line "tentiel réside en"
	cont "@"
	TX_RAM StringBuffer1
	text "."
	done

.SecondStatText
	text "Mh, @"
	TX_RAM StringBuffer1
	text " est"
	line "également bien."
	done

.ThirdStatText
	text "Ah, @"
	TX_RAM StringBuffer1
	text " est"
	line "aussi impressio-"
	cont "nant."
	done

.FourthStatText
	text "@"
	TX_RAM StringBuffer1
	text " est"
	line "aussi bon."
	done

.FifthStatText
	text "Ah, @"
	TX_RAM StringBuffer1
	text ""
	line "est aussi a noter."
	done

JudgeMaxDV:
	ld a, b
	cp 7
	ld hl, .Decent
	jr c, .okay
	cp 12
	ld hl, .Good
	jr c, .okay
	cp 15
	ld hl, .Fantastic
	jr c, .okay
	ld hl, .Perfect
.okay
	call PrintText
	call Functiona36
	ret

.Decent
	text "Il a des stats"
	line "décentes, je"
	cont "dirais."
	done
.Good
	text "Il a défintivement"
	line "de bonnes stats."
	done
.Fantastic
	text "Ce #MON a"
	line "des stats fantas-"
	cont "tiques!"
	done
.Perfect
	text "De tels stats<...>"
	line "Elles ne peuvent"
	cont "etres battus!"
	done

GetMinDV:
	; Find DVs equal to zero
	ld hl, wd002
	ld c, 5
	ld d, 0
.loop
	srl d
	ld a, [hli]
	and a
	jr nz, .skip
	set 4, d
.skip
	dec c
	jr nz, .loop
	ret

InformMinDVs:
	ld c, 5
	ld b, 0
.loop
	srl d
	jr nc, .next
	push de
	push bc
	ld a, 5
	sub c
	add a
	ld e, a
	ld d, 0
	ld hl, .StatNames
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, StringBuffer1
.loop1
	ld a, [hli]
	ld [de], a
	cp "@"
	jr z, .done1
	inc de
	jr .loop1
.done1
	ld a, b
	add a
	ld e, a
	ld d, 0
	ld hl, .WhichStatTexts
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call PrintText
	call Functiona36
	pop bc
	pop de
	inc b
.next
	dec c
	jr nz, .loop
	ret

.StatNames
	dw .hp
	dw .atk
	dw .def
	dw .spd
	dw .spc
.hp
	db "ses PV@"
.atk
	db "son ATTAQUE@"
.def
	db "sa DEFENSE@"
.spd
	db "sa VITESSE@"
.spc
	db "son SPECIAL@"

.WhichStatTexts
	dw .FirstStatText
	dw .SecondStatText
	dw .ThirdStatText
	dw .FourthStatText
	dw .FifthStatText

.FirstStatText
	text "Mais @"
	TX_RAM StringBuffer1
	text "<...>"
	line "C'est assez lugu-"
	cont "bre, tu sais?"
	done

.SecondStatText
	text "Et @"
	TX_RAM StringBuffer1
	text ""
	line "est aussi"
	cont "décevant."
	done

.ThirdStatText
	text "J'ai peur que"
	line "@"
	TX_RAM StringBuffer1
	text " "
	line "soit mauvaise"
	cont "aussi<...>"
	done

.FourthStatText
	text "Je ne suis pas"
	line "sur @"
	TX_RAM StringBuffer1
	text ""
	cont "non plus."
	done

.FifthStatText
	text "Mh, @"
	TX_RAM StringBuffer1
	text ""
	line "n'est rien à"
	cont "vanter non plus,"
	cont "c'est sûr<...>"
	done

GetCaughtGender: ; 4f301
	ld hl, MON_CAUGHTGENDER
	add hl, bc

	ld a, [hl]
	and $7f
	jr z, .genderless
	cp $7f
	jr z, .genderless

	ld a, [hl]
	and $80
	jr nz, .male
	ld c, 1
	ret

.male
	ld c, 2
	ret

.genderless
	ld c, 0
	ret
; 4f31c
