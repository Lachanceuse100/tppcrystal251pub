	db CUBONE ; 104

	db 50, 50, 95, 35, 40, 50
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND
	db 190 ; catch rate
	db 64 ; base exp
	db NO_ITEM ; item 1
	db THICK_CLUB ; item 2
	db 127 ; gender
	db 100 ; unknown
	db 20 ; step cycles to hatch
	db 5 ; unknown
	dn 5, 5 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db MEDIUM_FAST ; growth rate
	dn MONSTER, MONSTER ; egg groups

	; tmhm
	tmhm DYNAMICPUNCH, CURSE, BODY_SLAM, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, EARTH_POWER, BLIZZARD, ICY_WIND, PROTECT, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, FIRE_BLAST, SEISMIC_TOSS, SWORDS_DANCE, REST, ATTRACT, THIEF, ROCK_SLIDE, FURY_CUTTER, SUBSTITUTE, STRENGTH, FLAMETHROWER, ICE_BEAM, THUNDERPUNCH, FIRE_PUNCH, FALSE_SWIPE

	; end
